/*  Names:
    Section:
    Date:
    File name:
    Description:
*/
/*
  This program demonstrates the use of T0 interrupts. The code will count the
  number of T0 timer overflows that occur while a slide switch is in the ON position.
*/

#include <c8051_SDCC.h>// include files. This file is available online
#include <stdio.h>
#include <stdlib.h>

//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void Port_Init(void);      // Initialize ports for input and output
void Timer_Init(void);     // Initialize Timer 0 
void Interrupt_Init(void); //Initialize interrupts
void Timer0_ISR(void) __interrupt 1;
unsigned char random(void);
void thisGame(void); 
void clear(void);
void theBuzz(void);

//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------
__sbit __at 0xB3 BILED1;
__sbit __at 0xB4 BILED2;
__sbit __at 0xB0 PB0;  // Push button 0, associated with Port 3, Pin 0
__sbit __at 0xB1 PB1;
__sbit __at 0xB6 LED0; // LED0, associated with Port 3 Pin 6
__sbit __at 0xB5 LED1;
__sbit __at 0xB7 BUZZER; // Buzzer, associated with Port3, Pin 7
__sbit __at 0xA0 SS;    // Slide Switch associated with Port 2 Pin 0
// sbit settings are incomplete, include those developed 
// in Lab 1-1 and add the sbit setting for LED1
unsigned int Counts = 0;
unsigned int score = 0;
unsigned char preRand = 3; //just anything other than 0,1,2
unsigned char ans = 3;
int trial;

//***************
void main(void)
{
    Sys_Init();      // System Initialization
    Port_Init();     // Initialize ports 2 and 3 
    Interrupt_Init();
    Timer_Init();    // Initialize Timer 0 
	printf("\r Start theGame!\n");
    putchar(' ');    // the quote fonts may not copy correctly into SiLabs IDE

	thisGame();
	 
}

//***************
void Port_Init(void)
{
  P3MDOUT |= ~0x07;  // use Port configuration from Lab 1-1
  P3MDOUT &= ~0x03;  // adding the output bit for LED1
  P3 |= 0x03;

}

void Interrupt_Init(void)
{
    IE |= 0x02;      // enable Timer0 Interrupt request (by masking)
    EA = 1;       // enable global interrupts (by sbit)
}
//***************
void Timer_Init(void)
{

    CKCON |= 0x08;  // Timer0 uses SYSCLK as source
    TMOD &= 0xF0;   // clear the 4 least significant bits
    TMOD |= 0x01;   // Timer0 in mode 1
    TR0 = 0;           // Stop Timer0
    TMR0 = 0;           // Clear high & low byte of T0

}


//***************
void Timer0_ISR(void) __interrupt 1
{
	Counts++;// add interrupt code here, in this lab, the code will increment the 
			// global variable 'counts'
}

/******************************************************************************/
/*
  This function demonstrates how to obtain a random integer between 0 and 1 in
  C. You may modify and use this code to get a random integer between 0 and N.
*/

/*return a random integer number between 0 and 1*/
unsigned char random(void)
{
    return (rand()%3);  // rand returns a random number between 0 and 32767.
                        // the mod operation (%) returns the remainder of 
                        // dividing this value by 2 and returns the result,
                        // a value of either 0 or 1.
}

void thisGame(void)
{
	while (1) 
	    {
	        clear();
	        while( SS ); // while SS0 is ON (high)
			theBuzz();
			score = 0; 
	        TR0 = 1;     // Timer 0 enabled
			for (trial = 0; trial < 10; trial++)
			{
	        	unsigned char currRand = random();

				while (currRand == preRand)
				{
					currRand = random();
				}
				TMR0 = 0; //clear the timer
				Counts = 0; //clear the counts
				if (currRand == 0)
					LED0 = 0;
				else if (currRand == 1)
					LED1 = 0;
				else if (currRand == 2)
					{
						LED0 = 0;
						LED1 = 0;
					}
				while (Counts < 337*2) // wait for 1 sec
				{
					if (!PB0)
					{
						if(!PB1)
							ans = 2;
						else
							ans = 0;
					}
					else if (!PB1)
					{
						if(!PB0)
							ans = 2;
						else
							ans = 1;
					}
				}

				LED0 = 1; //turn off
			    LED1 = 1;

				if (ans == currRand)
				{
					BILED1 = 0;
					BILED2 = 1;
					score++;
				}
				else
				{
					BILED1 = 1;
					BILED2 = 0;
				}	
				while (Counts < (337+337)*2); // wait for 1 sec
				preRand = currRand;

				clear();
	        }
			printf("\r you get a score of %u \n",score);
	        TR0 = 0;    // Timer 0 disabled

	    }
}

void clear(void)
{
	BILED1 = 1;  // Turn OFF the LEDs and Buzzer
	BILED2 = 1;
	LED0 = 1;
	LED1 = 1;
	BUZZER = 1;
}


void theBuzz(void)
{
	TMR0 = 0;
	TR0 = 1;
	Counts = 0;
	while(Counts<337)
	{
		BUZZER = 0; //Turn Buzzer on
	}
	BUZZER = 1;
	TR0 = 0;

}
