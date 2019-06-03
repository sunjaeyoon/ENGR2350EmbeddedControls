/*	Names: Timothy Ho
	Section: 3
	Side: A
	Date: 1/29/19

	Size of counter: 8bit (indicated your assigned counter size, delete the others)

	Trigger: SYSCLK/12   (indicate your assigned trigger, delete the other)

	File name: hw5.c
	Description: Basic template for Homework 5
		This program waits 3 seconds after a keyboard input and then prints the
  		number of overflows that occurred.
*/

#include <c8051_SDCC.h>// include files. This file is available online
#include <stdio.h>


//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void Timer_Init(void);     // Initialize Timer 0 
void Interrupt_Init(void); //Initialize interrupts
void Timer0_ISR(void) __interrupt 1;

//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------

unsigned char input;
unsigned int count;    	//replace xxxxx with the variable type, uncomment as well


//***************
void main(void)
{
	Sys_Init();      // System Initialization
	putchar(' ');    
	Interrupt_Init();
	Timer_Init();    // Initialize Timer 0 

    while (1) /* the following loop waits until a key is pressed on the
			     keyboard and prints the number of overflows that occurr
				 in two time intervals */
    {
		printf("\rHit any key on the keyboard to start \r\n");
		input = getchar();
		
		// add code to clear the high and low byte of Timer0 and start Timer0
		
		count = 0; //reset the counter
		TMR0 = 0; //Clears the high and low byte of counter same as TL0 = 0; TH0 = 0;
		TR0 = 1; //Timer 1 enabled
		
		// add code for a 2.5 second delay
		while (count < 18000);
	 	printf("2.5 seconds have passed. \r\n");  	//print that the time has elapsed

		printf("overflows print statement here: %d\n", count);	// print number of overflows using count variable

		//add code for a 1 second delay
		count = 0;
		while (count < 7200);
		printf("\r1 seconds have passed. \r\n");  	//print that the time has elapsed

		printf("overflows print statement here: %d\n", count);	// print number of overflows using count variable
		
    }
}

//***************

void Interrupt_Init(void)
{
	//EA = 1;
	//ET0 = 1;      // enable Timer0 Interrupt request using sbit variable 
	IE |= 0x82;       // enable global interrupts using bit masking
}
//***************
void Timer_Init(void)
{
	
	CKCON &= 0xF7;   // Timer0 uses SYSCLK/12
	TMOD &= 0xF0;    // clear the 4 least significant bits
	TMOD |= 0x02;    // Timer0 mode setting (Set timer0 to mode 1 8bit)
	TR0 = 0;         // Stop Timer0
	TL0 = 0;         // Clear low byte of register T0 (line 88 and 89 can be written as 1 line TMR0 = 0)
	TH0 = 0;         // Clear high byte of register T0

}


//***************
void Timer0_ISR(void) __interrupt 1
{
	// add interrupt code here, in this homework, the code will increment the 
	// global variable 'counts'
	count++; //adds one to every overflow
}

