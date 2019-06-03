;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW64)
;--------------------------------------------------------
	.module lab4kfix
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _read_keypad
	.globl _strlen
	.globl _putchar
	.globl _getchar
	.globl _vsprintf
	.globl _printf
	.globl _getchar_nw
	.globl _Sys_Init
	.globl _UART0_Init
	.globl _SYSCLK_Init
	.globl _LED
	.globl _mSS
	.globl _BUS_SCL
	.globl _BUS_TOE
	.globl _BUS_FTE
	.globl _BUS_AA
	.globl _BUS_INT
	.globl _BUS_STOP
	.globl _BUS_START
	.globl _BUS_EN
	.globl _BUS_BUSY
	.globl _SPIF
	.globl _WCOL
	.globl _MODF
	.globl _RXOVRN
	.globl _TXBSY
	.globl _SLVSEL
	.globl _MSTEN
	.globl _SPIEN
	.globl _AD0EN
	.globl _ADCEN
	.globl _AD0TM
	.globl _ADCTM
	.globl _AD0INT
	.globl _ADCINT
	.globl _AD0BUSY
	.globl _ADBUSY
	.globl _AD0CM1
	.globl _ADSTM1
	.globl _AD0CM0
	.globl _ADSTM0
	.globl _AD0WINT
	.globl _ADWINT
	.globl _AD0LJST
	.globl _ADLJST
	.globl _CF
	.globl _CR
	.globl _CCF4
	.globl _CCF3
	.globl _CCF2
	.globl _CCF1
	.globl _CCF0
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _CT2
	.globl _CPRL2
	.globl _BUSY
	.globl _ENSMB
	.globl _STA
	.globl _STO
	.globl _SI
	.globl _AA
	.globl _SMBFTE
	.globl _SMBTOE
	.globl _PT2
	.globl _PS
	.globl _PS0
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ET2
	.globl _ES
	.globl _ES0
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _S0MODE
	.globl _SM00
	.globl _SM0
	.globl _SM10
	.globl _SM1
	.globl _MCE0
	.globl _SM20
	.globl _SM2
	.globl _REN0
	.globl _REN
	.globl _TB80
	.globl _TB8
	.globl _RB80
	.globl _RB8
	.globl _TI0
	.globl _TI
	.globl _RI0
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _PCA0CP4
	.globl _PCA0CP3
	.globl _PCA0CP2
	.globl _PCA0CP1
	.globl _PCA0CP0
	.globl _PCA0
	.globl _DAC1
	.globl _DAC0
	.globl _ADC0LT
	.globl _ADC0GT
	.globl _ADC0
	.globl _RCAP4
	.globl _TMR4
	.globl _TMR3RL
	.globl _TMR3
	.globl _RCAP2
	.globl _TMR2
	.globl _TMR1
	.globl _TMR0
	.globl _WDTCN
	.globl _PCA0CPH4
	.globl _PCA0CPH3
	.globl _PCA0CPH2
	.globl _PCA0CPH1
	.globl _PCA0CPH0
	.globl _PCA0H
	.globl _SPI0CN
	.globl _EIP2
	.globl _EIP1
	.globl _TH4
	.globl _TL4
	.globl _SADDR1
	.globl _SBUF1
	.globl _SCON1
	.globl _B
	.globl _RSTSRC
	.globl _PCA0CPL4
	.globl _PCA0CPL3
	.globl _PCA0CPL2
	.globl _PCA0CPL1
	.globl _PCA0CPL0
	.globl _PCA0L
	.globl _ADC0CN
	.globl _EIE2
	.globl _EIE1
	.globl _RCAP4H
	.globl _RCAP4L
	.globl _XBR2
	.globl _XBR1
	.globl _XBR0
	.globl _ACC
	.globl _PCA0CPM4
	.globl _PCA0CPM3
	.globl _PCA0CPM2
	.globl _PCA0CPM1
	.globl _PCA0CPM0
	.globl _PCA0MD
	.globl _PCA0CN
	.globl _DAC1CN
	.globl _DAC1H
	.globl _DAC1L
	.globl _DAC0CN
	.globl _DAC0H
	.globl _DAC0L
	.globl _REF0CN
	.globl _PSW
	.globl _SMB0CR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T4CON
	.globl _T2CON
	.globl _ADC0LTH
	.globl _ADC0LTL
	.globl _ADC0GTH
	.globl _ADC0GTL
	.globl _SMB0ADR
	.globl _SMB0DAT
	.globl _SMB0STA
	.globl _SMB0CN
	.globl _ADC0H
	.globl _ADC0L
	.globl _P1MDIN
	.globl _ADC0CF
	.globl _AMX0SL
	.globl _AMX0CF
	.globl _SADEN0
	.globl _IP
	.globl _FLACL
	.globl _FLSCL
	.globl _P74OUT
	.globl _OSCICN
	.globl _OSCXCN
	.globl _P3
	.globl __XPAGE
	.globl _EMI0CN
	.globl _SADEN1
	.globl _P3IF
	.globl _AMX1SL
	.globl _ADC1CF
	.globl _ADC1CN
	.globl _SADDR0
	.globl _IE
	.globl _P3MDOUT
	.globl _PRT3CF
	.globl _P2MDOUT
	.globl _PRT2CF
	.globl _P1MDOUT
	.globl _PRT1CF
	.globl _P0MDOUT
	.globl _PRT0CF
	.globl _EMI0CF
	.globl _EMI0TC
	.globl _P2
	.globl _CPT1CN
	.globl _CPT0CN
	.globl _SPI0CKR
	.globl _ADC1
	.globl _SPI0DAT
	.globl _SPI0CFG
	.globl _SBUF0
	.globl _SBUF
	.globl _SCON0
	.globl _SCON
	.globl _P7
	.globl _TMR3H
	.globl _TMR3L
	.globl _TMR3RLH
	.globl _TMR3RLL
	.globl _TMR3CN
	.globl _P1
	.globl _PSCTL
	.globl _CKCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _P6
	.globl _P5
	.globl _P4
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _mPW_MAX
	.globl _mPW_MIN
	.globl _mPW_CENTER
	.globl _sPW_MAX
	.globl _sPW_MIN
	.globl _sPW_CENTER
	.globl _new_lcd
	.globl _lcd_count
	.globl _voltage
	.globl _adc_value
	.globl _error
	.globl _desired_heading
	.globl _new_heading
	.globl _h_Counts
	.globl _heading
	.globl _c_Data
	.globl _c_addr
	.globl _new_range
	.globl _r_Counts
	.globl _r_addr
	.globl _range
	.globl _r_Data
	.globl _dist
	.globl _mPW
	.globl _sPW
	.globl _Counts
	.globl _i2c_read_data_PARM_4
	.globl _i2c_read_data_PARM_3
	.globl _i2c_read_data_PARM_2
	.globl _i2c_write_data_PARM_4
	.globl _i2c_write_data_PARM_3
	.globl _i2c_write_data_PARM_2
	.globl _aligned_alloc_PARM_2
	.globl _Data2
	.globl _lcd_print
	.globl _lcd_clear
	.globl _kpd_input
	.globl _delay_time
	.globl _i2c_start
	.globl _i2c_write
	.globl _i2c_write_and_stop
	.globl _i2c_read
	.globl _i2c_read_and_stop
	.globl _i2c_write_data
	.globl _i2c_read_data
	.globl _Accel_Init
	.globl _Accel_Init_C
	.globl _Port_Init
	.globl _XBR0_Init
	.globl _PCA_Init
	.globl _SMB_Init
	.globl _ADC_Init
	.globl _PCA_ISR
	.globl _CarControl
	.globl _Set_Pulsewidth
	.globl _Set_Overide
	.globl _Set_Speed
	.globl _Set_Heading
	.globl _ReadRanger
	.globl _ReadCompass
	.globl _read_ADC_value
	.globl _read_battery_voltage
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$P4$0$0 == 0x0084
_P4	=	0x0084
G$P5$0$0 == 0x0085
_P5	=	0x0085
G$P6$0$0 == 0x0086
_P6	=	0x0086
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$CKCON$0$0 == 0x008e
_CKCON	=	0x008e
G$PSCTL$0$0 == 0x008f
_PSCTL	=	0x008f
G$P1$0$0 == 0x0090
_P1	=	0x0090
G$TMR3CN$0$0 == 0x0091
_TMR3CN	=	0x0091
G$TMR3RLL$0$0 == 0x0092
_TMR3RLL	=	0x0092
G$TMR3RLH$0$0 == 0x0093
_TMR3RLH	=	0x0093
G$TMR3L$0$0 == 0x0094
_TMR3L	=	0x0094
G$TMR3H$0$0 == 0x0095
_TMR3H	=	0x0095
G$P7$0$0 == 0x0096
_P7	=	0x0096
G$SCON$0$0 == 0x0098
_SCON	=	0x0098
G$SCON0$0$0 == 0x0098
_SCON0	=	0x0098
G$SBUF$0$0 == 0x0099
_SBUF	=	0x0099
G$SBUF0$0$0 == 0x0099
_SBUF0	=	0x0099
G$SPI0CFG$0$0 == 0x009a
_SPI0CFG	=	0x009a
G$SPI0DAT$0$0 == 0x009b
_SPI0DAT	=	0x009b
G$ADC1$0$0 == 0x009c
_ADC1	=	0x009c
G$SPI0CKR$0$0 == 0x009d
_SPI0CKR	=	0x009d
G$CPT0CN$0$0 == 0x009e
_CPT0CN	=	0x009e
G$CPT1CN$0$0 == 0x009f
_CPT1CN	=	0x009f
G$P2$0$0 == 0x00a0
_P2	=	0x00a0
G$EMI0TC$0$0 == 0x00a1
_EMI0TC	=	0x00a1
G$EMI0CF$0$0 == 0x00a3
_EMI0CF	=	0x00a3
G$PRT0CF$0$0 == 0x00a4
_PRT0CF	=	0x00a4
G$P0MDOUT$0$0 == 0x00a4
_P0MDOUT	=	0x00a4
G$PRT1CF$0$0 == 0x00a5
_PRT1CF	=	0x00a5
G$P1MDOUT$0$0 == 0x00a5
_P1MDOUT	=	0x00a5
G$PRT2CF$0$0 == 0x00a6
_PRT2CF	=	0x00a6
G$P2MDOUT$0$0 == 0x00a6
_P2MDOUT	=	0x00a6
G$PRT3CF$0$0 == 0x00a7
_PRT3CF	=	0x00a7
G$P3MDOUT$0$0 == 0x00a7
_P3MDOUT	=	0x00a7
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$SADDR0$0$0 == 0x00a9
_SADDR0	=	0x00a9
G$ADC1CN$0$0 == 0x00aa
_ADC1CN	=	0x00aa
G$ADC1CF$0$0 == 0x00ab
_ADC1CF	=	0x00ab
G$AMX1SL$0$0 == 0x00ac
_AMX1SL	=	0x00ac
G$P3IF$0$0 == 0x00ad
_P3IF	=	0x00ad
G$SADEN1$0$0 == 0x00ae
_SADEN1	=	0x00ae
G$EMI0CN$0$0 == 0x00af
_EMI0CN	=	0x00af
G$_XPAGE$0$0 == 0x00af
__XPAGE	=	0x00af
G$P3$0$0 == 0x00b0
_P3	=	0x00b0
G$OSCXCN$0$0 == 0x00b1
_OSCXCN	=	0x00b1
G$OSCICN$0$0 == 0x00b2
_OSCICN	=	0x00b2
G$P74OUT$0$0 == 0x00b5
_P74OUT	=	0x00b5
G$FLSCL$0$0 == 0x00b6
_FLSCL	=	0x00b6
G$FLACL$0$0 == 0x00b7
_FLACL	=	0x00b7
G$IP$0$0 == 0x00b8
_IP	=	0x00b8
G$SADEN0$0$0 == 0x00b9
_SADEN0	=	0x00b9
G$AMX0CF$0$0 == 0x00ba
_AMX0CF	=	0x00ba
G$AMX0SL$0$0 == 0x00bb
_AMX0SL	=	0x00bb
G$ADC0CF$0$0 == 0x00bc
_ADC0CF	=	0x00bc
G$P1MDIN$0$0 == 0x00bd
_P1MDIN	=	0x00bd
G$ADC0L$0$0 == 0x00be
_ADC0L	=	0x00be
G$ADC0H$0$0 == 0x00bf
_ADC0H	=	0x00bf
G$SMB0CN$0$0 == 0x00c0
_SMB0CN	=	0x00c0
G$SMB0STA$0$0 == 0x00c1
_SMB0STA	=	0x00c1
G$SMB0DAT$0$0 == 0x00c2
_SMB0DAT	=	0x00c2
G$SMB0ADR$0$0 == 0x00c3
_SMB0ADR	=	0x00c3
G$ADC0GTL$0$0 == 0x00c4
_ADC0GTL	=	0x00c4
G$ADC0GTH$0$0 == 0x00c5
_ADC0GTH	=	0x00c5
G$ADC0LTL$0$0 == 0x00c6
_ADC0LTL	=	0x00c6
G$ADC0LTH$0$0 == 0x00c7
_ADC0LTH	=	0x00c7
G$T2CON$0$0 == 0x00c8
_T2CON	=	0x00c8
G$T4CON$0$0 == 0x00c9
_T4CON	=	0x00c9
G$RCAP2L$0$0 == 0x00ca
_RCAP2L	=	0x00ca
G$RCAP2H$0$0 == 0x00cb
_RCAP2H	=	0x00cb
G$TL2$0$0 == 0x00cc
_TL2	=	0x00cc
G$TH2$0$0 == 0x00cd
_TH2	=	0x00cd
G$SMB0CR$0$0 == 0x00cf
_SMB0CR	=	0x00cf
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$REF0CN$0$0 == 0x00d1
_REF0CN	=	0x00d1
G$DAC0L$0$0 == 0x00d2
_DAC0L	=	0x00d2
G$DAC0H$0$0 == 0x00d3
_DAC0H	=	0x00d3
G$DAC0CN$0$0 == 0x00d4
_DAC0CN	=	0x00d4
G$DAC1L$0$0 == 0x00d5
_DAC1L	=	0x00d5
G$DAC1H$0$0 == 0x00d6
_DAC1H	=	0x00d6
G$DAC1CN$0$0 == 0x00d7
_DAC1CN	=	0x00d7
G$PCA0CN$0$0 == 0x00d8
_PCA0CN	=	0x00d8
G$PCA0MD$0$0 == 0x00d9
_PCA0MD	=	0x00d9
G$PCA0CPM0$0$0 == 0x00da
_PCA0CPM0	=	0x00da
G$PCA0CPM1$0$0 == 0x00db
_PCA0CPM1	=	0x00db
G$PCA0CPM2$0$0 == 0x00dc
_PCA0CPM2	=	0x00dc
G$PCA0CPM3$0$0 == 0x00dd
_PCA0CPM3	=	0x00dd
G$PCA0CPM4$0$0 == 0x00de
_PCA0CPM4	=	0x00de
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$XBR0$0$0 == 0x00e1
_XBR0	=	0x00e1
G$XBR1$0$0 == 0x00e2
_XBR1	=	0x00e2
G$XBR2$0$0 == 0x00e3
_XBR2	=	0x00e3
G$RCAP4L$0$0 == 0x00e4
_RCAP4L	=	0x00e4
G$RCAP4H$0$0 == 0x00e5
_RCAP4H	=	0x00e5
G$EIE1$0$0 == 0x00e6
_EIE1	=	0x00e6
G$EIE2$0$0 == 0x00e7
_EIE2	=	0x00e7
G$ADC0CN$0$0 == 0x00e8
_ADC0CN	=	0x00e8
G$PCA0L$0$0 == 0x00e9
_PCA0L	=	0x00e9
G$PCA0CPL0$0$0 == 0x00ea
_PCA0CPL0	=	0x00ea
G$PCA0CPL1$0$0 == 0x00eb
_PCA0CPL1	=	0x00eb
G$PCA0CPL2$0$0 == 0x00ec
_PCA0CPL2	=	0x00ec
G$PCA0CPL3$0$0 == 0x00ed
_PCA0CPL3	=	0x00ed
G$PCA0CPL4$0$0 == 0x00ee
_PCA0CPL4	=	0x00ee
G$RSTSRC$0$0 == 0x00ef
_RSTSRC	=	0x00ef
G$B$0$0 == 0x00f0
_B	=	0x00f0
G$SCON1$0$0 == 0x00f1
_SCON1	=	0x00f1
G$SBUF1$0$0 == 0x00f2
_SBUF1	=	0x00f2
G$SADDR1$0$0 == 0x00f3
_SADDR1	=	0x00f3
G$TL4$0$0 == 0x00f4
_TL4	=	0x00f4
G$TH4$0$0 == 0x00f5
_TH4	=	0x00f5
G$EIP1$0$0 == 0x00f6
_EIP1	=	0x00f6
G$EIP2$0$0 == 0x00f7
_EIP2	=	0x00f7
G$SPI0CN$0$0 == 0x00f8
_SPI0CN	=	0x00f8
G$PCA0H$0$0 == 0x00f9
_PCA0H	=	0x00f9
G$PCA0CPH0$0$0 == 0x00fa
_PCA0CPH0	=	0x00fa
G$PCA0CPH1$0$0 == 0x00fb
_PCA0CPH1	=	0x00fb
G$PCA0CPH2$0$0 == 0x00fc
_PCA0CPH2	=	0x00fc
G$PCA0CPH3$0$0 == 0x00fd
_PCA0CPH3	=	0x00fd
G$PCA0CPH4$0$0 == 0x00fe
_PCA0CPH4	=	0x00fe
G$WDTCN$0$0 == 0x00ff
_WDTCN	=	0x00ff
G$TMR0$0$0 == 0x8c8a
_TMR0	=	0x8c8a
G$TMR1$0$0 == 0x8d8b
_TMR1	=	0x8d8b
G$TMR2$0$0 == 0xcdcc
_TMR2	=	0xcdcc
G$RCAP2$0$0 == 0xcbca
_RCAP2	=	0xcbca
G$TMR3$0$0 == 0x9594
_TMR3	=	0x9594
G$TMR3RL$0$0 == 0x9392
_TMR3RL	=	0x9392
G$TMR4$0$0 == 0xf5f4
_TMR4	=	0xf5f4
G$RCAP4$0$0 == 0xe5e4
_RCAP4	=	0xe5e4
G$ADC0$0$0 == 0xbfbe
_ADC0	=	0xbfbe
G$ADC0GT$0$0 == 0xc5c4
_ADC0GT	=	0xc5c4
G$ADC0LT$0$0 == 0xc7c6
_ADC0LT	=	0xc7c6
G$DAC0$0$0 == 0xd3d2
_DAC0	=	0xd3d2
G$DAC1$0$0 == 0xd6d5
_DAC1	=	0xd6d5
G$PCA0$0$0 == 0xf9e9
_PCA0	=	0xf9e9
G$PCA0CP0$0$0 == 0xfaea
_PCA0CP0	=	0xfaea
G$PCA0CP1$0$0 == 0xfbeb
_PCA0CP1	=	0xfbeb
G$PCA0CP2$0$0 == 0xfcec
_PCA0CP2	=	0xfcec
G$PCA0CP3$0$0 == 0xfded
_PCA0CP3	=	0xfded
G$PCA0CP4$0$0 == 0xfeee
_PCA0CP4	=	0xfeee
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
G$IT0$0$0 == 0x0088
_IT0	=	0x0088
G$IE0$0$0 == 0x0089
_IE0	=	0x0089
G$IT1$0$0 == 0x008a
_IT1	=	0x008a
G$IE1$0$0 == 0x008b
_IE1	=	0x008b
G$TR0$0$0 == 0x008c
_TR0	=	0x008c
G$TF0$0$0 == 0x008d
_TF0	=	0x008d
G$TR1$0$0 == 0x008e
_TR1	=	0x008e
G$TF1$0$0 == 0x008f
_TF1	=	0x008f
G$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
G$RI$0$0 == 0x0098
_RI	=	0x0098
G$RI0$0$0 == 0x0098
_RI0	=	0x0098
G$TI$0$0 == 0x0099
_TI	=	0x0099
G$TI0$0$0 == 0x0099
_TI0	=	0x0099
G$RB8$0$0 == 0x009a
_RB8	=	0x009a
G$RB80$0$0 == 0x009a
_RB80	=	0x009a
G$TB8$0$0 == 0x009b
_TB8	=	0x009b
G$TB80$0$0 == 0x009b
_TB80	=	0x009b
G$REN$0$0 == 0x009c
_REN	=	0x009c
G$REN0$0$0 == 0x009c
_REN0	=	0x009c
G$SM2$0$0 == 0x009d
_SM2	=	0x009d
G$SM20$0$0 == 0x009d
_SM20	=	0x009d
G$MCE0$0$0 == 0x009d
_MCE0	=	0x009d
G$SM1$0$0 == 0x009e
_SM1	=	0x009e
G$SM10$0$0 == 0x009e
_SM10	=	0x009e
G$SM0$0$0 == 0x009f
_SM0	=	0x009f
G$SM00$0$0 == 0x009f
_SM00	=	0x009f
G$S0MODE$0$0 == 0x009f
_S0MODE	=	0x009f
G$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
G$EX0$0$0 == 0x00a8
_EX0	=	0x00a8
G$ET0$0$0 == 0x00a9
_ET0	=	0x00a9
G$EX1$0$0 == 0x00aa
_EX1	=	0x00aa
G$ET1$0$0 == 0x00ab
_ET1	=	0x00ab
G$ES0$0$0 == 0x00ac
_ES0	=	0x00ac
G$ES$0$0 == 0x00ac
_ES	=	0x00ac
G$ET2$0$0 == 0x00ad
_ET2	=	0x00ad
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$P3_0$0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0$0 == 0x00b7
_P3_7	=	0x00b7
G$PX0$0$0 == 0x00b8
_PX0	=	0x00b8
G$PT0$0$0 == 0x00b9
_PT0	=	0x00b9
G$PX1$0$0 == 0x00ba
_PX1	=	0x00ba
G$PT1$0$0 == 0x00bb
_PT1	=	0x00bb
G$PS0$0$0 == 0x00bc
_PS0	=	0x00bc
G$PS$0$0 == 0x00bc
_PS	=	0x00bc
G$PT2$0$0 == 0x00bd
_PT2	=	0x00bd
G$SMBTOE$0$0 == 0x00c0
_SMBTOE	=	0x00c0
G$SMBFTE$0$0 == 0x00c1
_SMBFTE	=	0x00c1
G$AA$0$0 == 0x00c2
_AA	=	0x00c2
G$SI$0$0 == 0x00c3
_SI	=	0x00c3
G$STO$0$0 == 0x00c4
_STO	=	0x00c4
G$STA$0$0 == 0x00c5
_STA	=	0x00c5
G$ENSMB$0$0 == 0x00c6
_ENSMB	=	0x00c6
G$BUSY$0$0 == 0x00c7
_BUSY	=	0x00c7
G$CPRL2$0$0 == 0x00c8
_CPRL2	=	0x00c8
G$CT2$0$0 == 0x00c9
_CT2	=	0x00c9
G$TR2$0$0 == 0x00ca
_TR2	=	0x00ca
G$EXEN2$0$0 == 0x00cb
_EXEN2	=	0x00cb
G$TCLK$0$0 == 0x00cc
_TCLK	=	0x00cc
G$RCLK$0$0 == 0x00cd
_RCLK	=	0x00cd
G$EXF2$0$0 == 0x00ce
_EXF2	=	0x00ce
G$TF2$0$0 == 0x00cf
_TF2	=	0x00cf
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$F1$0$0 == 0x00d1
_F1	=	0x00d1
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
G$CCF0$0$0 == 0x00d8
_CCF0	=	0x00d8
G$CCF1$0$0 == 0x00d9
_CCF1	=	0x00d9
G$CCF2$0$0 == 0x00da
_CCF2	=	0x00da
G$CCF3$0$0 == 0x00db
_CCF3	=	0x00db
G$CCF4$0$0 == 0x00dc
_CCF4	=	0x00dc
G$CR$0$0 == 0x00de
_CR	=	0x00de
G$CF$0$0 == 0x00df
_CF	=	0x00df
G$ADLJST$0$0 == 0x00e8
_ADLJST	=	0x00e8
G$AD0LJST$0$0 == 0x00e8
_AD0LJST	=	0x00e8
G$ADWINT$0$0 == 0x00e9
_ADWINT	=	0x00e9
G$AD0WINT$0$0 == 0x00e9
_AD0WINT	=	0x00e9
G$ADSTM0$0$0 == 0x00ea
_ADSTM0	=	0x00ea
G$AD0CM0$0$0 == 0x00ea
_AD0CM0	=	0x00ea
G$ADSTM1$0$0 == 0x00eb
_ADSTM1	=	0x00eb
G$AD0CM1$0$0 == 0x00eb
_AD0CM1	=	0x00eb
G$ADBUSY$0$0 == 0x00ec
_ADBUSY	=	0x00ec
G$AD0BUSY$0$0 == 0x00ec
_AD0BUSY	=	0x00ec
G$ADCINT$0$0 == 0x00ed
_ADCINT	=	0x00ed
G$AD0INT$0$0 == 0x00ed
_AD0INT	=	0x00ed
G$ADCTM$0$0 == 0x00ee
_ADCTM	=	0x00ee
G$AD0TM$0$0 == 0x00ee
_AD0TM	=	0x00ee
G$ADCEN$0$0 == 0x00ef
_ADCEN	=	0x00ef
G$AD0EN$0$0 == 0x00ef
_AD0EN	=	0x00ef
G$SPIEN$0$0 == 0x00f8
_SPIEN	=	0x00f8
G$MSTEN$0$0 == 0x00f9
_MSTEN	=	0x00f9
G$SLVSEL$0$0 == 0x00fa
_SLVSEL	=	0x00fa
G$TXBSY$0$0 == 0x00fb
_TXBSY	=	0x00fb
G$RXOVRN$0$0 == 0x00fc
_RXOVRN	=	0x00fc
G$MODF$0$0 == 0x00fd
_MODF	=	0x00fd
G$WCOL$0$0 == 0x00fe
_WCOL	=	0x00fe
G$SPIF$0$0 == 0x00ff
_SPIF	=	0x00ff
G$BUS_BUSY$0$0 == 0x00c7
_BUS_BUSY	=	0x00c7
G$BUS_EN$0$0 == 0x00c6
_BUS_EN	=	0x00c6
G$BUS_START$0$0 == 0x00c5
_BUS_START	=	0x00c5
G$BUS_STOP$0$0 == 0x00c4
_BUS_STOP	=	0x00c4
G$BUS_INT$0$0 == 0x00c3
_BUS_INT	=	0x00c3
G$BUS_AA$0$0 == 0x00c2
_BUS_AA	=	0x00c2
G$BUS_FTE$0$0 == 0x00c1
_BUS_FTE	=	0x00c1
G$BUS_TOE$0$0 == 0x00c0
_BUS_TOE	=	0x00c0
G$BUS_SCL$0$0 == 0x0083
_BUS_SCL	=	0x0083
G$mSS$0$0 == 0x00b7
_mSS	=	0x00b7
G$LED$0$0 == 0x0094
_LED	=	0x0094
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$Data2$0$0==.
_Data2::
	.ds 3
