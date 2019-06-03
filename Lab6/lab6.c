/*===========================================================================
Lab6.c  Date: 4.26.2019
Timothy Ho, Kong, Shen
Section 3 Side A
Description:
This code will be used to control the Gondola module using a derivative
feedback mechanism. Users will be prompted to enter the desired heading
proportional gain and derivative gain constant and calibrate the thrust
angle. This can then be used to determine the best combination of gains
===========================================================================*/
#include <c8051_SDCC.h>
#include <stdio.h>
#include <stdlib.h>
#include <i2c.h>
//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
//Initialization
void Port_Init(void);
void PCA_Init (void);
void XBR0_Init();
void ADC_Init(void);
void SMB_Init(void);
unsigned int read_ADC_value(unsigned char n);
void PCA_ISR ( void ) __interrupt 9;

//Our Function
void Set_Gain(void);
void CarControl(void);
void Set_Motor(void);
void Heading_Control(void);
unsigned int ReadRanger(void);
unsigned int ReadCompass(void);

//-----------------------------------------------------------------------------
//Global Variables
//-----------------------------------------------------------------------------
unsigned int Counts; //PCA counter
unsigned int voltage;

//Ultrasonic Ranger //unsigned char r_addr = 0xE0; // the address of the ranger
unsigned char dist;
unsigned char r_Data[2];
unsigned int range = 0;
unsigned char r_Counts = 0;  //Private Counter
unsigned char new_range = 0; //Private Counter

//electric compass //unsigned char c_addr = 0xC0; //the address of the compass
unsigned int heading;          // 0--3599 (degrees * 10)
unsigned char new_heading;     //Private Counter
unsigned char h_Counts = 0;    //Private Counter

//Set Heading
unsigned int desired = 1800;   //Desired heading
unsigned int original_desired; //Placeholder used when heading changes
unsigned int kp = 2;           //Proportional Gain    
unsigned int kd = 50;          //Derivative Gain

//Gondola
__xdata unsigned int pw_min = 2028; //Minimum Constants
__xdata unsigned int pw_max = 3502; //Maximum Constants
__xdata signed int pw_neut = 2765;  //Neutral Constants            

unsigned int RUDDER_LEFT;  //PW of the left fan  (Changing Constantly)
unsigned int RUDDER_RIGHT; //PW of the right fan (Changing constantly)
unsigned int rudder_pw;    //PW of the rudder fan(Changing Constantly)
__xdata unsigned int thrust_angle; //Changed only at the beginning

//Equation
signed long temp_motorpw;
signed int error;
signed int previous_error = 20;// set this value

//-----------------------------------------------------------------------------
// Main Function
//-----------------------------------------------------------------------------
void main(void)
{
    // initialize board========================================================
    Sys_Init();
    putchar(' '); 
    Port_Init(); //Set up ports
    XBR0_Init(); //Set the crossbar
    ADC_Init();  //Set up ADC
    PCA_Init();  //Initialize the PCA
	SMB_Init();  //Set up external communication

    //Print beginning message==================================================
    printf("\n\rStart\r\n");
    Counts = 0;
	while(Counts < 50);//wait for 1 sec
	
	//CALIBRATION==============================================================
	//Check LCD
	lcd_clear();
    lcd_print("Calibration:\nHello world!\n");

	//Check the Thrust angle servo   
    thrust_angle = 2540;
    PCA0CP1 = 0xFFFF-thrust_angle;

    //set both motors neutral first
    //set the PCA output to a neutral setting  
    RUDDER_LEFT = pw_neut;
    RUDDER_RIGHT = pw_neut;
    rudder_pw = pw_neut;
    PCA0CP0 = 0xFFFF - rudder_pw;
    PCA0CP2 = 0xFFFF - RUDDER_LEFT;
    PCA0CP3 = 0xFFFF - RUDDER_RIGHT;
    Counts = 0;
    while(Counts < 100);//Wait for two seconds
    
	//Main Loop===============================================================
   
    printf("Entering Main Loop\n");
    lcd_clear();
    lcd_print("Starting Lab6\n");

    //Set up gains and FAN
    Set_Gain();
 	Counts = 0;
    while(Counts < 1500)
	{
		CarControl();
	}

	RUDDER_LEFT = pw_neut;
    RUDDER_RIGHT = pw_neut;
    rudder_pw = pw_neut;
    PCA0CP0 = 0xFFFF - rudder_pw;
    PCA0CP2 = 0xFFFF - RUDDER_LEFT;
    PCA0CP3 = 0xFFFF - RUDDER_RIGHT;
	getchar();//Pause the system
}

