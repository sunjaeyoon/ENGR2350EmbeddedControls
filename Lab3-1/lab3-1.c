/*
    Names: Timothy Ho
    Section & Side: A
    Date: 2/28/19
    File name: lab 3
    Program description:
    Work in progress

*/


/* Sample code for Lab 3.1. This code provides a basic start. */
#include <c8051_SDCC.h>
#include <stdio.h>
#include <stdlib.h>
#include <i2c.h>

//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void Port_Init(void);
void PCA_Init (void);
void XBR0_Init();
void SMB_Init();
void Set_Pulsewidth(void);
void PCA_ISR ( void ) __interrupt 9;
unsigned int ReadRanger();

//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------
unsigned int PW_CENTER = 18432;
unsigned int PW_MIN = 1844;
unsigned int PW_MAX = 28420;//brightest //35020;//19ms pw
unsigned int PW = 18432;
unsigned int PCA_start = 28672;   // start count for PCA
unsigned char addr = 0xE0;


//----------------------------------------------------------------------------
// i2c Variables
//----------------------------------------------------------------------------
unsigned char l_count = 0;
unsigned char new_light;
unsigned int read;
unsigned int Data[3];

//-----------------------------------------------------------------------------
// Main Function
//-----------------------------------------------------------------------------
void main(void)
{
    // initialize board
    Sys_Init();
    putchar(' '); //the quotes in this line may not format correctly
    Port_Init();
    XBR0_Init();
    PCA_Init();
    SMB_Init();

    //print beginning message
    printf("Embedded Control Pulsewidth Calibration\n");
    // set the PCA output to a neutral setting
    //__________________________________________
    //__________________________________________
    PW = PW_CENTER;
    //__________________________________________
    //__________________________________________
    
    /*while(1)
        Set_Pulsewidth();
    */
    while (1)
    { if (new_light)
        {
            read = ReadRanger();//read the ranger
            
            //start a ping
            Data[0] = 0x51; // write 0x51 to reg 0 of the ranger:
            i2c_write_data(addr, 0, Data, 1); // write one byte of data to reg 0 at addr
            
            new_light = 0; //reset the 80ms flag
            printf("\r%d\n", read); //print the light
        } 
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
    P1MDOUT |= 0x08;  //set output pin for CEX0, CEX2, CEX3
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
    PCA0MD = 0x81; // SYSCLK/12
    PCA0CN = 0x40; //enable PCA0 counter
    EIE1 |= 0x08;  //enable PCA interrupt
    EA = 1;        //enable GLobal Interrupt

    PCA0CPM3 = 0xC2;
    //PCA0CPM0 = PCA0CPM2 =  //16 bit with Comparator on and PWN enabled  
}

//-----------------------------------------------------------------------------
// SMB_Init
//-----------------------------------------------------------------------------
//
// Set up Peripherials
//
void SMB_Init(void)
{
    ENSMB = 1; //enable SMB
    SMB0CR = 0x93; //Set clock
}

//-----------------------------------------------------------------------------
// PCA_ISR
//-----------------------------------------------------------------------------
//
// Interrupt Service Routine for Programmable Counter Array Overflow Interrupt
//
void PCA_ISR ( void ) __interrupt 9
{
    // reference to the sample code in Example 4.5 -Pulse Width Modulation 
    // implemented using the PCA (Programmable Counter Array), p. 50 in Lab Manual.

    PCA0 = 65535 - PCA_start;       // start count for 20ms
//  PCA0L = 65535- PCA_start;      // low byte of start count
//  PCA0H = PCA_start >> 8; // high byte of start count
    CF = 0;                 // Very important - clear interrupt flag
    
    //PCA0CN &= 0xC0;        // all other type 9 interrupts
    l_count++;
    
    if(l_count>4)
    {
        new_light = 1; // at least 4 overflows is about 80 ms
        l_count = 0;
    }

}

void Set_Pulsewidth()
{
    char input;
    //wait for a key to be pressed
    input = getchar();
    if(input == 'd')  // single character input to increase the pulsewidth
    {
        PW += 200;

        if(PW > PW_MAX)  // check if greater than pulsewidth maximum
        {    
            PW = PW_MAX;    // set PW to the maximum value
        }
    }
    else if(input == 'b')  // single character input to decrease the pulsewidth
    {
        PW -= 200;

        if(PW < PW_MIN)
        {  // check if less than pulsewidth minimum
            PW = PW_MIN;     // set PW to the minimum value
        }
    }

    printf("\rPW: %u\n", PW);
    PCA0CP3 = 0xFFFF - PW;

}

unsigned int ReadRanger()
{
    unsigned char Data[1];
    unsigned int light = 0;
    i2c_read_data(addr, 1, Data, 1); // read one byte, starting at reg 1
    light = Data[0];
    return light;
}