Llab4kfix.aligned_alloc$size$1$39==.
_aligned_alloc_PARM_2:
	.ds 2
Llab4kfix.lcd_clear$NumBytes$1$85==.
_lcd_clear_NumBytes_1_85:
	.ds 1
Llab4kfix.lcd_clear$Cmd$1$85==.
_lcd_clear_Cmd_1_85:
	.ds 2
Llab4kfix.read_keypad$Data$1$86==.
_read_keypad_Data_1_86:
	.ds 2
Llab4kfix.i2c_write_data$start_reg$1$105==.
_i2c_write_data_PARM_2:
	.ds 1
Llab4kfix.i2c_write_data$buffer$1$105==.
_i2c_write_data_PARM_3:
	.ds 3
Llab4kfix.i2c_write_data$num_bytes$1$105==.
_i2c_write_data_PARM_4:
	.ds 1
Llab4kfix.i2c_read_data$start_reg$1$107==.
_i2c_read_data_PARM_2:
	.ds 1
Llab4kfix.i2c_read_data$buffer$1$107==.
_i2c_read_data_PARM_3:
	.ds 3
Llab4kfix.i2c_read_data$num_bytes$1$107==.
_i2c_read_data_PARM_4:
	.ds 1
G$Counts$0$0==.
_Counts::
	.ds 2
G$sPW$0$0==.
_sPW::
	.ds 2
G$mPW$0$0==.
_mPW::
	.ds 2
G$dist$0$0==.
_dist::
	.ds 1
G$r_Data$0$0==.
_r_Data::
	.ds 2
G$range$0$0==.
_range::
	.ds 2
G$r_addr$0$0==.
_r_addr::
	.ds 1
G$r_Counts$0$0==.
_r_Counts::
	.ds 1
G$new_range$0$0==.
_new_range::
	.ds 1
G$c_addr$0$0==.
_c_addr::
	.ds 1
G$c_Data$0$0==.
_c_Data::
	.ds 2
G$heading$0$0==.
_heading::
	.ds 2
G$h_Counts$0$0==.
_h_Counts::
	.ds 1
G$new_heading$0$0==.
_new_heading::
	.ds 1
G$desired_heading$0$0==.
_desired_heading::
	.ds 2
G$error$0$0==.
_error::
	.ds 2
G$adc_value$0$0==.
_adc_value::
	.ds 1
G$voltage$0$0==.
_voltage::
	.ds 2
G$lcd_count$0$0==.
_lcd_count::
	.ds 2
G$new_lcd$0$0==.
_new_lcd::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Llab4kfix.lcd_print$text$1$81==.
_lcd_print_text_1_81:
	.ds 80
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
G$sPW_CENTER$0$0==.
_sPW_CENTER::
	.ds 2
G$sPW_MIN$0$0==.
_sPW_MIN::
	.ds 2
