/* Sample code for Lab 3.1. This code provides a basic start. */
#include <c8051_SDCC.h>
#include <stdio.h>
#include <stdlib.h>
#include <i2c.h>
//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void Port_Init(void);
void PCA_Init (void); //
void XBR0_Init(void);
void ADC_Init(void);
void Set_Pulsewidth(void);
void Set_Overide(void);
void Set_Heading(void);
void Set_Speed(void);
void PCA_ISR ( void ) __interrupt 9;
void SMB_Init(void);
void CarControl(void);
unsigned int ReadRanger(void);
unsigned int ReadCompass(void);
unsigned char read_ADC_value(unsigned char n);
unsigned int read_battery_voltage(unsigned char ADC);
void data(void);

//-----------------------------------------------------------------------------
// PCA Variables
//-----------------------------------------------------------------------------
unsigned int Counts;
//stering servo
//__xdata 
unsigned int sPW_CENTER = 2655; //1.5ms
//__xdata 
unsigned int sPW_MIN = 2005; //0.9ms
//__xdata 
unsigned int sPW_MAX = 3305; //2.1ms
unsigned int sPW = 0;
//motor
//__xdata 
unsigned int mPW_CENTER = 2765; //1.5ms
//__xdata 
unsigned int mPW_MIN = 2027; //1.1ms
//__xdata 
unsigned int mPW_MAX = 3502; //1.9ms
unsigned int mPW = 0;


//______________________________________________________________________________
//i2c bus variables
//------------------------------------------------------------------------------
//ranger code
unsigned char dist;
unsigned char r_Data[2];
unsigned int range = 0;
unsigned char r_addr = 0xE0; // the address of the ranger
unsigned char r_Counts=0;
unsigned char new_range = 0;
//electric compass
unsigned char c_addr = 0xC0;
unsigned char c_Data[2];
unsigned int heading; // 0--3599
unsigned char h_Counts = 0;
unsigned char new_heading =0;
unsigned int desired_heading = 900;
signed int error;
//ADC variable
unsigned char adc_value;
unsigned int voltage;

//Extra variables
unsigned char sum;

//-----------------------------------------------------------------------------
//Global Variables
//-----------------------------------------------------------------------------
__sbit __at 0xB7 mSS;//slide switch for stearing & motor
//__sbit __at 0xB5 lSS;//slide switch for LED

__sbit __at 0x94 LED;// for the overide control
//-----------------------------------------------------------------------------
// Main Function
//-----------------------------------------------------------------------------
void main(void)
{
    // initialize board
    Sys_Init();
    putchar(' '); //the quotes in this line may not format correctly
    Port_Init();
    XBR0_Init();//!!!!!!!!!!!!!!Done set the crossbar to accomodate untrasonic ranger
    PCA_Init();
	SMB_Init();
	ADC_Init();

    //print beginning message
    printf("Embedded Control Pulsewidth Calibration\r\n");
    // set the PCA output to a neutral setting,mPW);		
	lcd_clear();		
	lcd_print("\n\rHeading %u,\n\r Reading %u", heading, range);

	
    //__________________________________________
    //__________________________________________
    
	sPW = sPW_CENTER;
	PCA0CP0 = 65535 - sPW;
	mPW = mPW_CENTER;
	PCA0CP2 = 65535 - mPW;
	lcd_clear();
    lcd_print("Calibration:\nHello world!\n");
	while(Counts < 50);//wait for 1 sec

	printf("Steering Calibration finished. %u \r\n",sPW);
	printf("Motor Calibration finished. %u \r\n");

	printf("\rEnter a center motor speed using keypad\n");
	
	sum = getchar();
	mPW_CENTER = 153.0*sum+2005.0;

	printf("\rEnter a center motor speed using keypad\n");
	sum = getchar();

	sPW_CENTER = 130.0*sum+2005.0;

	lcd_clear();
	lcd_print("mPW %u\nsPW %u",mPW, sPW);
	
	
	while(1)
	{
		CarControl();
	}
}

//-----------------------------------------------------------------------------
// Port_Init
//-----------------------------------------------------------------------------
//
// Set up ports for input and output
//
void Port_Init()
{
    P1MDOUT |= 0x0C;  //set output pin for CEX0 or CEX2 in push-pull mode on p1.0-steering, p1.2-motor
	P3MDOUT &= ~0x80; //set input pin open-drain for slide switch on p3.5, p3.6, p3.7
	P3 |= 0x80; //set input pin in high-impedience
	P1MDIN &= ~0x80;
	P1 |= 0x80;
	P1MDOUT &= ~0x80;
}

//-----------------------------------------------------------------------------
// XBR0_Init
//-----------------------------------------------------------------------------
//
// Set up the crossbar
//
void XBR0_Init()
{
    XBR0 = 0x27;  //configure crossbar as directed in the laboratory

}

