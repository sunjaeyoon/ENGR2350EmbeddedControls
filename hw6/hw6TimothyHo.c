/*	Name: Timothy Ho
	Section: 3
	Side: A
	Date: 2/5/19

	Assignment description: 
	the code prints out the number of times the button was pressed and the number 
	of presses where the button was held down for at least one second. 
		
		Overflow in 20secs, 54000 overflows
					1 secs, 2700  overflows
				 ~20 msecs, 54    overflows

	File name: hw6.c
	Description: Basic template for Homework 6
*/

#include <c8051_SDCC.h>// include files. This file is available online
#include <stdio.h>


//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void Port_Init(void);		//Port Initialization
void Timer_Init(void);     	//Initialize Timer 0 
void Interrupt_Init(void); 	//Initialize interrupts
void Debounce(void);		//Debounce Function
void Timer0_ISR(void) __interrupt 1;

//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------

unsigned int counts;	//overflow tracking variable
unsigned int debounceCount; //overflow to 20 msecs 
unsigned int PBcount;   //Button count variable
unsigned int PBonesec;  //Button on for 1 second
unsigned int count_before; //Placeholder
int count_after; //Placeholder

unsigned char input;	//input variable

// add additional global variables if needed

__sbit __at 0xA2 PB1;	// Pushbutton on Port 2.2


//********************
void main(void)
{
	Sys_Init();      // System Initialization
	putchar(' ');    // the quote fonts may not copy correctly into SiLabs IDE
	Port_Init();
	Interrupt_Init();
	Timer_Init();    // Initialize Timer 0 

    while (1) /* the following loop contains the button pressing/tracking code */
    {
		printf("Enter a keyboard character to begin \r\n");
		input = getchar();
		printf("Push the button as many times as you like in 20 seconds \r\n");
		// add necessary code
		counts = 0; 	//reset overflow counter
		PBcount = 0; 	//reset button count
		PBonesec = 0;       //reset button count
		count_before = 0;  //reset variables
		count_after = 0; 	//reset variables
		
		
		TR0 = 1; //Turn Counter on
		while(counts < 54000)
		{
			
			if(!PB1)
			{
				count_before = counts;
				Debounce(); //wait 20 msec
				while(!PB1);	//wait till it turns off
				PBcount++; 	//Increment touch counter
				count_after = counts;
				Debounce(); //wait 20 seconds
				if((count_after-count_before) > 2700)
				{
					PBonesec++;
				}
			}
		}
		printf("\rNumber of presses: %d \n\r", PBcount);
		printf("\rNumber longer than one second: %d \n\r", PBonesec);
    }
}

//***************

void Port_Init(void)
{
	P2MDOUT &= ~0x02; //Set port 2.2 as input (0)
	P2 |= 0x02; //Set Port 2.2 High Impedience
}

//***************

void Interrupt_Init(void)
{
	IE |= 0x82;      // enable Timer0 Interrupt request & global interrupts
}

//***************
void Timer_Init(void)
{
	
	CKCON |= 0x08;   // CKCON set to SYSCLK
	TMOD &= 0xF0;    // TMOD clear four least signifcant bytes, TMOD 13bit(mode)
	TR0 = 0;         // Stop Timer0
	TL0 = 0;         // Clear low byte of register T0
	TH0 = 0;         // Clear high byte of register T0

}


//***************
void Timer0_ISR(void) __interrupt 1
{
	// add interrupt code here, in this homework, the code will increment the 
	// global variable 'counts'
	counts++; //Overall Counter
	debounceCount++; //increment debounce
}

void Debounce(void)
{
	debounceCount = 0; //reset counter
	while(debounceCount < 54); //wait 20 msec
}