/*	Name: Timothy Ho
	Section: 3
	Side: A
	Date: 2/8/19

	Assignment description: 


	File name: Lab2.c
	Description: Laboratory 2 Code
 
This program demonstrates how to perform an A/D Conversion 
*/

#include <c8051_SDCC.h>// include files. This file is available online
#include <stdio.h>

//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------

void Port_Init(void); // Initialize ports for input and output
void Timer_Init(void);     // Initialize Timer 0 
void Interrupt_Init(void); //Initialize interrupts
void Timer0_ISR(void) __interrupt 1; //Counts overflows
void ADC_Init(void);  // Initialize A/D converter
unsigned char read_AD_input(unsigned char n); //Reads analog signal
void Debounce(void);  //Fixes button bounce
unsigned char random(void); //Gives a random generated number
void Set_outputs(void);// function to set output bits



void mode0(void);
void mode1(void);
void mode2(void);
void mode3(void); 


//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------

//Port 3
__sbit __at 0xB0 SS2;
__sbit __at 0xB1 SS;
__sbit __at 0xB2 PB0;
__sbit __at 0xB3 PB2;
__sbit __at 0xB4 PB1;
__sbit __at 0xB5 PB3;
__sbit __at 0xB6 Buzzer; // Buzzer, associated with Port3, Pin 7
__sbit __at 0xB7 BILED1;

//Port 2
__sbit __at 0xA0 LED0;    
__sbit __at 0xA1 BILED2;
__sbit __at 0xA2 LED1;
__sbit __at 0xA3 LED2;
__sbit __at 0xA5 LED3;

//Other Variables

unsigned int Counts; //Clock Counter
unsigned int debounceCount; //overflow to 20 msecs 

//*****************************************************************************
void main(void)
{
 	//unsigned char result;
 	Sys_Init(); /* Initialize the C8051 board */
 	Port_Init(); /* Configure P1.4 for analog input */
 	ADC_Init(); /* Initialize A/D conversion */
 	putchar(' ');
 	
    while (1)          // infinite loop 
    {
        // main program manages the function calls

        Set_outputs();
    }
 	/*
    while (1)
 	{
 		result = read_AD_input(4); // Read the A/D value on P1.4 
    }   
    */

}

//**************
void Port_Init(void)
{
	// Port 3
    P3MDOUT &= 0xC0; // set Port 3 input pins to push-pull mode (fill in the blank)
    P3MDOUT |= 0xC0; // set Port 3 output pins to open drain mode (fill in the blank)
    P3 |= ~0xC0; // set Port 3 input pins to high impedance state (fill in the blank)

    // Port 2
    P2MDOUT |= ~0xC0;  // set Port 2 output pins

    // Port 1
 	P1MDIN &= ~0x10; /* Set P1.4 for analog input */
 	P1MDOUT &= ~0x10; /* Set P1.4 to open drain */
 	P1 |= 0x10; /* Send logic 1 to input pin P1.4 for impedance */
}


//**************
void Interrupt_Init(void)
{
    IE |= 0x82;      // enable Timer0 Interrupt request (by masking)
}


//***************
void Timer_Init(void)
{

    CKCON |= 0x08;  // Timer0 uses SYSCLK as source
    TMOD &= 0xF0;   // clear the 4 least significant bits
    TMOD |= 0x01;   // Timer0 in mode 1 
    TR0 = 0;        // Stop Timer0
    TMR0 = 0;       // Clear high & low byte of T0

}


//***************
void Timer0_ISR(void) __interrupt 1
{
// add interrupt code here, in this lab, the code will increment the 
// global variable 'counts'
    Counts++;
    debounceCount++;
}


//**************
void ADC_Init(void)
{
 	REF0CN = 0x03;  /* Set Vref to use internal reference voltage (2.4V) */
 	ADC1CN = 0x80;  /* Enable A/D converter (ADC1) */
 	ADC1CF |= 0x01; /* Set A/D converter gain to 1 */
}


//*************
unsigned char read_AD_input(unsigned char n)
{
 	AMX1SL = n; /* Set P1.n as the analog input for ADC1 */
 	ADC1CN = ADC1CN & ~0x20; /* Clear the “Conversion Completed” flag */
 	ADC1CN = ADC1CN | 0x10; /* Initiate A/D conversion */
 	while ((ADC1CN & 0x20) == 0x00); /* Wait for conversion to complete */
 	return ADC1; /* Return digital value in ADC1 register */
}

//************
void Debounce(void)
{
	debounceCount = 0; //reset counter
	while(debounceCount < 7); //wait 20 msec
}

//***********
unsigned char random(void)
{
    return rand()%3;  // rand returns a random number between 0 and 32767.
                        // the mod operation (%) returns the remainder of 
                        // dividing this value by 2 and returns the result,
                        // a value of either 0 or 1.
}



void mode0(void);
void mode1(void);
void mode2(void);
void mode3(void)
{
    printf("\rMode 3\n\r");
    printf("Match pattern by adjusting potentiometer\n\r");
    LED3 = 1;
    LED2 = 1;
    LED1 = 1;
    LED0 = 1;
    while(PB0){
        
    }

}   