/*	Name:Timothy Ho
	Section: 3	
	Side: A
	Date: 2/9/19

	Gain: 0.5
	Port pin: 1.4

	File name: hw7.c
	Description: 
	This code will...
	Read the analog input on Port 1.4
	Set a gain value of 0.5
	Print the A/D value
	Print the input voltage in millivolts (as an integer).

*/

#include <c8051_SDCC.h>// include files. This file is available online
#include <stdio.h>


//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void ADC_Init(void);
void Port_Init(void);
unsigned char read_AD_input(unsigned char pin_number);



//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------

unsigned char AD_value; //Saves the Value
unsigned char input; //save input
unsigned int millivolts; //variabel for the conversion

//***************
void main(void)
{
	Sys_Init();      // System Initialization
	putchar(' ');    // the quote fonts may not copy correctly into SiLabs IDE
	Port_Init();     //set up port 1.4
	ADC_Init();		 //Set up converter and set gain to 0.5
	printf("Start \r\n");
    while (1) 
    {
		printf("enter key to read A/D input \r\n");
		input = getchar();

		// add code necessary to complete the homework

		AD_value = read_AD_input(4); //read the value
		millivolts = AD_value*2.4*1000.0/(256.0*0.5); //conversion line

		printf("AD_value: %d\r\n", AD_value);	// print statement as required by homework
		printf("\rmillivolts: %d\n\r", millivolts);	// print statement as required by homework

    }
}


//
// add the initialization code needed for the ADC1
//
void ADC_Init(void)
{
 	REF0CN = 0x03;  /* Set Vref to use internal reference voltage (2.4V) */
 	ADC1CN = 0x80;  /* Enable A/D converter (ADC1) */
 	ADC1CF &= ~0x03; /* Set A/D converter gain to 0.5 */

}
//
// function that completes an A/D conversion
//
unsigned char read_AD_input(unsigned char pin_number)
{
 	AMX1SL = pin_number; /* Set P1.n as the analog input for ADC1 */
 	ADC1CN &= ~0x20; /* Clear the “Conversion Completed” flag */
 	ADC1CN |= 0x10; /* Initiate A/D conversion */
 	while ((ADC1CN & 0x20) == 0x00); /* Wait for conversion to complete */
 	return ADC1; /* Return digital value in ADC1 register */
}
//
// add Port initialization code
//
void Port_Init(void)
{
    // Port 1
 	P1MDIN &= ~0x10; /* Set P1.4 for analog input */
 	P1MDOUT &= ~0x10; /* Set P1.4 to open drain */
 	P1 |= 0x10; /* Send logic 1 to input pin P1.4 for impedance */
}