G$sPW_MAX$0$0==.
_sPW_MAX::
	.ds 2
G$mPW_CENTER$0$0==.
_mPW_CENTER::
	.ds 2
G$mPW_MIN$0$0==.
_mPW_MIN::
	.ds 2
G$mPW_MAX$0$0==.
_mPW_MAX::
	.ds 2
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_PCA_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	C$lab4kfix.c$32$1$180 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:32: unsigned int sPW = 0;
	clr	a
	mov	_sPW,a
	mov	(_sPW + 1),a
	C$lab4kfix.c$37$1$180 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:37: unsigned int mPW = 0;
	mov	_mPW,a
	mov	(_mPW + 1),a
	C$lab4kfix.c$46$1$180 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:46: unsigned int range = 0;
	mov	_range,a
	mov	(_range + 1),a
	C$lab4kfix.c$47$1$180 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:47: unsigned char r_addr = 0xE0; // the address of the ranger
	mov	_r_addr,#0xe0
	C$lab4kfix.c$48$1$180 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:48: unsigned char r_Counts=0;
;	1-genFromRTrack replaced	mov	_r_Counts,#0x00
	mov	_r_Counts,a
	C$lab4kfix.c$49$1$180 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:49: unsigned char new_range = 0;
;	1-genFromRTrack replaced	mov	_new_range,#0x00
	mov	_new_range,a
	C$lab4kfix.c$51$1$180 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:51: unsigned char c_addr = 0xC0;
	mov	_c_addr,#0xc0
	C$lab4kfix.c$54$1$180 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:54: unsigned char h_Counts = 0;
;	1-genFromRTrack replaced	mov	_h_Counts,#0x00
	mov	_h_Counts,a
	C$lab4kfix.c$55$1$180 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:55: unsigned char new_heading =0;
;	1-genFromRTrack replaced	mov	_new_heading,#0x00
	mov	_new_heading,a
	C$lab4kfix.c$56$1$180 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:56: unsigned int desired_heading = 900; //Try 3300
	mov	_desired_heading,#0x84
	mov	(_desired_heading + 1),#0x03
	C$lab4kfix.c$63$1$180 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:63: unsigned int lcd_count = 0; //overflow timer
	mov	_lcd_count,a
	mov	(_lcd_count + 1),a
	C$lab4kfix.c$64$1$180 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:64: unsigned char new_lcd = 0;	//overcount timer
;	1-genFromRTrack replaced	mov	_new_lcd,#0x00
	mov	_new_lcd,a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'SYSCLK_Init'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$SYSCLK_Init$0$0 ==.
	C$c8051_SDCC.h$62$0$0 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:62: void SYSCLK_Init(void)
;	-----------------------------------------
;	 function SYSCLK_Init
;	-----------------------------------------
_SYSCLK_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$c8051_SDCC.h$66$1$2 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:66: OSCXCN = 0x67;                      // start external oscillator with
	mov	_OSCXCN,#0x67
	C$c8051_SDCC.h$69$1$2 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:69: for (i=0; i < 256; i++);            // wait for oscillator to start
	mov	r6,#0x00
	mov	r7,#0x01
00107$:
	mov	a,r6
	add	a,#0xff
	mov	r4,a
	mov	a,r7
	addc	a,#0xff
	mov	r5,a
	mov	ar6,r4
	mov	ar7,r5
	mov	a,r4
	orl	a,r5
	jnz	00107$
	C$c8051_SDCC.h$71$1$2 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:71: while (!(OSCXCN & 0x80));           // Wait for crystal osc. to settle
00102$:
	mov	a,_OSCXCN
	jnb	acc.7,00102$
	C$c8051_SDCC.h$73$1$2 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:73: OSCICN = 0x88;                      // select external oscillator as SYSCLK
	mov	_OSCICN,#0x88
	C$c8051_SDCC.h$76$1$2 ==.
	XG$SYSCLK_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_Init'
;------------------------------------------------------------
	G$UART0_Init$0$0 ==.
	C$c8051_SDCC.h$84$1$2 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:84: void UART0_Init(void)
;	-----------------------------------------
;	 function UART0_Init
;	-----------------------------------------
_UART0_Init:
	C$c8051_SDCC.h$86$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:86: SCON0  = 0x50;                      // SCON0: mode 1, 8-bit UART, enable RX
	mov	_SCON0,#0x50
	C$c8051_SDCC.h$87$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:87: TMOD   = 0x20;                      // TMOD: timer 1, mode 2, 8-bit reload
	mov	_TMOD,#0x20
	C$c8051_SDCC.h$88$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:88: TH1    = 0xFF&-(SYSCLK/BAUDRATE/16);     // set Timer1 reload value for baudrate
	mov	_TH1,#0xdc
	C$c8051_SDCC.h$89$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:89: TR1    = 1;                         // start Timer1
	setb	_TR1
	C$c8051_SDCC.h$90$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:90: CKCON |= 0x10;                      // Timer1 uses SYSCLK as time base
	orl	_CKCON,#0x10
	C$c8051_SDCC.h$91$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:91: PCON  |= 0x80;                      // SMOD00 = 1 (disable baud rate 
	orl	_PCON,#0x80
	C$c8051_SDCC.h$93$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:93: TI0    = 1;                         // Indicate TX0 ready
	setb	_TI0
	C$c8051_SDCC.h$94$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:94: P0MDOUT |= 0x01;                    // Set TX0 to push/pull
	orl	_P0MDOUT,#0x01
	C$c8051_SDCC.h$95$1$4 ==.
	XG$UART0_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Sys_Init'
;------------------------------------------------------------
	G$Sys_Init$0$0 ==.
	C$c8051_SDCC.h$103$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:103: void Sys_Init(void)
