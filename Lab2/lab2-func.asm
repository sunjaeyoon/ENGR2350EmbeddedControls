;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW64)
;--------------------------------------------------------
	.module lab2_func
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _read_AD_input
	.globl _main
	.globl _rand
	.globl _putchar
	.globl _getchar
	.globl _printf
	.globl _getchar_nw
	.globl _Sys_Init
	.globl _UART0_Init
	.globl _SYSCLK_Init
	.globl _SS1
	.globl _SS0
	.globl _BUZZER
	.globl _LED3
	.globl _LED2
	.globl _LED1
	.globl _LED0
	.globl _PB3
	.globl _PB1
	.globl _PB2
	.globl _PB0
	.globl _BILED2
	.globl _BILED1
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
	.globl _aligned_alloc_PARM_2
	.globl _currCounts
	.globl _led_on
	.globl _delay
	.globl _blink_rate
	.globl _ADresult
	.globl _blink
	.globl _whichLED
	.globl _adc
	.globl _currLED
	.globl _rep
	.globl _seq
	.globl _alive
	.globl _times
	.globl _light
	.globl _speed
	.globl _i
	.globl _input
	.globl _score
	.globl _Counts
	.globl _Port_Init
	.globl _Interrupt_Init
	.globl _Timer_Init
	.globl _Timer0_ISR
	.globl _ADC_Init
	.globl _random
	.globl _clear
	.globl _CDS
	.globl _mode0
	.globl _mode1
	.globl _mode2
	.globl _mode3
	.globl _theBuzz
	.globl _lightLED
	.globl _lightLEDmode3
	.globl _buttonPress
	.globl _game
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
G$BILED1$0$0 == 0x00b7
_BILED1	=	0x00b7
G$BILED2$0$0 == 0x00a1
_BILED2	=	0x00a1
G$PB0$0$0 == 0x00b2
_PB0	=	0x00b2
G$PB2$0$0 == 0x00b3
_PB2	=	0x00b3
G$PB1$0$0 == 0x00b4
_PB1	=	0x00b4
G$PB3$0$0 == 0x00b5
_PB3	=	0x00b5
G$LED0$0$0 == 0x00a0
_LED0	=	0x00a0
G$LED1$0$0 == 0x00a2
_LED1	=	0x00a2
G$LED2$0$0 == 0x00a3
_LED2	=	0x00a3
G$LED3$0$0 == 0x00a5
_LED3	=	0x00a5
G$BUZZER$0$0 == 0x00b6
_BUZZER	=	0x00b6
G$SS0$0$0 == 0x00b1
_SS0	=	0x00b1
G$SS1$0$0 == 0x00b0
_SS1	=	0x00b0
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$Counts$0$0==.
_Counts::
	.ds 2
G$score$0$0==.
_score::
	.ds 2
G$input$0$0==.
_input::
	.ds 1
G$i$0$0==.
_i::
	.ds 1
G$speed$0$0==.
_speed::
	.ds 2
G$light$0$0==.
_light::
	.ds 8
G$times$0$0==.
_times::
	.ds 8
G$alive$0$0==.
_alive::
	.ds 2
G$seq$0$0==.
_seq::
	.ds 1
G$rep$0$0==.
_rep::
	.ds 1
G$currLED$0$0==.
_currLED::
	.ds 1
G$adc$0$0==.
_adc::
	.ds 1
G$whichLED$0$0==.
_whichLED::
	.ds 1
G$blink$0$0==.
_blink::
	.ds 1
G$ADresult$0$0==.
_ADresult::
	.ds 1
G$blink_rate$0$0==.
_blink_rate::
	.ds 2
G$delay$0$0==.
_delay::
	.ds 2
G$led_on$0$0==.
_led_on::
	.ds 1
G$currCounts$0$0==.
_currCounts::
	.ds 2
Llab2_func.aligned_alloc$size$1$39==.
_aligned_alloc_PARM_2:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
	ljmp	_Timer0_ISR
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
	C$lab2_func.c$55$1$139 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:55: unsigned int Counts = 0;
	clr	a
	mov	_Counts,a
	mov	(_Counts + 1),a
	C$lab2_func.c$56$1$139 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:56: unsigned int score = 0;
	mov	_score,a
	mov	(_score + 1),a
	C$lab2_func.c$59$1$139 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:59: unsigned int speed = 337*1.3;//as timer0 is a 16-bit SYSCLK, default speed is set to 1 second.
	mov	_speed,#0xb6
	mov	(_speed + 1),#0x01
	C$lab2_func.c$64$1$139 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:64: unsigned int alive = 1;
	mov	_alive,#0x01
;	1-genFromRTrack replaced	mov	(_alive + 1),#0x00
	mov	(_alive + 1),a
	C$lab2_func.c$67$1$139 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:67: unsigned char currLED = 4;
	mov	_currLED,#0x04
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
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$lab2_func.c$88$1$12 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:88: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$lab2_func.c$90$1$65 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:90: Sys_Init();      // System Initialization
	lcall	_Sys_Init
	C$lab2_func.c$91$1$65 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:91: Port_Init();     // Initialize ports 2 and 3 
	lcall	_Port_Init
	C$lab2_func.c$92$1$65 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:92: Interrupt_Init();
	lcall	_Interrupt_Init
	C$lab2_func.c$93$1$65 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:93: Timer_Init();    // Initialize Timer 0 
	lcall	_Timer_Init
	C$lab2_func.c$94$1$65 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:94: ADC_Init();
	lcall	_ADC_Init
	C$lab2_func.c$95$1$65 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:95: printf("\r Start theGame!\n");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab2_func.c$96$1$65 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:96: putchar(' ');    // the quote fonts may not copy correctly into SiLabs IDE
	mov	dpl,#0x20
	lcall	_putchar
	C$lab2_func.c$97$1$65 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:97: while(1)
00102$:
	C$lab2_func.c$99$2$66 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:99: CDS();
	lcall	_CDS
	C$lab2_func.c$100$2$66 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:100: alive = 1;
	mov	_alive,#0x01
	C$lab2_func.c$101$2$66 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:101: score = 0;
	clr	a
	mov	(_alive + 1),a
	mov	_score,a
	mov	(_score + 1),a
	sjmp	00102$
	C$lab2_func.c$104$1$65 ==.
	XG$main$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Port_Init'
;------------------------------------------------------------
	G$Port_Init$0$0 ==.
	C$lab2_func.c$107$1$65 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:107: void Port_Init(void)
;	-----------------------------------------
;	 function Port_Init
;	-----------------------------------------
_Port_Init:
	C$lab2_func.c$110$1$68 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:110: P3MDOUT &= 0xC0; // set Port 3 input pins to push-pull mode (fill in the blank)
	anl	_P3MDOUT,#0xc0
	C$lab2_func.c$111$1$68 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:111: P3MDOUT |= 0xC0; // set Port 3 output pins to open drain mode (fill in the blank)
	orl	_P3MDOUT,#0xc0
	C$lab2_func.c$112$1$68 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:112: P3 |= ~0xC0; // set Port 3 input pins to high impedance state (fill in the blank)
	orl	_P3,#0x3f
	C$lab2_func.c$115$1$68 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:115: P2MDOUT |= ~0xC0;  // set Port 2 output pins
	orl	_P2MDOUT,#0x3f
	C$lab2_func.c$118$1$68 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:118: P1MDIN &= ~0x10; /* Set P1.4 for analog input */
	anl	_P1MDIN,#0xef
	C$lab2_func.c$119$1$68 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:119: P1MDOUT &= ~0x10; /* Set P1.4 to open drain */
	anl	_P1MDOUT,#0xef
	C$lab2_func.c$120$1$68 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:120: P1 |= 0x10; /* Send logic 1 to input pin P1.4 for impedance */
	orl	_P1,#0x10
	C$lab2_func.c$121$1$68 ==.
	XG$Port_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Interrupt_Init'
;------------------------------------------------------------
	G$Interrupt_Init$0$0 ==.
	C$lab2_func.c$123$1$68 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:123: void Interrupt_Init(void)
;	-----------------------------------------
;	 function Interrupt_Init
;	-----------------------------------------
_Interrupt_Init:
	C$lab2_func.c$125$1$70 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:125: IE |= 0x02;      // enable Timer0 Interrupt request (by masking)
	orl	_IE,#0x02
	C$lab2_func.c$126$1$70 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:126: EA = 1;       // enable global interrupts (by sbit)
	setb	_EA
	C$lab2_func.c$127$1$70 ==.
	XG$Interrupt_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer_Init'
;------------------------------------------------------------
	G$Timer_Init$0$0 ==.
	C$lab2_func.c$129$1$70 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:129: void Timer_Init(void)
;	-----------------------------------------
;	 function Timer_Init
;	-----------------------------------------
_Timer_Init:
	C$lab2_func.c$132$1$72 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:132: CKCON |= 0x08;  // Timer0 uses SYSCLK as source
	orl	_CKCON,#0x08
	C$lab2_func.c$133$1$72 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:133: TMOD &= 0xF0;   // clear the 4 least significant bits
	anl	_TMOD,#0xf0
	C$lab2_func.c$134$1$72 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:134: TMOD |= 0x01;   // Timer0 in mode 1
	orl	_TMOD,#0x01
	C$lab2_func.c$135$1$72 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:135: TR0 = 0;           // Stop Timer0
	clr	_TR0
	C$lab2_func.c$136$1$72 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:136: TMR0 = 0;           // Clear high & low byte of T0
	clr	a
	mov	((_TMR0 >> 0) & 0xFF),a
	mov	((_TMR0 >> 8) & 0xFF),a
	C$lab2_func.c$138$1$72 ==.
	XG$Timer_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0_ISR'