//-----------------------------------------------------------------------------
// Set Up 
//-----------------------------------------------------------------------------
void Port_Init()
{
    P1MDOUT |= 0xF0;//CEX0 Rudder, CEX1 Angle, CEX2 Left fan, CEX3 Right fan
}
// Set up the crossbar
void XBR0_Init()
{
    XBR0 = 0x25;

}
void ADC_Init(void)
{
	REF0CN = 0x03;  /* Set Vref to use internal reference voltage (2.4V) */
	ADC1CN = 0x80;  /* Enable A/D converter (ADC1) */
	ADC1CF |= 0x01; /* Set A/D converter gain to 1 */
}
unsigned int read_ADC_value(unsigned char n)
{
	AMX1SL = n; /* Set P1.n as the analog input for ADC1 */
	ADC1CN = ADC1CN & ~0x20; /* Clear the “Conversion Completed?flag */
	ADC1CN = ADC1CN | 0x10; /* Initiate A/D conversion */
	while ((ADC1CN & 0x20) == 0x00); /* Wait for conversion to complete */
	return ADC1 * 4.235; /* Return digital value in ADC1 register */
}

void PCA_Init(void)
{
	PCA0CN = 0x40;
	PCA0MD = 0x81;
	EIE1 |= 0x08;
	EA = 1;
	PCA0CPM0 = PCA0CPM2 = PCA0CPM3 = 0xC2;
}

void SMB_Init(void)
{
	SMB0CR = 0x93; //100KHZ frequency
	ENSMB = 1; 
}

void PCA_ISR ( void ) __interrupt 9
{
	
	if(CF)
	{	
		Counts ++;
		r_Counts++;
		h_Counts++;
		PCA0 = 65535 - 36864;
		//fixed period of 20ms
		CF=0;//Clear flag
		////////////////////////////////ranger
		if(r_Counts>=5)//4 overflows, 80 ms
		{
			new_range = 1;
			r_Counts = 0;
		}
		////////////////////////////////heading
		if(h_Counts>=2)//40ms
		{
			new_heading = 1;
			h_Counts = 0;
		}
	}
	
	PCA0CN &= 0x40;	
}

//OUR Functions====================================================================
void Set_Gain()
{
	unsigned char gain_stop = 0;
	unsigned char angle_stop = 0;
	unsigned char input;

	while(gain_stop == 0)
	{

		//Getting user heading
		printf("\r\nSetting gains...");
		//set values using keypad
		lcd_clear();
		lcd_print("Enter desired \nheading:");
		printf("\r\nEnter desired heading in keypad");
		desired = kpd_input(1);
		printf("\r\ndesired: %u",desired);

		original_desired = desired; //must save for adjusting heading 

		//Setting Proportional Gain
		lcd_clear();
		lcd_print("Enter kp:\n");
		printf("\r\nEnter kp in keypad");
		kp = kpd_input(1);
		printf("\r\nkp: %u",kp);

		//Setting Derivative gain
		lcd_clear();
		lcd_print("Enter kd:\n");
		printf("\r\nEnter kd in keypad");
		kd = kpd_input(1);
		printf("\r\nkd: %u",kd);

		//Adjust fan angle
		while(angle_stop == 0)
		{
			printf("\r\nCurrent thrust angle pw: %u",thrust_angle);
			printf("\r\nPress i to increase, d to decrease, and f to finalize\n\r");
			input = getchar();
			if (input == 'f')
			{
				printf("\r\nFinal thrust angle: %u",thrust_angle);
				angle_stop = 1;
			}else if (input == 'i')
			{
				thrust_angle += 15;
				PCA0CPL1 = 0xFFFF - thrust_angle;
				PCA0CPH1 = (0xFFFF-thrust_angle)>>8;
				printf("\r\nIncreased THRUST_ANGLE_PW %u\r\n",thrust_angle);
			}else if (input == 'd')
			{
				thrust_angle -= 15;
				PCA0CPL1 = 0xFFFF - thrust_angle;
				PCA0CPH1 = (0xFFFF-thrust_angle)>>8;
				printf("\r\nDecreased THRUST_ANGLE_PW %u\r\n",thrust_angle);
			}
		}

		gain_stop = 1;
	}
}