;	-----------------------------------------
;	 function Sys_Init
;	-----------------------------------------
_Sys_Init:
	C$c8051_SDCC.h$105$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:105: WDTCN = 0xde;			// disable watchdog timer
	mov	_WDTCN,#0xde
	C$c8051_SDCC.h$106$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:106: WDTCN = 0xad;
	mov	_WDTCN,#0xad
	C$c8051_SDCC.h$108$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:108: SYSCLK_Init();			// initialize oscillator
	lcall	_SYSCLK_Init
	C$c8051_SDCC.h$109$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:109: UART0_Init();			// initialize UART0
	lcall	_UART0_Init
	C$c8051_SDCC.h$111$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:111: XBR0 |= 0x04;
	orl	_XBR0,#0x04
	C$c8051_SDCC.h$112$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:112: XBR2 |= 0x40;                    	// Enable crossbar and weak pull-ups
	orl	_XBR2,#0x40
	C$c8051_SDCC.h$113$1$6 ==.
	XG$Sys_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
	G$putchar$0$0 ==.
	C$c8051_SDCC.h$129$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:129: void putchar(char c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dpl
	C$c8051_SDCC.h$132$1$8 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:132: while (!TI0); 
00101$:
	C$c8051_SDCC.h$133$1$8 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:133: TI0 = 0;
	jbc	_TI0,00112$
	sjmp	00101$
00112$:
	C$c8051_SDCC.h$134$1$8 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:134: SBUF0 = c;
	mov	_SBUF0,r7
	C$c8051_SDCC.h$135$1$8 ==.
	XG$putchar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
	G$getchar$0$0 ==.
	C$c8051_SDCC.h$154$1$8 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:154: char getchar(void)
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
	C$c8051_SDCC.h$157$1$10 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:157: while (!RI0);
00101$:
	C$c8051_SDCC.h$158$1$10 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:158: RI0 = 0;
	jbc	_RI0,00112$
	sjmp	00101$
00112$:
	C$c8051_SDCC.h$159$1$10 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:159: c = SBUF0;
	mov	r7,_SBUF0
	C$c8051_SDCC.h$160$1$10 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:160: putchar(c);                          // echo to terminal
	mov	dpl,r7
	push	ar7
	lcall	_putchar
	pop	ar7
	C$c8051_SDCC.h$161$1$10 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:161: return c;
	mov	dpl,r7
	C$c8051_SDCC.h$162$1$10 ==.
	XG$getchar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar_nw'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
	G$getchar_nw$0$0 ==.
	C$c8051_SDCC.h$168$1$10 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:168: char getchar_nw(void)
;	-----------------------------------------
;	 function getchar_nw
;	-----------------------------------------
_getchar_nw:
	C$c8051_SDCC.h$171$1$12 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:171: if (!RI0) return 0xFF;
	jb	_RI0,00102$
	mov	dpl,#0xff
	sjmp	00104$
00102$:
	C$c8051_SDCC.h$174$2$13 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:174: RI0 = 0;
	clr	_RI0
	C$c8051_SDCC.h$175$2$13 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:175: c = SBUF0;
	mov	dpl,_SBUF0
	C$c8051_SDCC.h$176$2$13 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:176: putchar(c);                          // echo to terminal
	lcall	_putchar
	C$c8051_SDCC.h$177$2$13 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:177: return SBUF0;
	mov	dpl,_SBUF0
00104$:
	C$c8051_SDCC.h$179$1$12 ==.
	XG$getchar_nw$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_print'
;------------------------------------------------------------
;fmt                       Allocated to stack - _bp -5
;len                       Allocated to registers r6 
;i                         Allocated to registers 
;ap                        Allocated to registers 
;text                      Allocated with name '_lcd_print_text_1_81'
;------------------------------------------------------------
	G$lcd_print$0$0 ==.
	C$i2c.h$84$1$12 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:84: void lcd_print(const char *fmt, ...)
;	-----------------------------------------
;	 function lcd_print
;	-----------------------------------------
_lcd_print:
	push	_bp
	mov	_bp,sp
	C$i2c.h$90$1$81 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:90: if ( strlen(fmt) <= 0 ) return;         //If there is no data to print, return
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_strlen
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00102$
	sjmp	00109$
00102$:
	C$i2c.h$92$2$82 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:92: va_start(ap, fmt);
	mov	a,_bp
	add	a,#0xfb
	mov	r7,a
	mov	_vsprintf_PARM_3,r7
	C$i2c.h$93$1$81 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:93: vsprintf(text, fmt, ap);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	_vsprintf_PARM_2,@r0
	inc	r0
	mov	(_vsprintf_PARM_2 + 1),@r0
	inc	r0
	mov	(_vsprintf_PARM_2 + 2),@r0
	mov	dptr,#_lcd_print_text_1_81
	mov	b,#0x00
	lcall	_vsprintf
	C$i2c.h$96$1$81 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:96: len = strlen(text);
	mov	dptr,#_lcd_print_text_1_81
	mov	b,#0x00
	lcall	_strlen
	mov	r6,dpl
	C$i2c.h$97$1$81 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:97: for(i=0; i<len; i++)
	mov	r7,#0x00
00107$:
	clr	c
	mov	a,r7
	subb	a,r6
	jnc	00105$
	C$i2c.h$99$2$84 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:99: if(text[i] == (unsigned char)'\n') text[i] = 13;
	mov	a,r7
	add	a,#_lcd_print_text_1_81
	mov	dpl,a
	clr	a
	addc	a,#(_lcd_print_text_1_81 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x0a,00108$
	mov	a,r7
	add	a,#_lcd_print_text_1_81
	mov	dpl,a
	clr	a
	addc	a,#(_lcd_print_text_1_81 >> 8)
	mov	dph,a
	mov	a,#0x0d
	movx	@dptr,a
00108$:
	C$i2c.h$97$1$81 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:97: for(i=0; i<len; i++)
	inc	r7
	sjmp	00107$
00105$:
	C$i2c.h$102$1$81 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:102: i2c_write_data(0xC6, 0x00, text, len);
	mov	_i2c_write_data_PARM_3,#_lcd_print_text_1_81
	mov	(_i2c_write_data_PARM_3 + 1),#(_lcd_print_text_1_81 >> 8)
	mov	(_i2c_write_data_PARM_3 + 2),#0x00
	mov	_i2c_write_data_PARM_2,#0x00
	mov	_i2c_write_data_PARM_4,r6
	mov	dpl,#0xc6
	lcall	_i2c_write_data
00109$:
	pop	_bp
	C$i2c.h$103$1$81 ==.
	XG$lcd_print$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_clear'
;------------------------------------------------------------
;NumBytes                  Allocated with name '_lcd_clear_NumBytes_1_85'
;Cmd                       Allocated with name '_lcd_clear_Cmd_1_85'
;------------------------------------------------------------
	G$lcd_clear$0$0 ==.
	C$i2c.h$106$1$81 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:106: void lcd_clear()
;	-----------------------------------------
;	 function lcd_clear
;	-----------------------------------------
_lcd_clear:
	C$i2c.h$108$1$81 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:108: unsigned char NumBytes=0, Cmd[2];
	mov	_lcd_clear_NumBytes_1_85,#0x00
	C$i2c.h$110$1$85 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:110: while(NumBytes < 64) i2c_read_data(0xC6, 0x00, &NumBytes, 1);
00101$:
	mov	a,#0x100 - 0x40
	add	a,_lcd_clear_NumBytes_1_85
	jc	00103$
	mov	_i2c_read_data_PARM_3,#_lcd_clear_NumBytes_1_85
	mov	(_i2c_read_data_PARM_3 + 1),#0x00
	mov	(_i2c_read_data_PARM_3 + 2),#0x40
	mov	_i2c_read_data_PARM_2,#0x00
	mov	_i2c_read_data_PARM_4,#0x01
	mov	dpl,#0xc6
	lcall	_i2c_read_data
	sjmp	00101$
00103$:
	C$i2c.h$112$1$85 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:112: Cmd[0] = 12;
	mov	_lcd_clear_Cmd_1_85,#0x0c
	C$i2c.h$113$1$85 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:113: i2c_write_data(0xC6, 0x00, Cmd, 1);
	mov	_i2c_write_data_PARM_3,#_lcd_clear_Cmd_1_85
	mov	(_i2c_write_data_PARM_3 + 1),#0x00
	mov	(_i2c_write_data_PARM_3 + 2),#0x40
	mov	_i2c_write_data_PARM_2,#0x00
	mov	_i2c_write_data_PARM_4,#0x01
	mov	dpl,#0xc6
	lcall	_i2c_write_data
	C$i2c.h$114$1$85 ==.
	XG$lcd_clear$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_keypad'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;Data                      Allocated with name '_read_keypad_Data_1_86'
;------------------------------------------------------------
	G$read_keypad$0$0 ==.
	C$i2c.h$117$1$85 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:117: unsigned char read_keypad()
;	-----------------------------------------
;	 function read_keypad
;	-----------------------------------------
_read_keypad:
	C$i2c.h$121$1$86 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:121: i2c_read_data(0xC6, 0x01, Data, 2); //Read I2C data on address 192, register 1, 2 bytes of data.
	mov	_i2c_read_data_PARM_3,#_read_keypad_Data_1_86
	mov	(_i2c_read_data_PARM_3 + 1),#0x00
	mov	(_i2c_read_data_PARM_3 + 2),#0x40
	mov	_i2c_read_data_PARM_2,#0x01
	mov	_i2c_read_data_PARM_4,#0x02
	mov	dpl,#0xc6
	lcall	_i2c_read_data
	C$i2c.h$122$1$86 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:122: if(Data[0] == 0xFF) return 0;   //No response on bus, no display
	mov	a,#0xff
	cjne	a,_read_keypad_Data_1_86,00102$
	mov	dpl,#0x00
	sjmp	00116$
00102$:
	C$i2c.h$124$1$86 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:124: for(i=0; i<8; i++)              //loop 8 times
	mov	r7,#0x00
	mov	ar6,r7
00114$:
	C$i2c.h$126$2$87 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:126: if(Data[0] & (0x01 << i))   //find the ASCII value of the keypad read, if it is the current loop value
	mov	b,r6
	inc	b
	mov	r4,#0x01
	mov	r5,#0x00
	sjmp	00145$
00144$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
00145$:
	djnz	b,00144$
	mov	r2,_read_keypad_Data_1_86
	mov	r3,#0x00
	mov	a,r2
	anl	ar4,a
	mov	a,r3
	anl	ar5,a
	mov	a,r4
	orl	a,r5
	jz	00115$
	C$i2c.h$127$2$87 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:127: return i+49;
	mov	a,#0x31
	add	a,r7
	mov	dpl,a
	sjmp	00116$
00115$:
	C$i2c.h$124$1$86 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:124: for(i=0; i<8; i++)              //loop 8 times
	inc	r6
	mov	ar7,r6
	cjne	r6,#0x08,00147$
00147$:
	jc	00114$
	C$i2c.h$130$1$86 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:130: if(Data[1] & 0x01) return '9';  //if the value is equal to 9 return 9.
	mov	a,(_read_keypad_Data_1_86 + 0x0001)
	jnb	acc.0,00107$
	mov	dpl,#0x39
	sjmp	00116$
00107$:
	C$i2c.h$132$1$86 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:132: if(Data[1] & 0x02) return '*';  //if the value is equal to the star.
	mov	a,(_read_keypad_Data_1_86 + 0x0001)
	jnb	acc.1,00109$
	mov	dpl,#0x2a
	sjmp	00116$
00109$:
	C$i2c.h$134$1$86 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:134: if(Data[1] & 0x04) return '0';  //if the value is equal to the 0 key
	mov	a,(_read_keypad_Data_1_86 + 0x0001)
	jnb	acc.2,00111$
	mov	dpl,#0x30
	sjmp	00116$
00111$:
	C$i2c.h$136$1$86 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:136: if(Data[1] & 0x08) return '#';  //if the value is equal to the pound key
	mov	a,(_read_keypad_Data_1_86 + 0x0001)
	jnb	acc.3,00113$
	mov	dpl,#0x23
	sjmp	00116$
00113$:
	C$i2c.h$138$1$86 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:138: return 0xFF;                    //else return a numerical -1 (0xFF)
	mov	dpl,#0xff
00116$:
	C$i2c.h$139$1$86 ==.
	XG$read_keypad$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'kpd_input'
;------------------------------------------------------------
;mode                      Allocated to registers r7 
;sum                       Allocated to registers r5 r6 
;key                       Allocated to registers r3 
;i                         Allocated to registers 
;------------------------------------------------------------
	G$kpd_input$0$0 ==.
	C$i2c.h$151$1$86 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:151: unsigned int kpd_input(char mode)
;	-----------------------------------------
;	 function kpd_input
;	-----------------------------------------
_kpd_input:
	mov	r7,dpl
	C$i2c.h$156$1$89 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:156: sum = 0;
	C$i2c.h$159$1$89 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:159: if(mode==0)lcd_print("\nType digits; end w/#");
	clr	a
	mov	r5,a
	mov	r6,a
	mov	a,r7
	jnz	00102$
	push	ar6
	push	ar5
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_lcd_print
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
00102$:
	C$i2c.h$161$1$89 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:161: lcd_print("     %c%c%c%c%c",0x08,0x08,0x08,0x08,0x08);
	push	ar6
	push	ar5
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_lcd_print
	mov	a,sp
	add	a,#0xf3
	mov	sp,a
	C$i2c.h$163$1$89 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:163: delay_time(500000);             //Add 20ms delay before reading i2c in loop
	mov	dptr,#0xa120
	mov	b,#0x07
	clr	a
	lcall	_delay_time
	pop	ar5
	pop	ar6
	C$i2c.h$167$1$89 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:167: for(i=0; i<5; i++)
	mov	r7,#0x00
	C$i2c.h$169$3$92 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:169: while(((key=read_keypad()) == 0xFF) || (key == '*'))delay_time(10000);
00104$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_read_keypad
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	ar3,r4
	cjne	r4,#0xff,00146$
	sjmp	00105$
00146$:
	cjne	r3,#0x2a,00106$
00105$:
	mov	dptr,#0x2710
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_time
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00104$
00106$:
	C$i2c.h$170$2$90 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:170: if(key == '#')
	cjne	r3,#0x23,00114$
	C$i2c.h$172$3$91 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:172: while(read_keypad() == '#')delay_time(10000);
00107$:
	push	ar6
	push	ar5
	lcall	_read_keypad
	mov	r4,dpl
	pop	ar5
	pop	ar6
	cjne	r4,#0x23,00109$
	mov	dptr,#0x2710
	clr	a
	mov	b,a
	push	ar6
	push	ar5
	lcall	_delay_time
	pop	ar5
	pop	ar6
	sjmp	00107$
00109$:
	C$i2c.h$173$3$91 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:173: return sum;
	mov	dpl,r5
	mov	dph,r6
	ljmp	00119$
00114$:
	C$i2c.h$177$3$92 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:177: lcd_print("%c", key);
	mov	ar2,r3
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar2
	push	ar4
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_lcd_print
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	C$i2c.h$178$1$89 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:178: sum = sum*10 + key - '0';
	mov	__mulint_PARM_2,r5
	mov	(__mulint_PARM_2 + 1),r6
	mov	dptr,#0x000a
	push	ar4
	push	ar3
	push	ar2
	lcall	__mulint
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
	mov	a,r2
	add	a,r0
	mov	r0,a
	mov	a,r4
	addc	a,r1
	mov	r1,a
	mov	a,r0
	add	a,#0xd0
	mov	r5,a
	mov	a,r1
	addc	a,#0xff
	mov	r6,a
	C$i2c.h$179$3$92 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:179: while(read_keypad() == key)delay_time(10000); //wait for key to be released
00110$:
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	lcall	_read_keypad
	mov	r4,dpl
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r4
	cjne	a,ar3,00118$
	mov	dptr,#0x2710
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	lcall	_delay_time
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00110$
00118$:
	C$i2c.h$167$1$89 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:167: for(i=0; i<5; i++)
	inc	r7
	cjne	r7,#0x05,00155$
00155$:
	jnc	00156$
	ljmp	00104$
00156$:
	C$i2c.h$182$1$89 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:182: return sum;
	mov	dpl,r5
	mov	dph,r6
00119$:
	C$i2c.h$183$1$89 ==.
	XG$kpd_input$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_time'
;------------------------------------------------------------
;time_end                  Allocated to registers r4 r5 r6 r7 
;index                     Allocated to registers 
;------------------------------------------------------------
	G$delay_time$0$0 ==.
	C$i2c.h$192$1$89 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:192: void delay_time (unsigned long time_end)
;	-----------------------------------------
;	 function delay_time
;	-----------------------------------------
_delay_time:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	C$i2c.h$196$1$94 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:196: for (index = 0; index < time_end; index++); //for loop delay
	mov	r0,#0x00
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
00103$:
	clr	c
	mov	a,r0
	subb	a,r4
	mov	a,r1
	subb	a,r5
	mov	a,r2
	subb	a,r6
	mov	a,r3
	subb	a,r7
	jnc	00105$
	inc	r0
	cjne	r0,#0x00,00115$
	inc	r1
	cjne	r1,#0x00,00115$
	inc	r2
	cjne	r2,#0x00,00103$
	inc	r3
00115$:
	sjmp	00103$
00105$:
	C$i2c.h$197$1$94 ==.
	XG$delay_time$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
	G$i2c_start$0$0 ==.
	C$i2c.h$200$1$94 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:200: void i2c_start(void)
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
	C$i2c.h$202$1$96 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:202: while(BUSY);                //Wait until SMBus0 is free
00101$:
	jb	_BUSY,00101$
	C$i2c.h$203$1$96 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:203: STA = 1;                    //Set Start Bit
	setb	_STA
	C$i2c.h$204$1$96 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:204: while(!SI);                 //Wait until start sent
00104$:
	jnb	_SI,00104$
	C$i2c.h$205$1$96 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:205: STA = 0;                    //Clear start bit
	clr	_STA
	C$i2c.h$206$1$96 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:206: SI = 0;                     //Clear SI
	clr	_SI
	C$i2c.h$207$1$96 ==.
	XG$i2c_start$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write'
;------------------------------------------------------------
;output_data               Allocated to registers 
;------------------------------------------------------------
	G$i2c_write$0$0 ==.
	C$i2c.h$210$1$96 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:210: void i2c_write(unsigned char output_data)
;	-----------------------------------------
;	 function i2c_write
;	-----------------------------------------
_i2c_write:
	mov	_SMB0DAT,dpl
	C$i2c.h$213$1$98 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:213: while(!SI);                 //Wait until send is complete
00101$:
	C$i2c.h$214$1$98 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:214: SI = 0;                     //Clear SI
	jbc	_SI,00112$
	sjmp	00101$
00112$:
	C$i2c.h$215$1$98 ==.
	XG$i2c_write$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write_and_stop'
;------------------------------------------------------------
;output_data               Allocated to registers 
;------------------------------------------------------------
	G$i2c_write_and_stop$0$0 ==.
	C$i2c.h$218$1$98 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:218: void i2c_write_and_stop(unsigned char output_data)
;	-----------------------------------------
;	 function i2c_write_and_stop
;	-----------------------------------------
_i2c_write_and_stop:
	mov	_SMB0DAT,dpl
	C$i2c.h$221$1$100 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:221: STO = 1;                    //Set stop bit
	setb	_STO
	C$i2c.h$222$1$100 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:222: while(!SI);                 //Wait until send is complete
00101$:
	C$i2c.h$223$1$100 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:223: SI = 0;                     //Clear SI
	jbc	_SI,00112$
	sjmp	00101$
00112$:
	C$i2c.h$224$1$100 ==.
	XG$i2c_write_and_stop$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read'
;------------------------------------------------------------
;input_data                Allocated to registers 
;------------------------------------------------------------
	G$i2c_read$0$0 ==.
	C$i2c.h$227$1$100 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:227: unsigned char i2c_read(void)
;	-----------------------------------------
;	 function i2c_read
;	-----------------------------------------
_i2c_read:
	C$i2c.h$231$1$102 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:231: while(!SI);                 //Wait until we have data to read
00101$:
	jnb	_SI,00101$
	C$i2c.h$232$1$102 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:232: input_data = SMB0DAT;       //Read the data
	mov	dpl,_SMB0DAT
	C$i2c.h$233$1$102 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:233: SI = 0;                     //Clear SI
	clr	_SI
	C$i2c.h$234$1$102 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:234: return input_data;          //Return the read data
	C$i2c.h$235$1$102 ==.
	XG$i2c_read$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read_and_stop'
;------------------------------------------------------------
;input_data                Allocated to registers r7 
;------------------------------------------------------------
	G$i2c_read_and_stop$0$0 ==.
	C$i2c.h$238$1$102 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:238: unsigned char i2c_read_and_stop(void)
;	-----------------------------------------
;	 function i2c_read_and_stop
;	-----------------------------------------
_i2c_read_and_stop:
	C$i2c.h$242$1$104 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:242: while(!SI);                 //Wait until we have data to read
00101$:
	jnb	_SI,00101$
	C$i2c.h$243$1$104 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:243: input_data = SMB0DAT;       //Read the data
	mov	r7,_SMB0DAT
	C$i2c.h$244$1$104 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:244: SI = 0;                     //Clear SI
	clr	_SI
	C$i2c.h$245$1$104 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:245: STO = 1;                    //Set stop bit
	setb	_STO
	C$i2c.h$246$1$104 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:246: while(!SI);                 //Wait for stop
00104$:
	C$i2c.h$247$1$104 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:247: SI = 0;
	jbc	_SI,00122$
	sjmp	00104$
00122$:
	C$i2c.h$248$1$104 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:248: return input_data;          //Return the read data
	mov	dpl,r7
	C$i2c.h$249$1$104 ==.
	XG$i2c_read_and_stop$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write_data'
;------------------------------------------------------------
;start_reg                 Allocated with name '_i2c_write_data_PARM_2'
;buffer                    Allocated with name '_i2c_write_data_PARM_3'
;num_bytes                 Allocated with name '_i2c_write_data_PARM_4'
;addr                      Allocated to registers r7 
;i                         Allocated to registers 
;------------------------------------------------------------
	G$i2c_write_data$0$0 ==.
	C$i2c.h$252$1$104 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:252: void i2c_write_data(unsigned char addr, unsigned char start_reg, unsigned char *buffer, unsigned char num_bytes)
;	-----------------------------------------
;	 function i2c_write_data
;	-----------------------------------------
_i2c_write_data:
	mov	r7,dpl
	C$i2c.h$256$1$106 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:256: EA = 0;                     //Don't allow interrupts during I2C work
	clr	_EA
	C$i2c.h$257$1$106 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:257: i2c_start();                //Initiate I2C transfer
	push	ar7
	lcall	_i2c_start
	pop	ar7
	C$i2c.h$258$1$106 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:258: i2c_write(addr & ~0x01);    //Write the desired address to the bus
	mov	a,#0xfe
	anl	a,r7
	mov	dpl,a
	lcall	_i2c_write
	C$i2c.h$259$1$106 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:259: i2c_write(start_reg);       //Write the start register to the bus
	mov	dpl,_i2c_write_data_PARM_2
	lcall	_i2c_write
	C$i2c.h$260$1$106 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:260: for(i=0; i<num_bytes-1; i++) //Write the data to the register(s)
	mov	r7,#0x00
00103$:
	mov	r5,_i2c_write_data_PARM_4
	mov	r6,#0x00
	dec	r5
	cjne	r5,#0xff,00114$
	dec	r6
00114$:
	mov	ar3,r7
	mov	r4,#0x00
	clr	c
	mov	a,r3
	subb	a,r5
	mov	a,r4
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
	C$i2c.h$261$1$106 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:261: i2c_write(buffer[i]);
	mov	a,r7
	add	a,_i2c_write_data_PARM_3
	mov	r4,a
	clr	a
	addc	a,(_i2c_write_data_PARM_3 + 1)
	mov	r5,a
	mov	r6,(_i2c_write_data_PARM_3 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	lcall	_i2c_write
	pop	ar7
	C$i2c.h$260$1$106 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:260: for(i=0; i<num_bytes-1; i++) //Write the data to the register(s)
	inc	r7
	sjmp	00103$
00101$:
	C$i2c.h$262$1$106 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:262: i2c_write_and_stop(buffer[num_bytes-1]); //Stop transfer
	mov	r6,_i2c_write_data_PARM_4
	mov	r7,#0x00
	dec	r6
	cjne	r6,#0xff,00116$
	dec	r7
00116$:
	mov	a,r6
	add	a,_i2c_write_data_PARM_3
	mov	r6,a
	mov	a,r7
	addc	a,(_i2c_write_data_PARM_3 + 1)
	mov	r7,a
	mov	r5,(_i2c_write_data_PARM_3 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrget
	mov	dpl,a
	lcall	_i2c_write_and_stop
	C$i2c.h$263$1$106 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:263: EA = 1;                     //Re-Enable interrupts
	setb	_EA
	C$i2c.h$264$1$106 ==.
	XG$i2c_write_data$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read_data'
;------------------------------------------------------------
;start_reg                 Allocated with name '_i2c_read_data_PARM_2'
;buffer                    Allocated with name '_i2c_read_data_PARM_3'
;num_bytes                 Allocated with name '_i2c_read_data_PARM_4'
;addr                      Allocated to registers r7 
;j                         Allocated to registers 
;------------------------------------------------------------
	G$i2c_read_data$0$0 ==.
	C$i2c.h$267$1$106 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:267: void i2c_read_data(unsigned char addr, unsigned char start_reg, unsigned char *buffer, unsigned char num_bytes)
;	-----------------------------------------
;	 function i2c_read_data
;	-----------------------------------------
_i2c_read_data:
	mov	r7,dpl
	C$i2c.h$271$1$108 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:271: EA = 0;                     //Don't allow interrupts during I2C work
	clr	_EA
	C$i2c.h$272$1$108 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:272: i2c_start();                //Start I2C transfer
	push	ar7
	lcall	_i2c_start
	pop	ar7
	C$i2c.h$273$1$108 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:273: i2c_write(addr & ~0x01);    //Write address of device that will be written to, send 0
	mov	a,#0xfe
	anl	a,r7
	mov	dpl,a
	push	ar7
	lcall	_i2c_write
	C$i2c.h$274$1$108 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:274: i2c_write_and_stop(start_reg); //Write & stop the 1st register to be read
	mov	dpl,_i2c_read_data_PARM_2
	lcall	_i2c_write_and_stop
	C$i2c.h$275$1$108 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:275: i2c_start();                //Start I2C transfer
	lcall	_i2c_start
	pop	ar7
	C$i2c.h$276$1$108 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:276: i2c_write(addr | 0x01);     //Write address again, this time indicating a read operation
	mov	a,#0x01
	orl	a,r7
	mov	dpl,a
	lcall	_i2c_write
	C$i2c.h$277$1$108 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:277: for(j = 0; j < num_bytes - 1; j++)
	mov	r7,#0x00
00103$:
	mov	r5,_i2c_read_data_PARM_4
	mov	r6,#0x00
	dec	r5
	cjne	r5,#0xff,00114$
	dec	r6
00114$:
	mov	ar3,r7
	mov	r4,#0x00
	clr	c
	mov	a,r3
	subb	a,r5
	mov	a,r4
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
	C$i2c.h$279$2$109 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:279: AA = 1;                 //Set acknowledge bit
	setb	_AA
	C$i2c.h$280$2$109 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:280: buffer[j] = i2c_read(); //Read data, save it in buffer
	mov	a,r7
	add	a,_i2c_read_data_PARM_3
	mov	r4,a
	clr	a
	addc	a,(_i2c_read_data_PARM_3 + 1)
	mov	r5,a
	mov	r6,(_i2c_read_data_PARM_3 + 2)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_i2c_read
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r3
	lcall	__gptrput
	C$i2c.h$277$1$108 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:277: for(j = 0; j < num_bytes - 1; j++)
	inc	r7
	sjmp	00103$
00101$:
	C$i2c.h$282$1$108 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:282: AA = 0;
	clr	_AA
	C$i2c.h$283$1$108 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:283: buffer[num_bytes - 1] = i2c_read_and_stop(); //Read the last byte and stop, save it in the buffer
	mov	r6,_i2c_read_data_PARM_4
	mov	r7,#0x00
	dec	r6
	cjne	r6,#0xff,00116$
	dec	r7
00116$:
	mov	a,r6
	add	a,_i2c_read_data_PARM_3
	mov	r6,a
	mov	a,r7
	addc	a,(_i2c_read_data_PARM_3 + 1)
	mov	r7,a
	mov	r5,(_i2c_read_data_PARM_3 + 2)
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_read_and_stop
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
	lcall	__gptrput
	C$i2c.h$284$1$108 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:284: EA = 1;                     //Re-Enable interrupts
	setb	_EA
	C$i2c.h$285$1$108 ==.
	XG$i2c_read_data$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Accel_Init'
;------------------------------------------------------------
	G$Accel_Init$0$0 ==.
	C$i2c.h$294$1$108 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:294: void Accel_Init(void)
;	-----------------------------------------
;	 function Accel_Init
;	-----------------------------------------
_Accel_Init:
	C$i2c.h$298$1$111 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:298: Data2[0]=0x23;  //normal power mode, 50Hz ODR, y & x axes enabled
	mov	_Data2,#0x23
	C$i2c.h$300$1$111 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:300: Data2[1]=0x00;  //default - no filtering
	mov	(_Data2 + 0x0001),#0x00
	C$i2c.h$301$1$111 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:301: Data2[1]=0x10;  //filtered data selected, HPF = 1.0->0.125Hz
	mov	(_Data2 + 0x0001),#0x10
	C$i2c.h$302$1$111 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:302: Data2[2]=0x00;  //default - no interrupts enabled
	mov	(_Data2 + 0x0002),#0x00
	C$i2c.h$304$1$111 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:304: i2c_write_data(addr_accel, 0x20, Data2, 1);
	mov	_i2c_write_data_PARM_3,#_Data2
	mov	(_i2c_write_data_PARM_3 + 1),#0x00
	mov	(_i2c_write_data_PARM_3 + 2),#0x40
	mov	_i2c_write_data_PARM_2,#0x20
	mov	_i2c_write_data_PARM_4,#0x01
	mov	dpl,#0x30
	lcall	_i2c_write_data
	C$i2c.h$310$1$111 ==.
	XG$Accel_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Accel_Init_C'
;------------------------------------------------------------
	G$Accel_Init_C$0$0 ==.
	C$i2c.h$313$1$111 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:313: void Accel_Init_C(void)
;	-----------------------------------------
;	 function Accel_Init_C
;	-----------------------------------------
_Accel_Init_C:
	C$i2c.h$318$1$113 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:318: Data2[0]=0x04;  //set register address auto increment bit
	mov	_Data2,#0x04
	C$i2c.h$319$1$113 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:319: i2c_write_data(addr_accelC, 0x23, Data2, 1);
	mov	_i2c_write_data_PARM_3,#_Data2
	mov	(_i2c_write_data_PARM_3 + 1),#0x00
	mov	(_i2c_write_data_PARM_3 + 2),#0x40
	mov	_i2c_write_data_PARM_2,#0x23
	mov	_i2c_write_data_PARM_4,#0x01
	mov	dpl,#0x3a
	lcall	_i2c_write_data
	C$i2c.h$321$1$113 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:321: Data2[0]=0x6B;  //R20 normal power mode, 800Hz ODR, y & x axes enabled
	mov	_Data2,#0x6b
	C$i2c.h$323$1$113 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:323: Data2[1]=0x00;  //R21 Default - no HP filtering
	mov	(_Data2 + 0x0001),#0x00
	C$i2c.h$325$1$113 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:325: Data2[2]=0x00;  //R22 Default - no interrupts enabled
	mov	(_Data2 + 0x0002),#0x00
	C$i2c.h$326$1$113 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:326: i2c_write_data(addr_accelC, 0x20, Data2, 1);
	mov	_i2c_write_data_PARM_3,#_Data2
	mov	(_i2c_write_data_PARM_3 + 1),#0x00
	mov	(_i2c_write_data_PARM_3 + 2),#0x40
	mov	_i2c_write_data_PARM_2,#0x20
	mov	_i2c_write_data_PARM_4,#0x01
	mov	dpl,#0x3a
	lcall	_i2c_write_data
	C$i2c.h$328$1$113 ==.
	XG$Accel_Init_C$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$lab4kfix.c$78$1$113 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:78: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$lab4kfix.c$81$1$130 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:81: Sys_Init();
	lcall	_Sys_Init
	C$lab4kfix.c$82$1$130 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:82: putchar(' '); //the quotes in this line may not format correctly
	mov	dpl,#0x20
	lcall	_putchar
	C$lab4kfix.c$83$1$130 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:83: Port_Init();
	lcall	_Port_Init
	C$lab4kfix.c$84$1$130 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:84: XBR0_Init();//!!!!!!!!!!!!!!Done set the crossbar to accomodate untrasonic ranger
	lcall	_XBR0_Init
	C$lab4kfix.c$85$1$130 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:85: PCA_Init();
	lcall	_PCA_Init
	C$lab4kfix.c$86$1$130 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:86: SMB_Init();
	lcall	_SMB_Init
	C$lab4kfix.c$87$1$130 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:87: ADC_Init();
	lcall	_ADC_Init
	C$lab4kfix.c$90$1$130 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:90: printf("Embedded Control Pulsewidth Calibration\r\n");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab4kfix.c$95$1$130 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:95: sPW = sPW_CENTER;
	mov	dptr,#_sPW_CENTER
	movx	a,@dptr
	mov	_sPW,a
	inc	dptr
	movx	a,@dptr
	mov	(_sPW + 1),a
	C$lab4kfix.c$96$1$130 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:96: PCA0CP0 = 65535 - sPW;
	mov	r4,_sPW
	mov	r5,(_sPW + 1)
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,#0xff
	clr	c
	subb	a,r4
	mov	r4,a
	mov	a,#0xff
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	mov	((_PCA0CP0 >> 0) & 0xFF),r4
	mov	((_PCA0CP0 >> 8) & 0xFF),r5
	C$lab4kfix.c$97$1$130 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:97: mPW = mPW_CENTER;
	mov	dptr,#_mPW_CENTER
	movx	a,@dptr
	mov	_mPW,a
	inc	dptr
	movx	a,@dptr
	mov	(_mPW + 1),a
	C$lab4kfix.c$98$1$130 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:98: PCA0CP2 = 65535 - mPW;
	mov	r4,_mPW
	mov	r5,(_mPW + 1)
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,#0xff
	clr	c
	subb	a,r4
	mov	r4,a
	mov	a,#0xff
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
	mov	((_PCA0CP2 >> 0) & 0xFF),r4
	mov	((_PCA0CP2 >> 8) & 0xFF),r5
	C$lab4kfix.c$101$1$130 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:101: while(Counts < 50);//wait for 1 sec
00101$:
	clr	c
	mov	a,_Counts
	subb	a,#0x32
	mov	a,(_Counts + 1)
	subb	a,#0x00
	jc	00101$
	C$lab4kfix.c$103$1$130 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:103: printf("Steering Calibration finished. %u \r\n",sPW);
	push	_sPW
	push	(_sPW + 1)
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$lab4kfix.c$104$1$130 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:104: printf("Motor Calibration finished. %u \r\n",mPW);
	push	_mPW
	push	(_mPW + 1)
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$lab4kfix.c$107$1$130 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:107: lcd_clear();
	lcall	_lcd_clear
	C$lab4kfix.c$108$1$130 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:108: lcd_print("Calibration:\nHello world!\n");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_lcd_print
	dec	sp
	dec	sp
	dec	sp
	C$lab4kfix.c$110$1$130 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:110: while(1)
00105$:
	C$lab4kfix.c$112$2$131 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:112: CarControl();
	lcall	_CarControl
	sjmp	00105$
	C$lab4kfix.c$114$1$130 ==.
	XG$main$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Port_Init'
;------------------------------------------------------------
	G$Port_Init$0$0 ==.
	C$lab4kfix.c$122$1$130 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:122: void Port_Init()
;	-----------------------------------------
;	 function Port_Init
;	-----------------------------------------
_Port_Init:
	C$lab4kfix.c$124$1$132 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:124: P1MDOUT |= 0x0C;  //set output pin for CEX0 or CEX2 in push-pull mode on p1.0-steering, p1.2-motor
	orl	_P1MDOUT,#0x0c
	C$lab4kfix.c$125$1$132 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:125: P3MDOUT &= ~0x80; //set input pin open-drain for slide switch on p3.5, p3.6, p3.7
	anl	_P3MDOUT,#0x7f
	C$lab4kfix.c$126$1$132 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:126: P3 |= 0x80; //set input pin in high-impedience
	orl	_P3,#0x80
	C$lab4kfix.c$127$1$132 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:127: P1MDIN &= ~0x80;
	anl	_P1MDIN,#0x7f
	C$lab4kfix.c$128$1$132 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:128: P1 |= 0x80;
	orl	_P1,#0x80
	C$lab4kfix.c$129$1$132 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:129: P1MDOUT &= ~0x80;
	anl	_P1MDOUT,#0x7f
	C$lab4kfix.c$130$1$132 ==.
	XG$Port_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'XBR0_Init'
;------------------------------------------------------------
	G$XBR0_Init$0$0 ==.
	C$lab4kfix.c$138$1$132 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:138: void XBR0_Init()
;	-----------------------------------------
;	 function XBR0_Init
;	-----------------------------------------
_XBR0_Init:
	C$lab4kfix.c$140$1$133 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:140: XBR0 = 0x27;  //configure crossbar as directed in the laboratory
	mov	_XBR0,#0x27
	C$lab4kfix.c$142$1$133 ==.
	XG$XBR0_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PCA_Init'
;------------------------------------------------------------
	G$PCA_Init$0$0 ==.
	C$lab4kfix.c$150$1$133 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:150: void PCA_Init(void)
;	-----------------------------------------
;	 function PCA_Init
;	-----------------------------------------
_PCA_Init:
	C$lab4kfix.c$154$1$135 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:154: PCA0CN = 0x40;
	mov	_PCA0CN,#0x40
	C$lab4kfix.c$155$1$135 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:155: PCA0MD = 0x81;
	mov	_PCA0MD,#0x81
	C$lab4kfix.c$156$1$135 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:156: EIE1 |= 0x08;
	orl	_EIE1,#0x08
	C$lab4kfix.c$157$1$135 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:157: EA = 1;
	setb	_EA
	C$lab4kfix.c$159$1$135 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:159: PCA0CPM0 = PCA0CPM2 = PCA0CPM3 = 0xC2;
	mov	_PCA0CPM3,#0xc2
	mov	_PCA0CPM2,#0xc2
	mov	_PCA0CPM0,#0xc2
	C$lab4kfix.c$160$1$135 ==.
	XG$PCA_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SMB_Init'
;------------------------------------------------------------
	G$SMB_Init$0$0 ==.
	C$lab4kfix.c$164$1$135 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:164: void SMB_Init(void)
;	-----------------------------------------
;	 function SMB_Init
;	-----------------------------------------
_SMB_Init:
	C$lab4kfix.c$166$1$137 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:166: SMB0CR = 0x93;
	mov	_SMB0CR,#0x93
	C$lab4kfix.c$167$1$137 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:167: ENSMB = 1; 
	setb	_ENSMB
	C$lab4kfix.c$168$1$137 ==.
	XG$SMB_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_Init'
;------------------------------------------------------------
	G$ADC_Init$0$0 ==.
	C$lab4kfix.c$172$1$137 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:172: void ADC_Init(void)
;	-----------------------------------------
;	 function ADC_Init
;	-----------------------------------------
_ADC_Init:
	C$lab4kfix.c$174$1$139 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:174: REF0CN = 0x03;  /* Set Vref to use internal reference voltage (2.4V) */
	mov	_REF0CN,#0x03
	C$lab4kfix.c$175$1$139 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:175: ADC1CN = 0x80;  /* Enable A/D converter (ADC1) */
	mov	_ADC1CN,#0x80
	C$lab4kfix.c$176$1$139 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:176: ADC1CF |= 0x01; /* Set A/D converter gain to 1 */
	orl	_ADC1CF,#0x01
	C$lab4kfix.c$177$1$139 ==.
	XG$ADC_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PCA_ISR'
;------------------------------------------------------------
	G$PCA_ISR$0$0 ==.
	C$lab4kfix.c$186$1$139 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:186: void PCA_ISR ( void ) __interrupt 9
;	-----------------------------------------
;	 function PCA_ISR
;	-----------------------------------------
_PCA_ISR:
	push	acc
	push	psw
	C$lab4kfix.c$188$1$141 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:188: Counts ++;
	inc	_Counts
	clr	a
	cjne	a,_Counts,00123$
	inc	(_Counts + 1)
00123$:
	C$lab4kfix.c$189$1$141 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:189: if(CF)
	jnb	_CF,00108$
	C$lab4kfix.c$191$2$142 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:191: r_Counts++;
	inc	_r_Counts
	C$lab4kfix.c$192$2$142 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:192: h_Counts++;
	inc	_h_Counts
	C$lab4kfix.c$193$2$142 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:193: lcd_count++;
	inc	_lcd_count
	clr	a
	cjne	a,_lcd_count,00125$
	inc	(_lcd_count + 1)
00125$:
	C$lab4kfix.c$196$2$142 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:196: PCA0 = 65535 - 36864;
	mov	((_PCA0 >> 0) & 0xFF),#0xff
	mov	((_PCA0 >> 8) & 0xFF),#0x6f
	C$lab4kfix.c$198$2$142 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:198: CF=0;//CF 
	clr	_CF
	C$lab4kfix.c$200$2$142 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:200: if(r_Counts>=4)//4 overflows, 80 ms
	mov	a,#0x100 - 0x04
	add	a,_r_Counts
	jnc	00102$
	C$lab4kfix.c$202$3$143 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:202: new_range = 1;
	mov	_new_range,#0x01
	C$lab4kfix.c$203$3$143 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:203: r_Counts = 0;
	mov	_r_Counts,#0x00
00102$:
	C$lab4kfix.c$206$2$142 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:206: if(h_Counts>=2)//40ms
	mov	a,#0x100 - 0x02
	add	a,_h_Counts
	jnc	00104$
	C$lab4kfix.c$208$3$144 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:208: new_heading = 1;
	mov	_new_heading,#0x01
	C$lab4kfix.c$209$3$144 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:209: h_Counts = 0;
	mov	_h_Counts,#0x00
00104$:
	C$lab4kfix.c$211$2$142 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:211: if (lcd_count >= 20) //4 sec
	clr	c
	mov	a,_lcd_count
	subb	a,#0x14
	mov	a,(_lcd_count + 1)
	subb	a,#0x00
	jc	00108$
	C$lab4kfix.c$213$3$145 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:213: new_lcd = 1;
	mov	_new_lcd,#0x01
	C$lab4kfix.c$214$3$145 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:214: lcd_count = 0;
	clr	a
	mov	_lcd_count,a
	mov	(_lcd_count + 1),a
00108$:
	C$lab4kfix.c$218$1$141 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:218: PCA0CN &= 0x40;	
	anl	_PCA0CN,#0x40
	pop	psw
	pop	acc
	C$lab4kfix.c$219$1$141 ==.
	XG$PCA_ISR$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'CarControl'
;------------------------------------------------------------
	G$CarControl$0$0 ==.
	C$lab4kfix.c$221$1$141 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:221: void CarControl()
;	-----------------------------------------
;	 function CarControl
;	-----------------------------------------
_CarControl:
	C$lab4kfix.c$223$3$148 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:223: while(!mSS)
00114$:
	jnb	_mSS,00196$
	ljmp	00157$
00196$:
	C$lab4kfix.c$225$2$147 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:225: adc_value = read_ADC_value(7);
	mov	dpl,#0x07
	lcall	_read_ADC_value
	C$lab4kfix.c$226$2$147 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:226: voltage = read_battery_voltage(adc_value);
	mov  _adc_value,dpl
	lcall	_read_battery_voltage
	mov	_voltage,dpl
	mov	(_voltage + 1),dph
	C$lab4kfix.c$227$2$147 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:227: printf("$$$$$$$$$$Battery voltage: %u $$$$$$$$$$$$$$$\r\n", voltage);
	push	_voltage
	push	(_voltage + 1)
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$lab4kfix.c$229$2$147 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:229: Set_Pulsewidth();
	lcall	_Set_Pulsewidth
	C$lab4kfix.c$230$2$147 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:230: if(new_range)
	mov	a,_new_range
	jz	00106$
	C$lab4kfix.c$232$3$148 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:232: dist = ReadRanger();
	lcall	_ReadRanger
	mov	r6,dpl
	mov	_dist,r6
	C$lab4kfix.c$233$3$148 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:233: r_Data[0] = 0x51;//reading in cm
	mov	_r_Data,#0x51
	C$lab4kfix.c$234$3$148 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:234: i2c_write_data(r_addr,0,r_Data,1);
	mov	_i2c_write_data_PARM_3,#_r_Data
	mov	(_i2c_write_data_PARM_3 + 1),#0x00
	mov	(_i2c_write_data_PARM_3 + 2),#0x40
	mov	_i2c_write_data_PARM_2,#0x00
	mov	_i2c_write_data_PARM_4,#0x01
	mov	dpl,_r_addr
	lcall	_i2c_write_data
	C$lab4kfix.c$235$3$148 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:235: new_range = 0;
	mov	_new_range,#0x00
	C$lab4kfix.c$236$3$148 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:236: printf("distance is %u \r\n",dist);
	mov	r6,_dist
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$lab4kfix.c$237$3$148 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:237: if(dist <= 80)
	mov	a,_dist
	add	a,#0xff - 0x50
	jc	00102$
	C$lab4kfix.c$239$4$149 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:239: LED = 0;
	clr	_LED
00102$:
	C$lab4kfix.c$241$3$148 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:241: if(mSS)
	jnb	_mSS,00106$
	C$lab4kfix.c$243$4$150 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:243: mPW = mPW_CENTER;
	mov	dptr,#_mPW_CENTER
	movx	a,@dptr
	mov	_mPW,a
	inc	dptr
	movx	a,@dptr
	mov	(_mPW + 1),a
	C$lab4kfix.c$244$4$150 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:244: sPW = sPW_CENTER;
	mov	dptr,#_sPW_CENTER
	movx	a,@dptr
	mov	_sPW,a
	inc	dptr
	movx	a,@dptr
	mov	(_sPW + 1),a
	C$lab4kfix.c$245$4$150 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:245: LED = 1;
	setb	_LED
	C$lab4kfix.c$246$4$150 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:246: break;
	ljmp	00157$
00106$:
	C$lab4kfix.c$250$2$147 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:250: if(new_heading && dist > 80) 
	mov	a,_new_heading
	jz	00110$
	mov	a,_dist
	add	a,#0xff - 0x50
	jnc	00110$
	C$lab4kfix.c$252$3$151 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:252: LED = 1;
	setb	_LED
	C$lab4kfix.c$253$3$151 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:253: heading = ReadCompass();
	lcall	_ReadCompass
	mov	_heading,dpl
	mov	(_heading + 1),dph
	C$lab4kfix.c$254$3$151 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:254: printf("heading towards %u \n",heading);
	push	_heading
	push	(_heading + 1)
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$lab4kfix.c$255$3$151 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:255: new_heading = 0;
	mov	_new_heading,#0x00
	C$lab4kfix.c$256$3$151 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:256: if(mSS)
	jnb	_mSS,00110$
	C$lab4kfix.c$258$4$152 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:258: sPW = sPW_CENTER;
	mov	dptr,#_sPW_CENTER
	movx	a,@dptr
	mov	_sPW,a
	inc	dptr
	movx	a,@dptr
	mov	(_sPW + 1),a
	C$lab4kfix.c$259$4$152 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:259: mPW = mPW_CENTER;
	mov	dptr,#_mPW_CENTER
	movx	a,@dptr
	mov	_mPW,a
	inc	dptr
	movx	a,@dptr
	mov	(_mPW + 1),a
	C$lab4kfix.c$260$4$152 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:260: LED = 1;
	setb	_LED
	C$lab4kfix.c$261$4$152 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:261: break;
	sjmp	00157$
00110$:
	C$lab4kfix.c$265$2$147 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:265: if(new_lcd)
	mov	a,_new_lcd
	jnz	00203$
	ljmp	00114$
00203$:
	C$lab4kfix.c$267$3$153 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:267: lcd_clear();
	lcall	_lcd_clear
	C$lab4kfix.c$268$3$153 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:268: lcd_print("\n\rHeading %u,\n\r Reading %u", heading, range); 
	push	_range
	push	(_range + 1)
	push	_heading
	push	(_heading + 1)
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_lcd_print
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	C$lab4kfix.c$269$3$153 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:269: printf("\r%u\t%u\t%u\n", heading, range, sPW);
	push	_sPW
	push	(_sPW + 1)
	push	_range
	push	(_range + 1)
	push	_heading
	push	(_heading + 1)
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
	C$lab4kfix.c$270$3$153 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:270: new_lcd = 0;
	mov	_new_lcd,#0x00
	ljmp	00114$
	C$lab4kfix.c$275$1$146 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:275: do
00157$:
00134$:
	C$lab4kfix.c$277$2$154 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:277: adc_value = read_ADC_value(7);
	mov	dpl,#0x07
	lcall	_read_ADC_value
	C$lab4kfix.c$278$2$154 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:278: voltage = read_battery_voltage(adc_value);
	mov  _adc_value,dpl
	lcall	_read_battery_voltage
	mov	_voltage,dpl
	mov	(_voltage + 1),dph
	C$lab4kfix.c$279$2$154 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:279: printf("$$$$$$$$$$Battery voltage: %u $$$$$$$$$$$$$$$\r\n", voltage);
	push	_voltage
	push	(_voltage + 1)
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$lab4kfix.c$281$2$154 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:281: if(new_range && mSS)
	mov	a,_new_range
	jz	00122$
	jnb	_mSS,00122$
	C$lab4kfix.c$283$3$155 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:283: dist = ReadRanger();
	lcall	_ReadRanger
	mov	r6,dpl
	mov	_dist,r6
	C$lab4kfix.c$284$3$155 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:284: r_Data[0] = 0x51;//reading in cm
	mov	_r_Data,#0x51
	C$lab4kfix.c$285$3$155 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:285: i2c_write_data(r_addr,0,r_Data,1);
	mov	_i2c_write_data_PARM_3,#_r_Data
	mov	(_i2c_write_data_PARM_3 + 1),#0x00
	mov	(_i2c_write_data_PARM_3 + 2),#0x40
	mov	_i2c_write_data_PARM_2,#0x00
	mov	_i2c_write_data_PARM_4,#0x01
	mov	dpl,_r_addr
	lcall	_i2c_write_data
	C$lab4kfix.c$286$3$155 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:286: new_range = 0;
	mov	_new_range,#0x00
	C$lab4kfix.c$287$3$155 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:287: printf("distance is %u \r\n",dist);
	mov	r6,_dist
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$lab4kfix.c$288$3$155 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:288: if(dist <= 80)
	mov	a,_dist
	add	a,#0xff - 0x50
	jc	00123$
	C$lab4kfix.c$290$4$156 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:290: LED = 0;
	clr	_LED
	C$lab4kfix.c$291$4$156 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:291: Set_Overide();//overide heading
	lcall	_Set_Overide
	sjmp	00123$
00122$:
	C$lab4kfix.c$294$2$154 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:294: else if(!mSS)
	jb	_mSS,00123$
	C$lab4kfix.c$296$3$157 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:296: sPW = sPW_CENTER;
	mov	dptr,#_sPW_CENTER
	movx	a,@dptr
	mov	_sPW,a
	inc	dptr
	movx	a,@dptr
	mov	(_sPW + 1),a
	C$lab4kfix.c$297$3$157 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:297: mPW = mPW_CENTER;
	mov	dptr,#_mPW_CENTER
	movx	a,@dptr
	mov	_mPW,a
	inc	dptr
	movx	a,@dptr
	mov	(_mPW + 1),a
	C$lab4kfix.c$298$3$157 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:298: LED = 1;
	setb	_LED
00123$:
	C$lab4kfix.c$301$2$154 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:301: if(dist > 80 && new_heading && mSS) 
	mov	a,_dist
	add	a,#0xff - 0x50
	jnc	00128$
	mov	a,_new_heading
	jz	00128$
	jnb	_mSS,00128$
	C$lab4kfix.c$303$3$158 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:303: LED = 1;
	setb	_LED
	C$lab4kfix.c$304$3$158 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:304: heading = ReadCompass();
	lcall	_ReadCompass
	mov	_heading,dpl
	mov	(_heading + 1),dph
	C$lab4kfix.c$305$3$158 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:305: printf("heading towards %u \n",heading);
	push	_heading
	push	(_heading + 1)
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$lab4kfix.c$306$3$158 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:306: new_heading = 0;
	mov	_new_heading,#0x00
	C$lab4kfix.c$307$3$158 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:307: Set_Heading();
	lcall	_Set_Heading
	sjmp	00129$
00128$:
	C$lab4kfix.c$309$2$154 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:309: else if(!mSS)
	jb	_mSS,00129$
	C$lab4kfix.c$311$3$159 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:311: sPW = sPW_CENTER;
	mov	dptr,#_sPW_CENTER
	movx	a,@dptr
	mov	_sPW,a
	inc	dptr
	movx	a,@dptr
	mov	(_sPW + 1),a
	C$lab4kfix.c$312$3$159 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:312: mPW = mPW_CENTER;
	mov	dptr,#_mPW_CENTER
	movx	a,@dptr
	mov	_mPW,a
	inc	dptr
	movx	a,@dptr
	mov	(_mPW + 1),a
	C$lab4kfix.c$313$3$159 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:313: LED = 1;
	setb	_LED
00129$:
	C$lab4kfix.c$317$2$154 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:317: if (new_lcd)
	mov	a,_new_lcd
	jz	00133$
	C$lab4kfix.c$319$3$160 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:319: lcd_clear();
	lcall	_lcd_clear
	C$lab4kfix.c$320$3$160 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:320: lcd_print("\n\rHeading %u,\n\r Reading %u", heading, range);  
	push	_range
	push	(_range + 1)
	push	_heading
	push	(_heading + 1)
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_lcd_print
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	C$lab4kfix.c$321$3$160 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:321: printf("\r%u\t%u\t%u\n", heading, range, sPW);
	push	_sPW
	push	(_sPW + 1)
	push	_range
	push	(_range + 1)
	push	_heading
	push	(_heading + 1)
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
	C$lab4kfix.c$322$3$160 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:322: new_lcd = 0;
	mov	_new_lcd,#0x00
00133$:
	C$lab4kfix.c$327$2$154 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:327: Set_Speed();
	lcall	_Set_Speed
	C$lab4kfix.c$330$1$146 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:330: while(mSS);
	jnb	_mSS,00213$
	ljmp	00134$
00213$:
	C$lab4kfix.c$332$1$146 ==.
	XG$CarControl$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Pulsewidth'
;------------------------------------------------------------
;input                     Allocated to registers r7 
;------------------------------------------------------------
	G$Set_Pulsewidth$0$0 ==.
	C$lab4kfix.c$334$1$146 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:334: void Set_Pulsewidth()
;	-----------------------------------------
;	 function Set_Pulsewidth
;	-----------------------------------------
_Set_Pulsewidth:
	C$lab4kfix.c$338$1$161 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:338: input = getchar();
	lcall	_getchar
	mov	r7,dpl
	C$lab4kfix.c$339$1$161 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:339: if(input == 'w')  // single character input to increase the pulsewidth
	cjne	r7,#0x77,00108$
	C$lab4kfix.c$341$2$162 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:341: mPW += 50;
	mov	a,#0x32
	add	a,_mPW
	mov	_mPW,a
	clr	a
	addc	a,(_mPW + 1)
	mov	(_mPW + 1),a
	C$lab4kfix.c$342$2$162 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:342: if(mPW > mPW_MAX)  // check if greater than pulsewidth maximum
	mov	dptr,#_mPW_MAX
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,r5
	subb	a,_mPW
	mov	a,r6
	subb	a,(_mPW + 1)
	jnc	00109$
	C$lab4kfix.c$343$2$162 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:343: mPW = mPW_MAX;    // set PW to the maximum value
	mov	dptr,#_mPW_MAX
	movx	a,@dptr
	mov	_mPW,a
	inc	dptr
	movx	a,@dptr
	mov	(_mPW + 1),a
	sjmp	00109$
00108$:
	C$lab4kfix.c$345$1$161 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:345: else if(input == 's')  // single character input to decrease the pulsewidth
	cjne	r7,#0x73,00109$
	C$lab4kfix.c$347$2$163 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:347: mPW -= 50;
	mov	a,_mPW
	add	a,#0xce
	mov	_mPW,a
	mov	a,(_mPW + 1)
	addc	a,#0xff
	mov	(_mPW + 1),a
	C$lab4kfix.c$348$2$163 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:348: if(mPW < mPW_MIN)  // check if less than pulsewidth minimum
	mov	dptr,#_mPW_MIN
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,_mPW
	subb	a,r5
	mov	a,(_mPW + 1)
	subb	a,r6
	jnc	00109$
	C$lab4kfix.c$349$2$163 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:349: mPW = mPW_MIN;     // set PW to the minimum value
	mov	dptr,#_mPW_MIN
	movx	a,@dptr
	mov	_mPW,a
	inc	dptr
	movx	a,@dptr
	mov	(_mPW + 1),a
00109$:
	C$lab4kfix.c$351$1$161 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:351: if(input == 'd')
	cjne	r7,#0x64,00117$
	C$lab4kfix.c$353$2$164 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:353: sPW += 20;
	mov	a,#0x14
	add	a,_sPW
	mov	_sPW,a
	clr	a
	addc	a,(_sPW + 1)
	mov	(_sPW + 1),a
	C$lab4kfix.c$354$2$164 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:354: if(sPW > sPW_MAX)  // check if greater than pulsewidth maximum
	mov	dptr,#_sPW_MAX
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,r5
	subb	a,_sPW
	mov	a,r6
	subb	a,(_sPW + 1)
	jnc	00118$
	C$lab4kfix.c$355$2$164 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:355: sPW = sPW_MAX;    // set PW to the maximum value
	mov	dptr,#_sPW_MAX
	movx	a,@dptr
	mov	_sPW,a
	inc	dptr
	movx	a,@dptr
	mov	(_sPW + 1),a
	sjmp	00118$
00117$:
	C$lab4kfix.c$357$1$161 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:357: else if(input == 'a')  // single character input to decrease the pulsewidth
	cjne	r7,#0x61,00118$
	C$lab4kfix.c$359$2$165 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:359: sPW -= 20;
	mov	a,_sPW
	add	a,#0xec
	mov	_sPW,a
	mov	a,(_sPW + 1)
	addc	a,#0xff
	mov	(_sPW + 1),a
	C$lab4kfix.c$360$2$165 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:360: if(sPW < sPW_MIN)  // check if less than pulsewidth minimum
	mov	dptr,#_sPW_MIN
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,_sPW
	subb	a,r6
	mov	a,(_sPW + 1)
	subb	a,r7
	jnc	00118$
	C$lab4kfix.c$361$2$165 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:361: sPW = sPW_MIN;     // set PW to the minimum value
	mov	dptr,#_sPW_MIN
	movx	a,@dptr
	mov	_sPW,a
	inc	dptr
	movx	a,@dptr
	mov	(_sPW + 1),a
00118$:
	C$lab4kfix.c$363$1$161 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:363: printf("motor PW: %u\n", mPW);
	push	_mPW
	push	(_mPW + 1)
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$lab4kfix.c$364$1$161 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:364: PCA0CP2 = 0xFFFF - mPW;
	mov	a,#0xff
	clr	c
	subb	a,_mPW
	mov	((_PCA0CP2 >> 0) & 0xFF),a
	mov	a,#0xff
	subb	a,(_mPW + 1)
	mov	((_PCA0CP2 >> 8) & 0xFF),a
	C$lab4kfix.c$365$1$161 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:365: printf("stering PW: %u\n", sPW);
	push	_sPW
	push	(_sPW + 1)
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$lab4kfix.c$366$1$161 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:366: PCA0CP0 = 0xFFFF - sPW;
	mov	a,#0xff
	clr	c
	subb	a,_sPW
	mov	((_PCA0CP0 >> 0) & 0xFF),a
	mov	a,#0xff
	subb	a,(_sPW + 1)
	mov	((_PCA0CP0 >> 8) & 0xFF),a
	C$lab4kfix.c$368$1$161 ==.
	XG$Set_Pulsewidth$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Overide'
;------------------------------------------------------------
	G$Set_Overide$0$0 ==.
	C$lab4kfix.c$370$1$161 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:370: void Set_Overide()
;	-----------------------------------------
;	 function Set_Overide
;	-----------------------------------------
_Set_Overide:
	C$lab4kfix.c$372$1$166 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:372: if(dist < 10)
	mov	a,#0x100 - 0x0a
	add	a,_dist
	jc	00116$
	C$lab4kfix.c$373$1$166 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:373: sPW = sPW_MIN;
	mov	dptr,#_sPW_MIN
	movx	a,@dptr
	mov	_sPW,a
	inc	dptr
	movx	a,@dptr
	mov	(_sPW + 1),a
	ljmp	00117$
00116$:
	C$lab4kfix.c$374$1$166 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:374: else if(dist > 80)
	mov	a,_dist
	add	a,#0xff - 0x50
	jnc	00113$
	C$lab4kfix.c$375$1$166 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:375: sPW = sPW_MAX;
	mov	dptr,#_sPW_MAX
	movx	a,@dptr
	mov	_sPW,a
	inc	dptr
	movx	a,@dptr
	mov	(_sPW + 1),a
	ljmp	00117$
00113$:
	C$lab4kfix.c$378$2$167 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:378: if(dist < 45)
	mov	a,#0x100 - 0x2d
	add	a,_dist
	jnc	00140$
	ljmp	00110$
00140$:
	C$lab4kfix.c$379$2$167 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:379: sPW = sPW_CENTER - 18.57*(45 - dist);
	mov	r6,_dist
	mov	r7,#0x00
	mov	a,#0x2d
	clr	c
	subb	a,r6
	mov	dpl,a
	clr	a
	subb	a,r7
	mov	dph,a
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x8f5c
	mov	b,#0x94
	mov	a,#0x41
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_sPW_CENTER
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	___uint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2uint
	mov	_sPW,dpl
	mov	(_sPW + 1),dph
	ljmp	00117$
00110$:
	C$lab4kfix.c$380$2$167 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:380: else if(dist > 45)
	mov	a,_dist
	add	a,#0xff - 0x2d
	jc	00141$
	ljmp	00107$
00141$:
	C$lab4kfix.c$381$2$167 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:381: sPW = 18.57*(dist - 45) + sPW_CENTER;
	mov	r6,_dist
	mov	r7,#0x00
	mov	a,r6
	add	a,#0xd3
	mov	dpl,a
	mov	a,r7
	addc	a,#0xff
	mov	dph,a
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x8f5c
	mov	b,#0x94
	mov	a,#0x41
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_sPW_CENTER
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	___uint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2uint
	mov	_sPW,dpl
	mov	(_sPW + 1),dph
	sjmp	00117$
00107$:
	C$lab4kfix.c$383$2$167 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:383: if(sPW > sPW_MAX)
	mov	dptr,#_sPW_MAX
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,_sPW
	mov	a,r7
	subb	a,(_sPW + 1)
	jnc	00104$
	C$lab4kfix.c$384$2$167 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:384: sPW = sPW_MAX;
	mov	dptr,#_sPW_MAX
	movx	a,@dptr
	mov	_sPW,a
	inc	dptr
	movx	a,@dptr
	mov	(_sPW + 1),a
	sjmp	00117$
00104$:
	C$lab4kfix.c$385$2$167 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:385: else if(sPW < sPW_MIN)
	mov	dptr,#_sPW_MIN
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,_sPW
	subb	a,r6
	mov	a,(_sPW + 1)
	subb	a,r7
	jnc	00117$
	C$lab4kfix.c$386$2$167 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:386: sPW = sPW_MIN;
	mov	dptr,#_sPW_MIN
	movx	a,@dptr
	mov	_sPW,a
	inc	dptr
	movx	a,@dptr
	mov	(_sPW + 1),a
00117$:
	C$lab4kfix.c$388$1$166 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:388: printf("Overide is setted to %d \n", sPW - sPW_CENTER);
	mov	dptr,#_sPW_CENTER
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_sPW
	clr	c
	subb	a,r6
	mov	r6,a
	mov	a,(_sPW + 1)
	subb	a,r7
	mov	r7,a
	push	ar6
	push	ar7
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$lab4kfix.c$389$1$166 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:389: PCA0CP0 = 0xFFFF - sPW;
	mov	a,#0xff
	clr	c
	subb	a,_sPW
	mov	((_PCA0CP0 >> 0) & 0xFF),a
	mov	a,#0xff
	subb	a,(_sPW + 1)
	mov	((_PCA0CP0 >> 8) & 0xFF),a
	C$lab4kfix.c$390$1$166 ==.
	XG$Set_Overide$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Speed'
;------------------------------------------------------------
;input                     Allocated to registers r7 
;------------------------------------------------------------
	G$Set_Speed$0$0 ==.
	C$lab4kfix.c$391$1$166 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:391: void Set_Speed()
;	-----------------------------------------
;	 function Set_Speed
;	-----------------------------------------
_Set_Speed:
	C$lab4kfix.c$395$1$168 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:395: input = getchar_nw();
	lcall	_getchar_nw
	mov	r7,dpl
	C$lab4kfix.c$396$1$168 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:396: if(input == '+')  // single character input to increase the pulsewidth
	cjne	r7,#0x2b,00111$
	C$lab4kfix.c$398$2$169 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:398: mPW += 25;
	mov	a,#0x19
	add	a,_mPW
	mov	_mPW,a
	clr	a
	addc	a,(_mPW + 1)
	mov	(_mPW + 1),a
	C$lab4kfix.c$399$2$169 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:399: if(mPW > mPW_MAX)  // check if greater than pulsewidth maximum
	mov	dptr,#_mPW_MAX
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,r5
	subb	a,_mPW
	mov	a,r6
	subb	a,(_mPW + 1)
	jnc	00112$
	C$lab4kfix.c$400$2$169 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:400: mPW = mPW_MAX;    // set PW to the maximum value
	mov	dptr,#_mPW_MAX
	movx	a,@dptr
	mov	_mPW,a
	inc	dptr
	movx	a,@dptr
	mov	(_mPW + 1),a
	sjmp	00112$
00111$:
	C$lab4kfix.c$402$1$168 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:402: else if(input == '-')  // single character input to decrease the pulsewidth
	cjne	r7,#0x2d,00108$
	C$lab4kfix.c$404$2$170 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:404: mPW -= 25;
	mov	a,_mPW
	add	a,#0xe7
	mov	_mPW,a
	mov	a,(_mPW + 1)
	addc	a,#0xff
	mov	(_mPW + 1),a
	C$lab4kfix.c$405$2$170 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:405: if(mPW < mPW_MIN)  // check if less than pulsewidth minimum
	mov	dptr,#_mPW_MIN
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,_mPW
	subb	a,r5
	mov	a,(_mPW + 1)
	subb	a,r6
	jnc	00112$
	C$lab4kfix.c$406$2$170 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:406: mPW = mPW_MIN;     // set PW to the minimum value
	mov	dptr,#_mPW_MIN
	movx	a,@dptr
	mov	_mPW,a
	inc	dptr
	movx	a,@dptr
	mov	(_mPW + 1),a
	sjmp	00112$
00108$:
	C$lab4kfix.c$408$1$168 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:408: else if(input == 'n')
	cjne	r7,#0x6e,00112$
	C$lab4kfix.c$410$2$171 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:410: mPW = mPW_CENTER;
	mov	dptr,#_mPW_CENTER
	movx	a,@dptr
	mov	_mPW,a
	inc	dptr
	movx	a,@dptr
	mov	(_mPW + 1),a
00112$:
	C$lab4kfix.c$412$1$168 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:412: printf("motor PW: %u\n", mPW);
	push	_mPW
	push	(_mPW + 1)
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$lab4kfix.c$413$1$168 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:413: PCA0CP2 = 0xFFFF - mPW;
	mov	a,#0xff
	clr	c
	subb	a,_mPW
	mov	((_PCA0CP2 >> 0) & 0xFF),a
	mov	a,#0xff
	subb	a,(_mPW + 1)
	mov	((_PCA0CP2 >> 8) & 0xFF),a
	C$lab4kfix.c$414$1$168 ==.
	XG$Set_Speed$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Heading'
;------------------------------------------------------------
	G$Set_Heading$0$0 ==.
	C$lab4kfix.c$416$1$168 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:416: void Set_Heading()
;	-----------------------------------------
;	 function Set_Heading
;	-----------------------------------------
_Set_Heading:
	C$lab4kfix.c$418$1$172 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:418: error = desired_heading - heading;
	mov	a,_desired_heading
	clr	c
	subb	a,_heading
	mov	_error,a
	mov	a,(_desired_heading + 1)
	subb	a,(_heading + 1)
	mov	(_error + 1),a
	C$lab4kfix.c$419$1$172 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:419: if(error >= 1800)
	clr	c
	mov	a,_error
	subb	a,#0x08
	mov	a,(_error + 1)
	xrl	a,#0x80
	subb	a,#0x87
	jc	00112$
	C$lab4kfix.c$420$1$172 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:420: error -= 3600;
	mov	a,_error
	add	a,#0xf0
	mov	_error,a
	mov	a,(_error + 1)
	addc	a,#0xf1
	mov	(_error + 1),a
	ljmp	00113$
00112$:
	C$lab4kfix.c$421$1$172 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:421: else if(error <= -1800)
	clr	c
	mov	a,#0xf8
	subb	a,_error
	mov	a,#(0xf8 ^ 0x80)
	mov	b,(_error + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00109$
	C$lab4kfix.c$422$1$172 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:422: error += 3600;
	mov	a,#0x10
	add	a,_error
	mov	_error,a
	mov	a,#0x0e
	addc	a,(_error + 1)
	mov	(_error + 1),a
	sjmp	00113$
00109$:
	C$lab4kfix.c$423$1$172 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:423: else if(error <= 1850 && error >= 1800)
	clr	c
	mov	a,#0x3a
	subb	a,_error
	mov	a,#(0x07 ^ 0x80)
	mov	b,(_error + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00105$
	mov	a,_error
	subb	a,#0x08
	mov	a,(_error + 1)
	xrl	a,#0x80
	subb	a,#0x87
	jc	00105$
	C$lab4kfix.c$424$1$172 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:424: printf("Just back up \n");
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	sjmp	00113$
00105$:
	C$lab4kfix.c$425$1$172 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:425: else if(error <= -1800 && error >= -1850)
	clr	c
	mov	a,#0xf8
	subb	a,_error
	mov	a,#(0xf8 ^ 0x80)
	mov	b,(_error + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00113$
	mov	a,_error
	subb	a,#0xc6
	mov	a,(_error + 1)
	xrl	a,#0x80
	subb	a,#0x78
	jc	00113$
	C$lab4kfix.c$426$1$172 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:426: printf("Just back up \n");
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
00113$:
	C$lab4kfix.c$427$1$172 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:427: if(error > 50)//should turn right
	clr	c
	mov	a,#0x32
	subb	a,_error
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_error + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00162$
	ljmp	00118$
00162$:
	C$lab4kfix.c$429$1$172 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:429: sPW = 0.416667*error + sPW_CENTER;
	mov	dpl,_error
	mov	dph,(_error + 1)
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x5561
	mov	b,#0xd5
	mov	a,#0x3e
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_sPW_CENTER
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	___uint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2uint
	mov	_sPW,dpl
	mov	(_sPW + 1),dph
	C$lab4kfix.c$430$2$173 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:430: printf("--------> \r\n");
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	ljmp	00119$
00118$:
	C$lab4kfix.c$432$1$172 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:432: else if(error < -50)//should turn left
	clr	c
	mov	a,_error
	subb	a,#0xce
	mov	a,(_error + 1)
	xrl	a,#0x80
	subb	a,#0x7f
	jc	00163$
	ljmp	00115$
00163$:
	C$lab4kfix.c$434$1$172 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:434: sPW = sPW_CENTER + 0.416667*error;
	mov	dpl,_error
	mov	dph,(_error + 1)
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x5561
	mov	b,#0xd5
	mov	a,#0x3e
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_sPW_CENTER
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	___uint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2uint
	mov	_sPW,dpl
	mov	(_sPW + 1),dph
	C$lab4kfix.c$435$2$174 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:435: printf("<-------- \r\n");
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	sjmp	00119$
00115$:
	C$lab4kfix.c$438$1$172 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:438: printf("  --  \r\n");
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
00119$:
	C$lab4kfix.c$440$1$172 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:440: if(sPW > sPW_MAX)
	mov	dptr,#_sPW_MAX
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,_sPW
	mov	a,r7
	subb	a,(_sPW + 1)
	jnc	00121$
	C$lab4kfix.c$441$1$172 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:441: sPW = sPW_MAX;
	mov	dptr,#_sPW_MAX
	movx	a,@dptr
	mov	_sPW,a
	inc	dptr
	movx	a,@dptr
	mov	(_sPW + 1),a
00121$:
	C$lab4kfix.c$442$1$172 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:442: if(sPW < sPW_MIN)
	mov	dptr,#_sPW_MIN
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,_sPW
	subb	a,r6
	mov	a,(_sPW + 1)
	subb	a,r7
	jnc	00123$
	C$lab4kfix.c$443$1$172 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:443: sPW = sPW_MIN;
	mov	dptr,#_sPW_MIN
	movx	a,@dptr
	mov	_sPW,a
	inc	dptr
	movx	a,@dptr
	mov	(_sPW + 1),a
00123$:
	C$lab4kfix.c$445$1$172 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:445: printf("Stering error is %d \n",error);
	push	_error
	push	(_error + 1)
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$lab4kfix.c$446$1$172 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:446: printf("Stering is set to %u \n", sPW);
	push	_sPW
	push	(_sPW + 1)
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$lab4kfix.c$447$1$172 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:447: PCA0CP0 = 0xFFFF - sPW;
	mov	a,#0xff
	clr	c
	subb	a,_sPW
	mov	((_PCA0CP0 >> 0) & 0xFF),a
	mov	a,#0xff
	subb	a,(_sPW + 1)
	mov	((_PCA0CP0 >> 8) & 0xFF),a
	C$lab4kfix.c$448$1$172 ==.
	XG$Set_Heading$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ReadRanger'
;------------------------------------------------------------
	G$ReadRanger$0$0 ==.
	C$lab4kfix.c$452$1$172 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:452: unsigned int ReadRanger()
;	-----------------------------------------
;	 function ReadRanger
;	-----------------------------------------
_ReadRanger:
	C$lab4kfix.c$455$1$175 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:455: i2c_read_data(r_addr,2,r_Data,2);
	mov	_i2c_read_data_PARM_3,#_r_Data
	mov	(_i2c_read_data_PARM_3 + 1),#0x00
	mov	(_i2c_read_data_PARM_3 + 2),#0x40
	mov	_i2c_read_data_PARM_2,#0x02
	mov	_i2c_read_data_PARM_4,#0x02
	mov	dpl,_r_addr
	lcall	_i2c_read_data
	C$lab4kfix.c$457$1$175 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:457: range = ((r_Data[0] << 8) | r_Data[1]);
	mov	r7,_r_Data
	mov	r6,#0x00
	mov	r4,(_r_Data + 0x0001)
	mov	r5,#0x00
	mov	a,r4
	orl	a,r6
	mov	_range,a
	mov	a,r5
	orl	a,r7
	mov	(_range + 1),a
	C$lab4kfix.c$458$1$175 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:458: return range;
	mov	dpl,_range
	mov	dph,(_range + 1)
	C$lab4kfix.c$460$1$175 ==.
	XG$ReadRanger$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ReadCompass'
;------------------------------------------------------------
	G$ReadCompass$0$0 ==.
	C$lab4kfix.c$462$1$175 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:462: unsigned int ReadCompass()
;	-----------------------------------------
;	 function ReadCompass
;	-----------------------------------------
_ReadCompass:
	C$lab4kfix.c$464$1$176 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:464: i2c_read_data(c_addr,2,c_Data,2);
	mov	_i2c_read_data_PARM_3,#_c_Data
	mov	(_i2c_read_data_PARM_3 + 1),#0x00
	mov	(_i2c_read_data_PARM_3 + 2),#0x40
	mov	_i2c_read_data_PARM_2,#0x02
	mov	_i2c_read_data_PARM_4,#0x02
	mov	dpl,_c_addr
	lcall	_i2c_read_data
	C$lab4kfix.c$465$1$176 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:465: heading = ((c_Data[0] << 8) | c_Data[1]); 
	mov	r7,_c_Data
	mov	r6,#0x00
	mov	r4,(_c_Data + 0x0001)
	mov	r5,#0x00
	mov	a,r4
	orl	a,r6
	mov	_heading,a
	mov	a,r5
	orl	a,r7
	mov	(_heading + 1),a
	C$lab4kfix.c$466$1$176 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:466: return heading;
	mov	dpl,_heading
	mov	dph,(_heading + 1)
	C$lab4kfix.c$467$1$176 ==.
	XG$ReadCompass$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_ADC_value'
;------------------------------------------------------------
;n                         Allocated to registers 
;------------------------------------------------------------
	G$read_ADC_value$0$0 ==.
	C$lab4kfix.c$469$1$176 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:469: unsigned char read_ADC_value(unsigned char n)
;	-----------------------------------------
;	 function read_ADC_value
;	-----------------------------------------
_read_ADC_value:
	mov	_AMX1SL,dpl
	C$lab4kfix.c$472$1$178 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:472: ADC1CN = ADC1CN & ~0x20; /* Clear the “Conversion Completed?flag */
	anl	_ADC1CN,#0xdf
	C$lab4kfix.c$473$1$178 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:473: ADC1CN = ADC1CN | 0x10; /* Initiate A/D conversion */
	orl	_ADC1CN,#0x10
	C$lab4kfix.c$474$1$178 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:474: while ((ADC1CN & 0x20) == 0x00); /* Wait for conversion to complete */
00101$:
	mov	a,_ADC1CN
	jnb	acc.5,00101$
	C$lab4kfix.c$475$1$178 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:475: return ADC1; /* Return digital value in ADC1 register */
	mov	dpl,_ADC1
	C$lab4kfix.c$476$1$178 ==.
	XG$read_ADC_value$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_battery_voltage'
;------------------------------------------------------------
;ADC                       Allocated to registers 
;------------------------------------------------------------
	G$read_battery_voltage$0$0 ==.
	C$lab4kfix.c$478$1$178 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:478: unsigned int read_battery_voltage(unsigned char ADC) {
;	-----------------------------------------
;	 function read_battery_voltage
;	-----------------------------------------
_read_battery_voltage:
	C$lab4kfix.c$479$1$180 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:479: voltage = ADC * 2.4 / 256 * 118 / 18 * 1000;
	lcall	___uchar2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x999a
	mov	b,#0x19
	mov	a,#0x40
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x43
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0xec
	mov	a,#0x42
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x90
	push	acc
	mov	a,#0x41
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0x7a
	mov	a,#0x44
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2uint
	C$lab4kfix.c$480$1$180 ==.
;	C:\Users\Tim\Downloads\lab4kfix.c:480: return voltage;
	mov	_voltage,dpl
	mov  (_voltage + 1),dph
	C$lab4kfix.c$481$1$180 ==.
	XG$read_battery_voltage$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Flab4kfix$__str_0$0$0 == .
___str_0:
	.db 0x0a
	.ascii "Type digits; end w/#"
	.db 0x00
Flab4kfix$__str_1$0$0 == .
___str_1:
	.ascii "     %c%c%c%c%c"
	.db 0x00
Flab4kfix$__str_2$0$0 == .
___str_2:
	.ascii "%c"
	.db 0x00
Flab4kfix$__str_3$0$0 == .
___str_3:
	.ascii "Embedded Control Pulsewidth Calibration"
	.db 0x0d
	.db 0x0a
	.db 0x00
Flab4kfix$__str_4$0$0 == .
___str_4:
	.ascii "Steering Calibration finished. %u "
	.db 0x0d
	.db 0x0a
	.db 0x00
Flab4kfix$__str_5$0$0 == .
___str_5:
	.ascii "Motor Calibration finished. %u "
	.db 0x0d
	.db 0x0a
	.db 0x00
Flab4kfix$__str_6$0$0 == .
___str_6:
	.ascii "Calibration:"
	.db 0x0a
	.ascii "Hello world!"
	.db 0x0a
	.db 0x00
Flab4kfix$__str_7$0$0 == .
___str_7:
	.ascii "$$$$$$$$$$Battery voltage: %u $$$$$$$$$$$$$$$"
	.db 0x0d
	.db 0x0a
	.db 0x00
Flab4kfix$__str_8$0$0 == .
___str_8:
	.ascii "distance is %u "
	.db 0x0d
	.db 0x0a
	.db 0x00
Flab4kfix$__str_9$0$0 == .
___str_9:
	.ascii "heading towards %u "
	.db 0x0a
	.db 0x00
Flab4kfix$__str_10$0$0 == .
___str_10:
	.db 0x0a
	.db 0x0d
	.ascii "Heading %u,"
	.db 0x0a
	.db 0x0d
	.ascii " Reading %u"
	.db 0x00
Flab4kfix$__str_11$0$0 == .
___str_11:
	.db 0x0d
	.ascii "%u"
	.db 0x09
	.ascii "%u"
	.db 0x09
	.ascii "%u"
	.db 0x0a
	.db 0x00
Flab4kfix$__str_12$0$0 == .
___str_12:
	.ascii "motor PW: %u"
	.db 0x0a
	.db 0x00
Flab4kfix$__str_13$0$0 == .
___str_13:
	.ascii "stering PW: %u"
	.db 0x0a
	.db 0x00
Flab4kfix$__str_14$0$0 == .
___str_14:
	.ascii "Overide is setted to %d "
	.db 0x0a
	.db 0x00
Flab4kfix$__str_15$0$0 == .
___str_15:
	.ascii "Just back up "
	.db 0x0a
	.db 0x00
Flab4kfix$__str_16$0$0 == .
___str_16:
	.ascii "--------> "
	.db 0x0d
	.db 0x0a
	.db 0x00
Flab4kfix$__str_17$0$0 == .
___str_17:
	.ascii "<-------- "
	.db 0x0d
	.db 0x0a
	.db 0x00
Flab4kfix$__str_18$0$0 == .
___str_18:
	.ascii "  --  "
	.db 0x0d
	.db 0x0a
	.db 0x00
Flab4kfix$__str_19$0$0 == .
___str_19:
	.ascii "Stering error is %d "
	.db 0x0a
	.db 0x00
Flab4kfix$__str_20$0$0 == .
___str_20:
	.ascii "Stering is set to %u "
	.db 0x0a
	.db 0x00
	.area XINIT   (CODE)
Flab4kfix$__xinit_sPW_CENTER$0$0 == .
__xinit__sPW_CENTER:
	.byte #0x5f,#0x0a	; 2655
Flab4kfix$__xinit_sPW_MIN$0$0 == .
__xinit__sPW_MIN:
	.byte #0xd5,#0x07	; 2005
Flab4kfix$__xinit_sPW_MAX$0$0 == .
__xinit__sPW_MAX:
	.byte #0xe9,#0x0c	; 3305
Flab4kfix$__xinit_mPW_CENTER$0$0 == .
__xinit__mPW_CENTER:
	.byte #0xcd,#0x0a	; 2765
Flab4kfix$__xinit_mPW_MIN$0$0 == .
__xinit__mPW_MIN:
	.byte #0xeb,#0x07	; 2027
Flab4kfix$__xinit_mPW_MAX$0$0 == .
__xinit__mPW_MAX:
	.byte #0xae,#0x0d	; 3502
	.area CABS    (ABS,CODE)