//-----------------------------------------------------------------------------
// PCA_Init
//-----------------------------------------------------------------------------
//
// Set up Programmable Counter Array
//
void PCA_Init(void)
{
    // reference to the sample code in Example 4.5 -Pulse Width Modulation 
    // implemented using the PCA (Programmable Counter Array), p. 50 in Lab Manual.
	PCA0CN = 0x40;
	PCA0MD = 0x81;
	EIE1 |= 0x08;
	EA = 1;

	PCA0CPM0 = PCA0CPM2 = PCA0CPM3 = 0xC2;
}
//-----------------------------------------------------------------------------
//SMB bus init
//-----------------------------------------------------------------------------
void SMB_Init(void)
{
	SMB0CR = 0x93;
	ENSMB = 1; 
}
//-----------------------------------------------------------------------------
//ADC init and read
//-----------------------------------------------------------------------------
void ADC_Init(void)
{
	REF0CN = 0x03;  /* Set Vref to use internal reference voltage (2.4V) */
	ADC1CN = 0x80;  /* Enable A/D converter (ADC1) */
	ADC1CF |= 0x01; /* Set A/D converter gain to 1 */
}

unsigned char read_ADC_value(unsigned char n)
{
	AMX1SL = n; /* Set P1.n as the analog input for ADC1 */
	ADC1CN = ADC1CN & ~0x20; /* Clear the “Conversion Completed?flag */
	ADC1CN = ADC1CN | 0x10; /* Initiate A/D conversion */
	while ((ADC1CN & 0x20) == 0x00); /* Wait for conversion to complete */
	return ADC1; /* Return digital value in ADC1 register */
}