void CarControl()
{
	if(new_heading)//Check Flag 
	{	
		//Read the Compass
		heading = ReadCompass();
		new_heading = 0; //reset the flag
		
		//Adjust the PW of Left and Right Fans		
		Set_Motor();
		
		//Check Voltage
		voltage = read_ADC_value(3);
		lcd_clear();
		lcd_print("\nBattery %u,\nHeading %u,\n Reading %u\n", voltage, heading, range);  
	}
	
	if(new_range)//Check Flag
	{
		//Read the Ranger
		dist = ReadRanger();
		r_Data[0] = 0x51;//reading in cm
		i2c_write_data(0xE0,0,r_Data,1);
		new_range = 0;
		printf("\nHeading: %u, PW right %u, PW left %u\r", heading, RUDDER_RIGHT, RUDDER_LEFT);

		//Adjust Heading Direction
		Heading_Control();
	}
}	

void Set_Motor()
{	
	error = desired - heading;	
	
	//Check if the compass is inbound
	if (error > 1800)
	{
		error -= 3600;
	}else if (error < -1800)
	{
		error += 3600;
	}
	
	//Calculate the New Pulsewidth
	//full equation------------------------------------------------------------
	//temp_motorpw = (signed long)kp*(signed long)error+(signed long)kd*(signed long)(error-previous_error);// +(signed long)pw_neut	
	//-------------------------------------------------------------------------
	if (abs(error - previous_error) > 100)
	{
		//Use Derivative Control if difference between the errors are above 100
		temp_motorpw = (signed long)kp*(signed long)error+(signed long)kd*(signed long)(error-previous_error);
	}else
	{
		//Use Proportional Control
		temp_motorpw = (signed long)kp*(signed long)error;
	}

	previous_error = error; //Place into old error
	
	//Check extreme
	if (temp_motorpw > 737)
	{
		temp_motorpw = 737;//set maximum difference
	}
	if (temp_motorpw < -737)
	{
		temp_motorpw = -737;//set minimum difference
	}

	//Check whether the Gondola turns right or left
	if (temp_motorpw < pw_neut)
	{
		//turn using right
		rudder_pw = pw_neut - temp_motorpw;

		RUDDER_RIGHT = pw_neut - temp_motorpw;

		//Reverse Left Fan
		RUDDER_LEFT = pw_neut + temp_motorpw;

		PCA0CP0 = 0xFFFF - rudder_pw;
    	PCA0CP2 = 0xFFFF - RUDDER_LEFT;
    	PCA0CP3 = 0xFFFF - RUDDER_RIGHT;

	}else if (temp_motorpw > pw_neut)
	{//if motor pw would be in forward
		
		rudder_pw = pw_neut + temp_motorpw;

		RUDDER_RIGHT = pw_neut + temp_motorpw;

		//Turn in the left direction
		RUDDER_LEFT = pw_neut - temp_motorpw;

		PCA0CP0 = 0xFFFF - rudder_pw;
    	PCA0CP2 = 0xFFFF - RUDDER_LEFT;
    	PCA0CP3 = 0xFFFF - RUDDER_RIGHT;
		
	}
}

void Heading_Control(void)
{
	if (range>50)
	{//if ~50 maintain heading
		desired = original_desired;
	}else
	{//below 45
		//add proportional scale up
		desired = 2700;
		//printf("desired: ");
	}
}

unsigned int ReadRanger()
{
	i2c_read_data(0xE0,2,r_Data,2);
	range = ((r_Data[0] << 8) | r_Data[1]);
	return range;

}

unsigned int ReadCompass()
{
	unsigned char c_Data[2];
	i2c_read_data(0xc0,2,c_Data,2);
	heading = ((c_Data[0] << 8) | c_Data[1]); 
	return heading;
}