;------------------------------------------------------------
	G$Timer0_ISR$0$0 ==.
	C$lab2_func.c$142$1$72 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:142: void Timer0_ISR(void) __interrupt 1
;	-----------------------------------------
;	 function Timer0_ISR
;	-----------------------------------------
_Timer0_ISR:
	push	acc
	push	psw
	C$lab2_func.c$144$1$74 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:144: Counts++;// add interrupt code here, in this lab, the code will increment the 
	inc	_Counts
	clr	a
	cjne	a,_Counts,00103$
	inc	(_Counts + 1)
00103$:
	pop	psw
	pop	acc
	C$lab2_func.c$146$1$74 ==.
	XG$Timer0_ISR$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_Init'
;------------------------------------------------------------
	G$ADC_Init$0$0 ==.
	C$lab2_func.c$148$1$74 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:148: void ADC_Init(void)
;	-----------------------------------------
;	 function ADC_Init
;	-----------------------------------------
_ADC_Init:
	C$lab2_func.c$150$1$76 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:150: REF0CN = 0x03;  /* Set Vref to use internal reference voltage (2.4V) */
	mov	_REF0CN,#0x03
	C$lab2_func.c$151$1$76 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:151: ADC1CN = 0x80;  /* Enable A/D converter (ADC1) */
	mov	_ADC1CN,#0x80
	C$lab2_func.c$152$1$76 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:152: ADC1CF |= 0x01; /* Set A/D converter gain to 1 */
	orl	_ADC1CF,#0x01
	C$lab2_func.c$153$1$76 ==.
	XG$ADC_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_AD_input'
;------------------------------------------------------------
;n                         Allocated to registers 
;------------------------------------------------------------
	G$read_AD_input$0$0 ==.
	C$lab2_func.c$155$1$76 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:155: unsigned char read_AD_input(unsigned char n)
;	-----------------------------------------
;	 function read_AD_input
;	-----------------------------------------
_read_AD_input:
	mov	_AMX1SL,dpl
	C$lab2_func.c$158$1$78 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:158: ADC1CN = ADC1CN & ~0x20; /* Clear the “Conversion Completed” flag */
	anl	_ADC1CN,#0xdf
	C$lab2_func.c$159$1$78 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:159: ADC1CN = ADC1CN | 0x10; /* Initiate A/D conversion */
	orl	_ADC1CN,#0x10
	C$lab2_func.c$160$1$78 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:160: while ((ADC1CN & 0x20) == 0x00); /* Wait for conversion to complete */
00101$:
	mov	a,_ADC1CN
	jnb	acc.5,00101$
	C$lab2_func.c$161$1$78 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:161: return ADC1; /* Return digital value in ADC1 register */
	mov	dpl,_ADC1
	C$lab2_func.c$162$1$78 ==.
	XG$read_AD_input$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'random'
;------------------------------------------------------------
;mode                      Allocated to registers r7 
;------------------------------------------------------------
	G$random$0$0 ==.
	C$lab2_func.c$171$1$78 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:171: unsigned char random(unsigned char mode)
;	-----------------------------------------
;	 function random
;	-----------------------------------------
_random:
	C$lab2_func.c$173$1$80 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:173: if(mode == 0)        // rand returns a random number between 0 and 32767.
	mov	a,dpl
	mov	r7,a
	jnz	00102$
	C$lab2_func.c$174$1$80 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:174: return rand()%4;   // return random 0,1,2,3
	lcall	_rand
	mov	__modsint_PARM_2,#0x04
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r5,dpl
	mov	r6,dph
	sjmp	00108$
00102$:
	C$lab2_func.c$175$1$80 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:175: if(mode == 1)		 
	cjne	r7,#0x01,00104$
	C$lab2_func.c$176$1$80 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:176: return rand()%3+1;  //return random 1,2,3
	lcall	_rand
	mov	__modsint_PARM_2,#0x03
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r5,dpl
	mov	r6,dph
	mov	a,r5
	inc	a
	mov	dpl,a
	sjmp	00108$
00104$:
	C$lab2_func.c$177$1$80 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:177: if(mode == 3)
	cjne	r7,#0x03,00106$
	C$lab2_func.c$178$1$80 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:178: return rand()%2; //returns 0 or 1 
	lcall	_rand
	mov	__modsint_PARM_2,#0x02
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	sjmp	00108$
00106$:
	C$lab2_func.c$180$1$80 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:180: return 4;                   
	mov	dpl,#0x04
00108$:
	C$lab2_func.c$181$1$80 ==.
	XG$random$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clear'
;------------------------------------------------------------
	G$clear$0$0 ==.
	C$lab2_func.c$185$1$80 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:185: void clear(void)
;	-----------------------------------------
;	 function clear
;	-----------------------------------------
_clear:
	C$lab2_func.c$187$1$82 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:187: BILED1 = 1;  // Turn OFF the LEDs and Buzzer
	setb	_BILED1
	C$lab2_func.c$188$1$82 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:188: BILED2 = 1;
	setb	_BILED2
	C$lab2_func.c$189$1$82 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:189: LED0 = 1;
	setb	_LED0
	C$lab2_func.c$190$1$82 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:190: LED1 = 1;
	setb	_LED1
	C$lab2_func.c$191$1$82 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:191: LED2 = 1;
	setb	_LED2
	C$lab2_func.c$192$1$82 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:192: LED3 = 1;
	setb	_LED3
	C$lab2_func.c$193$1$82 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:193: BUZZER = 1;
	setb	_BUZZER
	C$lab2_func.c$194$1$82 ==.
	XG$clear$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CDS'
;------------------------------------------------------------
	G$CDS$0$0 ==.
	C$lab2_func.c$197$1$82 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:197: void CDS(void)