unsigned int read_battery_voltage(unsigned char ADC) {
	voltage = ADC * 2.4 / 256 * 118 / 18 * 1000;
	return voltage;
}
//-----------------------------------------------------------------------------
// PCA_ISR
//-----------------------------------------------------------------------------
//
// Interrupt Service Routine for Programmable Counter Array Overflow Interrupt
//
void PCA_ISR ( void ) __interrupt 9
{
	Counts ++;
	if(CF)
	{
		r_Counts++;
		h_Counts++;
	    // reference to the sample code in Example 4.5 -Pulse Width Modulation 
	    // implemented using the PCA (Programmable Counter Array), p. 50 in Lab Manual.
		PCA0 = 65535 - 36864;
		//fixed period of 20ms
		CF=0;//CF 
		////////////////////////////////ranger
		if(r_Counts>=4)//4 overflows, 80 ms
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

void CarControl()
{
	

	while(!mSS)
	{
		adc_value = read_ADC_value(7);
		voltage = read_battery_voltage(adc_value);
		printf("$$$$$$$$$$Battery voltage: %u $$$$$$$$$$$$$$$\r\n", voltage);
		//
        Set_Pulsewidth();
		if(new_range)
		{
			dist = ReadRanger();
			r_Data[0] = 0x51;//reading in cm
			i2c_write_data(r_addr,0,r_Data,1);
			new_range = 0;
			printf("distance is %u \r\n",dist);
			if(dist <= 80)
			{
				LED = 0;
			}
			if(mSS)
			{
				mPW = mPW_CENTER;
				sPW = sPW_CENTER;
				LED = 1;
				break;
			}	
		}

		if(new_heading && dist > 80) 
		{	
			LED = 1;
			heading = ReadCompass();
			printf("heading towards %u \n",heading);
			new_heading = 0;
		    if(mSS)
			{
				sPW = sPW_CENTER;
				mPW = mPW_CENTER;
				LED = 1;
				break;
			}
		}
		//LCD
		lcd_clear();
		lcd_print("\n\rHeading %u,\n\r Reading %u", heading, range);  
		//printf("\n\r on LCD++++++Heading %u,\n\r ranger %u", heading, range);
		

	}
	
	do
	{
		adc_value = read_ADC_value(7);
		voltage = read_battery_voltage(adc_value);
		printf("$$$$$$$$$$Battery voltage: %u $$$$$$$$$$$$$$$\r\n", voltage);
		/////////////////////////range
		if(new_range && mSS)
		{
			dist = ReadRanger();
			r_Data[0] = 0x51;//reading in cm
			i2c_write_data(r_addr,0,r_Data,1);
			new_range = 0;
			printf("distance is %u \r\n",dist);
			if(dist <= 80)
			{
				LED = 0;
				Set_Overide();//overide heading
			}
		}
		else if(!mSS)
			{
				sPW = sPW_CENTER;
				mPW = mPW_CENTER;
				LED = 1;
			}
		//////////////////////////heading
		if(dist > 80 && new_heading && mSS) 
		{	
			LED = 1;
			heading = ReadCompass();
			printf("heading towards %u \n",heading);
			new_heading = 0;
			Set_Heading();
		}
		else if(!mSS)
			{
				sPW = sPW_CENTER;
				mPW = mPW_CENTER;
				LED = 1;
			}
		//LCD

		lcd_clear();
		lcd_print("\nHeading %u Reading %u Bat %u", heading, range, voltage);  
		//printf("\n\r on LCD++++++Heading %u,\n\r ranger %u", heading, range);
		/////////////////////////speed control
		Set_Speed();
		
	} 
	while(mSS);
	
}

void Set_Pulsewidth()
{
    char input;
    //wait for a key to be pressed
    input = getchar();
    if(input == 'w')  // single character input to increase the pulsewidth
    {
        mPW += 50;
        if(mPW > mPW_MAX)  // check if greater than pulsewidth maximum
            mPW = mPW_MAX;    // set PW to the maximum value
    }
    else if(input == 's')  // single character input to decrease the pulsewidth
    {
        mPW -= 50;
        if(mPW < mPW_MIN)  // check if less than pulsewidth minimum
            mPW = mPW_MIN;     // set PW to the minimum value
    }
	if(input == 'd')
	{
		sPW += 20;
        if(sPW > sPW_MAX)  // check if greater than pulsewidth maximum
            sPW = sPW_MAX;    // set PW to the maximum value
	}
	else if(input == 'a')  // single character input to decrease the pulsewidth
    {
        sPW -= 20;
        if(sPW < sPW_MIN)  // check if less than pulsewidth minimum
            sPW = sPW_MIN;     // set PW to the minimum value
    }
    printf("motor PW: %u\n", mPW);
    PCA0CP2 = 0xFFFF - mPW;
	printf("stering PW: %u\n", sPW);
    PCA0CP0 = 0xFFFF - sPW;

}

void Set_Overide()
{
	if(dist < 10)
		sPW = sPW_MIN;
	else if(dist > 80)
		sPW = sPW_MAX;
	else
	{
		if(dist < 45)
			sPW = sPW_CENTER - 18.57*(45 - dist);
		else if(dist > 45)
			sPW = 18.57*(dist - 45) + sPW_CENTER;
		else
			if(sPW > sPW_MAX)
				sPW = sPW_MAX;
			else if(sPW < sPW_MIN)
				sPW = sPW_MIN;
	}
	printf("Overide is setted to %d \n", sPW - sPW_CENTER);
	PCA0CP0 = 0xFFFF - sPW;
}
void Set_Speed()
{
    char input;
    //wait for a key to be pressed
    input = getchar_nw();
    if(input == '+')  // single character input to increase the pulsewidth
    {
        mPW += 25;
        if(mPW > mPW_MAX)  // check if greater than pulsewidth maximum
            mPW = mPW_MAX;    // set PW to the maximum value
    }
    else if(input == '-')  // single character input to decrease the pulsewidth
    {
        mPW -= 25;
        if(mPW < mPW_MIN)  // check if less than pulsewidth minimum
            mPW = mPW_MIN;     // set PW to the minimum value
    }
	else if(input == 'n')
	{
		mPW = mPW_CENTER;
	}
    printf("motor PW: %u\n", mPW);
    PCA0CP2 = 0xFFFF - mPW;
}

void Set_Heading()
{
	error = desired_heading - heading;
	if(error >= 1800)
		error -= 3600;
	else if(error <= -1800)
		error += 3600;
	else if(error <= 1850 && error >= 1800)
		printf("Just back up \n");
	else if(error <= -1800 && error >= -1850)
		printf("Just back up \n");
	if(error > 50)//should turn right
	{
		sPW = 0.416667*error + sPW_CENTER;
		printf("--------> \r\n");
	}
	else if(error < -50)//should turn left
	{
		sPW = sPW_CENTER + 0.416667*error;
		printf("<-------- \r\n");
	}
	else
		printf("  --  \r\n");
	
	if(sPW > sPW_MAX)
		sPW = sPW_MAX;
	if(sPW < sPW_MIN)
		sPW = sPW_MIN;

	printf("Stering error is %d \n",error);
	printf("Stering is set to %u \n", sPW);
	PCA0CP0 = 0xFFFF - sPW;
}



unsigned int ReadRanger()
{
	//printf("before \r\n");
	i2c_read_data(r_addr,2,r_Data,2);
//	printf("after \r\n");
	range = ((r_Data[0] << 8) | r_Data[1]);
	return range;

}

unsigned int ReadCompass()
{
	i2c_read_data(c_addr,2,c_Data,2);
	heading = ((c_Data[0] << 8) | c_Data[1]); 
	return heading;
}

