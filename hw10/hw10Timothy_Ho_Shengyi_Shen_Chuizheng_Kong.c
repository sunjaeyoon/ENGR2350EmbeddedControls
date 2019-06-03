/*
    Names: Timothy_Ho Shengyi_Shen Chuizheng_Kong
    Section & Side: A
    Date: 3/18/19
    File name: HW10
    Program description:
    For the compass, the program reads a single (unsigned char) byte from Register 0 
    and a 2-byte signed integer from Registers 4 and 5.  The Register 0 byte is the software 
    revision number for the compass model. Register 4 is the high byte and Register 5 is the 
    low byte when the two are combined into a single integer and represent a intermediate step 
    in the calculation of the heading. 

    For ultrasonic ranger, the program reads a single (unsigned char) byte from Register 0 
    and reads the third echo from the ultrasonic ranger in inches. 

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
void PCA_ISR ( void ) __interrupt 9;
unsigned int ReadRanger(void);
unsigned int ReadCompass(void);
unsigned int ReadVersion(unsigned char adr);
//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------
unsigned int PW_CENTER = 18432;
unsigned int PW_MIN = 1844;
unsigned int PW_MAX = 28420;//brightest //35020;//19ms pw
unsigned int PW = 18432;
unsigned int PCA_start = 28672;   // start count for PCA


//----------------------------------------------------------------------------
// i2c Variables
//----------------------------------------------------------------------------
//ranger code
unsigned char addr = 0xE0; //Ultrasonic Memory Address
unsigned char l_count = 0;
unsigned char new_light;
unsigned int read;
unsigned int Data[3];
//compass code
unsigned char c_addr = 0xC0;
unsigned char c_Data[2];
unsigned int heading;
unsigned int h_count = 0;
unsigned char new_heading = 0;
unsigned int version;

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

  
    while (1)
    { 
	getchar();
	if (new_light)
        {
            version = ReadVersion(addr);
            printf("ranger revision number is %u \n",version);
            read = ReadRanger();//read the ranger
            
            //start a ping
            Data[0] = 0x50; // write 0x51 to reg 0 of the ranger:
            i2c_write_data(addr, 0, Data, 1); // write one byte of data to reg 0 at addr
            
            new_light = 0; //reset the 80ms flag
            printf("3rd echo in inch is %u \r\n", read); //print the light
        }

        if(new_heading)
        {
            version  = ReadVersion(c_addr);
            printf("compass revision number is %u \n",version);
            heading  = ReadCompass();
            printf("the intermediate step is %u \r\n",heading);
            new_heading = 0;
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
    h_count++;
    
    if(l_count>=4)
    {
        new_light = 1; // at least 4 overflows is about 80 ms
        l_count = 0;
    }

    if(h_count>=2)
    {
        new_heading = 1;
        h_count = 0;
    }

}


unsigned int ReadRanger()
{
    i2c_read_data(addr, 6, Data, 2); // read 2 byte, starting at reg 6
    read = ((Data[0]<<8)|Data[1]);
    return read;
}

unsigned int ReadCompass()
{
    i2c_read_data(c_addr,4, c_Data, 2);
    heading = ((c_Data[0] << 8)|c_Data[1]);
    return heading;
}

unsigned int ReadVersion(unsigned char adr)
{
    i2c_read_data(adr,0,c_Data,1);
    version = c_Data[0];
    return version;
}