;	-----------------------------------------
;	 function CDS
;	-----------------------------------------
_CDS:
	C$lab2_func.c$199$1$84 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:199: printf("Switch to your desired mode: \r\n \
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab2_func.c$204$1$84 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:204: printf("Press a key on your computer after the selection to start the game \r\n");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab2_func.c$205$1$84 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:205: input = getchar();
	lcall	_getchar
	mov	_input,dpl
	C$lab2_func.c$206$1$84 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:206: if(SS0 && SS1)
	jnb	_SS0,00113$
	jnb	_SS1,00113$
	C$lab2_func.c$208$2$85 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:208: printf("You are currently in mode 0, GL! \r\n");
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
	C$lab2_func.c$209$2$85 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:209: mode0();
	lcall	_mode0
	sjmp	00116$
00113$:
	C$lab2_func.c$211$1$84 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:211: else if(SS0 && !SS1)
	jnb	_SS0,00109$
	jb	_SS1,00109$
	C$lab2_func.c$212$2$86 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:212: {	printf("You are currently in mode 1, CHA! CHA! \r\n");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab2_func.c$213$2$86 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:213: mode1();
	lcall	_mode1
	sjmp	00116$
00109$:
	C$lab2_func.c$215$1$84 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:215: else if(!SS0 && SS1)
	jb	_SS0,00105$
	jnb	_SS1,00105$
	C$lab2_func.c$217$2$87 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:217: printf("You are currently in mode 2, Emmmm... \r\n");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab2_func.c$218$2$87 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:218: mode2();
	lcall	_mode2
	sjmp	00116$
00105$:
	C$lab2_func.c$220$1$84 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:220: else if(!SS0 && !SS1)
	jb	_SS0,00116$
	jb	_SS1,00116$
	C$lab2_func.c$222$2$88 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:222: printf("You are currently in mode 3, wanna be faster? \r\n");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab2_func.c$223$2$88 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:223: mode3();
	lcall	_mode3
00116$:
	C$lab2_func.c$225$1$84 ==.
	XG$CDS$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mode0'
;------------------------------------------------------------
	G$mode0$0$0 ==.
	C$lab2_func.c$227$1$84 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:227: void mode0(void)
;	-----------------------------------------
;	 function mode0
;	-----------------------------------------
_mode0:
	C$lab2_func.c$229$1$84 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:229: }
	C$lab2_func.c$229$1$84 ==.
	XG$mode0$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mode1'
;------------------------------------------------------------
	G$mode1$0$0 ==.
	C$lab2_func.c$232$1$84 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:232: void mode1(void)//currently easy mode1
;	-----------------------------------------
;	 function mode1
;	-----------------------------------------
_mode1:
	C$lab2_func.c$235$1$92 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:235: printf("game rule\r\n");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab2_func.c$236$1$92 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:236: theBuzz();
	lcall	_theBuzz
	C$lab2_func.c$237$1$92 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:237: theBuzz();
	lcall	_theBuzz
	C$lab2_func.c$241$1$92 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:241: for(i = 0; i < 8; i++)
	mov	_i,#0x00
00128$:
	C$lab2_func.c$243$2$93 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:243: light[i] = random(0);
	mov	a,_i
	add	a,#_light
	mov	r1,a
	mov	dpl,#0x00
	push	ar1
	lcall	_random
	mov	a,dpl
	pop	ar1
	mov	@r1,a
	C$lab2_func.c$244$2$93 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:244: times[i] = random(1);
	mov	a,_i
	add	a,#_times
	mov	r1,a
	mov	dpl,#0x01
	push	ar1
	lcall	_random
	mov	a,dpl
	pop	ar1
	mov	@r1,a
	C$lab2_func.c$246$2$93 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:246: printf("%u|%u \r\n",light[i],times[i]);
	mov	a,_i
	add	a,#_times
	mov	r1,a
	mov	ar7,@r1
	mov	r6,#0x00
	mov	a,_i
	add	a,#_light
	mov	r1,a
	mov	ar5,@r1
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	C$lab2_func.c$241$1$92 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:241: for(i = 0; i < 8; i++)
	inc	_i
	mov	a,#0x100 - 0x08
	add	a,_i
	jnc	00128$
	C$lab2_func.c$250$1$92 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:250: for(i = 0; i < 8; i++) //8 sequence of the game
	mov	_i,#0x00
00144$:
	C$lab2_func.c$253$2$94 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:253: for(seq = 0; seq < i || seq == i; seq++)
	mov	_seq,#0x00
00135$:
	clr	c
	mov	a,_seq
	subb	a,_i
	jc	00134$
	mov	a,_i
	cjne	a,_seq,00103$
00134$:
	C$lab2_func.c$254$2$94 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:254: for(rep = 1; rep <= times[seq]; rep++)
	mov	_rep,#0x01
00131$:
	mov	a,_seq
	add	a,#_times
	mov	r1,a
	mov	ar7,@r1
	clr	c
	mov	a,r7
	subb	a,_rep
	jc	00136$
	C$lab2_func.c$255$2$94 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:255: lightLED(light[seq]);
	mov	a,_seq
	add	a,#_light
	mov	r1,a
	mov	dpl,@r1
	lcall	_lightLED
	C$lab2_func.c$254$2$94 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:254: for(rep = 1; rep <= times[seq]; rep++)
	inc	_rep
	sjmp	00131$
00136$:
	C$lab2_func.c$253$2$94 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:253: for(seq = 0; seq < i || seq == i; seq++)
	inc	_seq
	sjmp	00135$
00103$:
	C$lab2_func.c$256$2$94 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:256: theBuzz();//time to make selection	
	lcall	_theBuzz
	C$lab2_func.c$259$2$94 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:259: Counts = 0;
	clr	a
	mov	_Counts,a
	mov	(_Counts + 1),a
	C$lab2_func.c$260$2$94 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:260: TMR0 = 0;
	mov	((_TMR0 >> 0) & 0xFF),a
	mov	((_TMR0 >> 8) & 0xFF),a
	C$lab2_func.c$261$2$94 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:261: TR0 = 1;
	setb	_TR0
	C$lab2_func.c$264$2$94 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:264: for(seq = 0; seq < i || seq == i; seq++)
	mov	_seq,#0x00
00142$:
	clr	c
	mov	a,_seq
	subb	a,_i
	jc	00141$
	mov	a,_i
	cjne	a,_seq,00217$
	sjmp	00218$
00217$:
	ljmp	00118$
00218$:
00141$:
	C$lab2_func.c$266$3$95 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:266: for(rep = 1; rep <= times[seq]; rep++)
	mov	_rep,#0x01
00138$:
	mov	a,_seq
	add	a,#_times
	mov	r1,a
	mov	ar7,@r1
	clr	c
	mov	a,r7
	subb	a,_rep
	jnc	00219$
	ljmp	00114$
00219$:
	C$lab2_func.c$268$4$96 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:268: do
00109$:
	C$lab2_func.c$270$5$97 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:270: if(Counts > (i+1)*speed)
	mov	r6,_i
	mov	r7,#0x00
	inc	r6
	cjne	r6,#0x00,00220$
	inc	r7
00220$:
	mov	dpl,r6
	mov	dph,r7
	mov	__mulint_PARM_2,_speed
	mov	(__mulint_PARM_2 + 1),(_speed + 1)
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	clr	c
	mov	a,r6
	subb	a,_Counts
	mov	a,r7
	subb	a,(_Counts + 1)
	jnc	00110$
	C$lab2_func.c$272$6$98 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:272: printf("TIME OUT \r\n");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab2_func.c$273$6$98 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:273: break; //out off all loop
	sjmp	00111$
00110$:
	C$lab2_func.c$276$4$96 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:276: while(PB0 && PB1 && PB2 && PB3);//TTTTTTTTTTTTT
	jnb	_PB0,00111$
	jnb	_PB1,00111$
	jnb	_PB2,00111$
	jb	_PB3,00109$
00111$:
	C$lab2_func.c$277$4$96 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:277: currLED = buttonPress();
	lcall	_buttonPress
	mov	_currLED,dpl
	C$lab2_func.c$278$4$96 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:278: if(currLED != light[seq])
	mov	a,_seq
	add	a,#_light
	mov	r1,a
	mov	a,@r1
	mov	r7,a
	cjne	a,_currLED,00226$
	sjmp	00139$
00226$:
	C$lab2_func.c$280$5$99 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:280: alive = 0;//you are dead
	clr	a
	mov	_alive,a
	mov	(_alive + 1),a
	C$lab2_func.c$281$5$99 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:281: printf("GAME OVER, you pressed %u,and your score is %u \r\n",currLED, score);
	mov	r6,_currLED
	mov	r7,#0x00
	push	_score
	push	(_score + 1)
	push	ar6
	push	ar7
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	C$lab2_func.c$283$5$99 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:283: BILED1 = 0;
	clr	_BILED1
	C$lab2_func.c$284$5$99 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:284: theBuzz();//TTTTTTTTTTTTT
	lcall	_theBuzz
	C$lab2_func.c$285$5$99 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:285: BILED1 = 1;
	setb	_BILED1
	C$lab2_func.c$286$5$99 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:286: break;
	sjmp	00114$
00139$:
	C$lab2_func.c$266$3$95 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:266: for(rep = 1; rep <= times[seq]; rep++)
	inc	_rep
	ljmp	00138$
00114$:
	C$lab2_func.c$289$3$95 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:289: if(alive)
	mov	a,_alive
	orl	a,(_alive + 1)
	jz	00118$
	C$lab2_func.c$290$3$95 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:290: score++;
	inc	_score
	clr	a
	cjne	a,_score,00228$
	inc	(_score + 1)
00228$:
	C$lab2_func.c$264$2$94 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:264: for(seq = 0; seq < i || seq == i; seq++)
	inc	_seq
	ljmp	00142$
00118$:
	C$lab2_func.c$294$2$94 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:294: if(!alive)
	mov	a,_alive
	orl	a,(_alive + 1)
	jnz	00123$
	C$lab2_func.c$296$3$100 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:296: TR0 = 0;
	clr	_TR0
	C$lab2_func.c$297$3$100 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:297: break;
	sjmp	00125$
00123$:
	C$lab2_func.c$301$3$101 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:301: currCounts = Counts;
	mov	_currCounts,_Counts
	mov	(_currCounts + 1),(_Counts + 1)
	C$lab2_func.c$302$3$101 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:302: BILED2 = 0;
	clr	_BILED2
	C$lab2_func.c$303$3$101 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:303: while(Counts < currCounts+337);//TTTTTTTTTTTTT
00119$:
	mov	a,#0x51
	add	a,_currCounts
	mov	r6,a
	mov	a,#0x01
	addc	a,(_currCounts + 1)
	mov	r7,a
	clr	c
	mov	a,_Counts
	subb	a,r6
	mov	a,(_Counts + 1)
	subb	a,r7
	jc	00119$
	C$lab2_func.c$304$3$101 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:304: BILED2 = 1;
	setb	_BILED2
	C$lab2_func.c$305$3$101 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:305: printf("correct \r\n");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab2_func.c$308$2$94 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:308: TR0 = 0;
	clr	_TR0
	C$lab2_func.c$250$1$92 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:250: for(i = 0; i < 8; i++) //8 sequence of the game
	inc	_i
	mov	a,#0x100 - 0x08
	add	a,_i
	jc	00231$
	ljmp	00144$
00231$:
00125$:
	C$lab2_func.c$311$1$92 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:311: if(alive)
	mov	a,_alive
	orl	a,(_alive + 1)
	jz	00146$
	C$lab2_func.c$312$1$92 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:312: printf("you successfully passed the game! \r\n");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
00146$:
	C$lab2_func.c$314$1$92 ==.
	XG$mode1$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mode2'
;------------------------------------------------------------
	G$mode2$0$0 ==.
	C$lab2_func.c$317$1$92 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:317: void mode2(void)
;	-----------------------------------------
;	 function mode2
;	-----------------------------------------
_mode2:
	C$lab2_func.c$319$1$103 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:319: printf("\r Rule: \n");
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab2_func.c$320$1$103 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:320: printf("\r Player 1 use pushbutton and potentiometer to create a sequence \n");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab2_func.c$321$1$103 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:321: printf("\r pushbutton indicate the LED and use potentiometer to adjust blinks \n");
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
	C$lab2_func.c$322$1$103 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:322: printf("\r then player2 play the game with preprogrammed sequence \n");
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
	C$lab2_func.c$323$2$104 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:323: while (1){
00172$:
	C$lab2_func.c$325$2$104 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:325: Counts = 0;
	clr	a
	mov	_Counts,a
	mov	(_Counts + 1),a
	C$lab2_func.c$326$2$104 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:326: clear();
	lcall	_clear
	C$lab2_func.c$327$2$104 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:327: printf("\r Push any button to start modification! \n");
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
	C$lab2_func.c$329$2$104 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:329: if (!PB0 || !PB1 || !PB2 || !PB3) {
	jnb	_PB0,00166$
	jnb	_PB1,00166$
	jnb	_PB2,00166$
	jb	_PB3,00172$
00166$:
	C$lab2_func.c$330$3$105 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:330: TR0 = 1;
	setb	_TR0
	C$lab2_func.c$331$3$105 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:331: printf("\r Game start in 3 seconds \n");
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
	C$lab2_func.c$332$3$105 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:332: BUZZER = 0;
	clr	_BUZZER
	C$lab2_func.c$333$3$105 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:333: while (Counts < 1011);
00101$:
	clr	c
	mov	a,_Counts
	subb	a,#0xf3
	mov	a,(_Counts + 1)
	subb	a,#0x03
	jc	00101$
	C$lab2_func.c$334$3$105 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:334: BUZZER = 1;
	setb	_BUZZER
	C$lab2_func.c$335$3$105 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:335: printf("\r game start \n");
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab2_func.c$336$3$105 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:336: Counts = 0;
	clr	a
	mov	_Counts,a
	mov	(_Counts + 1),a
	C$lab2_func.c$337$3$105 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:337: printf("\r Player1's turn \n");
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab2_func.c$339$3$105 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:339: for (i = 0; i < 8; i++) {
	mov	_i,#0x00
00178$:
	C$lab2_func.c$340$4$106 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:340: adc = read_AD_input(4);
	mov	dpl,#0x04
	lcall	_read_AD_input
	mov	_adc,dpl
	C$lab2_func.c$341$4$106 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:341: printf("\r Sequence %u \n", i);
	mov	r6,_i
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$lab2_func.c$342$4$106 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:342: while (PB0 && PB1 && PB2 && PB3);
00107$:
	jnb	_PB0,00109$
	jnb	_PB1,00109$
	jnb	_PB2,00109$
	jb	_PB3,00107$
00109$:
	C$lab2_func.c$343$4$106 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:343: if (!PB0) {
	jb	_PB0,00119$
	C$lab2_func.c$344$5$107 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:344: whichLED = 0;
	mov	_whichLED,#0x00
	sjmp	00120$
00119$:
	C$lab2_func.c$346$4$106 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:346: else if (!PB1) {
	jb	_PB1,00116$
	C$lab2_func.c$347$5$108 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:347: whichLED = 1;
	mov	_whichLED,#0x01
	sjmp	00120$
00116$:
	C$lab2_func.c$349$4$106 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:349: else if (!PB2) {
	jb	_PB2,00113$
	C$lab2_func.c$350$5$109 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:350: whichLED = 2;
	mov	_whichLED,#0x02
	sjmp	00120$
00113$:
	C$lab2_func.c$352$4$106 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:352: else if (!PB3) {
	jb	_PB3,00120$
	C$lab2_func.c$353$5$110 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:353: whichLED = 3;
	mov	_whichLED,#0x03
00120$:
	C$lab2_func.c$355$4$106 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:355: printf("\r LED %u \n", whichLED);
	mov	r6,_whichLED
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$lab2_func.c$357$4$106 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:357: if (whichLED == 0) {
	mov	a,_whichLED
	C$lab2_func.c$358$5$111 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:358: Counts = 0;
	jnz	00142$
	mov	_Counts,a
	mov	(_Counts + 1),a
	C$lab2_func.c$359$5$111 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:359: LED0 = 0;
	clr	_LED0
	C$lab2_func.c$360$5$111 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:360: while (Counts < 337);
00121$:
	clr	c
	mov	a,_Counts
	subb	a,#0x51
	mov	a,(_Counts + 1)
	subb	a,#0x01
	jc	00121$
	C$lab2_func.c$361$5$111 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:361: LED0 = 1;
	setb	_LED0
	sjmp	00143$
00142$:
	C$lab2_func.c$363$4$106 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:363: else if (whichLED == 1) {
	mov	a,#0x01
	cjne	a,_whichLED,00139$
	C$lab2_func.c$364$5$112 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:364: Counts = 0;
	clr	a
	mov	_Counts,a
	mov	(_Counts + 1),a
	C$lab2_func.c$365$5$112 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:365: LED1 = 0;
	clr	_LED1
	C$lab2_func.c$366$5$112 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:366: while (Counts < 337);
00124$:
	clr	c
	mov	a,_Counts
	subb	a,#0x51
	mov	a,(_Counts + 1)
	subb	a,#0x01
	jc	00124$
	C$lab2_func.c$367$5$112 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:367: LED1 = 1;
	setb	_LED1
	sjmp	00143$
00139$:
	C$lab2_func.c$369$4$106 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:369: else if (whichLED == 2) {
	mov	a,#0x02
	cjne	a,_whichLED,00136$
	C$lab2_func.c$370$5$113 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:370: Counts = 0;
	clr	a
	mov	_Counts,a
	mov	(_Counts + 1),a
	C$lab2_func.c$371$5$113 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:371: LED2 = 0;
	clr	_LED2
	C$lab2_func.c$372$5$113 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:372: while (Counts < 337);
00127$:
	clr	c
	mov	a,_Counts
	subb	a,#0x51
	mov	a,(_Counts + 1)
	subb	a,#0x01
	jc	00127$
	C$lab2_func.c$373$5$113 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:373: LED2 = 1;
	setb	_LED2
	sjmp	00143$
00136$:
	C$lab2_func.c$375$4$106 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:375: else if (whichLED == 3) {
	mov	a,#0x03
	cjne	a,_whichLED,00143$
	C$lab2_func.c$376$5$114 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:376: Counts = 0;
	clr	a
	mov	_Counts,a
	mov	(_Counts + 1),a
	C$lab2_func.c$377$5$114 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:377: LED3 = 0;
	clr	_LED3
	C$lab2_func.c$378$5$114 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:378: while (Counts < 337);
00130$:
	clr	c
	mov	a,_Counts
	subb	a,#0x51
	mov	a,(_Counts + 1)
	subb	a,#0x01
	jc	00130$
	C$lab2_func.c$379$5$114 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:379: LED3 = 1;
	setb	_LED3
00143$:
	C$lab2_func.c$381$4$106 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:381: Counts = 0;
	clr	a
	mov	_Counts,a
	mov	(_Counts + 1),a
	C$lab2_func.c$382$4$106 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:382: while (Counts < 337 * 2);
00144$:
	clr	c
	mov	a,_Counts
	subb	a,#0xa2
	mov	a,(_Counts + 1)
	subb	a,#0x02
	jc	00144$
	C$lab2_func.c$383$4$106 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:383: if (adc < 85) {
	mov	a,#0x100 - 0x55
	add	a,_adc
	jc	00154$
	C$lab2_func.c$384$5$115 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:384: blink = 1;
	mov	_blink,#0x01
	C$lab2_func.c$385$5$115 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:385: LED0 = 0;
	clr	_LED0
	sjmp	00155$
00154$:
	C$lab2_func.c$387$4$106 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:387: else if (adc > 85 && adc < 170) {
	mov	a,_adc
	add	a,#0xff - 0x55
	jnc	00150$
	mov	a,#0x100 - 0xaa
	add	a,_adc
	jc	00150$
	C$lab2_func.c$388$5$116 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:388: blink = 2;
	mov	_blink,#0x02
	C$lab2_func.c$389$5$116 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:389: LED0 = 0;
	clr	_LED0
	C$lab2_func.c$390$5$116 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:390: LED1 = 0;
	clr	_LED1
	sjmp	00155$
00150$:
	C$lab2_func.c$392$4$106 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:392: else if (adc > 170) {
	mov	a,_adc
	add	a,#0xff - 0xaa
	jnc	00155$
	C$lab2_func.c$393$5$117 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:393: blink = 3;
	mov	_blink,#0x03
	C$lab2_func.c$394$5$117 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:394: LED0 = 0;
	clr	_LED0
	C$lab2_func.c$395$5$117 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:395: LED1 = 0;
	clr	_LED1
	C$lab2_func.c$396$5$117 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:396: LED2 = 0;
	clr	_LED2
00155$:
	C$lab2_func.c$399$4$106 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:399: Counts = 0;
	clr	a
	mov	_Counts,a
	mov	(_Counts + 1),a
	C$lab2_func.c$400$4$106 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:400: printf("\r next sequence start in 2 seconds\n");
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab2_func.c$401$4$106 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:401: while (Counts < 337 * 2);
00156$:
	clr	c
	mov	a,_Counts
	subb	a,#0xa2
	mov	a,(_Counts + 1)
	subb	a,#0x02
	jc	00156$
	C$lab2_func.c$402$4$106 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:402: Counts = 0;
	clr	a
	mov	_Counts,a
	mov	(_Counts + 1),a
	C$lab2_func.c$403$4$106 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:403: light[i] = whichLED;
	mov	a,_i
	add	a,#_light
	mov	r0,a
	mov	@r0,_whichLED
	C$lab2_func.c$404$4$106 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:404: times[i] = blink;
	mov	a,_i
	add	a,#_times
	mov	r0,a
	mov	@r0,_blink
	C$lab2_func.c$405$4$106 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:405: clear();
	lcall	_clear
	C$lab2_func.c$406$4$106 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:406: while (Counts < 337 / 2);
00159$:
	clr	c
	mov	a,_Counts
	subb	a,#0xa8
	mov	a,(_Counts + 1)
	subb	a,#0x00
	jc	00159$
	C$lab2_func.c$339$3$105 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:339: for (i = 0; i < 8; i++) {
	inc	_i
	mov	a,#0x100 - 0x08
	add	a,_i
	jc	00347$
	ljmp	00178$
00347$:
	C$lab2_func.c$408$3$105 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:408: Counts = 0;
	clr	a
	mov	_Counts,a
	mov	(_Counts + 1),a
	C$lab2_func.c$409$3$105 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:409: LED0 = 0;
	clr	_LED0
	C$lab2_func.c$410$3$105 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:410: LED1 = 0;
	clr	_LED1
	C$lab2_func.c$411$3$105 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:411: LED2 = 0;
	clr	_LED2
	C$lab2_func.c$412$3$105 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:412: LED3 = 0;
	clr	_LED3
	C$lab2_func.c$413$3$105 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:413: while (Counts < 337);
00163$:
	clr	c
	mov	a,_Counts
	subb	a,#0x51
	mov	a,(_Counts + 1)
	subb	a,#0x01
	jc	00163$
	C$lab2_func.c$414$3$105 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:414: clear();
	lcall	_clear
	C$lab2_func.c$419$1$103 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:419: for (i = 0; i < 8; i++) {
	mov	_i,#0x00
00180$:
	C$lab2_func.c$420$2$118 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:420: printf("%u|%u \r\n", light[i], times[i]);
	mov	a,_i
	add	a,#_times
	mov	r1,a
	mov	ar7,@r1
	mov	r6,#0x00
	mov	a,_i
	add	a,#_light
	mov	r1,a
	mov	ar5,@r1
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	C$lab2_func.c$419$1$103 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:419: for (i = 0; i < 8; i++) {
	inc	_i
	mov	a,#0x100 - 0x08
	add	a,_i
	jnc	00180$
	C$lab2_func.c$422$1$103 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:422: Counts = 0;
	clr	a
	mov	_Counts,a
	mov	(_Counts + 1),a
	C$lab2_func.c$423$1$103 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:423: printf("\r Player2's turn start in 10 seconds \n");
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab2_func.c$424$1$103 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:424: while (Counts < 3370);
00175$:
	clr	c
	mov	a,_Counts
	subb	a,#0x2a
	mov	a,(_Counts + 1)
	subb	a,#0x0d
	jc	00175$
	C$lab2_func.c$425$1$103 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:425: game();
	lcall	_game
	C$lab2_func.c$426$1$103 ==.
	XG$mode2$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mode3'
;------------------------------------------------------------
	G$mode3$0$0 ==.
	C$lab2_func.c$430$1$103 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:430: void mode3(void)
;	-----------------------------------------
;	 function mode3
;	-----------------------------------------
_mode3:
	C$lab2_func.c$432$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:432: printf("game rule\r\n");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab2_func.c$433$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:433: theBuzz();
	lcall	_theBuzz
	C$lab2_func.c$434$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:434: clear();
	lcall	_clear
	C$lab2_func.c$435$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:435: Counts = 0; //Reset Counter
	clr	a
	mov	_Counts,a
	mov	(_Counts + 1),a
	C$lab2_func.c$438$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:438: printf("\rSet blink rate, then press PB0\n\r");
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab2_func.c$440$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:440: TR0 = 1; //Turn on timer
	setb	_TR0
	C$lab2_func.c$441$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:441: while(PB0)
00104$:
	jb	_PB0,00190$
	ljmp	00106$
00190$:
	C$lab2_func.c$443$2$121 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:443: currCounts = Counts; 
	mov	_currCounts,_Counts
	mov	(_currCounts + 1),(_Counts + 1)
	C$lab2_func.c$444$2$121 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:444: while(Counts < 7+currCounts); //Debounce
00101$:
	mov	a,#0x07
	add	a,_currCounts
	mov	r6,a
	clr	a
	addc	a,(_currCounts + 1)
	mov	r7,a
	clr	c
	mov	a,_Counts
	subb	a,r6
	mov	a,(_Counts + 1)
	subb	a,r7
	jc	00101$
	C$lab2_func.c$445$2$121 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:445: ADresult = read_AD_input(4); //read AD input from pin1.4
	mov	dpl,#0x04
	lcall	_read_AD_input
	C$lab2_func.c$446$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:446: blink_rate = ((ADresult*0.95/255.0)+1.0); //Convert to ADresult to speed
	mov  _ADresult,dpl
	lcall	___uchar2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x3333
	mov	b,#0x73
	mov	a,#0x3f
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
	mov	a,#0x7f
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
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x3f
	push	acc
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
	mov	_blink_rate,dpl
	mov	(_blink_rate + 1),dph
	ljmp	00104$
00106$:
	C$lab2_func.c$449$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:449: printf("\rBlink Rate: %d\n\r", blink_rate);
	push	_blink_rate
	push	(_blink_rate + 1)
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$lab2_func.c$452$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:452: LED0 = 0; //LED0 on
	clr	_LED0
	C$lab2_func.c$453$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:453: while(Counts < speed*blink_rate);
00107$:
	mov	__mulint_PARM_2,_blink_rate
	mov	(__mulint_PARM_2 + 1),(_blink_rate + 1)
	mov	dpl,_speed
	mov	dph,(_speed + 1)
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	clr	c
	mov	a,_Counts
	subb	a,r6
	mov	a,(_Counts + 1)
	subb	a,r7
	jc	00107$
	C$lab2_func.c$454$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:454: LED0 = 1; //LED0 off
	setb	_LED0
	C$lab2_func.c$456$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:456: currCounts = Counts; 
	mov	_currCounts,_Counts
	mov	(_currCounts + 1),(_Counts + 1)
	C$lab2_func.c$457$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:457: while(Counts < 50+currCounts); //Debounce
00110$:
	mov	a,#0x32
	add	a,_currCounts
	mov	r6,a
	clr	a
	addc	a,(_currCounts + 1)
	mov	r7,a
	clr	c
	mov	a,_Counts
	subb	a,r6
	mov	a,(_Counts + 1)
	subb	a,r7
	jc	00110$
	C$lab2_func.c$460$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:460: printf("\rSet Delay, then press PB0\n\r");
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab2_func.c$461$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:461: while(PB0)
00113$:
	jb	_PB0,00194$
	ljmp	00115$
00194$:
	C$lab2_func.c$464$2$122 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:464: ADresult = read_AD_input(4);
	mov	dpl,#0x04
	lcall	_read_AD_input
	C$lab2_func.c$465$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:465: delay = ((ADresult*7.0/255.0)+1.0);
	mov  _ADresult,dpl
	lcall	___uchar2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0xe0
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
	mov	a,#0x7f
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
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x3f
	push	acc
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
	mov	_delay,dpl
	mov	(_delay + 1),dph
	ljmp	00113$
00115$:
	C$lab2_func.c$468$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:468: printf("Delay: %u \n\r", delay);
	push	_delay
	push	(_delay + 1)
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$lab2_func.c$470$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:470: Counts = 0; //reset counter
	clr	a
	mov	_Counts,a
	mov	(_Counts + 1),a
	C$lab2_func.c$471$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:471: LED0 = 0; //LED0 on
	clr	_LED0
	C$lab2_func.c$472$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:472: while(Counts < speed*0.5);
00116$:
	mov	dpl,_speed
	mov	dph,(_speed + 1)
	lcall	___uint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	mov	a,#0x3f
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_Counts
	mov	dph,(_Counts + 1)
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
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jnz	00116$
	C$lab2_func.c$473$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:473: LED0 = 1; //LED0 off
	setb	_LED0
	C$lab2_func.c$474$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:474: while(Counts < (speed*(delay+0.5)));
00119$:
	mov	dpl,_delay
	mov	dph,(_delay + 1)
	lcall	___uint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3f
	push	acc
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
	mov	dpl,_speed
	mov	dph,(_speed + 1)
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
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_Counts
	mov	dph,(_Counts + 1)
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
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00196$
	ljmp	00119$
00196$:
	C$lab2_func.c$475$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:475: LED0 = 0;
	clr	_LED0
	C$lab2_func.c$476$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:476: while(Counts < 337*0.5);
00122$:
	clr	c
	mov	a,_Counts
	subb	a,#0xa8
	mov	a,(_Counts + 1)
	subb	a,#0x00
	jc	00122$
	C$lab2_func.c$477$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:477: LED0 = 1; //LED0 off
	setb	_LED0
	C$lab2_func.c$482$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:482: printf("\rBeginning the Game\n\r");
	mov	a,#___str_29
	push	acc
	mov	a,#(___str_29 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab2_func.c$484$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:484: for(i = 0; i < 5; i++)
	mov	_i,#0x00
00129$:
	C$lab2_func.c$486$2$123 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:486: TR0 = 1;
	setb	_TR0
	C$lab2_func.c$487$2$123 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:487: led_on = random(1);
	mov	dpl,#0x01
	lcall	_random
	C$lab2_func.c$488$2$123 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:488: lightLEDmode3(led_on);
	mov  _led_on,dpl
	lcall	_lightLEDmode3
	C$lab2_func.c$490$2$123 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:490: if(buttonPress() == led_on)
	lcall	_buttonPress
	mov	a,dpl
	mov	r7,a
	cjne	a,_led_on,00126$
	C$lab2_func.c$493$3$124 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:493: BILED2 = 0;
	clr	_BILED2
	C$lab2_func.c$494$3$124 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:494: theBuzz();//TTTTTTTTTTTTT
	lcall	_theBuzz
	C$lab2_func.c$495$3$124 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:495: BILED2 = 1;
	setb	_BILED2
	C$lab2_func.c$496$3$124 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:496: score++;
	inc	_score
	clr	a
	cjne	a,_score,00130$
	inc	(_score + 1)
	sjmp	00130$
00126$:
	C$lab2_func.c$501$3$125 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:501: BILED1 = 0;
	clr	_BILED1
	C$lab2_func.c$502$3$125 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:502: theBuzz();//TTTTTTTTTTTTT
	lcall	_theBuzz
	C$lab2_func.c$503$3$125 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:503: BILED1 = 1;
	setb	_BILED1
00130$:
	C$lab2_func.c$484$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:484: for(i = 0; i < 5; i++)
	inc	_i
	mov	a,#0x100 - 0x05
	add	a,_i
	jnc	00129$
	C$lab2_func.c$507$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:507: printf("score: %d\n", score);
	push	_score
	push	(_score + 1)
	mov	a,#___str_30
	push	acc
	mov	a,#(___str_30 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$lab2_func.c$508$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:508: theBuzz();
	lcall	_theBuzz
	C$lab2_func.c$509$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:509: clear();
	lcall	_clear
	C$lab2_func.c$510$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:510: TR0 = 0; //Turn off everything
	clr	_TR0
	C$lab2_func.c$511$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:511: TMR0 = 0;
	clr	a
	mov	((_TMR0 >> 0) & 0xFF),a
	mov	((_TMR0 >> 8) & 0xFF),a
	C$lab2_func.c$512$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:512: delay = 0;
	mov	_delay,a
	mov	(_delay + 1),a
	C$lab2_func.c$513$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:513: blink_rate = 0;
	mov	_blink_rate,a
	mov	(_blink_rate + 1),a
	C$lab2_func.c$514$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:514: Counts = 0; 
	mov	_Counts,a
	mov	(_Counts + 1),a
	C$lab2_func.c$515$1$120 ==.
	XG$mode3$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'theBuzz'
;------------------------------------------------------------
	G$theBuzz$0$0 ==.
	C$lab2_func.c$521$1$120 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:521: void theBuzz(void)
;	-----------------------------------------
;	 function theBuzz
;	-----------------------------------------
_theBuzz:
	C$lab2_func.c$523$1$127 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:523: TMR0 = 0;
	clr	a
	mov	((_TMR0 >> 0) & 0xFF),a
	mov	((_TMR0 >> 8) & 0xFF),a
	C$lab2_func.c$524$1$127 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:524: TR0 = 1;
	setb	_TR0
	C$lab2_func.c$525$1$127 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:525: Counts = 0;
	clr	a
	mov	_Counts,a
	mov	(_Counts + 1),a
	C$lab2_func.c$526$1$127 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:526: while(Counts<337/2);
00101$:
	clr	c
	mov	a,_Counts
	subb	a,#0xa8
	mov	a,(_Counts + 1)
	subb	a,#0x00
	jc	00101$
	C$lab2_func.c$527$1$127 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:527: BUZZER = 0; //Turn Buzzer on
	clr	_BUZZER
	C$lab2_func.c$528$1$127 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:528: while(Counts<337);
00104$:
	clr	c
	mov	a,_Counts
	subb	a,#0x51
	mov	a,(_Counts + 1)
	subb	a,#0x01
	jc	00104$
	C$lab2_func.c$529$1$127 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:529: BUZZER = 1;
	setb	_BUZZER
	C$lab2_func.c$530$1$127 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:530: TR0 = 0;
	clr	_TR0
	C$lab2_func.c$532$1$127 ==.
	XG$theBuzz$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lightLED'
;------------------------------------------------------------
;num                       Allocated to registers r7 
;------------------------------------------------------------
	G$lightLED$0$0 ==.
	C$lab2_func.c$535$1$127 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:535: void lightLED(unsigned char num)
;	-----------------------------------------
;	 function lightLED
;	-----------------------------------------
_lightLED:
	mov	r7,dpl
	C$lab2_func.c$537$1$129 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:537: Counts = 0; //clear whole timer sys
	clr	a
	mov	_Counts,a
	mov	(_Counts + 1),a
	C$lab2_func.c$538$1$129 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:538: TMR0 = 0;
	mov	((_TMR0 >> 0) & 0xFF),a
	mov	((_TMR0 >> 8) & 0xFF),a
	C$lab2_func.c$539$1$129 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:539: TR0 = 1; //start timer0
	setb	_TR0
	C$lab2_func.c$541$1$129 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:541: while(Counts < speed/3);//give speed/3 between each light.
00101$:
	mov	__divuint_PARM_2,#0x03
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,_speed
	mov	dph,(_speed + 1)
	push	ar7
	lcall	__divuint
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	clr	c
	mov	a,_Counts
	subb	a,r5
	mov	a,(_Counts + 1)
	subb	a,r6
	jc	00101$
	C$lab2_func.c$543$1$129 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:543: if(num == 0)
	mov	a,r7
	jnz	00113$
	C$lab2_func.c$544$1$129 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:544: LED0 = 0;
	clr	_LED0
	sjmp	00115$
00113$:
	C$lab2_func.c$545$1$129 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:545: else if(num == 1)
	cjne	r7,#0x01,00110$
	C$lab2_func.c$546$1$129 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:546: LED1 = 0;
	clr	_LED1
	sjmp	00115$
00110$:
	C$lab2_func.c$547$1$129 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:547: else if(num == 2)
	cjne	r7,#0x02,00107$
	C$lab2_func.c$548$1$129 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:548: LED2 = 0;
	clr	_LED2
	sjmp	00115$
00107$:
	C$lab2_func.c$549$1$129 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:549: else if(num == 3)
	cjne	r7,#0x03,00115$
	C$lab2_func.c$550$1$129 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:550: LED3 = 0;
	clr	_LED3
	C$lab2_func.c$552$1$129 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:552: while(Counts < speed/2+speed/3);
00115$:
	mov	r6,_speed
	mov	a,(_speed + 1)
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
	mov	__divuint_PARM_2,#0x03
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,_speed
	mov	dph,(_speed + 1)
	push	ar7
	push	ar6
	lcall	__divuint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	clr	c
	mov	a,_Counts
	subb	a,r6
	mov	a,(_Counts + 1)
	subb	a,r7
	jc	00115$
	C$lab2_func.c$553$1$129 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:553: clear();
	lcall	_clear
	C$lab2_func.c$554$1$129 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:554: TR0 = 0;//stop the timer0
	clr	_TR0
	C$lab2_func.c$555$1$129 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:555: Counts = 0;
	clr	a
	mov	_Counts,a
	mov	(_Counts + 1),a
	C$lab2_func.c$556$1$129 ==.
	XG$lightLED$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lightLEDmode3'
;------------------------------------------------------------
;num                       Allocated to registers r7 
;------------------------------------------------------------
	G$lightLEDmode3$0$0 ==.
	C$lab2_func.c$561$1$129 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:561: void lightLEDmode3(unsigned char num)
;	-----------------------------------------
;	 function lightLEDmode3
;	-----------------------------------------
_lightLEDmode3:
	mov	r7,dpl
	C$lab2_func.c$563$1$131 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:563: Counts = 0; //clear whole timer sys
	clr	a
	mov	_Counts,a
	mov	(_Counts + 1),a
	C$lab2_func.c$564$1$131 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:564: TMR0 = 0;
	mov	((_TMR0 >> 0) & 0xFF),a
	mov	((_TMR0 >> 8) & 0xFF),a
	C$lab2_func.c$567$1$131 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:567: while(Counts < speed*delay);//give speed/3 between each light.
00101$:
	mov	__mulint_PARM_2,_delay
	mov	(__mulint_PARM_2 + 1),(_delay + 1)
	mov	dpl,_speed
	mov	dph,(_speed + 1)
	push	ar7
	lcall	__mulint
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	clr	c
	mov	a,_Counts
	subb	a,r5
	mov	a,(_Counts + 1)
	subb	a,r6
	jc	00101$
	C$lab2_func.c$569$1$131 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:569: if(num == 0)
	mov	a,r7
	jnz	00113$
	C$lab2_func.c$570$1$131 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:570: LED0 = 0;
	clr	_LED0
	sjmp	00114$
00113$:
	C$lab2_func.c$571$1$131 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:571: else if(num == 1)
	cjne	r7,#0x01,00110$
	C$lab2_func.c$572$1$131 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:572: LED1 = 0;
	clr	_LED1
	sjmp	00114$
00110$:
	C$lab2_func.c$573$1$131 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:573: else if(num == 2)
	cjne	r7,#0x02,00107$
	C$lab2_func.c$574$1$131 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:574: LED2 = 0;
	clr	_LED2
	sjmp	00114$
00107$:
	C$lab2_func.c$575$1$131 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:575: else if(num == 3)
	cjne	r7,#0x03,00114$
	C$lab2_func.c$576$1$131 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:576: LED3 = 0;
	clr	_LED3
00114$:
	C$lab2_func.c$578$1$131 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:578: Counts = 0;
	clr	a
	mov	_Counts,a
	mov	(_Counts + 1),a
	C$lab2_func.c$579$1$131 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:579: while(Counts < speed*(blink_rate));
00115$:
	mov	__mulint_PARM_2,_blink_rate
	mov	(__mulint_PARM_2 + 1),(_blink_rate + 1)
	mov	dpl,_speed
	mov	dph,(_speed + 1)
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	clr	c
	mov	a,_Counts
	subb	a,r6
	mov	a,(_Counts + 1)
	subb	a,r7
	jc	00115$
	C$lab2_func.c$580$1$131 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:580: clear();
	lcall	_clear
	C$lab2_func.c$582$1$131 ==.
	XG$lightLEDmode3$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'buttonPress'
;------------------------------------------------------------
	G$buttonPress$0$0 ==.
	C$lab2_func.c$586$1$131 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:586: unsigned char buttonPress(void)
;	-----------------------------------------
;	 function buttonPress
;	-----------------------------------------
_buttonPress:
	C$lab2_func.c$588$1$133 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:588: currCounts = Counts;
	mov	_currCounts,_Counts
	mov	(_currCounts + 1),(_Counts + 1)
	C$lab2_func.c$589$1$133 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:589: while(Counts < 7+currCounts);
00101$:
	mov	a,#0x07
	add	a,_currCounts
	mov	r6,a
	clr	a
	addc	a,(_currCounts + 1)
	mov	r7,a
	clr	c
	mov	a,_Counts
	subb	a,r6
	mov	a,(_Counts + 1)
	subb	a,r7
	jc	00101$
	C$lab2_func.c$590$1$133 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:590: if(!PB0 && PB1 && PB2 && PB3)
	jb	_PB0,00135$
	jnb	_PB1,00135$
	jnb	_PB2,00135$
	jnb	_PB3,00135$
	C$lab2_func.c$592$2$134 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:592: printf("PB0 \r\n");
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab2_func.c$593$2$134 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:593: while(!PB0);
00104$:
	jnb	_PB0,00104$
	C$lab2_func.c$594$2$134 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:594: return 0;
	mov	dpl,#0x00
	ljmp	00140$
00135$:
	C$lab2_func.c$596$1$133 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:596: else if(PB0 && !PB1 && PB2 && PB3)
	jnb	_PB0,00129$
	jb	_PB1,00129$
	jnb	_PB2,00129$
	jnb	_PB3,00129$
	C$lab2_func.c$598$2$135 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:598: printf("PB1 \r\n");
	mov	a,#___str_32
	push	acc
	mov	a,#(___str_32 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab2_func.c$599$2$135 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:599: while(!PB1);
00107$:
	jnb	_PB1,00107$
	C$lab2_func.c$600$2$135 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:600: return 1;	
	mov	dpl,#0x01
	sjmp	00140$
00129$:
	C$lab2_func.c$602$1$133 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:602: else if(PB0 && PB1 && !PB2 && PB3)
	jnb	_PB0,00123$
	jnb	_PB1,00123$
	jb	_PB2,00123$
	jnb	_PB3,00123$
	C$lab2_func.c$604$2$136 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:604: printf("PB2 \r\n");
	mov	a,#___str_33
	push	acc
	mov	a,#(___str_33 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab2_func.c$605$2$136 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:605: while(!PB2);
00110$:
	jnb	_PB2,00110$
	C$lab2_func.c$606$2$136 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:606: return 2;
	mov	dpl,#0x02
	sjmp	00140$
00123$:
	C$lab2_func.c$608$1$133 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:608: else if(PB0 && PB1 && PB2 && !PB3)
	jnb	_PB0,00117$
	jnb	_PB1,00117$
	jnb	_PB2,00117$
	jb	_PB3,00117$
	C$lab2_func.c$610$2$137 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:610: printf("PB3 \r\n");
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab2_func.c$611$2$137 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:611: while(!PB3);
00113$:
	jnb	_PB3,00113$
	C$lab2_func.c$612$2$137 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:612: return 3;
	mov	dpl,#0x03
	sjmp	00140$
00117$:
	C$lab2_func.c$615$1$133 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:615: return 4;		
	mov	dpl,#0x04
00140$:
	C$lab2_func.c$616$1$133 ==.
	XG$buttonPress$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'game'
;------------------------------------------------------------
	G$game$0$0 ==.
	C$lab2_func.c$619$1$133 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:619: void game(void) {
;	-----------------------------------------
;	 function game
;	-----------------------------------------
_game:
	C$lab2_func.c$621$1$139 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:621: for (i = 0; i < 8; i++) //8 sequence of the game
	mov	_i,#0x00
00141$:
	C$lab2_func.c$624$2$140 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:624: for (seq = 0; seq < i || seq == i; seq++)
	mov	_seq,#0x00
00132$:
	clr	c
	mov	a,_seq
	subb	a,_i
	jc	00131$
	mov	a,_i
	cjne	a,_seq,00102$
00131$:
	C$lab2_func.c$625$2$140 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:625: for (rep = 1; rep <= times[seq]; rep++)
	mov	_rep,#0x01
00128$:
	mov	a,_seq
	add	a,#_times
	mov	r1,a
	mov	ar7,@r1
	clr	c
	mov	a,r7
	subb	a,_rep
	jc	00133$
	C$lab2_func.c$626$2$140 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:626: lightLED(light[seq]);
	mov	a,_seq
	add	a,#_light
	mov	r1,a
	mov	dpl,@r1
	lcall	_lightLED
	C$lab2_func.c$625$2$140 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:625: for (rep = 1; rep <= times[seq]; rep++)
	inc	_rep
	sjmp	00128$
00133$:
	C$lab2_func.c$624$2$140 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:624: for (seq = 0; seq < i || seq == i; seq++)
	inc	_seq
	sjmp	00132$
00102$:
	C$lab2_func.c$627$2$140 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:627: theBuzz();//time to make selection	
	lcall	_theBuzz
	C$lab2_func.c$630$2$140 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:630: Counts = 0;
	clr	a
	mov	_Counts,a
	mov	(_Counts + 1),a
	C$lab2_func.c$631$2$140 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:631: TMR0 = 0;
	mov	((_TMR0 >> 0) & 0xFF),a
	mov	((_TMR0 >> 8) & 0xFF),a
	C$lab2_func.c$632$2$140 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:632: TR0 = 1;
	setb	_TR0
	C$lab2_func.c$635$2$140 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:635: for (seq = 0; seq < i || seq == i; seq++)
	mov	_seq,#0x00
00139$:
	clr	c
	mov	a,_seq
	subb	a,_i
	jc	00138$
	mov	a,_i
	cjne	a,_seq,00207$
	sjmp	00208$
00207$:
	ljmp	00117$
00208$:
00138$:
	C$lab2_func.c$637$3$141 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:637: for (rep = 1; rep <= times[seq]; rep++)
	mov	_rep,#0x01
00135$:
	mov	a,_seq
	add	a,#_times
	mov	r1,a
	mov	ar7,@r1
	clr	c
	mov	a,r7
	subb	a,_rep
	jnc	00209$
	ljmp	00113$
00209$:
	C$lab2_func.c$639$4$142 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:639: do
00108$:
	C$lab2_func.c$641$5$143 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:641: if (Counts >(i + 1)*speed)
	mov	r6,_i
	mov	r7,#0x00
	inc	r6
	cjne	r6,#0x00,00210$
	inc	r7
00210$:
	mov	dpl,r6
	mov	dph,r7
	mov	__mulint_PARM_2,_speed
	mov	(__mulint_PARM_2 + 1),(_speed + 1)
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	clr	c
	mov	a,r6
	subb	a,_Counts
	mov	a,r7
	subb	a,(_Counts + 1)
	jnc	00109$
	C$lab2_func.c$643$6$144 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:643: printf("TIME OUT \r\n");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab2_func.c$644$6$144 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:644: break; //out off all loop
	sjmp	00110$
00109$:
	C$lab2_func.c$646$4$142 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:646: } while (PB0 && PB1 && PB2 && PB3);//TTTTTTTTTTTTT
	jnb	_PB0,00110$
	jnb	_PB1,00110$
	jnb	_PB2,00110$
	jb	_PB3,00108$
00110$:
	C$lab2_func.c$647$4$142 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:647: currLED = buttonPress();
	lcall	_buttonPress
	mov	_currLED,dpl
	C$lab2_func.c$648$4$142 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:648: if (currLED != light[seq])
	mov	a,_seq
	add	a,#_light
	mov	r1,a
	mov	a,@r1
	mov	r7,a
	cjne	a,_currLED,00216$
	sjmp	00136$
00216$:
	C$lab2_func.c$650$5$145 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:650: alive = 0;//you are dead
	clr	a
	mov	_alive,a
	mov	(_alive + 1),a
	C$lab2_func.c$651$5$145 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:651: printf("GAME OVER, you pressed %u,and your score is %u \r\n", currLED, score);
	mov	r6,_currLED
	mov	r7,#0x00
	push	_score
	push	(_score + 1)
	push	ar6
	push	ar7
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	C$lab2_func.c$653$5$145 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:653: BILED1 = 0;
	clr	_BILED1
	C$lab2_func.c$654$5$145 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:654: theBuzz();//TTTTTTTTTTTTT
	lcall	_theBuzz
	C$lab2_func.c$655$5$145 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:655: BILED1 = 1;
	setb	_BILED1
	C$lab2_func.c$656$5$145 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:656: break;
	sjmp	00113$
00136$:
	C$lab2_func.c$637$3$141 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:637: for (rep = 1; rep <= times[seq]; rep++)
	inc	_rep
	ljmp	00135$
00113$:
	C$lab2_func.c$659$3$141 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:659: if (alive)
	mov	a,_alive
	orl	a,(_alive + 1)
	jz	00117$
	C$lab2_func.c$660$3$141 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:660: score++;
	inc	_score
	clr	a
	cjne	a,_score,00218$
	inc	(_score + 1)
00218$:
	C$lab2_func.c$635$2$140 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:635: for (seq = 0; seq < i || seq == i; seq++)
	inc	_seq
	ljmp	00139$
00117$:
	C$lab2_func.c$664$2$140 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:664: if (!alive)
	mov	a,_alive
	orl	a,(_alive + 1)
	jnz	00122$
	C$lab2_func.c$666$3$146 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:666: TR0 = 0;
	clr	_TR0
	C$lab2_func.c$667$3$146 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:667: break;
	sjmp	00124$
00122$:
	C$lab2_func.c$671$3$147 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:671: currCounts = Counts;
	mov	_currCounts,_Counts
	mov	(_currCounts + 1),(_Counts + 1)
	C$lab2_func.c$672$3$147 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:672: BILED2 = 0;
	clr	_BILED2
	C$lab2_func.c$673$3$147 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:673: while (Counts < currCounts + 337);//TTTTTTTTTTTTT
00118$:
	mov	a,#0x51
	add	a,_currCounts
	mov	r6,a
	mov	a,#0x01
	addc	a,(_currCounts + 1)
	mov	r7,a
	clr	c
	mov	a,_Counts
	subb	a,r6
	mov	a,(_Counts + 1)
	subb	a,r7
	jc	00118$
	C$lab2_func.c$674$3$147 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:674: BILED2 = 1;
	setb	_BILED2
	C$lab2_func.c$675$3$147 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:675: printf("correct \r\n");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$lab2_func.c$678$2$140 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:678: TR0 = 0;
	clr	_TR0
	C$lab2_func.c$621$1$139 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:621: for (i = 0; i < 8; i++) //8 sequence of the game
	inc	_i
	mov	a,#0x100 - 0x08
	add	a,_i
	jc	00221$
	ljmp	00141$
00221$:
00124$:
	C$lab2_func.c$681$1$139 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:681: if (alive)
	mov	a,_alive
	orl	a,(_alive + 1)
	jz	00143$
	C$lab2_func.c$682$1$139 ==.
;	C:\Users\Tim\Documents\LITEC\Lab2\lab2-func.c:682: printf("you successfully passed the game! \r\n");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
00143$:
	C$lab2_func.c$684$1$139 ==.
	XG$game$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Flab2_func$__str_0$0$0 == .
___str_0:
	.db 0x0d
	.ascii " Start theGame!"
	.db 0x0a
	.db 0x00
Flab2_func$__str_1$0$0 == .
___str_1:
	.ascii "Switch to your desired mode: "
	.db 0x0d
	.db 0x0a
	.ascii " "
	.db 0x09
	.db 0x09
	.ascii "    mode 0  SS0(off)  SS1("
	.ascii "off)   "
	.db 0x0d
	.db 0x0a
	.ascii " "
	.db 0x09
	.db 0x09
	.db 0x09
	.ascii "mode 1  SS0(off)  SS1(on)    "
	.db 0x0d
	.db 0x0a
	.ascii " "
	.db 0x09
	.db 0x09
	.db 0x09
	.ascii "mode 2  SS0("
	.ascii "on)   SS1(off)   "
	.db 0x0d
	.db 0x0a
	.ascii " "
	.db 0x09
	.db 0x09
	.db 0x09
	.ascii "mode 3  SS0(on)   SS1(on)    "
	.db 0x0d
	.db 0x0a
	.db 0x00
Flab2_func$__str_2$0$0 == .
___str_2:
	.ascii "Press a key on your computer after the selection to start th"
	.ascii "e game "
	.db 0x0d
	.db 0x0a
	.db 0x00
Flab2_func$__str_3$0$0 == .
___str_3:
	.ascii "You are currently in mode 0, GL! "
	.db 0x0d
	.db 0x0a
	.db 0x00
Flab2_func$__str_4$0$0 == .
___str_4:
	.ascii "You are currently in mode 1, CHA! CHA! "
	.db 0x0d
	.db 0x0a
	.db 0x00
Flab2_func$__str_5$0$0 == .
___str_5:
	.ascii "You are currently in mode 2, Emmmm... "
	.db 0x0d
	.db 0x0a
	.db 0x00
Flab2_func$__str_6$0$0 == .
___str_6:
	.ascii "You are currently in mode 3, wanna be faster? "
	.db 0x0d
	.db 0x0a
	.db 0x00
Flab2_func$__str_7$0$0 == .
___str_7:
	.ascii "game rule"
	.db 0x0d
	.db 0x0a
	.db 0x00
Flab2_func$__str_8$0$0 == .
___str_8:
	.ascii "%u|%u "
	.db 0x0d
	.db 0x0a
	.db 0x00
Flab2_func$__str_9$0$0 == .
___str_9:
	.ascii "TIME OUT "
	.db 0x0d
	.db 0x0a
	.db 0x00
Flab2_func$__str_10$0$0 == .
___str_10:
	.ascii "GAME OVER, you pressed %u,and your score is %u "
	.db 0x0d
	.db 0x0a
	.db 0x00
Flab2_func$__str_11$0$0 == .
___str_11:
	.ascii "correct "
	.db 0x0d
	.db 0x0a
	.db 0x00
Flab2_func$__str_12$0$0 == .
___str_12:
	.ascii "you successfully passed the game! "
	.db 0x0d
	.db 0x0a
	.db 0x00
Flab2_func$__str_13$0$0 == .
___str_13:
	.db 0x0d
	.ascii " Rule: "
	.db 0x0a
	.db 0x00
Flab2_func$__str_14$0$0 == .
___str_14:
	.db 0x0d
	.ascii " Player 1 use pushbutton and potentiometer to create a sequ"
	.ascii "ence "
	.db 0x0a
	.db 0x00
Flab2_func$__str_15$0$0 == .
___str_15:
	.db 0x0d
	.ascii " pushbutton indicate the LED and use potentiometer to adjus"
	.ascii "t blinks "
	.db 0x0a
	.db 0x00
Flab2_func$__str_16$0$0 == .
___str_16:
	.db 0x0d
	.ascii " then player2 play the game with preprogrammed sequence "
	.db 0x0a
	.db 0x00
Flab2_func$__str_17$0$0 == .
___str_17:
	.db 0x0d
	.ascii " Push any button to start modification! "
	.db 0x0a
	.db 0x00
Flab2_func$__str_18$0$0 == .
___str_18:
	.db 0x0d
	.ascii " Game start in 3 seconds "
	.db 0x0a
	.db 0x00
Flab2_func$__str_19$0$0 == .
___str_19:
	.db 0x0d
	.ascii " game start "
	.db 0x0a
	.db 0x00
Flab2_func$__str_20$0$0 == .
___str_20:
	.db 0x0d
	.ascii " Player1's turn "
	.db 0x0a
	.db 0x00
Flab2_func$__str_21$0$0 == .
___str_21:
	.db 0x0d
	.ascii " Sequence %u "
	.db 0x0a
	.db 0x00
Flab2_func$__str_22$0$0 == .
___str_22:
	.db 0x0d
	.ascii " LED %u "
	.db 0x0a
	.db 0x00
Flab2_func$__str_23$0$0 == .
___str_23:
	.db 0x0d
	.ascii " next sequence start in 2 seconds"
	.db 0x0a
	.db 0x00
Flab2_func$__str_24$0$0 == .
___str_24:
	.db 0x0d
	.ascii " Player2's turn start in 10 seconds "
	.db 0x0a
	.db 0x00
Flab2_func$__str_25$0$0 == .
___str_25:
	.db 0x0d
	.ascii "Set blink rate, then press PB0"
	.db 0x0a
	.db 0x0d
	.db 0x00
Flab2_func$__str_26$0$0 == .
___str_26:
	.db 0x0d
	.ascii "Blink Rate: %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
Flab2_func$__str_27$0$0 == .
___str_27:
	.db 0x0d
	.ascii "Set Delay, then press PB0"
	.db 0x0a
	.db 0x0d
	.db 0x00
Flab2_func$__str_28$0$0 == .
___str_28:
	.ascii "Delay: %u "
	.db 0x0a
	.db 0x0d
	.db 0x00
Flab2_func$__str_29$0$0 == .
___str_29:
	.db 0x0d
	.ascii "Beginning the Game"
	.db 0x0a
	.db 0x0d
	.db 0x00
Flab2_func$__str_30$0$0 == .
___str_30:
	.ascii "score: %d"
	.db 0x0a
	.db 0x00
Flab2_func$__str_31$0$0 == .
___str_31:
	.ascii "PB0 "
	.db 0x0d
	.db 0x0a
	.db 0x00
Flab2_func$__str_32$0$0 == .
___str_32:
	.ascii "PB1 "
	.db 0x0d
	.db 0x0a
	.db 0x00
Flab2_func$__str_33$0$0 == .
___str_33:
	.ascii "PB2 "
	.db 0x0d
	.db 0x0a
	.db 0x00
Flab2_func$__str_34$0$0 == .
___str_34:
	.ascii "PB3 "
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
