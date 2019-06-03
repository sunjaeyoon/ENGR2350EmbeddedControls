                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _read_keypad
                                     13 	.globl _strlen
                                     14 	.globl _abs
                                     15 	.globl _putchar
                                     16 	.globl _getchar
                                     17 	.globl _vsprintf
                                     18 	.globl _printf
                                     19 	.globl _getchar_nw
                                     20 	.globl _Sys_Init
                                     21 	.globl _UART0_Init
                                     22 	.globl _SYSCLK_Init
                                     23 	.globl _BUS_SCL
                                     24 	.globl _BUS_TOE
                                     25 	.globl _BUS_FTE
                                     26 	.globl _BUS_AA
                                     27 	.globl _BUS_INT
                                     28 	.globl _BUS_STOP
                                     29 	.globl _BUS_START
                                     30 	.globl _BUS_EN
                                     31 	.globl _BUS_BUSY
                                     32 	.globl _SPIF
                                     33 	.globl _WCOL
                                     34 	.globl _MODF
                                     35 	.globl _RXOVRN
                                     36 	.globl _TXBSY
                                     37 	.globl _SLVSEL
                                     38 	.globl _MSTEN
                                     39 	.globl _SPIEN
                                     40 	.globl _AD0EN
                                     41 	.globl _ADCEN
                                     42 	.globl _AD0TM
                                     43 	.globl _ADCTM
                                     44 	.globl _AD0INT
                                     45 	.globl _ADCINT
                                     46 	.globl _AD0BUSY
                                     47 	.globl _ADBUSY
                                     48 	.globl _AD0CM1
                                     49 	.globl _ADSTM1
                                     50 	.globl _AD0CM0
                                     51 	.globl _ADSTM0
                                     52 	.globl _AD0WINT
                                     53 	.globl _ADWINT
                                     54 	.globl _AD0LJST
                                     55 	.globl _ADLJST
                                     56 	.globl _CF
                                     57 	.globl _CR
                                     58 	.globl _CCF4
                                     59 	.globl _CCF3
                                     60 	.globl _CCF2
                                     61 	.globl _CCF1
                                     62 	.globl _CCF0
                                     63 	.globl _CY
                                     64 	.globl _AC
                                     65 	.globl _F0
                                     66 	.globl _RS1
                                     67 	.globl _RS0
                                     68 	.globl _OV
                                     69 	.globl _F1
                                     70 	.globl _P
                                     71 	.globl _TF2
                                     72 	.globl _EXF2
                                     73 	.globl _RCLK
                                     74 	.globl _TCLK
                                     75 	.globl _EXEN2
                                     76 	.globl _TR2
                                     77 	.globl _CT2
                                     78 	.globl _CPRL2
                                     79 	.globl _BUSY
                                     80 	.globl _ENSMB
                                     81 	.globl _STA
                                     82 	.globl _STO
                                     83 	.globl _SI
                                     84 	.globl _AA
                                     85 	.globl _SMBFTE
                                     86 	.globl _SMBTOE
                                     87 	.globl _PT2
                                     88 	.globl _PS
                                     89 	.globl _PS0
                                     90 	.globl _PT1
                                     91 	.globl _PX1
                                     92 	.globl _PT0
                                     93 	.globl _PX0
                                     94 	.globl _P3_7
                                     95 	.globl _P3_6
                                     96 	.globl _P3_5
                                     97 	.globl _P3_4
                                     98 	.globl _P3_3
                                     99 	.globl _P3_2
                                    100 	.globl _P3_1
                                    101 	.globl _P3_0
                                    102 	.globl _EA
                                    103 	.globl _ET2
                                    104 	.globl _ES
                                    105 	.globl _ES0
                                    106 	.globl _ET1
                                    107 	.globl _EX1
                                    108 	.globl _ET0
                                    109 	.globl _EX0
                                    110 	.globl _P2_7
                                    111 	.globl _P2_6
                                    112 	.globl _P2_5
                                    113 	.globl _P2_4
                                    114 	.globl _P2_3
                                    115 	.globl _P2_2
                                    116 	.globl _P2_1
                                    117 	.globl _P2_0
                                    118 	.globl _S0MODE
                                    119 	.globl _SM00
                                    120 	.globl _SM0
                                    121 	.globl _SM10
                                    122 	.globl _SM1
                                    123 	.globl _MCE0
                                    124 	.globl _SM20
                                    125 	.globl _SM2
                                    126 	.globl _REN0
                                    127 	.globl _REN
                                    128 	.globl _TB80
                                    129 	.globl _TB8
                                    130 	.globl _RB80
                                    131 	.globl _RB8
                                    132 	.globl _TI0
                                    133 	.globl _TI
                                    134 	.globl _RI0
                                    135 	.globl _RI
                                    136 	.globl _P1_7
                                    137 	.globl _P1_6
                                    138 	.globl _P1_5
                                    139 	.globl _P1_4
                                    140 	.globl _P1_3
                                    141 	.globl _P1_2
                                    142 	.globl _P1_1
                                    143 	.globl _P1_0
                                    144 	.globl _TF1
                                    145 	.globl _TR1
                                    146 	.globl _TF0
                                    147 	.globl _TR0
                                    148 	.globl _IE1
                                    149 	.globl _IT1
                                    150 	.globl _IE0
                                    151 	.globl _IT0
                                    152 	.globl _P0_7
                                    153 	.globl _P0_6
                                    154 	.globl _P0_5
                                    155 	.globl _P0_4
                                    156 	.globl _P0_3
                                    157 	.globl _P0_2
                                    158 	.globl _P0_1
                                    159 	.globl _P0_0
                                    160 	.globl _PCA0CP4
                                    161 	.globl _PCA0CP3
                                    162 	.globl _PCA0CP2
                                    163 	.globl _PCA0CP1
                                    164 	.globl _PCA0CP0
                                    165 	.globl _PCA0
                                    166 	.globl _DAC1
                                    167 	.globl _DAC0
                                    168 	.globl _ADC0LT
                                    169 	.globl _ADC0GT
                                    170 	.globl _ADC0
                                    171 	.globl _RCAP4
                                    172 	.globl _TMR4
                                    173 	.globl _TMR3RL
                                    174 	.globl _TMR3
                                    175 	.globl _RCAP2
                                    176 	.globl _TMR2
                                    177 	.globl _TMR1
                                    178 	.globl _TMR0
                                    179 	.globl _WDTCN
                                    180 	.globl _PCA0CPH4
                                    181 	.globl _PCA0CPH3
                                    182 	.globl _PCA0CPH2
                                    183 	.globl _PCA0CPH1
                                    184 	.globl _PCA0CPH0
                                    185 	.globl _PCA0H
                                    186 	.globl _SPI0CN
                                    187 	.globl _EIP2
                                    188 	.globl _EIP1
                                    189 	.globl _TH4
                                    190 	.globl _TL4
                                    191 	.globl _SADDR1
                                    192 	.globl _SBUF1
                                    193 	.globl _SCON1
                                    194 	.globl _B
                                    195 	.globl _RSTSRC
                                    196 	.globl _PCA0CPL4
                                    197 	.globl _PCA0CPL3
                                    198 	.globl _PCA0CPL2
                                    199 	.globl _PCA0CPL1
                                    200 	.globl _PCA0CPL0
                                    201 	.globl _PCA0L
                                    202 	.globl _ADC0CN
                                    203 	.globl _EIE2
                                    204 	.globl _EIE1
                                    205 	.globl _RCAP4H
                                    206 	.globl _RCAP4L
                                    207 	.globl _XBR2
                                    208 	.globl _XBR1
                                    209 	.globl _XBR0
                                    210 	.globl _ACC
                                    211 	.globl _PCA0CPM4
                                    212 	.globl _PCA0CPM3
                                    213 	.globl _PCA0CPM2
                                    214 	.globl _PCA0CPM1
                                    215 	.globl _PCA0CPM0
                                    216 	.globl _PCA0MD
                                    217 	.globl _PCA0CN
                                    218 	.globl _DAC1CN
                                    219 	.globl _DAC1H
                                    220 	.globl _DAC1L
                                    221 	.globl _DAC0CN
                                    222 	.globl _DAC0H
                                    223 	.globl _DAC0L
                                    224 	.globl _REF0CN
                                    225 	.globl _PSW
                                    226 	.globl _SMB0CR
                                    227 	.globl _TH2
                                    228 	.globl _TL2
                                    229 	.globl _RCAP2H
                                    230 	.globl _RCAP2L
                                    231 	.globl _T4CON
                                    232 	.globl _T2CON
                                    233 	.globl _ADC0LTH
                                    234 	.globl _ADC0LTL
                                    235 	.globl _ADC0GTH
                                    236 	.globl _ADC0GTL
                                    237 	.globl _SMB0ADR
                                    238 	.globl _SMB0DAT
                                    239 	.globl _SMB0STA
                                    240 	.globl _SMB0CN
                                    241 	.globl _ADC0H
                                    242 	.globl _ADC0L
                                    243 	.globl _P1MDIN
                                    244 	.globl _ADC0CF
                                    245 	.globl _AMX0SL
                                    246 	.globl _AMX0CF
                                    247 	.globl _SADEN0
                                    248 	.globl _IP
                                    249 	.globl _FLACL
                                    250 	.globl _FLSCL
                                    251 	.globl _P74OUT
                                    252 	.globl _OSCICN
                                    253 	.globl _OSCXCN
                                    254 	.globl _P3
                                    255 	.globl __XPAGE
                                    256 	.globl _EMI0CN
                                    257 	.globl _SADEN1
                                    258 	.globl _P3IF
                                    259 	.globl _AMX1SL
                                    260 	.globl _ADC1CF
                                    261 	.globl _ADC1CN
                                    262 	.globl _SADDR0
                                    263 	.globl _IE
                                    264 	.globl _P3MDOUT
                                    265 	.globl _PRT3CF
                                    266 	.globl _P2MDOUT
                                    267 	.globl _PRT2CF
                                    268 	.globl _P1MDOUT
                                    269 	.globl _PRT1CF
                                    270 	.globl _P0MDOUT
                                    271 	.globl _PRT0CF
                                    272 	.globl _EMI0CF
                                    273 	.globl _EMI0TC
                                    274 	.globl _P2
                                    275 	.globl _CPT1CN
                                    276 	.globl _CPT0CN
                                    277 	.globl _SPI0CKR
                                    278 	.globl _ADC1
                                    279 	.globl _SPI0DAT
                                    280 	.globl _SPI0CFG
                                    281 	.globl _SBUF0
                                    282 	.globl _SBUF
                                    283 	.globl _SCON0
                                    284 	.globl _SCON
                                    285 	.globl _P7
                                    286 	.globl _TMR3H
                                    287 	.globl _TMR3L
                                    288 	.globl _TMR3RLH
                                    289 	.globl _TMR3RLL
                                    290 	.globl _TMR3CN
                                    291 	.globl _P1
                                    292 	.globl _PSCTL
                                    293 	.globl _CKCON
                                    294 	.globl _TH1
                                    295 	.globl _TH0
                                    296 	.globl _TL1
                                    297 	.globl _TL0
                                    298 	.globl _TMOD
                                    299 	.globl _TCON
                                    300 	.globl _PCON
                                    301 	.globl _P6
                                    302 	.globl _P5
                                    303 	.globl _P4
                                    304 	.globl _DPH
                                    305 	.globl _DPL
                                    306 	.globl _SP
                                    307 	.globl _P0
                                    308 	.globl _pw_neut
                                    309 	.globl _pw_max
                                    310 	.globl _pw_min
                                    311 	.globl _thrust_angle
                                    312 	.globl _previous_error
                                    313 	.globl _error
                                    314 	.globl _temp_motorpw
                                    315 	.globl _rudder_pw
                                    316 	.globl _RUDDER_RIGHT
                                    317 	.globl _RUDDER_LEFT
                                    318 	.globl _kd
                                    319 	.globl _kp
                                    320 	.globl _original_desired
                                    321 	.globl _desired
                                    322 	.globl _h_Counts
                                    323 	.globl _new_heading
                                    324 	.globl _heading
                                    325 	.globl _new_range
                                    326 	.globl _r_Counts
                                    327 	.globl _range
                                    328 	.globl _r_Data
                                    329 	.globl _dist
                                    330 	.globl _voltage
                                    331 	.globl _Counts
                                    332 	.globl _i2c_read_data_PARM_4
                                    333 	.globl _i2c_read_data_PARM_3
                                    334 	.globl _i2c_read_data_PARM_2
                                    335 	.globl _i2c_write_data_PARM_4
                                    336 	.globl _i2c_write_data_PARM_3
                                    337 	.globl _i2c_write_data_PARM_2
                                    338 	.globl _aligned_alloc_PARM_2
                                    339 	.globl _Data2
                                    340 	.globl _lcd_print
                                    341 	.globl _lcd_clear
                                    342 	.globl _kpd_input
                                    343 	.globl _delay_time
                                    344 	.globl _i2c_start
                                    345 	.globl _i2c_write
                                    346 	.globl _i2c_write_and_stop
                                    347 	.globl _i2c_read
                                    348 	.globl _i2c_read_and_stop
                                    349 	.globl _i2c_write_data
                                    350 	.globl _i2c_read_data
                                    351 	.globl _Accel_Init
                                    352 	.globl _Accel_Init_C
                                    353 	.globl _Port_Init
                                    354 	.globl _XBR0_Init
                                    355 	.globl _ADC_Init
                                    356 	.globl _read_ADC_value
                                    357 	.globl _PCA_Init
                                    358 	.globl _SMB_Init
                                    359 	.globl _PCA_ISR
                                    360 	.globl _Set_Gain
                                    361 	.globl _CarControl
                                    362 	.globl _Set_Motor
                                    363 	.globl _Heading_Control
                                    364 	.globl _ReadRanger
                                    365 	.globl _ReadCompass
                                    366 ;--------------------------------------------------------
                                    367 ; special function registers
                                    368 ;--------------------------------------------------------
                                    369 	.area RSEG    (ABS,DATA)
      000000                        370 	.org 0x0000
                           000080   371 G$P0$0$0 == 0x0080
                           000080   372 _P0	=	0x0080
                           000081   373 G$SP$0$0 == 0x0081
                           000081   374 _SP	=	0x0081
                           000082   375 G$DPL$0$0 == 0x0082
                           000082   376 _DPL	=	0x0082
                           000083   377 G$DPH$0$0 == 0x0083
                           000083   378 _DPH	=	0x0083
                           000084   379 G$P4$0$0 == 0x0084
                           000084   380 _P4	=	0x0084
                           000085   381 G$P5$0$0 == 0x0085
                           000085   382 _P5	=	0x0085
                           000086   383 G$P6$0$0 == 0x0086
                           000086   384 _P6	=	0x0086
                           000087   385 G$PCON$0$0 == 0x0087
                           000087   386 _PCON	=	0x0087
                           000088   387 G$TCON$0$0 == 0x0088
                           000088   388 _TCON	=	0x0088
                           000089   389 G$TMOD$0$0 == 0x0089
                           000089   390 _TMOD	=	0x0089
                           00008A   391 G$TL0$0$0 == 0x008a
                           00008A   392 _TL0	=	0x008a
                           00008B   393 G$TL1$0$0 == 0x008b
                           00008B   394 _TL1	=	0x008b
                           00008C   395 G$TH0$0$0 == 0x008c
                           00008C   396 _TH0	=	0x008c
                           00008D   397 G$TH1$0$0 == 0x008d
                           00008D   398 _TH1	=	0x008d
                           00008E   399 G$CKCON$0$0 == 0x008e
                           00008E   400 _CKCON	=	0x008e
                           00008F   401 G$PSCTL$0$0 == 0x008f
                           00008F   402 _PSCTL	=	0x008f
                           000090   403 G$P1$0$0 == 0x0090
                           000090   404 _P1	=	0x0090
                           000091   405 G$TMR3CN$0$0 == 0x0091
                           000091   406 _TMR3CN	=	0x0091
                           000092   407 G$TMR3RLL$0$0 == 0x0092
                           000092   408 _TMR3RLL	=	0x0092
                           000093   409 G$TMR3RLH$0$0 == 0x0093
                           000093   410 _TMR3RLH	=	0x0093
                           000094   411 G$TMR3L$0$0 == 0x0094
                           000094   412 _TMR3L	=	0x0094
                           000095   413 G$TMR3H$0$0 == 0x0095
                           000095   414 _TMR3H	=	0x0095
                           000096   415 G$P7$0$0 == 0x0096
                           000096   416 _P7	=	0x0096
                           000098   417 G$SCON$0$0 == 0x0098
                           000098   418 _SCON	=	0x0098
                           000098   419 G$SCON0$0$0 == 0x0098
                           000098   420 _SCON0	=	0x0098
                           000099   421 G$SBUF$0$0 == 0x0099
                           000099   422 _SBUF	=	0x0099
                           000099   423 G$SBUF0$0$0 == 0x0099
                           000099   424 _SBUF0	=	0x0099
                           00009A   425 G$SPI0CFG$0$0 == 0x009a
                           00009A   426 _SPI0CFG	=	0x009a
                           00009B   427 G$SPI0DAT$0$0 == 0x009b
                           00009B   428 _SPI0DAT	=	0x009b
                           00009C   429 G$ADC1$0$0 == 0x009c
                           00009C   430 _ADC1	=	0x009c
                           00009D   431 G$SPI0CKR$0$0 == 0x009d
                           00009D   432 _SPI0CKR	=	0x009d
                           00009E   433 G$CPT0CN$0$0 == 0x009e
                           00009E   434 _CPT0CN	=	0x009e
                           00009F   435 G$CPT1CN$0$0 == 0x009f
                           00009F   436 _CPT1CN	=	0x009f
                           0000A0   437 G$P2$0$0 == 0x00a0
                           0000A0   438 _P2	=	0x00a0
                           0000A1   439 G$EMI0TC$0$0 == 0x00a1
                           0000A1   440 _EMI0TC	=	0x00a1
                           0000A3   441 G$EMI0CF$0$0 == 0x00a3
                           0000A3   442 _EMI0CF	=	0x00a3
                           0000A4   443 G$PRT0CF$0$0 == 0x00a4
                           0000A4   444 _PRT0CF	=	0x00a4
                           0000A4   445 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   446 _P0MDOUT	=	0x00a4
                           0000A5   447 G$PRT1CF$0$0 == 0x00a5
                           0000A5   448 _PRT1CF	=	0x00a5
                           0000A5   449 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   450 _P1MDOUT	=	0x00a5
                           0000A6   451 G$PRT2CF$0$0 == 0x00a6
                           0000A6   452 _PRT2CF	=	0x00a6
                           0000A6   453 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   454 _P2MDOUT	=	0x00a6
                           0000A7   455 G$PRT3CF$0$0 == 0x00a7
                           0000A7   456 _PRT3CF	=	0x00a7
                           0000A7   457 G$P3MDOUT$0$0 == 0x00a7
                           0000A7   458 _P3MDOUT	=	0x00a7
                           0000A8   459 G$IE$0$0 == 0x00a8
                           0000A8   460 _IE	=	0x00a8
                           0000A9   461 G$SADDR0$0$0 == 0x00a9
                           0000A9   462 _SADDR0	=	0x00a9
                           0000AA   463 G$ADC1CN$0$0 == 0x00aa
                           0000AA   464 _ADC1CN	=	0x00aa
                           0000AB   465 G$ADC1CF$0$0 == 0x00ab
                           0000AB   466 _ADC1CF	=	0x00ab
                           0000AC   467 G$AMX1SL$0$0 == 0x00ac
                           0000AC   468 _AMX1SL	=	0x00ac
                           0000AD   469 G$P3IF$0$0 == 0x00ad
                           0000AD   470 _P3IF	=	0x00ad
                           0000AE   471 G$SADEN1$0$0 == 0x00ae
                           0000AE   472 _SADEN1	=	0x00ae
                           0000AF   473 G$EMI0CN$0$0 == 0x00af
                           0000AF   474 _EMI0CN	=	0x00af
                           0000AF   475 G$_XPAGE$0$0 == 0x00af
                           0000AF   476 __XPAGE	=	0x00af
                           0000B0   477 G$P3$0$0 == 0x00b0
                           0000B0   478 _P3	=	0x00b0
                           0000B1   479 G$OSCXCN$0$0 == 0x00b1
                           0000B1   480 _OSCXCN	=	0x00b1
                           0000B2   481 G$OSCICN$0$0 == 0x00b2
                           0000B2   482 _OSCICN	=	0x00b2
                           0000B5   483 G$P74OUT$0$0 == 0x00b5
                           0000B5   484 _P74OUT	=	0x00b5
                           0000B6   485 G$FLSCL$0$0 == 0x00b6
                           0000B6   486 _FLSCL	=	0x00b6
                           0000B7   487 G$FLACL$0$0 == 0x00b7
                           0000B7   488 _FLACL	=	0x00b7
                           0000B8   489 G$IP$0$0 == 0x00b8
                           0000B8   490 _IP	=	0x00b8
                           0000B9   491 G$SADEN0$0$0 == 0x00b9
                           0000B9   492 _SADEN0	=	0x00b9
                           0000BA   493 G$AMX0CF$0$0 == 0x00ba
                           0000BA   494 _AMX0CF	=	0x00ba
                           0000BB   495 G$AMX0SL$0$0 == 0x00bb
                           0000BB   496 _AMX0SL	=	0x00bb
                           0000BC   497 G$ADC0CF$0$0 == 0x00bc
                           0000BC   498 _ADC0CF	=	0x00bc
                           0000BD   499 G$P1MDIN$0$0 == 0x00bd
                           0000BD   500 _P1MDIN	=	0x00bd
                           0000BE   501 G$ADC0L$0$0 == 0x00be
                           0000BE   502 _ADC0L	=	0x00be
                           0000BF   503 G$ADC0H$0$0 == 0x00bf
                           0000BF   504 _ADC0H	=	0x00bf
                           0000C0   505 G$SMB0CN$0$0 == 0x00c0
                           0000C0   506 _SMB0CN	=	0x00c0
                           0000C1   507 G$SMB0STA$0$0 == 0x00c1
                           0000C1   508 _SMB0STA	=	0x00c1
                           0000C2   509 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   510 _SMB0DAT	=	0x00c2
                           0000C3   511 G$SMB0ADR$0$0 == 0x00c3
                           0000C3   512 _SMB0ADR	=	0x00c3
                           0000C4   513 G$ADC0GTL$0$0 == 0x00c4
                           0000C4   514 _ADC0GTL	=	0x00c4
                           0000C5   515 G$ADC0GTH$0$0 == 0x00c5
                           0000C5   516 _ADC0GTH	=	0x00c5
                           0000C6   517 G$ADC0LTL$0$0 == 0x00c6
                           0000C6   518 _ADC0LTL	=	0x00c6
                           0000C7   519 G$ADC0LTH$0$0 == 0x00c7
                           0000C7   520 _ADC0LTH	=	0x00c7
                           0000C8   521 G$T2CON$0$0 == 0x00c8
                           0000C8   522 _T2CON	=	0x00c8
                           0000C9   523 G$T4CON$0$0 == 0x00c9
                           0000C9   524 _T4CON	=	0x00c9
                           0000CA   525 G$RCAP2L$0$0 == 0x00ca
                           0000CA   526 _RCAP2L	=	0x00ca
                           0000CB   527 G$RCAP2H$0$0 == 0x00cb
                           0000CB   528 _RCAP2H	=	0x00cb
                           0000CC   529 G$TL2$0$0 == 0x00cc
                           0000CC   530 _TL2	=	0x00cc
                           0000CD   531 G$TH2$0$0 == 0x00cd
                           0000CD   532 _TH2	=	0x00cd
                           0000CF   533 G$SMB0CR$0$0 == 0x00cf
                           0000CF   534 _SMB0CR	=	0x00cf
                           0000D0   535 G$PSW$0$0 == 0x00d0
                           0000D0   536 _PSW	=	0x00d0
                           0000D1   537 G$REF0CN$0$0 == 0x00d1
                           0000D1   538 _REF0CN	=	0x00d1
                           0000D2   539 G$DAC0L$0$0 == 0x00d2
                           0000D2   540 _DAC0L	=	0x00d2
                           0000D3   541 G$DAC0H$0$0 == 0x00d3
                           0000D3   542 _DAC0H	=	0x00d3
                           0000D4   543 G$DAC0CN$0$0 == 0x00d4
                           0000D4   544 _DAC0CN	=	0x00d4
                           0000D5   545 G$DAC1L$0$0 == 0x00d5
                           0000D5   546 _DAC1L	=	0x00d5
                           0000D6   547 G$DAC1H$0$0 == 0x00d6
                           0000D6   548 _DAC1H	=	0x00d6
                           0000D7   549 G$DAC1CN$0$0 == 0x00d7
                           0000D7   550 _DAC1CN	=	0x00d7
                           0000D8   551 G$PCA0CN$0$0 == 0x00d8
                           0000D8   552 _PCA0CN	=	0x00d8
                           0000D9   553 G$PCA0MD$0$0 == 0x00d9
                           0000D9   554 _PCA0MD	=	0x00d9
                           0000DA   555 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   556 _PCA0CPM0	=	0x00da
                           0000DB   557 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   558 _PCA0CPM1	=	0x00db
                           0000DC   559 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   560 _PCA0CPM2	=	0x00dc
                           0000DD   561 G$PCA0CPM3$0$0 == 0x00dd
                           0000DD   562 _PCA0CPM3	=	0x00dd
                           0000DE   563 G$PCA0CPM4$0$0 == 0x00de
                           0000DE   564 _PCA0CPM4	=	0x00de
                           0000E0   565 G$ACC$0$0 == 0x00e0
                           0000E0   566 _ACC	=	0x00e0
                           0000E1   567 G$XBR0$0$0 == 0x00e1
                           0000E1   568 _XBR0	=	0x00e1
                           0000E2   569 G$XBR1$0$0 == 0x00e2
                           0000E2   570 _XBR1	=	0x00e2
                           0000E3   571 G$XBR2$0$0 == 0x00e3
                           0000E3   572 _XBR2	=	0x00e3
                           0000E4   573 G$RCAP4L$0$0 == 0x00e4
                           0000E4   574 _RCAP4L	=	0x00e4
                           0000E5   575 G$RCAP4H$0$0 == 0x00e5
                           0000E5   576 _RCAP4H	=	0x00e5
                           0000E6   577 G$EIE1$0$0 == 0x00e6
                           0000E6   578 _EIE1	=	0x00e6
                           0000E7   579 G$EIE2$0$0 == 0x00e7
                           0000E7   580 _EIE2	=	0x00e7
                           0000E8   581 G$ADC0CN$0$0 == 0x00e8
                           0000E8   582 _ADC0CN	=	0x00e8
                           0000E9   583 G$PCA0L$0$0 == 0x00e9
                           0000E9   584 _PCA0L	=	0x00e9
                           0000EA   585 G$PCA0CPL0$0$0 == 0x00ea
                           0000EA   586 _PCA0CPL0	=	0x00ea
                           0000EB   587 G$PCA0CPL1$0$0 == 0x00eb
                           0000EB   588 _PCA0CPL1	=	0x00eb
                           0000EC   589 G$PCA0CPL2$0$0 == 0x00ec
                           0000EC   590 _PCA0CPL2	=	0x00ec
                           0000ED   591 G$PCA0CPL3$0$0 == 0x00ed
                           0000ED   592 _PCA0CPL3	=	0x00ed
                           0000EE   593 G$PCA0CPL4$0$0 == 0x00ee
                           0000EE   594 _PCA0CPL4	=	0x00ee
                           0000EF   595 G$RSTSRC$0$0 == 0x00ef
                           0000EF   596 _RSTSRC	=	0x00ef
                           0000F0   597 G$B$0$0 == 0x00f0
                           0000F0   598 _B	=	0x00f0
                           0000F1   599 G$SCON1$0$0 == 0x00f1
                           0000F1   600 _SCON1	=	0x00f1
                           0000F2   601 G$SBUF1$0$0 == 0x00f2
                           0000F2   602 _SBUF1	=	0x00f2
                           0000F3   603 G$SADDR1$0$0 == 0x00f3
                           0000F3   604 _SADDR1	=	0x00f3
                           0000F4   605 G$TL4$0$0 == 0x00f4
                           0000F4   606 _TL4	=	0x00f4
                           0000F5   607 G$TH4$0$0 == 0x00f5
                           0000F5   608 _TH4	=	0x00f5
                           0000F6   609 G$EIP1$0$0 == 0x00f6
                           0000F6   610 _EIP1	=	0x00f6
                           0000F7   611 G$EIP2$0$0 == 0x00f7
                           0000F7   612 _EIP2	=	0x00f7
                           0000F8   613 G$SPI0CN$0$0 == 0x00f8
                           0000F8   614 _SPI0CN	=	0x00f8
                           0000F9   615 G$PCA0H$0$0 == 0x00f9
                           0000F9   616 _PCA0H	=	0x00f9
                           0000FA   617 G$PCA0CPH0$0$0 == 0x00fa
                           0000FA   618 _PCA0CPH0	=	0x00fa
                           0000FB   619 G$PCA0CPH1$0$0 == 0x00fb
                           0000FB   620 _PCA0CPH1	=	0x00fb
                           0000FC   621 G$PCA0CPH2$0$0 == 0x00fc
                           0000FC   622 _PCA0CPH2	=	0x00fc
                           0000FD   623 G$PCA0CPH3$0$0 == 0x00fd
                           0000FD   624 _PCA0CPH3	=	0x00fd
                           0000FE   625 G$PCA0CPH4$0$0 == 0x00fe
                           0000FE   626 _PCA0CPH4	=	0x00fe
                           0000FF   627 G$WDTCN$0$0 == 0x00ff
                           0000FF   628 _WDTCN	=	0x00ff
                           008C8A   629 G$TMR0$0$0 == 0x8c8a
                           008C8A   630 _TMR0	=	0x8c8a
                           008D8B   631 G$TMR1$0$0 == 0x8d8b
                           008D8B   632 _TMR1	=	0x8d8b
                           00CDCC   633 G$TMR2$0$0 == 0xcdcc
                           00CDCC   634 _TMR2	=	0xcdcc
                           00CBCA   635 G$RCAP2$0$0 == 0xcbca
                           00CBCA   636 _RCAP2	=	0xcbca
                           009594   637 G$TMR3$0$0 == 0x9594
                           009594   638 _TMR3	=	0x9594
                           009392   639 G$TMR3RL$0$0 == 0x9392
                           009392   640 _TMR3RL	=	0x9392
                           00F5F4   641 G$TMR4$0$0 == 0xf5f4
                           00F5F4   642 _TMR4	=	0xf5f4
                           00E5E4   643 G$RCAP4$0$0 == 0xe5e4
                           00E5E4   644 _RCAP4	=	0xe5e4
                           00BFBE   645 G$ADC0$0$0 == 0xbfbe
                           00BFBE   646 _ADC0	=	0xbfbe
                           00C5C4   647 G$ADC0GT$0$0 == 0xc5c4
                           00C5C4   648 _ADC0GT	=	0xc5c4
                           00C7C6   649 G$ADC0LT$0$0 == 0xc7c6
                           00C7C6   650 _ADC0LT	=	0xc7c6
                           00D3D2   651 G$DAC0$0$0 == 0xd3d2
                           00D3D2   652 _DAC0	=	0xd3d2
                           00D6D5   653 G$DAC1$0$0 == 0xd6d5
                           00D6D5   654 _DAC1	=	0xd6d5
                           00F9E9   655 G$PCA0$0$0 == 0xf9e9
                           00F9E9   656 _PCA0	=	0xf9e9
                           00FAEA   657 G$PCA0CP0$0$0 == 0xfaea
                           00FAEA   658 _PCA0CP0	=	0xfaea
                           00FBEB   659 G$PCA0CP1$0$0 == 0xfbeb
                           00FBEB   660 _PCA0CP1	=	0xfbeb
                           00FCEC   661 G$PCA0CP2$0$0 == 0xfcec
                           00FCEC   662 _PCA0CP2	=	0xfcec
                           00FDED   663 G$PCA0CP3$0$0 == 0xfded
                           00FDED   664 _PCA0CP3	=	0xfded
                           00FEEE   665 G$PCA0CP4$0$0 == 0xfeee
                           00FEEE   666 _PCA0CP4	=	0xfeee
                                    667 ;--------------------------------------------------------
                                    668 ; special function bits
                                    669 ;--------------------------------------------------------
                                    670 	.area RSEG    (ABS,DATA)
      000000                        671 	.org 0x0000
                           000080   672 G$P0_0$0$0 == 0x0080
                           000080   673 _P0_0	=	0x0080
                           000081   674 G$P0_1$0$0 == 0x0081
                           000081   675 _P0_1	=	0x0081
                           000082   676 G$P0_2$0$0 == 0x0082
                           000082   677 _P0_2	=	0x0082
                           000083   678 G$P0_3$0$0 == 0x0083
                           000083   679 _P0_3	=	0x0083
                           000084   680 G$P0_4$0$0 == 0x0084
                           000084   681 _P0_4	=	0x0084
                           000085   682 G$P0_5$0$0 == 0x0085
                           000085   683 _P0_5	=	0x0085
                           000086   684 G$P0_6$0$0 == 0x0086
                           000086   685 _P0_6	=	0x0086
                           000087   686 G$P0_7$0$0 == 0x0087
                           000087   687 _P0_7	=	0x0087
                           000088   688 G$IT0$0$0 == 0x0088
                           000088   689 _IT0	=	0x0088
                           000089   690 G$IE0$0$0 == 0x0089
                           000089   691 _IE0	=	0x0089
                           00008A   692 G$IT1$0$0 == 0x008a
                           00008A   693 _IT1	=	0x008a
                           00008B   694 G$IE1$0$0 == 0x008b
                           00008B   695 _IE1	=	0x008b
                           00008C   696 G$TR0$0$0 == 0x008c
                           00008C   697 _TR0	=	0x008c
                           00008D   698 G$TF0$0$0 == 0x008d
                           00008D   699 _TF0	=	0x008d
                           00008E   700 G$TR1$0$0 == 0x008e
                           00008E   701 _TR1	=	0x008e
                           00008F   702 G$TF1$0$0 == 0x008f
                           00008F   703 _TF1	=	0x008f
                           000090   704 G$P1_0$0$0 == 0x0090
                           000090   705 _P1_0	=	0x0090
                           000091   706 G$P1_1$0$0 == 0x0091
                           000091   707 _P1_1	=	0x0091
                           000092   708 G$P1_2$0$0 == 0x0092
                           000092   709 _P1_2	=	0x0092
                           000093   710 G$P1_3$0$0 == 0x0093
                           000093   711 _P1_3	=	0x0093
                           000094   712 G$P1_4$0$0 == 0x0094
                           000094   713 _P1_4	=	0x0094
                           000095   714 G$P1_5$0$0 == 0x0095
                           000095   715 _P1_5	=	0x0095
                           000096   716 G$P1_6$0$0 == 0x0096
                           000096   717 _P1_6	=	0x0096
                           000097   718 G$P1_7$0$0 == 0x0097
                           000097   719 _P1_7	=	0x0097
                           000098   720 G$RI$0$0 == 0x0098
                           000098   721 _RI	=	0x0098
                           000098   722 G$RI0$0$0 == 0x0098
                           000098   723 _RI0	=	0x0098
                           000099   724 G$TI$0$0 == 0x0099
                           000099   725 _TI	=	0x0099
                           000099   726 G$TI0$0$0 == 0x0099
                           000099   727 _TI0	=	0x0099
                           00009A   728 G$RB8$0$0 == 0x009a
                           00009A   729 _RB8	=	0x009a
                           00009A   730 G$RB80$0$0 == 0x009a
                           00009A   731 _RB80	=	0x009a
                           00009B   732 G$TB8$0$0 == 0x009b
                           00009B   733 _TB8	=	0x009b
                           00009B   734 G$TB80$0$0 == 0x009b
                           00009B   735 _TB80	=	0x009b
                           00009C   736 G$REN$0$0 == 0x009c
                           00009C   737 _REN	=	0x009c
                           00009C   738 G$REN0$0$0 == 0x009c
                           00009C   739 _REN0	=	0x009c
                           00009D   740 G$SM2$0$0 == 0x009d
                           00009D   741 _SM2	=	0x009d
                           00009D   742 G$SM20$0$0 == 0x009d
                           00009D   743 _SM20	=	0x009d
                           00009D   744 G$MCE0$0$0 == 0x009d
                           00009D   745 _MCE0	=	0x009d
                           00009E   746 G$SM1$0$0 == 0x009e
                           00009E   747 _SM1	=	0x009e
                           00009E   748 G$SM10$0$0 == 0x009e
                           00009E   749 _SM10	=	0x009e
                           00009F   750 G$SM0$0$0 == 0x009f
                           00009F   751 _SM0	=	0x009f
                           00009F   752 G$SM00$0$0 == 0x009f
                           00009F   753 _SM00	=	0x009f
                           00009F   754 G$S0MODE$0$0 == 0x009f
                           00009F   755 _S0MODE	=	0x009f
                           0000A0   756 G$P2_0$0$0 == 0x00a0
                           0000A0   757 _P2_0	=	0x00a0
                           0000A1   758 G$P2_1$0$0 == 0x00a1
                           0000A1   759 _P2_1	=	0x00a1
                           0000A2   760 G$P2_2$0$0 == 0x00a2
                           0000A2   761 _P2_2	=	0x00a2
                           0000A3   762 G$P2_3$0$0 == 0x00a3
                           0000A3   763 _P2_3	=	0x00a3
                           0000A4   764 G$P2_4$0$0 == 0x00a4
                           0000A4   765 _P2_4	=	0x00a4
                           0000A5   766 G$P2_5$0$0 == 0x00a5
                           0000A5   767 _P2_5	=	0x00a5
                           0000A6   768 G$P2_6$0$0 == 0x00a6
                           0000A6   769 _P2_6	=	0x00a6
                           0000A7   770 G$P2_7$0$0 == 0x00a7
                           0000A7   771 _P2_7	=	0x00a7
                           0000A8   772 G$EX0$0$0 == 0x00a8
                           0000A8   773 _EX0	=	0x00a8
                           0000A9   774 G$ET0$0$0 == 0x00a9
                           0000A9   775 _ET0	=	0x00a9
                           0000AA   776 G$EX1$0$0 == 0x00aa
                           0000AA   777 _EX1	=	0x00aa
                           0000AB   778 G$ET1$0$0 == 0x00ab
                           0000AB   779 _ET1	=	0x00ab
                           0000AC   780 G$ES0$0$0 == 0x00ac
                           0000AC   781 _ES0	=	0x00ac
                           0000AC   782 G$ES$0$0 == 0x00ac
                           0000AC   783 _ES	=	0x00ac
                           0000AD   784 G$ET2$0$0 == 0x00ad
                           0000AD   785 _ET2	=	0x00ad
                           0000AF   786 G$EA$0$0 == 0x00af
                           0000AF   787 _EA	=	0x00af
                           0000B0   788 G$P3_0$0$0 == 0x00b0
                           0000B0   789 _P3_0	=	0x00b0
                           0000B1   790 G$P3_1$0$0 == 0x00b1
                           0000B1   791 _P3_1	=	0x00b1
                           0000B2   792 G$P3_2$0$0 == 0x00b2
                           0000B2   793 _P3_2	=	0x00b2
                           0000B3   794 G$P3_3$0$0 == 0x00b3
                           0000B3   795 _P3_3	=	0x00b3
                           0000B4   796 G$P3_4$0$0 == 0x00b4
                           0000B4   797 _P3_4	=	0x00b4
                           0000B5   798 G$P3_5$0$0 == 0x00b5
                           0000B5   799 _P3_5	=	0x00b5
                           0000B6   800 G$P3_6$0$0 == 0x00b6
                           0000B6   801 _P3_6	=	0x00b6
                           0000B7   802 G$P3_7$0$0 == 0x00b7
                           0000B7   803 _P3_7	=	0x00b7
                           0000B8   804 G$PX0$0$0 == 0x00b8
                           0000B8   805 _PX0	=	0x00b8
                           0000B9   806 G$PT0$0$0 == 0x00b9
                           0000B9   807 _PT0	=	0x00b9
                           0000BA   808 G$PX1$0$0 == 0x00ba
                           0000BA   809 _PX1	=	0x00ba
                           0000BB   810 G$PT1$0$0 == 0x00bb
                           0000BB   811 _PT1	=	0x00bb
                           0000BC   812 G$PS0$0$0 == 0x00bc
                           0000BC   813 _PS0	=	0x00bc
                           0000BC   814 G$PS$0$0 == 0x00bc
                           0000BC   815 _PS	=	0x00bc
                           0000BD   816 G$PT2$0$0 == 0x00bd
                           0000BD   817 _PT2	=	0x00bd
                           0000C0   818 G$SMBTOE$0$0 == 0x00c0
                           0000C0   819 _SMBTOE	=	0x00c0
                           0000C1   820 G$SMBFTE$0$0 == 0x00c1
                           0000C1   821 _SMBFTE	=	0x00c1
                           0000C2   822 G$AA$0$0 == 0x00c2
                           0000C2   823 _AA	=	0x00c2
                           0000C3   824 G$SI$0$0 == 0x00c3
                           0000C3   825 _SI	=	0x00c3
                           0000C4   826 G$STO$0$0 == 0x00c4
                           0000C4   827 _STO	=	0x00c4
                           0000C5   828 G$STA$0$0 == 0x00c5
                           0000C5   829 _STA	=	0x00c5
                           0000C6   830 G$ENSMB$0$0 == 0x00c6
                           0000C6   831 _ENSMB	=	0x00c6
                           0000C7   832 G$BUSY$0$0 == 0x00c7
                           0000C7   833 _BUSY	=	0x00c7
                           0000C8   834 G$CPRL2$0$0 == 0x00c8
                           0000C8   835 _CPRL2	=	0x00c8
                           0000C9   836 G$CT2$0$0 == 0x00c9
                           0000C9   837 _CT2	=	0x00c9
                           0000CA   838 G$TR2$0$0 == 0x00ca
                           0000CA   839 _TR2	=	0x00ca
                           0000CB   840 G$EXEN2$0$0 == 0x00cb
                           0000CB   841 _EXEN2	=	0x00cb
                           0000CC   842 G$TCLK$0$0 == 0x00cc
                           0000CC   843 _TCLK	=	0x00cc
                           0000CD   844 G$RCLK$0$0 == 0x00cd
                           0000CD   845 _RCLK	=	0x00cd
                           0000CE   846 G$EXF2$0$0 == 0x00ce
                           0000CE   847 _EXF2	=	0x00ce
                           0000CF   848 G$TF2$0$0 == 0x00cf
                           0000CF   849 _TF2	=	0x00cf
                           0000D0   850 G$P$0$0 == 0x00d0
                           0000D0   851 _P	=	0x00d0
                           0000D1   852 G$F1$0$0 == 0x00d1
                           0000D1   853 _F1	=	0x00d1
                           0000D2   854 G$OV$0$0 == 0x00d2
                           0000D2   855 _OV	=	0x00d2
                           0000D3   856 G$RS0$0$0 == 0x00d3
                           0000D3   857 _RS0	=	0x00d3
                           0000D4   858 G$RS1$0$0 == 0x00d4
                           0000D4   859 _RS1	=	0x00d4
                           0000D5   860 G$F0$0$0 == 0x00d5
                           0000D5   861 _F0	=	0x00d5
                           0000D6   862 G$AC$0$0 == 0x00d6
                           0000D6   863 _AC	=	0x00d6
                           0000D7   864 G$CY$0$0 == 0x00d7
                           0000D7   865 _CY	=	0x00d7
                           0000D8   866 G$CCF0$0$0 == 0x00d8
                           0000D8   867 _CCF0	=	0x00d8
                           0000D9   868 G$CCF1$0$0 == 0x00d9
                           0000D9   869 _CCF1	=	0x00d9
                           0000DA   870 G$CCF2$0$0 == 0x00da
                           0000DA   871 _CCF2	=	0x00da
                           0000DB   872 G$CCF3$0$0 == 0x00db
                           0000DB   873 _CCF3	=	0x00db
                           0000DC   874 G$CCF4$0$0 == 0x00dc
                           0000DC   875 _CCF4	=	0x00dc
                           0000DE   876 G$CR$0$0 == 0x00de
                           0000DE   877 _CR	=	0x00de
                           0000DF   878 G$CF$0$0 == 0x00df
                           0000DF   879 _CF	=	0x00df
                           0000E8   880 G$ADLJST$0$0 == 0x00e8
                           0000E8   881 _ADLJST	=	0x00e8
                           0000E8   882 G$AD0LJST$0$0 == 0x00e8
                           0000E8   883 _AD0LJST	=	0x00e8
                           0000E9   884 G$ADWINT$0$0 == 0x00e9
                           0000E9   885 _ADWINT	=	0x00e9
                           0000E9   886 G$AD0WINT$0$0 == 0x00e9
                           0000E9   887 _AD0WINT	=	0x00e9
                           0000EA   888 G$ADSTM0$0$0 == 0x00ea
                           0000EA   889 _ADSTM0	=	0x00ea
                           0000EA   890 G$AD0CM0$0$0 == 0x00ea
                           0000EA   891 _AD0CM0	=	0x00ea
                           0000EB   892 G$ADSTM1$0$0 == 0x00eb
                           0000EB   893 _ADSTM1	=	0x00eb
                           0000EB   894 G$AD0CM1$0$0 == 0x00eb
                           0000EB   895 _AD0CM1	=	0x00eb
                           0000EC   896 G$ADBUSY$0$0 == 0x00ec
                           0000EC   897 _ADBUSY	=	0x00ec
                           0000EC   898 G$AD0BUSY$0$0 == 0x00ec
                           0000EC   899 _AD0BUSY	=	0x00ec
                           0000ED   900 G$ADCINT$0$0 == 0x00ed
                           0000ED   901 _ADCINT	=	0x00ed
                           0000ED   902 G$AD0INT$0$0 == 0x00ed
                           0000ED   903 _AD0INT	=	0x00ed
                           0000EE   904 G$ADCTM$0$0 == 0x00ee
                           0000EE   905 _ADCTM	=	0x00ee
                           0000EE   906 G$AD0TM$0$0 == 0x00ee
                           0000EE   907 _AD0TM	=	0x00ee
                           0000EF   908 G$ADCEN$0$0 == 0x00ef
                           0000EF   909 _ADCEN	=	0x00ef
                           0000EF   910 G$AD0EN$0$0 == 0x00ef
                           0000EF   911 _AD0EN	=	0x00ef
                           0000F8   912 G$SPIEN$0$0 == 0x00f8
                           0000F8   913 _SPIEN	=	0x00f8
                           0000F9   914 G$MSTEN$0$0 == 0x00f9
                           0000F9   915 _MSTEN	=	0x00f9
                           0000FA   916 G$SLVSEL$0$0 == 0x00fa
                           0000FA   917 _SLVSEL	=	0x00fa
                           0000FB   918 G$TXBSY$0$0 == 0x00fb
                           0000FB   919 _TXBSY	=	0x00fb
                           0000FC   920 G$RXOVRN$0$0 == 0x00fc
                           0000FC   921 _RXOVRN	=	0x00fc
                           0000FD   922 G$MODF$0$0 == 0x00fd
                           0000FD   923 _MODF	=	0x00fd
                           0000FE   924 G$WCOL$0$0 == 0x00fe
                           0000FE   925 _WCOL	=	0x00fe
                           0000FF   926 G$SPIF$0$0 == 0x00ff
                           0000FF   927 _SPIF	=	0x00ff
                           0000C7   928 G$BUS_BUSY$0$0 == 0x00c7
                           0000C7   929 _BUS_BUSY	=	0x00c7
                           0000C6   930 G$BUS_EN$0$0 == 0x00c6
                           0000C6   931 _BUS_EN	=	0x00c6
                           0000C5   932 G$BUS_START$0$0 == 0x00c5
                           0000C5   933 _BUS_START	=	0x00c5
                           0000C4   934 G$BUS_STOP$0$0 == 0x00c4
                           0000C4   935 _BUS_STOP	=	0x00c4
                           0000C3   936 G$BUS_INT$0$0 == 0x00c3
                           0000C3   937 _BUS_INT	=	0x00c3
                           0000C2   938 G$BUS_AA$0$0 == 0x00c2
                           0000C2   939 _BUS_AA	=	0x00c2
                           0000C1   940 G$BUS_FTE$0$0 == 0x00c1
                           0000C1   941 _BUS_FTE	=	0x00c1
                           0000C0   942 G$BUS_TOE$0$0 == 0x00c0
                           0000C0   943 _BUS_TOE	=	0x00c0
                           000083   944 G$BUS_SCL$0$0 == 0x0083
                           000083   945 _BUS_SCL	=	0x0083
                                    946 ;--------------------------------------------------------
                                    947 ; overlayable register banks
                                    948 ;--------------------------------------------------------
                                    949 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        950 	.ds 8
                                    951 ;--------------------------------------------------------
                                    952 ; internal ram data
                                    953 ;--------------------------------------------------------
                                    954 	.area DSEG    (DATA)
                           000000   955 G$Data2$0$0==.
      000022                        956 _Data2::
      000022                        957 	.ds 3
                           000003   958 Llab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.aligned_alloc$size$1$39==.
      000025                        959 _aligned_alloc_PARM_2:
      000025                        960 	.ds 2
                           000005   961 Llab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.lcd_clear$NumBytes$1$85==.
      000027                        962 _lcd_clear_NumBytes_1_85:
      000027                        963 	.ds 1
                           000006   964 Llab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.lcd_clear$Cmd$1$85==.
      000028                        965 _lcd_clear_Cmd_1_85:
      000028                        966 	.ds 2
                           000008   967 Llab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.read_keypad$Data$1$86==.
      00002A                        968 _read_keypad_Data_1_86:
      00002A                        969 	.ds 2
                           00000A   970 Llab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.i2c_write_data$start_reg$1$105==.
      00002C                        971 _i2c_write_data_PARM_2:
      00002C                        972 	.ds 1
                           00000B   973 Llab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.i2c_write_data$buffer$1$105==.
      00002D                        974 _i2c_write_data_PARM_3:
      00002D                        975 	.ds 3
                           00000E   976 Llab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.i2c_write_data$num_bytes$1$105==.
      000030                        977 _i2c_write_data_PARM_4:
      000030                        978 	.ds 1
                           00000F   979 Llab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.i2c_read_data$start_reg$1$107==.
      000031                        980 _i2c_read_data_PARM_2:
      000031                        981 	.ds 1
                           000010   982 Llab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.i2c_read_data$buffer$1$107==.
      000032                        983 _i2c_read_data_PARM_3:
      000032                        984 	.ds 3
                           000013   985 Llab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.i2c_read_data$num_bytes$1$107==.
      000035                        986 _i2c_read_data_PARM_4:
      000035                        987 	.ds 1
                           000014   988 G$Counts$0$0==.
      000036                        989 _Counts::
      000036                        990 	.ds 2
                           000016   991 G$voltage$0$0==.
      000038                        992 _voltage::
      000038                        993 	.ds 2
                           000018   994 G$dist$0$0==.
      00003A                        995 _dist::
      00003A                        996 	.ds 1
                           000019   997 G$r_Data$0$0==.
      00003B                        998 _r_Data::
      00003B                        999 	.ds 2
                           00001B  1000 G$range$0$0==.
      00003D                       1001 _range::
      00003D                       1002 	.ds 2
                           00001D  1003 G$r_Counts$0$0==.
      00003F                       1004 _r_Counts::
      00003F                       1005 	.ds 1
                           00001E  1006 G$new_range$0$0==.
      000040                       1007 _new_range::
      000040                       1008 	.ds 1
                           00001F  1009 G$heading$0$0==.
      000041                       1010 _heading::
      000041                       1011 	.ds 2
                           000021  1012 G$new_heading$0$0==.
      000043                       1013 _new_heading::
      000043                       1014 	.ds 1
                           000022  1015 G$h_Counts$0$0==.
      000044                       1016 _h_Counts::
      000044                       1017 	.ds 1
                           000023  1018 G$desired$0$0==.
      000045                       1019 _desired::
      000045                       1020 	.ds 2
                           000025  1021 G$original_desired$0$0==.
      000047                       1022 _original_desired::
      000047                       1023 	.ds 2
                           000027  1024 G$kp$0$0==.
      000049                       1025 _kp::
      000049                       1026 	.ds 2
                           000029  1027 G$kd$0$0==.
      00004B                       1028 _kd::
      00004B                       1029 	.ds 2
                           00002B  1030 G$RUDDER_LEFT$0$0==.
      00004D                       1031 _RUDDER_LEFT::
      00004D                       1032 	.ds 2
                           00002D  1033 G$RUDDER_RIGHT$0$0==.
      00004F                       1034 _RUDDER_RIGHT::
      00004F                       1035 	.ds 2
                           00002F  1036 G$rudder_pw$0$0==.
      000051                       1037 _rudder_pw::
      000051                       1038 	.ds 2
                           000031  1039 G$temp_motorpw$0$0==.
      000053                       1040 _temp_motorpw::
      000053                       1041 	.ds 4
                           000035  1042 G$error$0$0==.
      000057                       1043 _error::
      000057                       1044 	.ds 2
                           000037  1045 G$previous_error$0$0==.
      000059                       1046 _previous_error::
      000059                       1047 	.ds 2
                           000039  1048 Llab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.Set_Motor$sloc0$1$0==.
      00005B                       1049 _Set_Motor_sloc0_1_0:
      00005B                       1050 	.ds 4
                           00003D  1051 Llab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.ReadCompass$c_Data$1$167==.
      00005F                       1052 _ReadCompass_c_Data_1_167:
      00005F                       1053 	.ds 2
                                   1054 ;--------------------------------------------------------
                                   1055 ; overlayable items in internal ram 
                                   1056 ;--------------------------------------------------------
                                   1057 	.area	OSEG    (OVR,DATA)
                                   1058 	.area	OSEG    (OVR,DATA)
                                   1059 	.area	OSEG    (OVR,DATA)
                                   1060 	.area	OSEG    (OVR,DATA)
                                   1061 	.area	OSEG    (OVR,DATA)
                                   1062 	.area	OSEG    (OVR,DATA)
                                   1063 	.area	OSEG    (OVR,DATA)
                                   1064 ;--------------------------------------------------------
                                   1065 ; Stack segment in internal ram 
                                   1066 ;--------------------------------------------------------
                                   1067 	.area	SSEG
      00007B                       1068 __start__stack:
      00007B                       1069 	.ds	1
                                   1070 
                                   1071 ;--------------------------------------------------------
                                   1072 ; indirectly addressable internal ram data
                                   1073 ;--------------------------------------------------------
                                   1074 	.area ISEG    (DATA)
                                   1075 ;--------------------------------------------------------
                                   1076 ; absolute internal ram data
                                   1077 ;--------------------------------------------------------
                                   1078 	.area IABS    (ABS,DATA)
                                   1079 	.area IABS    (ABS,DATA)
                                   1080 ;--------------------------------------------------------
                                   1081 ; bit data
                                   1082 ;--------------------------------------------------------
                                   1083 	.area BSEG    (BIT)
                                   1084 ;--------------------------------------------------------
                                   1085 ; paged external ram data
                                   1086 ;--------------------------------------------------------
                                   1087 	.area PSEG    (PAG,XDATA)
                                   1088 ;--------------------------------------------------------
                                   1089 ; external ram data
                                   1090 ;--------------------------------------------------------
                                   1091 	.area XSEG    (XDATA)
                           000000  1092 Llab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.lcd_print$text$1$81==.
      000001                       1093 _lcd_print_text_1_81:
      000001                       1094 	.ds 80
                           000050  1095 G$thrust_angle$0$0==.
      000051                       1096 _thrust_angle::
      000051                       1097 	.ds 2
                                   1098 ;--------------------------------------------------------
                                   1099 ; absolute external ram data
                                   1100 ;--------------------------------------------------------
                                   1101 	.area XABS    (ABS,XDATA)
                                   1102 ;--------------------------------------------------------
                                   1103 ; external initialized ram data
                                   1104 ;--------------------------------------------------------
                                   1105 	.area XISEG   (XDATA)
                           000000  1106 G$pw_min$0$0==.
      000053                       1107 _pw_min::
      000053                       1108 	.ds 2
                           000002  1109 G$pw_max$0$0==.
      000055                       1110 _pw_max::
      000055                       1111 	.ds 2
                           000004  1112 G$pw_neut$0$0==.
      000057                       1113 _pw_neut::
      000057                       1114 	.ds 2
                                   1115 	.area HOME    (CODE)
                                   1116 	.area GSINIT0 (CODE)
                                   1117 	.area GSINIT1 (CODE)
                                   1118 	.area GSINIT2 (CODE)
                                   1119 	.area GSINIT3 (CODE)
                                   1120 	.area GSINIT4 (CODE)
                                   1121 	.area GSINIT5 (CODE)
                                   1122 	.area GSINIT  (CODE)
                                   1123 	.area GSFINAL (CODE)
                                   1124 	.area CSEG    (CODE)
                                   1125 ;--------------------------------------------------------
                                   1126 ; interrupt vector 
                                   1127 ;--------------------------------------------------------
                                   1128 	.area HOME    (CODE)
      000000                       1129 __interrupt_vect:
      000000 02 00 51         [24] 1130 	ljmp	__sdcc_gsinit_startup
      000003 32               [24] 1131 	reti
      000004                       1132 	.ds	7
      00000B 32               [24] 1133 	reti
      00000C                       1134 	.ds	7
      000013 32               [24] 1135 	reti
      000014                       1136 	.ds	7
      00001B 32               [24] 1137 	reti
      00001C                       1138 	.ds	7
      000023 32               [24] 1139 	reti
      000024                       1140 	.ds	7
      00002B 32               [24] 1141 	reti
      00002C                       1142 	.ds	7
      000033 32               [24] 1143 	reti
      000034                       1144 	.ds	7
      00003B 32               [24] 1145 	reti
      00003C                       1146 	.ds	7
      000043 32               [24] 1147 	reti
      000044                       1148 	.ds	7
      00004B 02 07 7A         [24] 1149 	ljmp	_PCA_ISR
                                   1150 ;--------------------------------------------------------
                                   1151 ; global & static initialisations
                                   1152 ;--------------------------------------------------------
                                   1153 	.area HOME    (CODE)
                                   1154 	.area GSINIT  (CODE)
                                   1155 	.area GSFINAL (CODE)
                                   1156 	.area GSINIT  (CODE)
                                   1157 	.globl __sdcc_gsinit_startup
                                   1158 	.globl __sdcc_program_startup
                                   1159 	.globl __start__stack
                                   1160 	.globl __mcs51_genXINIT
                                   1161 	.globl __mcs51_genXRAMCLEAR
                                   1162 	.globl __mcs51_genRAMCLEAR
                           000000  1163 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$44$1$167 ==.
                                   1164 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:44: unsigned int range = 0;
      0000AA E4               [12] 1165 	clr	a
      0000AB F5 3D            [12] 1166 	mov	_range,a
      0000AD F5 3E            [12] 1167 	mov	(_range + 1),a
                           000005  1168 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$45$1$167 ==.
                                   1169 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:45: unsigned char r_Counts = 0;  //Private Counter
                                   1170 ;	1-genFromRTrack replaced	mov	_r_Counts,#0x00
      0000AF F5 3F            [12] 1171 	mov	_r_Counts,a
                           000007  1172 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$46$1$167 ==.
                                   1173 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:46: unsigned char new_range = 0; //Private Counter
                                   1174 ;	1-genFromRTrack replaced	mov	_new_range,#0x00
      0000B1 F5 40            [12] 1175 	mov	_new_range,a
                           000009  1176 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$51$1$167 ==.
                                   1177 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:51: unsigned char h_Counts = 0;    //Private Counter
                                   1178 ;	1-genFromRTrack replaced	mov	_h_Counts,#0x00
      0000B3 F5 44            [12] 1179 	mov	_h_Counts,a
                           00000B  1180 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$54$1$167 ==.
                                   1181 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:54: unsigned int desired = 1800;   //Desired heading
      0000B5 75 45 08         [24] 1182 	mov	_desired,#0x08
      0000B8 75 46 07         [24] 1183 	mov	(_desired + 1),#0x07
                           000011  1184 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$56$1$167 ==.
                                   1185 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:56: unsigned int kp = 2;           //Proportional Gain    
      0000BB 75 49 02         [24] 1186 	mov	_kp,#0x02
                                   1187 ;	1-genFromRTrack replaced	mov	(_kp + 1),#0x00
      0000BE F5 4A            [12] 1188 	mov	(_kp + 1),a
                           000016  1189 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$57$1$167 ==.
                                   1190 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:57: unsigned int kd = 50;          //Derivative Gain
      0000C0 75 4B 32         [24] 1191 	mov	_kd,#0x32
                                   1192 ;	1-genFromRTrack replaced	mov	(_kd + 1),#0x00
      0000C3 F5 4C            [12] 1193 	mov	(_kd + 1),a
                           00001B  1194 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$72$1$167 ==.
                                   1195 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:72: signed int previous_error = 20;// set this value
      0000C5 75 59 14         [24] 1196 	mov	_previous_error,#0x14
                                   1197 ;	1-genFromRTrack replaced	mov	(_previous_error + 1),#0x00
      0000C8 F5 5A            [12] 1198 	mov	(_previous_error + 1),a
                                   1199 	.area GSFINAL (CODE)
      0000CA 02 00 4E         [24] 1200 	ljmp	__sdcc_program_startup
                                   1201 ;--------------------------------------------------------
                                   1202 ; Home
                                   1203 ;--------------------------------------------------------
                                   1204 	.area HOME    (CODE)
                                   1205 	.area HOME    (CODE)
      00004E                       1206 __sdcc_program_startup:
      00004E 02 05 D3         [24] 1207 	ljmp	_main
                                   1208 ;	return from main will return to caller
                                   1209 ;--------------------------------------------------------
                                   1210 ; code
                                   1211 ;--------------------------------------------------------
                                   1212 	.area CSEG    (CODE)
                                   1213 ;------------------------------------------------------------
                                   1214 ;Allocation info for local variables in function 'SYSCLK_Init'
                                   1215 ;------------------------------------------------------------
                                   1216 ;i                         Allocated to registers r6 r7 
                                   1217 ;------------------------------------------------------------
                           000000  1218 	G$SYSCLK_Init$0$0 ==.
                           000000  1219 	C$c8051_SDCC.h$62$0$0 ==.
                                   1220 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:62: void SYSCLK_Init(void)
                                   1221 ;	-----------------------------------------
                                   1222 ;	 function SYSCLK_Init
                                   1223 ;	-----------------------------------------
      0000CD                       1224 _SYSCLK_Init:
                           000007  1225 	ar7 = 0x07
                           000006  1226 	ar6 = 0x06
                           000005  1227 	ar5 = 0x05
                           000004  1228 	ar4 = 0x04
                           000003  1229 	ar3 = 0x03
                           000002  1230 	ar2 = 0x02
                           000001  1231 	ar1 = 0x01
                           000000  1232 	ar0 = 0x00
                           000000  1233 	C$c8051_SDCC.h$66$1$2 ==.
                                   1234 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:66: OSCXCN = 0x67;                      // start external oscillator with
      0000CD 75 B1 67         [24] 1235 	mov	_OSCXCN,#0x67
                           000003  1236 	C$c8051_SDCC.h$69$1$2 ==.
                                   1237 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:69: for (i=0; i < 256; i++);            // wait for oscillator to start
      0000D0 7E 00            [12] 1238 	mov	r6,#0x00
      0000D2 7F 01            [12] 1239 	mov	r7,#0x01
      0000D4                       1240 00107$:
      0000D4 EE               [12] 1241 	mov	a,r6
      0000D5 24 FF            [12] 1242 	add	a,#0xff
      0000D7 FC               [12] 1243 	mov	r4,a
      0000D8 EF               [12] 1244 	mov	a,r7
      0000D9 34 FF            [12] 1245 	addc	a,#0xff
      0000DB FD               [12] 1246 	mov	r5,a
      0000DC 8C 06            [24] 1247 	mov	ar6,r4
      0000DE 8D 07            [24] 1248 	mov	ar7,r5
      0000E0 EC               [12] 1249 	mov	a,r4
      0000E1 4D               [12] 1250 	orl	a,r5
      0000E2 70 F0            [24] 1251 	jnz	00107$
                           000017  1252 	C$c8051_SDCC.h$71$1$2 ==.
                                   1253 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:71: while (!(OSCXCN & 0x80));           // Wait for crystal osc. to settle
      0000E4                       1254 00102$:
      0000E4 E5 B1            [12] 1255 	mov	a,_OSCXCN
      0000E6 30 E7 FB         [24] 1256 	jnb	acc.7,00102$
                           00001C  1257 	C$c8051_SDCC.h$73$1$2 ==.
                                   1258 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:73: OSCICN = 0x88;                      // select external oscillator as SYSCLK
      0000E9 75 B2 88         [24] 1259 	mov	_OSCICN,#0x88
                           00001F  1260 	C$c8051_SDCC.h$76$1$2 ==.
                           00001F  1261 	XG$SYSCLK_Init$0$0 ==.
      0000EC 22               [24] 1262 	ret
                                   1263 ;------------------------------------------------------------
                                   1264 ;Allocation info for local variables in function 'UART0_Init'
                                   1265 ;------------------------------------------------------------
                           000020  1266 	G$UART0_Init$0$0 ==.
                           000020  1267 	C$c8051_SDCC.h$84$1$2 ==.
                                   1268 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:84: void UART0_Init(void)
                                   1269 ;	-----------------------------------------
                                   1270 ;	 function UART0_Init
                                   1271 ;	-----------------------------------------
      0000ED                       1272 _UART0_Init:
                           000020  1273 	C$c8051_SDCC.h$86$1$4 ==.
                                   1274 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:86: SCON0  = 0x50;                      // SCON0: mode 1, 8-bit UART, enable RX
      0000ED 75 98 50         [24] 1275 	mov	_SCON0,#0x50
                           000023  1276 	C$c8051_SDCC.h$87$1$4 ==.
                                   1277 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:87: TMOD   = 0x20;                      // TMOD: timer 1, mode 2, 8-bit reload
      0000F0 75 89 20         [24] 1278 	mov	_TMOD,#0x20
                           000026  1279 	C$c8051_SDCC.h$88$1$4 ==.
                                   1280 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:88: TH1    = 0xFF&-(SYSCLK/BAUDRATE/16);     // set Timer1 reload value for baudrate
      0000F3 75 8D DC         [24] 1281 	mov	_TH1,#0xdc
                           000029  1282 	C$c8051_SDCC.h$89$1$4 ==.
                                   1283 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:89: TR1    = 1;                         // start Timer1
      0000F6 D2 8E            [12] 1284 	setb	_TR1
                           00002B  1285 	C$c8051_SDCC.h$90$1$4 ==.
                                   1286 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:90: CKCON |= 0x10;                      // Timer1 uses SYSCLK as time base
      0000F8 43 8E 10         [24] 1287 	orl	_CKCON,#0x10
                           00002E  1288 	C$c8051_SDCC.h$91$1$4 ==.
                                   1289 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:91: PCON  |= 0x80;                      // SMOD00 = 1 (disable baud rate 
      0000FB 43 87 80         [24] 1290 	orl	_PCON,#0x80
                           000031  1291 	C$c8051_SDCC.h$93$1$4 ==.
                                   1292 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:93: TI0    = 1;                         // Indicate TX0 ready
      0000FE D2 99            [12] 1293 	setb	_TI0
                           000033  1294 	C$c8051_SDCC.h$94$1$4 ==.
                                   1295 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:94: P0MDOUT |= 0x01;                    // Set TX0 to push/pull
      000100 43 A4 01         [24] 1296 	orl	_P0MDOUT,#0x01
                           000036  1297 	C$c8051_SDCC.h$95$1$4 ==.
                           000036  1298 	XG$UART0_Init$0$0 ==.
      000103 22               [24] 1299 	ret
                                   1300 ;------------------------------------------------------------
                                   1301 ;Allocation info for local variables in function 'Sys_Init'
                                   1302 ;------------------------------------------------------------
                           000037  1303 	G$Sys_Init$0$0 ==.
                           000037  1304 	C$c8051_SDCC.h$103$1$4 ==.
                                   1305 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:103: void Sys_Init(void)
                                   1306 ;	-----------------------------------------
                                   1307 ;	 function Sys_Init
                                   1308 ;	-----------------------------------------
      000104                       1309 _Sys_Init:
                           000037  1310 	C$c8051_SDCC.h$105$1$6 ==.
                                   1311 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:105: WDTCN = 0xde;			// disable watchdog timer
      000104 75 FF DE         [24] 1312 	mov	_WDTCN,#0xde
                           00003A  1313 	C$c8051_SDCC.h$106$1$6 ==.
                                   1314 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:106: WDTCN = 0xad;
      000107 75 FF AD         [24] 1315 	mov	_WDTCN,#0xad
                           00003D  1316 	C$c8051_SDCC.h$108$1$6 ==.
                                   1317 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:108: SYSCLK_Init();			// initialize oscillator
      00010A 12 00 CD         [24] 1318 	lcall	_SYSCLK_Init
                           000040  1319 	C$c8051_SDCC.h$109$1$6 ==.
                                   1320 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:109: UART0_Init();			// initialize UART0
      00010D 12 00 ED         [24] 1321 	lcall	_UART0_Init
                           000043  1322 	C$c8051_SDCC.h$111$1$6 ==.
                                   1323 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:111: XBR0 |= 0x04;
      000110 43 E1 04         [24] 1324 	orl	_XBR0,#0x04
                           000046  1325 	C$c8051_SDCC.h$112$1$6 ==.
                                   1326 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:112: XBR2 |= 0x40;                    	// Enable crossbar and weak pull-ups
      000113 43 E3 40         [24] 1327 	orl	_XBR2,#0x40
                           000049  1328 	C$c8051_SDCC.h$113$1$6 ==.
                           000049  1329 	XG$Sys_Init$0$0 ==.
      000116 22               [24] 1330 	ret
                                   1331 ;------------------------------------------------------------
                                   1332 ;Allocation info for local variables in function 'putchar'
                                   1333 ;------------------------------------------------------------
                                   1334 ;c                         Allocated to registers r7 
                                   1335 ;------------------------------------------------------------
                           00004A  1336 	G$putchar$0$0 ==.
                           00004A  1337 	C$c8051_SDCC.h$129$1$6 ==.
                                   1338 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:129: void putchar(char c)
                                   1339 ;	-----------------------------------------
                                   1340 ;	 function putchar
                                   1341 ;	-----------------------------------------
      000117                       1342 _putchar:
      000117 AF 82            [24] 1343 	mov	r7,dpl
                           00004C  1344 	C$c8051_SDCC.h$132$1$8 ==.
                                   1345 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:132: while (!TI0); 
      000119                       1346 00101$:
                           00004C  1347 	C$c8051_SDCC.h$133$1$8 ==.
                                   1348 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:133: TI0 = 0;
      000119 10 99 02         [24] 1349 	jbc	_TI0,00112$
      00011C 80 FB            [24] 1350 	sjmp	00101$
      00011E                       1351 00112$:
                           000051  1352 	C$c8051_SDCC.h$134$1$8 ==.
                                   1353 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:134: SBUF0 = c;
      00011E 8F 99            [24] 1354 	mov	_SBUF0,r7
                           000053  1355 	C$c8051_SDCC.h$135$1$8 ==.
                           000053  1356 	XG$putchar$0$0 ==.
      000120 22               [24] 1357 	ret
                                   1358 ;------------------------------------------------------------
                                   1359 ;Allocation info for local variables in function 'getchar'
                                   1360 ;------------------------------------------------------------
                                   1361 ;c                         Allocated to registers r7 
                                   1362 ;------------------------------------------------------------
                           000054  1363 	G$getchar$0$0 ==.
                           000054  1364 	C$c8051_SDCC.h$154$1$8 ==.
                                   1365 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:154: char getchar(void)
                                   1366 ;	-----------------------------------------
                                   1367 ;	 function getchar
                                   1368 ;	-----------------------------------------
      000121                       1369 _getchar:
                           000054  1370 	C$c8051_SDCC.h$157$1$10 ==.
                                   1371 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:157: while (!RI0);
      000121                       1372 00101$:
                           000054  1373 	C$c8051_SDCC.h$158$1$10 ==.
                                   1374 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:158: RI0 = 0;
      000121 10 98 02         [24] 1375 	jbc	_RI0,00112$
      000124 80 FB            [24] 1376 	sjmp	00101$
      000126                       1377 00112$:
                           000059  1378 	C$c8051_SDCC.h$159$1$10 ==.
                                   1379 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:159: c = SBUF0;
      000126 AF 99            [24] 1380 	mov	r7,_SBUF0
                           00005B  1381 	C$c8051_SDCC.h$160$1$10 ==.
                                   1382 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:160: putchar(c);                          // echo to terminal
      000128 8F 82            [24] 1383 	mov	dpl,r7
      00012A C0 07            [24] 1384 	push	ar7
      00012C 12 01 17         [24] 1385 	lcall	_putchar
      00012F D0 07            [24] 1386 	pop	ar7
                           000064  1387 	C$c8051_SDCC.h$161$1$10 ==.
                                   1388 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:161: return c;
      000131 8F 82            [24] 1389 	mov	dpl,r7
                           000066  1390 	C$c8051_SDCC.h$162$1$10 ==.
                           000066  1391 	XG$getchar$0$0 ==.
      000133 22               [24] 1392 	ret
                                   1393 ;------------------------------------------------------------
                                   1394 ;Allocation info for local variables in function 'getchar_nw'
                                   1395 ;------------------------------------------------------------
                                   1396 ;c                         Allocated to registers 
                                   1397 ;------------------------------------------------------------
                           000067  1398 	G$getchar_nw$0$0 ==.
                           000067  1399 	C$c8051_SDCC.h$168$1$10 ==.
                                   1400 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:168: char getchar_nw(void)
                                   1401 ;	-----------------------------------------
                                   1402 ;	 function getchar_nw
                                   1403 ;	-----------------------------------------
      000134                       1404 _getchar_nw:
                           000067  1405 	C$c8051_SDCC.h$171$1$12 ==.
                                   1406 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:171: if (!RI0) return 0xFF;
      000134 20 98 05         [24] 1407 	jb	_RI0,00102$
      000137 75 82 FF         [24] 1408 	mov	dpl,#0xff
      00013A 80 0B            [24] 1409 	sjmp	00104$
      00013C                       1410 00102$:
                           00006F  1411 	C$c8051_SDCC.h$174$2$13 ==.
                                   1412 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:174: RI0 = 0;
      00013C C2 98            [12] 1413 	clr	_RI0
                           000071  1414 	C$c8051_SDCC.h$175$2$13 ==.
                                   1415 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:175: c = SBUF0;
      00013E 85 99 82         [24] 1416 	mov	dpl,_SBUF0
                           000074  1417 	C$c8051_SDCC.h$176$2$13 ==.
                                   1418 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:176: putchar(c);                          // echo to terminal
      000141 12 01 17         [24] 1419 	lcall	_putchar
                           000077  1420 	C$c8051_SDCC.h$177$2$13 ==.
                                   1421 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:177: return SBUF0;
      000144 85 99 82         [24] 1422 	mov	dpl,_SBUF0
      000147                       1423 00104$:
                           00007A  1424 	C$c8051_SDCC.h$179$1$12 ==.
                           00007A  1425 	XG$getchar_nw$0$0 ==.
      000147 22               [24] 1426 	ret
                                   1427 ;------------------------------------------------------------
                                   1428 ;Allocation info for local variables in function 'lcd_print'
                                   1429 ;------------------------------------------------------------
                                   1430 ;fmt                       Allocated to stack - _bp -5
                                   1431 ;len                       Allocated to registers r6 
                                   1432 ;i                         Allocated to registers 
                                   1433 ;ap                        Allocated to registers 
                                   1434 ;text                      Allocated with name '_lcd_print_text_1_81'
                                   1435 ;------------------------------------------------------------
                           00007B  1436 	G$lcd_print$0$0 ==.
                           00007B  1437 	C$i2c.h$84$1$12 ==.
                                   1438 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:84: void lcd_print(const char *fmt, ...)
                                   1439 ;	-----------------------------------------
                                   1440 ;	 function lcd_print
                                   1441 ;	-----------------------------------------
      000148                       1442 _lcd_print:
      000148 C0 0F            [24] 1443 	push	_bp
      00014A 85 81 0F         [24] 1444 	mov	_bp,sp
                           000080  1445 	C$i2c.h$90$1$81 ==.
                                   1446 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:90: if ( strlen(fmt) <= 0 ) return;         //If there is no data to print, return
      00014D E5 0F            [12] 1447 	mov	a,_bp
      00014F 24 FB            [12] 1448 	add	a,#0xfb
      000151 F8               [12] 1449 	mov	r0,a
      000152 86 82            [24] 1450 	mov	dpl,@r0
      000154 08               [12] 1451 	inc	r0
      000155 86 83            [24] 1452 	mov	dph,@r0
      000157 08               [12] 1453 	inc	r0
      000158 86 F0            [24] 1454 	mov	b,@r0
      00015A 12 16 5D         [24] 1455 	lcall	_strlen
      00015D E5 82            [12] 1456 	mov	a,dpl
      00015F 85 83 F0         [24] 1457 	mov	b,dph
      000162 45 F0            [12] 1458 	orl	a,b
      000164 70 02            [24] 1459 	jnz	00102$
      000166 80 62            [24] 1460 	sjmp	00109$
      000168                       1461 00102$:
                           00009B  1462 	C$i2c.h$92$2$82 ==.
                                   1463 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:92: va_start(ap, fmt);
      000168 E5 0F            [12] 1464 	mov	a,_bp
      00016A 24 FB            [12] 1465 	add	a,#0xfb
      00016C FF               [12] 1466 	mov	r7,a
      00016D 8F 0B            [24] 1467 	mov	_vsprintf_PARM_3,r7
                           0000A2  1468 	C$i2c.h$93$1$81 ==.
                                   1469 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:93: vsprintf(text, fmt, ap);
      00016F E5 0F            [12] 1470 	mov	a,_bp
      000171 24 FB            [12] 1471 	add	a,#0xfb
      000173 F8               [12] 1472 	mov	r0,a
      000174 86 08            [24] 1473 	mov	_vsprintf_PARM_2,@r0
      000176 08               [12] 1474 	inc	r0
      000177 86 09            [24] 1475 	mov	(_vsprintf_PARM_2 + 1),@r0
      000179 08               [12] 1476 	inc	r0
      00017A 86 0A            [24] 1477 	mov	(_vsprintf_PARM_2 + 2),@r0
      00017C 90 00 01         [24] 1478 	mov	dptr,#_lcd_print_text_1_81
      00017F 75 F0 00         [24] 1479 	mov	b,#0x00
      000182 12 0F 03         [24] 1480 	lcall	_vsprintf
                           0000B8  1481 	C$i2c.h$96$1$81 ==.
                                   1482 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:96: len = strlen(text);
      000185 90 00 01         [24] 1483 	mov	dptr,#_lcd_print_text_1_81
      000188 75 F0 00         [24] 1484 	mov	b,#0x00
      00018B 12 16 5D         [24] 1485 	lcall	_strlen
      00018E AE 82            [24] 1486 	mov	r6,dpl
                           0000C3  1487 	C$i2c.h$97$1$81 ==.
                                   1488 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:97: for(i=0; i<len; i++)
      000190 7F 00            [12] 1489 	mov	r7,#0x00
      000192                       1490 00107$:
      000192 C3               [12] 1491 	clr	c
      000193 EF               [12] 1492 	mov	a,r7
      000194 9E               [12] 1493 	subb	a,r6
      000195 50 1F            [24] 1494 	jnc	00105$
                           0000CA  1495 	C$i2c.h$99$2$84 ==.
                                   1496 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:99: if(text[i] == (unsigned char)'\n') text[i] = 13;
      000197 EF               [12] 1497 	mov	a,r7
      000198 24 01            [12] 1498 	add	a,#_lcd_print_text_1_81
      00019A F5 82            [12] 1499 	mov	dpl,a
      00019C E4               [12] 1500 	clr	a
      00019D 34 00            [12] 1501 	addc	a,#(_lcd_print_text_1_81 >> 8)
      00019F F5 83            [12] 1502 	mov	dph,a
      0001A1 E0               [24] 1503 	movx	a,@dptr
      0001A2 FD               [12] 1504 	mov	r5,a
      0001A3 BD 0A 0D         [24] 1505 	cjne	r5,#0x0a,00108$
      0001A6 EF               [12] 1506 	mov	a,r7
      0001A7 24 01            [12] 1507 	add	a,#_lcd_print_text_1_81
      0001A9 F5 82            [12] 1508 	mov	dpl,a
      0001AB E4               [12] 1509 	clr	a
      0001AC 34 00            [12] 1510 	addc	a,#(_lcd_print_text_1_81 >> 8)
      0001AE F5 83            [12] 1511 	mov	dph,a
      0001B0 74 0D            [12] 1512 	mov	a,#0x0d
      0001B2 F0               [24] 1513 	movx	@dptr,a
      0001B3                       1514 00108$:
                           0000E6  1515 	C$i2c.h$97$1$81 ==.
                                   1516 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:97: for(i=0; i<len; i++)
      0001B3 0F               [12] 1517 	inc	r7
      0001B4 80 DC            [24] 1518 	sjmp	00107$
      0001B6                       1519 00105$:
                           0000E9  1520 	C$i2c.h$102$1$81 ==.
                                   1521 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:102: i2c_write_data(0xC6, 0x00, text, len);
      0001B6 75 2D 01         [24] 1522 	mov	_i2c_write_data_PARM_3,#_lcd_print_text_1_81
      0001B9 75 2E 00         [24] 1523 	mov	(_i2c_write_data_PARM_3 + 1),#(_lcd_print_text_1_81 >> 8)
      0001BC 75 2F 00         [24] 1524 	mov	(_i2c_write_data_PARM_3 + 2),#0x00
      0001BF 75 2C 00         [24] 1525 	mov	_i2c_write_data_PARM_2,#0x00
      0001C2 8E 30            [24] 1526 	mov	_i2c_write_data_PARM_4,r6
      0001C4 75 82 C6         [24] 1527 	mov	dpl,#0xc6
      0001C7 12 04 59         [24] 1528 	lcall	_i2c_write_data
      0001CA                       1529 00109$:
      0001CA D0 0F            [24] 1530 	pop	_bp
                           0000FF  1531 	C$i2c.h$103$1$81 ==.
                           0000FF  1532 	XG$lcd_print$0$0 ==.
      0001CC 22               [24] 1533 	ret
                                   1534 ;------------------------------------------------------------
                                   1535 ;Allocation info for local variables in function 'lcd_clear'
                                   1536 ;------------------------------------------------------------
                                   1537 ;NumBytes                  Allocated with name '_lcd_clear_NumBytes_1_85'
                                   1538 ;Cmd                       Allocated with name '_lcd_clear_Cmd_1_85'
                                   1539 ;------------------------------------------------------------
                           000100  1540 	G$lcd_clear$0$0 ==.
                           000100  1541 	C$i2c.h$106$1$81 ==.
                                   1542 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:106: void lcd_clear()
                                   1543 ;	-----------------------------------------
                                   1544 ;	 function lcd_clear
                                   1545 ;	-----------------------------------------
      0001CD                       1546 _lcd_clear:
                           000100  1547 	C$i2c.h$108$1$81 ==.
                                   1548 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:108: unsigned char NumBytes=0, Cmd[2];
      0001CD 75 27 00         [24] 1549 	mov	_lcd_clear_NumBytes_1_85,#0x00
                           000103  1550 	C$i2c.h$110$1$85 ==.
                                   1551 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:110: while(NumBytes < 64) i2c_read_data(0xC6, 0x00, &NumBytes, 1);
      0001D0                       1552 00101$:
      0001D0 74 C0            [12] 1553 	mov	a,#0x100 - 0x40
      0001D2 25 27            [12] 1554 	add	a,_lcd_clear_NumBytes_1_85
      0001D4 40 17            [24] 1555 	jc	00103$
      0001D6 75 32 27         [24] 1556 	mov	_i2c_read_data_PARM_3,#_lcd_clear_NumBytes_1_85
      0001D9 75 33 00         [24] 1557 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      0001DC 75 34 40         [24] 1558 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      0001DF 75 31 00         [24] 1559 	mov	_i2c_read_data_PARM_2,#0x00
      0001E2 75 35 01         [24] 1560 	mov	_i2c_read_data_PARM_4,#0x01
      0001E5 75 82 C6         [24] 1561 	mov	dpl,#0xc6
      0001E8 12 04 D3         [24] 1562 	lcall	_i2c_read_data
      0001EB 80 E3            [24] 1563 	sjmp	00101$
      0001ED                       1564 00103$:
                           000120  1565 	C$i2c.h$112$1$85 ==.
                                   1566 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:112: Cmd[0] = 12;
      0001ED 75 28 0C         [24] 1567 	mov	_lcd_clear_Cmd_1_85,#0x0c
                           000123  1568 	C$i2c.h$113$1$85 ==.
                                   1569 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:113: i2c_write_data(0xC6, 0x00, Cmd, 1);
      0001F0 75 2D 28         [24] 1570 	mov	_i2c_write_data_PARM_3,#_lcd_clear_Cmd_1_85
      0001F3 75 2E 00         [24] 1571 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0001F6 75 2F 40         [24] 1572 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0001F9 75 2C 00         [24] 1573 	mov	_i2c_write_data_PARM_2,#0x00
      0001FC 75 30 01         [24] 1574 	mov	_i2c_write_data_PARM_4,#0x01
      0001FF 75 82 C6         [24] 1575 	mov	dpl,#0xc6
      000202 12 04 59         [24] 1576 	lcall	_i2c_write_data
                           000138  1577 	C$i2c.h$114$1$85 ==.
                           000138  1578 	XG$lcd_clear$0$0 ==.
      000205 22               [24] 1579 	ret
                                   1580 ;------------------------------------------------------------
                                   1581 ;Allocation info for local variables in function 'read_keypad'
                                   1582 ;------------------------------------------------------------
                                   1583 ;i                         Allocated to registers r7 
                                   1584 ;Data                      Allocated with name '_read_keypad_Data_1_86'
                                   1585 ;------------------------------------------------------------
                           000139  1586 	G$read_keypad$0$0 ==.
                           000139  1587 	C$i2c.h$117$1$85 ==.
                                   1588 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:117: unsigned char read_keypad()
                                   1589 ;	-----------------------------------------
                                   1590 ;	 function read_keypad
                                   1591 ;	-----------------------------------------
      000206                       1592 _read_keypad:
                           000139  1593 	C$i2c.h$121$1$86 ==.
                                   1594 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:121: i2c_read_data(0xC6, 0x01, Data, 2); //Read I2C data on address 192, register 1, 2 bytes of data.
      000206 75 32 2A         [24] 1595 	mov	_i2c_read_data_PARM_3,#_read_keypad_Data_1_86
      000209 75 33 00         [24] 1596 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      00020C 75 34 40         [24] 1597 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      00020F 75 31 01         [24] 1598 	mov	_i2c_read_data_PARM_2,#0x01
      000212 75 35 02         [24] 1599 	mov	_i2c_read_data_PARM_4,#0x02
      000215 75 82 C6         [24] 1600 	mov	dpl,#0xc6
      000218 12 04 D3         [24] 1601 	lcall	_i2c_read_data
                           00014E  1602 	C$i2c.h$122$1$86 ==.
                                   1603 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:122: if(Data[0] == 0xFF) return 0;   //No response on bus, no display
      00021B 74 FF            [12] 1604 	mov	a,#0xff
      00021D B5 2A 05         [24] 1605 	cjne	a,_read_keypad_Data_1_86,00102$
      000220 75 82 00         [24] 1606 	mov	dpl,#0x00
      000223 80 5F            [24] 1607 	sjmp	00116$
      000225                       1608 00102$:
                           000158  1609 	C$i2c.h$124$1$86 ==.
                                   1610 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:124: for(i=0; i<8; i++)              //loop 8 times
      000225 7F 00            [12] 1611 	mov	r7,#0x00
      000227 8F 06            [24] 1612 	mov	ar6,r7
      000229                       1613 00114$:
                           00015C  1614 	C$i2c.h$126$2$87 ==.
                                   1615 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:126: if(Data[0] & (0x01 << i))   //find the ASCII value of the keypad read, if it is the current loop value
      000229 8E F0            [24] 1616 	mov	b,r6
      00022B 05 F0            [12] 1617 	inc	b
      00022D 7C 01            [12] 1618 	mov	r4,#0x01
      00022F 7D 00            [12] 1619 	mov	r5,#0x00
      000231 80 06            [24] 1620 	sjmp	00145$
      000233                       1621 00144$:
      000233 EC               [12] 1622 	mov	a,r4
      000234 2C               [12] 1623 	add	a,r4
      000235 FC               [12] 1624 	mov	r4,a
      000236 ED               [12] 1625 	mov	a,r5
      000237 33               [12] 1626 	rlc	a
      000238 FD               [12] 1627 	mov	r5,a
      000239                       1628 00145$:
      000239 D5 F0 F7         [24] 1629 	djnz	b,00144$
      00023C AA 2A            [24] 1630 	mov	r2,_read_keypad_Data_1_86
      00023E 7B 00            [12] 1631 	mov	r3,#0x00
      000240 EA               [12] 1632 	mov	a,r2
      000241 52 04            [12] 1633 	anl	ar4,a
      000243 EB               [12] 1634 	mov	a,r3
      000244 52 05            [12] 1635 	anl	ar5,a
      000246 EC               [12] 1636 	mov	a,r4
      000247 4D               [12] 1637 	orl	a,r5
      000248 60 07            [24] 1638 	jz	00115$
                           00017D  1639 	C$i2c.h$127$2$87 ==.
                                   1640 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:127: return i+49;
      00024A 74 31            [12] 1641 	mov	a,#0x31
      00024C 2F               [12] 1642 	add	a,r7
      00024D F5 82            [12] 1643 	mov	dpl,a
      00024F 80 33            [24] 1644 	sjmp	00116$
      000251                       1645 00115$:
                           000184  1646 	C$i2c.h$124$1$86 ==.
                                   1647 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:124: for(i=0; i<8; i++)              //loop 8 times
      000251 0E               [12] 1648 	inc	r6
      000252 8E 07            [24] 1649 	mov	ar7,r6
      000254 BE 08 00         [24] 1650 	cjne	r6,#0x08,00147$
      000257                       1651 00147$:
      000257 40 D0            [24] 1652 	jc	00114$
                           00018C  1653 	C$i2c.h$130$1$86 ==.
                                   1654 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:130: if(Data[1] & 0x01) return '9';  //if the value is equal to 9 return 9.
      000259 E5 2B            [12] 1655 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      00025B 30 E0 05         [24] 1656 	jnb	acc.0,00107$
      00025E 75 82 39         [24] 1657 	mov	dpl,#0x39
      000261 80 21            [24] 1658 	sjmp	00116$
      000263                       1659 00107$:
                           000196  1660 	C$i2c.h$132$1$86 ==.
                                   1661 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:132: if(Data[1] & 0x02) return '*';  //if the value is equal to the star.
      000263 E5 2B            [12] 1662 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      000265 30 E1 05         [24] 1663 	jnb	acc.1,00109$
      000268 75 82 2A         [24] 1664 	mov	dpl,#0x2a
      00026B 80 17            [24] 1665 	sjmp	00116$
      00026D                       1666 00109$:
                           0001A0  1667 	C$i2c.h$134$1$86 ==.
                                   1668 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:134: if(Data[1] & 0x04) return '0';  //if the value is equal to the 0 key
      00026D E5 2B            [12] 1669 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      00026F 30 E2 05         [24] 1670 	jnb	acc.2,00111$
      000272 75 82 30         [24] 1671 	mov	dpl,#0x30
      000275 80 0D            [24] 1672 	sjmp	00116$
      000277                       1673 00111$:
                           0001AA  1674 	C$i2c.h$136$1$86 ==.
                                   1675 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:136: if(Data[1] & 0x08) return '#';  //if the value is equal to the pound key
      000277 E5 2B            [12] 1676 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      000279 30 E3 05         [24] 1677 	jnb	acc.3,00113$
      00027C 75 82 23         [24] 1678 	mov	dpl,#0x23
      00027F 80 03            [24] 1679 	sjmp	00116$
      000281                       1680 00113$:
                           0001B4  1681 	C$i2c.h$138$1$86 ==.
                                   1682 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:138: return 0xFF;                    //else return a numerical -1 (0xFF)
      000281 75 82 FF         [24] 1683 	mov	dpl,#0xff
      000284                       1684 00116$:
                           0001B7  1685 	C$i2c.h$139$1$86 ==.
                           0001B7  1686 	XG$read_keypad$0$0 ==.
      000284 22               [24] 1687 	ret
                                   1688 ;------------------------------------------------------------
                                   1689 ;Allocation info for local variables in function 'kpd_input'
                                   1690 ;------------------------------------------------------------
                                   1691 ;mode                      Allocated to registers r7 
                                   1692 ;sum                       Allocated to registers r5 r6 
                                   1693 ;key                       Allocated to registers r3 
                                   1694 ;i                         Allocated to registers 
                                   1695 ;------------------------------------------------------------
                           0001B8  1696 	G$kpd_input$0$0 ==.
                           0001B8  1697 	C$i2c.h$151$1$86 ==.
                                   1698 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:151: unsigned int kpd_input(char mode)
                                   1699 ;	-----------------------------------------
                                   1700 ;	 function kpd_input
                                   1701 ;	-----------------------------------------
      000285                       1702 _kpd_input:
      000285 AF 82            [24] 1703 	mov	r7,dpl
                           0001BA  1704 	C$i2c.h$156$1$89 ==.
                                   1705 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:156: sum = 0;
                           0001BA  1706 	C$i2c.h$159$1$89 ==.
                                   1707 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:159: if(mode==0)lcd_print("\nType digits; end w/#");
      000287 E4               [12] 1708 	clr	a
      000288 FD               [12] 1709 	mov	r5,a
      000289 FE               [12] 1710 	mov	r6,a
      00028A EF               [12] 1711 	mov	a,r7
      00028B 70 1D            [24] 1712 	jnz	00102$
      00028D C0 06            [24] 1713 	push	ar6
      00028F C0 05            [24] 1714 	push	ar5
      000291 74 2F            [12] 1715 	mov	a,#___str_0
      000293 C0 E0            [24] 1716 	push	acc
      000295 74 17            [12] 1717 	mov	a,#(___str_0 >> 8)
      000297 C0 E0            [24] 1718 	push	acc
      000299 74 80            [12] 1719 	mov	a,#0x80
      00029B C0 E0            [24] 1720 	push	acc
      00029D 12 01 48         [24] 1721 	lcall	_lcd_print
      0002A0 15 81            [12] 1722 	dec	sp
      0002A2 15 81            [12] 1723 	dec	sp
      0002A4 15 81            [12] 1724 	dec	sp
      0002A6 D0 05            [24] 1725 	pop	ar5
      0002A8 D0 06            [24] 1726 	pop	ar6
      0002AA                       1727 00102$:
                           0001DD  1728 	C$i2c.h$161$1$89 ==.
                                   1729 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:161: lcd_print("     %c%c%c%c%c",0x08,0x08,0x08,0x08,0x08);
      0002AA C0 06            [24] 1730 	push	ar6
      0002AC C0 05            [24] 1731 	push	ar5
      0002AE 74 08            [12] 1732 	mov	a,#0x08
      0002B0 C0 E0            [24] 1733 	push	acc
      0002B2 E4               [12] 1734 	clr	a
      0002B3 C0 E0            [24] 1735 	push	acc
      0002B5 74 08            [12] 1736 	mov	a,#0x08
      0002B7 C0 E0            [24] 1737 	push	acc
      0002B9 E4               [12] 1738 	clr	a
      0002BA C0 E0            [24] 1739 	push	acc
      0002BC 74 08            [12] 1740 	mov	a,#0x08
      0002BE C0 E0            [24] 1741 	push	acc
      0002C0 E4               [12] 1742 	clr	a
      0002C1 C0 E0            [24] 1743 	push	acc
      0002C3 74 08            [12] 1744 	mov	a,#0x08
      0002C5 C0 E0            [24] 1745 	push	acc
      0002C7 E4               [12] 1746 	clr	a
      0002C8 C0 E0            [24] 1747 	push	acc
      0002CA 74 08            [12] 1748 	mov	a,#0x08
      0002CC C0 E0            [24] 1749 	push	acc
      0002CE E4               [12] 1750 	clr	a
      0002CF C0 E0            [24] 1751 	push	acc
      0002D1 74 45            [12] 1752 	mov	a,#___str_1
      0002D3 C0 E0            [24] 1753 	push	acc
      0002D5 74 17            [12] 1754 	mov	a,#(___str_1 >> 8)
      0002D7 C0 E0            [24] 1755 	push	acc
      0002D9 74 80            [12] 1756 	mov	a,#0x80
      0002DB C0 E0            [24] 1757 	push	acc
      0002DD 12 01 48         [24] 1758 	lcall	_lcd_print
      0002E0 E5 81            [12] 1759 	mov	a,sp
      0002E2 24 F3            [12] 1760 	add	a,#0xf3
      0002E4 F5 81            [12] 1761 	mov	sp,a
                           000219  1762 	C$i2c.h$163$1$89 ==.
                                   1763 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:163: delay_time(500000);             //Add 20ms delay before reading i2c in loop
      0002E6 90 A1 20         [24] 1764 	mov	dptr,#0xa120
      0002E9 75 F0 07         [24] 1765 	mov	b,#0x07
      0002EC E4               [12] 1766 	clr	a
      0002ED 12 03 F4         [24] 1767 	lcall	_delay_time
      0002F0 D0 05            [24] 1768 	pop	ar5
      0002F2 D0 06            [24] 1769 	pop	ar6
                           000227  1770 	C$i2c.h$167$1$89 ==.
                                   1771 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:167: for(i=0; i<5; i++)
      0002F4 7F 00            [12] 1772 	mov	r7,#0x00
                           000229  1773 	C$i2c.h$169$3$92 ==.
                                   1774 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:169: while(((key=read_keypad()) == 0xFF) || (key == '*'))delay_time(10000);
      0002F6                       1775 00104$:
      0002F6 C0 07            [24] 1776 	push	ar7
      0002F8 C0 06            [24] 1777 	push	ar6
      0002FA C0 05            [24] 1778 	push	ar5
      0002FC 12 02 06         [24] 1779 	lcall	_read_keypad
      0002FF AC 82            [24] 1780 	mov	r4,dpl
      000301 D0 05            [24] 1781 	pop	ar5
      000303 D0 06            [24] 1782 	pop	ar6
      000305 D0 07            [24] 1783 	pop	ar7
      000307 8C 03            [24] 1784 	mov	ar3,r4
      000309 BC FF 02         [24] 1785 	cjne	r4,#0xff,00146$
      00030C 80 03            [24] 1786 	sjmp	00105$
      00030E                       1787 00146$:
      00030E BB 2A 17         [24] 1788 	cjne	r3,#0x2a,00106$
      000311                       1789 00105$:
      000311 90 27 10         [24] 1790 	mov	dptr,#0x2710
      000314 E4               [12] 1791 	clr	a
      000315 F5 F0            [12] 1792 	mov	b,a
      000317 C0 07            [24] 1793 	push	ar7
      000319 C0 06            [24] 1794 	push	ar6
      00031B C0 05            [24] 1795 	push	ar5
      00031D 12 03 F4         [24] 1796 	lcall	_delay_time
      000320 D0 05            [24] 1797 	pop	ar5
      000322 D0 06            [24] 1798 	pop	ar6
      000324 D0 07            [24] 1799 	pop	ar7
      000326 80 CE            [24] 1800 	sjmp	00104$
      000328                       1801 00106$:
                           00025B  1802 	C$i2c.h$170$2$90 ==.
                                   1803 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:170: if(key == '#')
      000328 BB 23 2A         [24] 1804 	cjne	r3,#0x23,00114$
                           00025E  1805 	C$i2c.h$172$3$91 ==.
                                   1806 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:172: while(read_keypad() == '#')delay_time(10000);
      00032B                       1807 00107$:
      00032B C0 06            [24] 1808 	push	ar6
      00032D C0 05            [24] 1809 	push	ar5
      00032F 12 02 06         [24] 1810 	lcall	_read_keypad
      000332 AC 82            [24] 1811 	mov	r4,dpl
      000334 D0 05            [24] 1812 	pop	ar5
      000336 D0 06            [24] 1813 	pop	ar6
      000338 BC 23 13         [24] 1814 	cjne	r4,#0x23,00109$
      00033B 90 27 10         [24] 1815 	mov	dptr,#0x2710
      00033E E4               [12] 1816 	clr	a
      00033F F5 F0            [12] 1817 	mov	b,a
      000341 C0 06            [24] 1818 	push	ar6
      000343 C0 05            [24] 1819 	push	ar5
      000345 12 03 F4         [24] 1820 	lcall	_delay_time
      000348 D0 05            [24] 1821 	pop	ar5
      00034A D0 06            [24] 1822 	pop	ar6
      00034C 80 DD            [24] 1823 	sjmp	00107$
      00034E                       1824 00109$:
                           000281  1825 	C$i2c.h$173$3$91 ==.
                                   1826 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:173: return sum;
      00034E 8D 82            [24] 1827 	mov	dpl,r5
      000350 8E 83            [24] 1828 	mov	dph,r6
      000352 02 03 F3         [24] 1829 	ljmp	00119$
      000355                       1830 00114$:
                           000288  1831 	C$i2c.h$177$3$92 ==.
                                   1832 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:177: lcd_print("%c", key);
      000355 8B 02            [24] 1833 	mov	ar2,r3
      000357 7C 00            [12] 1834 	mov	r4,#0x00
      000359 C0 07            [24] 1835 	push	ar7
      00035B C0 06            [24] 1836 	push	ar6
      00035D C0 05            [24] 1837 	push	ar5
      00035F C0 04            [24] 1838 	push	ar4
      000361 C0 03            [24] 1839 	push	ar3
      000363 C0 02            [24] 1840 	push	ar2
      000365 C0 02            [24] 1841 	push	ar2
      000367 C0 04            [24] 1842 	push	ar4
      000369 74 55            [12] 1843 	mov	a,#___str_2
      00036B C0 E0            [24] 1844 	push	acc
      00036D 74 17            [12] 1845 	mov	a,#(___str_2 >> 8)
      00036F C0 E0            [24] 1846 	push	acc
      000371 74 80            [12] 1847 	mov	a,#0x80
      000373 C0 E0            [24] 1848 	push	acc
      000375 12 01 48         [24] 1849 	lcall	_lcd_print
      000378 E5 81            [12] 1850 	mov	a,sp
      00037A 24 FB            [12] 1851 	add	a,#0xfb
      00037C F5 81            [12] 1852 	mov	sp,a
      00037E D0 02            [24] 1853 	pop	ar2
      000380 D0 03            [24] 1854 	pop	ar3
      000382 D0 04            [24] 1855 	pop	ar4
      000384 D0 05            [24] 1856 	pop	ar5
      000386 D0 06            [24] 1857 	pop	ar6
                           0002BB  1858 	C$i2c.h$178$1$89 ==.
                                   1859 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:178: sum = sum*10 + key - '0';
      000388 8D 11            [24] 1860 	mov	__mulint_PARM_2,r5
      00038A 8E 12            [24] 1861 	mov	(__mulint_PARM_2 + 1),r6
      00038C 90 00 0A         [24] 1862 	mov	dptr,#0x000a
      00038F C0 04            [24] 1863 	push	ar4
      000391 C0 03            [24] 1864 	push	ar3
      000393 C0 02            [24] 1865 	push	ar2
      000395 12 0E 76         [24] 1866 	lcall	__mulint
      000398 A8 82            [24] 1867 	mov	r0,dpl
      00039A A9 83            [24] 1868 	mov	r1,dph
      00039C D0 02            [24] 1869 	pop	ar2
      00039E D0 03            [24] 1870 	pop	ar3
      0003A0 D0 04            [24] 1871 	pop	ar4
      0003A2 D0 07            [24] 1872 	pop	ar7
      0003A4 EA               [12] 1873 	mov	a,r2
      0003A5 28               [12] 1874 	add	a,r0
      0003A6 F8               [12] 1875 	mov	r0,a
      0003A7 EC               [12] 1876 	mov	a,r4
      0003A8 39               [12] 1877 	addc	a,r1
      0003A9 F9               [12] 1878 	mov	r1,a
      0003AA E8               [12] 1879 	mov	a,r0
      0003AB 24 D0            [12] 1880 	add	a,#0xd0
      0003AD FD               [12] 1881 	mov	r5,a
      0003AE E9               [12] 1882 	mov	a,r1
      0003AF 34 FF            [12] 1883 	addc	a,#0xff
      0003B1 FE               [12] 1884 	mov	r6,a
                           0002E5  1885 	C$i2c.h$179$3$92 ==.
                                   1886 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:179: while(read_keypad() == key)delay_time(10000); //wait for key to be released
      0003B2                       1887 00110$:
      0003B2 C0 07            [24] 1888 	push	ar7
      0003B4 C0 06            [24] 1889 	push	ar6
      0003B6 C0 05            [24] 1890 	push	ar5
      0003B8 C0 03            [24] 1891 	push	ar3
      0003BA 12 02 06         [24] 1892 	lcall	_read_keypad
      0003BD AC 82            [24] 1893 	mov	r4,dpl
      0003BF D0 03            [24] 1894 	pop	ar3
      0003C1 D0 05            [24] 1895 	pop	ar5
      0003C3 D0 06            [24] 1896 	pop	ar6
      0003C5 D0 07            [24] 1897 	pop	ar7
      0003C7 EC               [12] 1898 	mov	a,r4
      0003C8 B5 03 1B         [24] 1899 	cjne	a,ar3,00118$
      0003CB 90 27 10         [24] 1900 	mov	dptr,#0x2710
      0003CE E4               [12] 1901 	clr	a
      0003CF F5 F0            [12] 1902 	mov	b,a
      0003D1 C0 07            [24] 1903 	push	ar7
      0003D3 C0 06            [24] 1904 	push	ar6
      0003D5 C0 05            [24] 1905 	push	ar5
      0003D7 C0 03            [24] 1906 	push	ar3
      0003D9 12 03 F4         [24] 1907 	lcall	_delay_time
      0003DC D0 03            [24] 1908 	pop	ar3
      0003DE D0 05            [24] 1909 	pop	ar5
      0003E0 D0 06            [24] 1910 	pop	ar6
      0003E2 D0 07            [24] 1911 	pop	ar7
      0003E4 80 CC            [24] 1912 	sjmp	00110$
      0003E6                       1913 00118$:
                           000319  1914 	C$i2c.h$167$1$89 ==.
                                   1915 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:167: for(i=0; i<5; i++)
      0003E6 0F               [12] 1916 	inc	r7
      0003E7 BF 05 00         [24] 1917 	cjne	r7,#0x05,00155$
      0003EA                       1918 00155$:
      0003EA 50 03            [24] 1919 	jnc	00156$
      0003EC 02 02 F6         [24] 1920 	ljmp	00104$
      0003EF                       1921 00156$:
                           000322  1922 	C$i2c.h$182$1$89 ==.
                                   1923 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:182: return sum;
      0003EF 8D 82            [24] 1924 	mov	dpl,r5
      0003F1 8E 83            [24] 1925 	mov	dph,r6
      0003F3                       1926 00119$:
                           000326  1927 	C$i2c.h$183$1$89 ==.
                           000326  1928 	XG$kpd_input$0$0 ==.
      0003F3 22               [24] 1929 	ret
                                   1930 ;------------------------------------------------------------
                                   1931 ;Allocation info for local variables in function 'delay_time'
                                   1932 ;------------------------------------------------------------
                                   1933 ;time_end                  Allocated to registers r4 r5 r6 r7 
                                   1934 ;index                     Allocated to registers 
                                   1935 ;------------------------------------------------------------
                           000327  1936 	G$delay_time$0$0 ==.
                           000327  1937 	C$i2c.h$192$1$89 ==.
                                   1938 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:192: void delay_time (unsigned long time_end)
                                   1939 ;	-----------------------------------------
                                   1940 ;	 function delay_time
                                   1941 ;	-----------------------------------------
      0003F4                       1942 _delay_time:
      0003F4 AC 82            [24] 1943 	mov	r4,dpl
      0003F6 AD 83            [24] 1944 	mov	r5,dph
      0003F8 AE F0            [24] 1945 	mov	r6,b
      0003FA FF               [12] 1946 	mov	r7,a
                           00032E  1947 	C$i2c.h$196$1$94 ==.
                                   1948 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:196: for (index = 0; index < time_end; index++); //for loop delay
      0003FB 78 00            [12] 1949 	mov	r0,#0x00
      0003FD 79 00            [12] 1950 	mov	r1,#0x00
      0003FF 7A 00            [12] 1951 	mov	r2,#0x00
      000401 7B 00            [12] 1952 	mov	r3,#0x00
      000403                       1953 00103$:
      000403 C3               [12] 1954 	clr	c
      000404 E8               [12] 1955 	mov	a,r0
      000405 9C               [12] 1956 	subb	a,r4
      000406 E9               [12] 1957 	mov	a,r1
      000407 9D               [12] 1958 	subb	a,r5
      000408 EA               [12] 1959 	mov	a,r2
      000409 9E               [12] 1960 	subb	a,r6
      00040A EB               [12] 1961 	mov	a,r3
      00040B 9F               [12] 1962 	subb	a,r7
      00040C 50 0F            [24] 1963 	jnc	00105$
      00040E 08               [12] 1964 	inc	r0
      00040F B8 00 09         [24] 1965 	cjne	r0,#0x00,00115$
      000412 09               [12] 1966 	inc	r1
      000413 B9 00 05         [24] 1967 	cjne	r1,#0x00,00115$
      000416 0A               [12] 1968 	inc	r2
      000417 BA 00 E9         [24] 1969 	cjne	r2,#0x00,00103$
      00041A 0B               [12] 1970 	inc	r3
      00041B                       1971 00115$:
      00041B 80 E6            [24] 1972 	sjmp	00103$
      00041D                       1973 00105$:
                           000350  1974 	C$i2c.h$197$1$94 ==.
                           000350  1975 	XG$delay_time$0$0 ==.
      00041D 22               [24] 1976 	ret
                                   1977 ;------------------------------------------------------------
                                   1978 ;Allocation info for local variables in function 'i2c_start'
                                   1979 ;------------------------------------------------------------
                           000351  1980 	G$i2c_start$0$0 ==.
                           000351  1981 	C$i2c.h$200$1$94 ==.
                                   1982 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:200: void i2c_start(void)
                                   1983 ;	-----------------------------------------
                                   1984 ;	 function i2c_start
                                   1985 ;	-----------------------------------------
      00041E                       1986 _i2c_start:
                           000351  1987 	C$i2c.h$202$1$96 ==.
                                   1988 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:202: while(BUSY);                //Wait until SMBus0 is free
      00041E                       1989 00101$:
      00041E 20 C7 FD         [24] 1990 	jb	_BUSY,00101$
                           000354  1991 	C$i2c.h$203$1$96 ==.
                                   1992 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:203: STA = 1;                    //Set Start Bit
      000421 D2 C5            [12] 1993 	setb	_STA
                           000356  1994 	C$i2c.h$204$1$96 ==.
                                   1995 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:204: while(!SI);                 //Wait until start sent
      000423                       1996 00104$:
      000423 30 C3 FD         [24] 1997 	jnb	_SI,00104$
                           000359  1998 	C$i2c.h$205$1$96 ==.
                                   1999 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:205: STA = 0;                    //Clear start bit
      000426 C2 C5            [12] 2000 	clr	_STA
                           00035B  2001 	C$i2c.h$206$1$96 ==.
                                   2002 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:206: SI = 0;                     //Clear SI
      000428 C2 C3            [12] 2003 	clr	_SI
                           00035D  2004 	C$i2c.h$207$1$96 ==.
                           00035D  2005 	XG$i2c_start$0$0 ==.
      00042A 22               [24] 2006 	ret
                                   2007 ;------------------------------------------------------------
                                   2008 ;Allocation info for local variables in function 'i2c_write'
                                   2009 ;------------------------------------------------------------
                                   2010 ;output_data               Allocated to registers 
                                   2011 ;------------------------------------------------------------
                           00035E  2012 	G$i2c_write$0$0 ==.
                           00035E  2013 	C$i2c.h$210$1$96 ==.
                                   2014 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:210: void i2c_write(unsigned char output_data)
                                   2015 ;	-----------------------------------------
                                   2016 ;	 function i2c_write
                                   2017 ;	-----------------------------------------
      00042B                       2018 _i2c_write:
      00042B 85 82 C2         [24] 2019 	mov	_SMB0DAT,dpl
                           000361  2020 	C$i2c.h$213$1$98 ==.
                                   2021 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:213: while(!SI);                 //Wait until send is complete
      00042E                       2022 00101$:
                           000361  2023 	C$i2c.h$214$1$98 ==.
                                   2024 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:214: SI = 0;                     //Clear SI
      00042E 10 C3 02         [24] 2025 	jbc	_SI,00112$
      000431 80 FB            [24] 2026 	sjmp	00101$
      000433                       2027 00112$:
                           000366  2028 	C$i2c.h$215$1$98 ==.
                           000366  2029 	XG$i2c_write$0$0 ==.
      000433 22               [24] 2030 	ret
                                   2031 ;------------------------------------------------------------
                                   2032 ;Allocation info for local variables in function 'i2c_write_and_stop'
                                   2033 ;------------------------------------------------------------
                                   2034 ;output_data               Allocated to registers 
                                   2035 ;------------------------------------------------------------
                           000367  2036 	G$i2c_write_and_stop$0$0 ==.
                           000367  2037 	C$i2c.h$218$1$98 ==.
                                   2038 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:218: void i2c_write_and_stop(unsigned char output_data)
                                   2039 ;	-----------------------------------------
                                   2040 ;	 function i2c_write_and_stop
                                   2041 ;	-----------------------------------------
      000434                       2042 _i2c_write_and_stop:
      000434 85 82 C2         [24] 2043 	mov	_SMB0DAT,dpl
                           00036A  2044 	C$i2c.h$221$1$100 ==.
                                   2045 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:221: STO = 1;                    //Set stop bit
      000437 D2 C4            [12] 2046 	setb	_STO
                           00036C  2047 	C$i2c.h$222$1$100 ==.
                                   2048 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:222: while(!SI);                 //Wait until send is complete
      000439                       2049 00101$:
                           00036C  2050 	C$i2c.h$223$1$100 ==.
                                   2051 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:223: SI = 0;                     //Clear SI
      000439 10 C3 02         [24] 2052 	jbc	_SI,00112$
      00043C 80 FB            [24] 2053 	sjmp	00101$
      00043E                       2054 00112$:
                           000371  2055 	C$i2c.h$224$1$100 ==.
                           000371  2056 	XG$i2c_write_and_stop$0$0 ==.
      00043E 22               [24] 2057 	ret
                                   2058 ;------------------------------------------------------------
                                   2059 ;Allocation info for local variables in function 'i2c_read'
                                   2060 ;------------------------------------------------------------
                                   2061 ;input_data                Allocated to registers 
                                   2062 ;------------------------------------------------------------
                           000372  2063 	G$i2c_read$0$0 ==.
                           000372  2064 	C$i2c.h$227$1$100 ==.
                                   2065 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:227: unsigned char i2c_read(void)
                                   2066 ;	-----------------------------------------
                                   2067 ;	 function i2c_read
                                   2068 ;	-----------------------------------------
      00043F                       2069 _i2c_read:
                           000372  2070 	C$i2c.h$231$1$102 ==.
                                   2071 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:231: while(!SI);                 //Wait until we have data to read
      00043F                       2072 00101$:
      00043F 30 C3 FD         [24] 2073 	jnb	_SI,00101$
                           000375  2074 	C$i2c.h$232$1$102 ==.
                                   2075 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:232: input_data = SMB0DAT;       //Read the data
      000442 85 C2 82         [24] 2076 	mov	dpl,_SMB0DAT
                           000378  2077 	C$i2c.h$233$1$102 ==.
                                   2078 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:233: SI = 0;                     //Clear SI
      000445 C2 C3            [12] 2079 	clr	_SI
                           00037A  2080 	C$i2c.h$234$1$102 ==.
                                   2081 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:234: return input_data;          //Return the read data
                           00037A  2082 	C$i2c.h$235$1$102 ==.
                           00037A  2083 	XG$i2c_read$0$0 ==.
      000447 22               [24] 2084 	ret
                                   2085 ;------------------------------------------------------------
                                   2086 ;Allocation info for local variables in function 'i2c_read_and_stop'
                                   2087 ;------------------------------------------------------------
                                   2088 ;input_data                Allocated to registers r7 
                                   2089 ;------------------------------------------------------------
                           00037B  2090 	G$i2c_read_and_stop$0$0 ==.
                           00037B  2091 	C$i2c.h$238$1$102 ==.
                                   2092 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:238: unsigned char i2c_read_and_stop(void)
                                   2093 ;	-----------------------------------------
                                   2094 ;	 function i2c_read_and_stop
                                   2095 ;	-----------------------------------------
      000448                       2096 _i2c_read_and_stop:
                           00037B  2097 	C$i2c.h$242$1$104 ==.
                                   2098 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:242: while(!SI);                 //Wait until we have data to read
      000448                       2099 00101$:
      000448 30 C3 FD         [24] 2100 	jnb	_SI,00101$
                           00037E  2101 	C$i2c.h$243$1$104 ==.
                                   2102 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:243: input_data = SMB0DAT;       //Read the data
      00044B AF C2            [24] 2103 	mov	r7,_SMB0DAT
                           000380  2104 	C$i2c.h$244$1$104 ==.
                                   2105 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:244: SI = 0;                     //Clear SI
      00044D C2 C3            [12] 2106 	clr	_SI
                           000382  2107 	C$i2c.h$245$1$104 ==.
                                   2108 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:245: STO = 1;                    //Set stop bit
      00044F D2 C4            [12] 2109 	setb	_STO
                           000384  2110 	C$i2c.h$246$1$104 ==.
                                   2111 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:246: while(!SI);                 //Wait for stop
      000451                       2112 00104$:
                           000384  2113 	C$i2c.h$247$1$104 ==.
                                   2114 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:247: SI = 0;
      000451 10 C3 02         [24] 2115 	jbc	_SI,00122$
      000454 80 FB            [24] 2116 	sjmp	00104$
      000456                       2117 00122$:
                           000389  2118 	C$i2c.h$248$1$104 ==.
                                   2119 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:248: return input_data;          //Return the read data
      000456 8F 82            [24] 2120 	mov	dpl,r7
                           00038B  2121 	C$i2c.h$249$1$104 ==.
                           00038B  2122 	XG$i2c_read_and_stop$0$0 ==.
      000458 22               [24] 2123 	ret
                                   2124 ;------------------------------------------------------------
                                   2125 ;Allocation info for local variables in function 'i2c_write_data'
                                   2126 ;------------------------------------------------------------
                                   2127 ;start_reg                 Allocated with name '_i2c_write_data_PARM_2'
                                   2128 ;buffer                    Allocated with name '_i2c_write_data_PARM_3'
                                   2129 ;num_bytes                 Allocated with name '_i2c_write_data_PARM_4'
                                   2130 ;addr                      Allocated to registers r7 
                                   2131 ;i                         Allocated to registers 
                                   2132 ;------------------------------------------------------------
                           00038C  2133 	G$i2c_write_data$0$0 ==.
                           00038C  2134 	C$i2c.h$252$1$104 ==.
                                   2135 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:252: void i2c_write_data(unsigned char addr, unsigned char start_reg, unsigned char *buffer, unsigned char num_bytes)
                                   2136 ;	-----------------------------------------
                                   2137 ;	 function i2c_write_data
                                   2138 ;	-----------------------------------------
      000459                       2139 _i2c_write_data:
      000459 AF 82            [24] 2140 	mov	r7,dpl
                           00038E  2141 	C$i2c.h$256$1$106 ==.
                                   2142 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:256: EA = 0;                     //Don't allow interrupts during I2C work
      00045B C2 AF            [12] 2143 	clr	_EA
                           000390  2144 	C$i2c.h$257$1$106 ==.
                                   2145 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:257: i2c_start();                //Initiate I2C transfer
      00045D C0 07            [24] 2146 	push	ar7
      00045F 12 04 1E         [24] 2147 	lcall	_i2c_start
      000462 D0 07            [24] 2148 	pop	ar7
                           000397  2149 	C$i2c.h$258$1$106 ==.
                                   2150 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:258: i2c_write(addr & ~0x01);    //Write the desired address to the bus
      000464 74 FE            [12] 2151 	mov	a,#0xfe
      000466 5F               [12] 2152 	anl	a,r7
      000467 F5 82            [12] 2153 	mov	dpl,a
      000469 12 04 2B         [24] 2154 	lcall	_i2c_write
                           00039F  2155 	C$i2c.h$259$1$106 ==.
                                   2156 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:259: i2c_write(start_reg);       //Write the start register to the bus
      00046C 85 2C 82         [24] 2157 	mov	dpl,_i2c_write_data_PARM_2
      00046F 12 04 2B         [24] 2158 	lcall	_i2c_write
                           0003A5  2159 	C$i2c.h$260$1$106 ==.
                                   2160 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:260: for(i=0; i<num_bytes-1; i++) //Write the data to the register(s)
      000472 7F 00            [12] 2161 	mov	r7,#0x00
      000474                       2162 00103$:
      000474 AD 30            [24] 2163 	mov	r5,_i2c_write_data_PARM_4
      000476 7E 00            [12] 2164 	mov	r6,#0x00
      000478 1D               [12] 2165 	dec	r5
      000479 BD FF 01         [24] 2166 	cjne	r5,#0xff,00114$
      00047C 1E               [12] 2167 	dec	r6
      00047D                       2168 00114$:
      00047D 8F 03            [24] 2169 	mov	ar3,r7
      00047F 7C 00            [12] 2170 	mov	r4,#0x00
      000481 C3               [12] 2171 	clr	c
      000482 EB               [12] 2172 	mov	a,r3
      000483 9D               [12] 2173 	subb	a,r5
      000484 EC               [12] 2174 	mov	a,r4
      000485 64 80            [12] 2175 	xrl	a,#0x80
      000487 8E F0            [24] 2176 	mov	b,r6
      000489 63 F0 80         [24] 2177 	xrl	b,#0x80
      00048C 95 F0            [12] 2178 	subb	a,b
      00048E 50 1F            [24] 2179 	jnc	00101$
                           0003C3  2180 	C$i2c.h$261$1$106 ==.
                                   2181 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:261: i2c_write(buffer[i]);
      000490 EF               [12] 2182 	mov	a,r7
      000491 25 2D            [12] 2183 	add	a,_i2c_write_data_PARM_3
      000493 FC               [12] 2184 	mov	r4,a
      000494 E4               [12] 2185 	clr	a
      000495 35 2E            [12] 2186 	addc	a,(_i2c_write_data_PARM_3 + 1)
      000497 FD               [12] 2187 	mov	r5,a
      000498 AE 2F            [24] 2188 	mov	r6,(_i2c_write_data_PARM_3 + 2)
      00049A 8C 82            [24] 2189 	mov	dpl,r4
      00049C 8D 83            [24] 2190 	mov	dph,r5
      00049E 8E F0            [24] 2191 	mov	b,r6
      0004A0 12 16 75         [24] 2192 	lcall	__gptrget
      0004A3 F5 82            [12] 2193 	mov	dpl,a
      0004A5 C0 07            [24] 2194 	push	ar7
      0004A7 12 04 2B         [24] 2195 	lcall	_i2c_write
      0004AA D0 07            [24] 2196 	pop	ar7
                           0003DF  2197 	C$i2c.h$260$1$106 ==.
                                   2198 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:260: for(i=0; i<num_bytes-1; i++) //Write the data to the register(s)
      0004AC 0F               [12] 2199 	inc	r7
      0004AD 80 C5            [24] 2200 	sjmp	00103$
      0004AF                       2201 00101$:
                           0003E2  2202 	C$i2c.h$262$1$106 ==.
                                   2203 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:262: i2c_write_and_stop(buffer[num_bytes-1]); //Stop transfer
      0004AF AE 30            [24] 2204 	mov	r6,_i2c_write_data_PARM_4
      0004B1 7F 00            [12] 2205 	mov	r7,#0x00
      0004B3 1E               [12] 2206 	dec	r6
      0004B4 BE FF 01         [24] 2207 	cjne	r6,#0xff,00116$
      0004B7 1F               [12] 2208 	dec	r7
      0004B8                       2209 00116$:
      0004B8 EE               [12] 2210 	mov	a,r6
      0004B9 25 2D            [12] 2211 	add	a,_i2c_write_data_PARM_3
      0004BB FE               [12] 2212 	mov	r6,a
      0004BC EF               [12] 2213 	mov	a,r7
      0004BD 35 2E            [12] 2214 	addc	a,(_i2c_write_data_PARM_3 + 1)
      0004BF FF               [12] 2215 	mov	r7,a
      0004C0 AD 2F            [24] 2216 	mov	r5,(_i2c_write_data_PARM_3 + 2)
      0004C2 8E 82            [24] 2217 	mov	dpl,r6
      0004C4 8F 83            [24] 2218 	mov	dph,r7
      0004C6 8D F0            [24] 2219 	mov	b,r5
      0004C8 12 16 75         [24] 2220 	lcall	__gptrget
      0004CB F5 82            [12] 2221 	mov	dpl,a
      0004CD 12 04 34         [24] 2222 	lcall	_i2c_write_and_stop
                           000403  2223 	C$i2c.h$263$1$106 ==.
                                   2224 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:263: EA = 1;                     //Re-Enable interrupts
      0004D0 D2 AF            [12] 2225 	setb	_EA
                           000405  2226 	C$i2c.h$264$1$106 ==.
                           000405  2227 	XG$i2c_write_data$0$0 ==.
      0004D2 22               [24] 2228 	ret
                                   2229 ;------------------------------------------------------------
                                   2230 ;Allocation info for local variables in function 'i2c_read_data'
                                   2231 ;------------------------------------------------------------
                                   2232 ;start_reg                 Allocated with name '_i2c_read_data_PARM_2'
                                   2233 ;buffer                    Allocated with name '_i2c_read_data_PARM_3'
                                   2234 ;num_bytes                 Allocated with name '_i2c_read_data_PARM_4'
                                   2235 ;addr                      Allocated to registers r7 
                                   2236 ;j                         Allocated to registers 
                                   2237 ;------------------------------------------------------------
                           000406  2238 	G$i2c_read_data$0$0 ==.
                           000406  2239 	C$i2c.h$267$1$106 ==.
                                   2240 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:267: void i2c_read_data(unsigned char addr, unsigned char start_reg, unsigned char *buffer, unsigned char num_bytes)
                                   2241 ;	-----------------------------------------
                                   2242 ;	 function i2c_read_data
                                   2243 ;	-----------------------------------------
      0004D3                       2244 _i2c_read_data:
      0004D3 AF 82            [24] 2245 	mov	r7,dpl
                           000408  2246 	C$i2c.h$271$1$108 ==.
                                   2247 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:271: EA = 0;                     //Don't allow interrupts during I2C work
      0004D5 C2 AF            [12] 2248 	clr	_EA
                           00040A  2249 	C$i2c.h$272$1$108 ==.
                                   2250 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:272: i2c_start();                //Start I2C transfer
      0004D7 C0 07            [24] 2251 	push	ar7
      0004D9 12 04 1E         [24] 2252 	lcall	_i2c_start
      0004DC D0 07            [24] 2253 	pop	ar7
                           000411  2254 	C$i2c.h$273$1$108 ==.
                                   2255 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:273: i2c_write(addr & ~0x01);    //Write address of device that will be written to, send 0
      0004DE 74 FE            [12] 2256 	mov	a,#0xfe
      0004E0 5F               [12] 2257 	anl	a,r7
      0004E1 F5 82            [12] 2258 	mov	dpl,a
      0004E3 C0 07            [24] 2259 	push	ar7
      0004E5 12 04 2B         [24] 2260 	lcall	_i2c_write
                           00041B  2261 	C$i2c.h$274$1$108 ==.
                                   2262 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:274: i2c_write_and_stop(start_reg); //Write & stop the 1st register to be read
      0004E8 85 31 82         [24] 2263 	mov	dpl,_i2c_read_data_PARM_2
      0004EB 12 04 34         [24] 2264 	lcall	_i2c_write_and_stop
                           000421  2265 	C$i2c.h$275$1$108 ==.
                                   2266 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:275: i2c_start();                //Start I2C transfer
      0004EE 12 04 1E         [24] 2267 	lcall	_i2c_start
      0004F1 D0 07            [24] 2268 	pop	ar7
                           000426  2269 	C$i2c.h$276$1$108 ==.
                                   2270 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:276: i2c_write(addr | 0x01);     //Write address again, this time indicating a read operation
      0004F3 74 01            [12] 2271 	mov	a,#0x01
      0004F5 4F               [12] 2272 	orl	a,r7
      0004F6 F5 82            [12] 2273 	mov	dpl,a
      0004F8 12 04 2B         [24] 2274 	lcall	_i2c_write
                           00042E  2275 	C$i2c.h$277$1$108 ==.
                                   2276 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:277: for(j = 0; j < num_bytes - 1; j++)
      0004FB 7F 00            [12] 2277 	mov	r7,#0x00
      0004FD                       2278 00103$:
      0004FD AD 35            [24] 2279 	mov	r5,_i2c_read_data_PARM_4
      0004FF 7E 00            [12] 2280 	mov	r6,#0x00
      000501 1D               [12] 2281 	dec	r5
      000502 BD FF 01         [24] 2282 	cjne	r5,#0xff,00114$
      000505 1E               [12] 2283 	dec	r6
      000506                       2284 00114$:
      000506 8F 03            [24] 2285 	mov	ar3,r7
      000508 7C 00            [12] 2286 	mov	r4,#0x00
      00050A C3               [12] 2287 	clr	c
      00050B EB               [12] 2288 	mov	a,r3
      00050C 9D               [12] 2289 	subb	a,r5
      00050D EC               [12] 2290 	mov	a,r4
      00050E 64 80            [12] 2291 	xrl	a,#0x80
      000510 8E F0            [24] 2292 	mov	b,r6
      000512 63 F0 80         [24] 2293 	xrl	b,#0x80
      000515 95 F0            [12] 2294 	subb	a,b
      000517 50 2E            [24] 2295 	jnc	00101$
                           00044C  2296 	C$i2c.h$279$2$109 ==.
                                   2297 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:279: AA = 1;                 //Set acknowledge bit
      000519 D2 C2            [12] 2298 	setb	_AA
                           00044E  2299 	C$i2c.h$280$2$109 ==.
                                   2300 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:280: buffer[j] = i2c_read(); //Read data, save it in buffer
      00051B EF               [12] 2301 	mov	a,r7
      00051C 25 32            [12] 2302 	add	a,_i2c_read_data_PARM_3
      00051E FC               [12] 2303 	mov	r4,a
      00051F E4               [12] 2304 	clr	a
      000520 35 33            [12] 2305 	addc	a,(_i2c_read_data_PARM_3 + 1)
      000522 FD               [12] 2306 	mov	r5,a
      000523 AE 34            [24] 2307 	mov	r6,(_i2c_read_data_PARM_3 + 2)
      000525 C0 07            [24] 2308 	push	ar7
      000527 C0 06            [24] 2309 	push	ar6
      000529 C0 05            [24] 2310 	push	ar5
      00052B C0 04            [24] 2311 	push	ar4
      00052D 12 04 3F         [24] 2312 	lcall	_i2c_read
      000530 AB 82            [24] 2313 	mov	r3,dpl
      000532 D0 04            [24] 2314 	pop	ar4
      000534 D0 05            [24] 2315 	pop	ar5
      000536 D0 06            [24] 2316 	pop	ar6
      000538 D0 07            [24] 2317 	pop	ar7
      00053A 8C 82            [24] 2318 	mov	dpl,r4
      00053C 8D 83            [24] 2319 	mov	dph,r5
      00053E 8E F0            [24] 2320 	mov	b,r6
      000540 EB               [12] 2321 	mov	a,r3
      000541 12 0E 4E         [24] 2322 	lcall	__gptrput
                           000477  2323 	C$i2c.h$277$1$108 ==.
                                   2324 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:277: for(j = 0; j < num_bytes - 1; j++)
      000544 0F               [12] 2325 	inc	r7
      000545 80 B6            [24] 2326 	sjmp	00103$
      000547                       2327 00101$:
                           00047A  2328 	C$i2c.h$282$1$108 ==.
                                   2329 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:282: AA = 0;
      000547 C2 C2            [12] 2330 	clr	_AA
                           00047C  2331 	C$i2c.h$283$1$108 ==.
                                   2332 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:283: buffer[num_bytes - 1] = i2c_read_and_stop(); //Read the last byte and stop, save it in the buffer
      000549 AE 35            [24] 2333 	mov	r6,_i2c_read_data_PARM_4
      00054B 7F 00            [12] 2334 	mov	r7,#0x00
      00054D 1E               [12] 2335 	dec	r6
      00054E BE FF 01         [24] 2336 	cjne	r6,#0xff,00116$
      000551 1F               [12] 2337 	dec	r7
      000552                       2338 00116$:
      000552 EE               [12] 2339 	mov	a,r6
      000553 25 32            [12] 2340 	add	a,_i2c_read_data_PARM_3
      000555 FE               [12] 2341 	mov	r6,a
      000556 EF               [12] 2342 	mov	a,r7
      000557 35 33            [12] 2343 	addc	a,(_i2c_read_data_PARM_3 + 1)
      000559 FF               [12] 2344 	mov	r7,a
      00055A AD 34            [24] 2345 	mov	r5,(_i2c_read_data_PARM_3 + 2)
      00055C C0 07            [24] 2346 	push	ar7
      00055E C0 06            [24] 2347 	push	ar6
      000560 C0 05            [24] 2348 	push	ar5
      000562 12 04 48         [24] 2349 	lcall	_i2c_read_and_stop
      000565 AC 82            [24] 2350 	mov	r4,dpl
      000567 D0 05            [24] 2351 	pop	ar5
      000569 D0 06            [24] 2352 	pop	ar6
      00056B D0 07            [24] 2353 	pop	ar7
      00056D 8E 82            [24] 2354 	mov	dpl,r6
      00056F 8F 83            [24] 2355 	mov	dph,r7
      000571 8D F0            [24] 2356 	mov	b,r5
      000573 EC               [12] 2357 	mov	a,r4
      000574 12 0E 4E         [24] 2358 	lcall	__gptrput
                           0004AA  2359 	C$i2c.h$284$1$108 ==.
                                   2360 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:284: EA = 1;                     //Re-Enable interrupts
      000577 D2 AF            [12] 2361 	setb	_EA
                           0004AC  2362 	C$i2c.h$285$1$108 ==.
                           0004AC  2363 	XG$i2c_read_data$0$0 ==.
      000579 22               [24] 2364 	ret
                                   2365 ;------------------------------------------------------------
                                   2366 ;Allocation info for local variables in function 'Accel_Init'
                                   2367 ;------------------------------------------------------------
                           0004AD  2368 	G$Accel_Init$0$0 ==.
                           0004AD  2369 	C$i2c.h$294$1$108 ==.
                                   2370 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:294: void Accel_Init(void)
                                   2371 ;	-----------------------------------------
                                   2372 ;	 function Accel_Init
                                   2373 ;	-----------------------------------------
      00057A                       2374 _Accel_Init:
                           0004AD  2375 	C$i2c.h$298$1$111 ==.
                                   2376 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:298: Data2[0]=0x23;  //normal power mode, 50Hz ODR, y & x axes enabled
      00057A 75 22 23         [24] 2377 	mov	_Data2,#0x23
                           0004B0  2378 	C$i2c.h$300$1$111 ==.
                                   2379 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:300: Data2[1]=0x00;  //default - no filtering
      00057D 75 23 00         [24] 2380 	mov	(_Data2 + 0x0001),#0x00
                           0004B3  2381 	C$i2c.h$301$1$111 ==.
                                   2382 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:301: Data2[1]=0x10;  //filtered data selected, HPF = 1.0->0.125Hz
      000580 75 23 10         [24] 2383 	mov	(_Data2 + 0x0001),#0x10
                           0004B6  2384 	C$i2c.h$302$1$111 ==.
                                   2385 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:302: Data2[2]=0x00;  //default - no interrupts enabled
      000583 75 24 00         [24] 2386 	mov	(_Data2 + 0x0002),#0x00
                           0004B9  2387 	C$i2c.h$304$1$111 ==.
                                   2388 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:304: i2c_write_data(addr_accel, 0x20, Data2, 1);
      000586 75 2D 22         [24] 2389 	mov	_i2c_write_data_PARM_3,#_Data2
      000589 75 2E 00         [24] 2390 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      00058C 75 2F 40         [24] 2391 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      00058F 75 2C 20         [24] 2392 	mov	_i2c_write_data_PARM_2,#0x20
      000592 75 30 01         [24] 2393 	mov	_i2c_write_data_PARM_4,#0x01
      000595 75 82 30         [24] 2394 	mov	dpl,#0x30
      000598 12 04 59         [24] 2395 	lcall	_i2c_write_data
                           0004CE  2396 	C$i2c.h$310$1$111 ==.
                           0004CE  2397 	XG$Accel_Init$0$0 ==.
      00059B 22               [24] 2398 	ret
                                   2399 ;------------------------------------------------------------
                                   2400 ;Allocation info for local variables in function 'Accel_Init_C'
                                   2401 ;------------------------------------------------------------
                           0004CF  2402 	G$Accel_Init_C$0$0 ==.
                           0004CF  2403 	C$i2c.h$313$1$111 ==.
                                   2404 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:313: void Accel_Init_C(void)
                                   2405 ;	-----------------------------------------
                                   2406 ;	 function Accel_Init_C
                                   2407 ;	-----------------------------------------
      00059C                       2408 _Accel_Init_C:
                           0004CF  2409 	C$i2c.h$318$1$113 ==.
                                   2410 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:318: Data2[0]=0x04;  //set register address auto increment bit
      00059C 75 22 04         [24] 2411 	mov	_Data2,#0x04
                           0004D2  2412 	C$i2c.h$319$1$113 ==.
                                   2413 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:319: i2c_write_data(addr_accelC, 0x23, Data2, 1);
      00059F 75 2D 22         [24] 2414 	mov	_i2c_write_data_PARM_3,#_Data2
      0005A2 75 2E 00         [24] 2415 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0005A5 75 2F 40         [24] 2416 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0005A8 75 2C 23         [24] 2417 	mov	_i2c_write_data_PARM_2,#0x23
      0005AB 75 30 01         [24] 2418 	mov	_i2c_write_data_PARM_4,#0x01
      0005AE 75 82 3A         [24] 2419 	mov	dpl,#0x3a
      0005B1 12 04 59         [24] 2420 	lcall	_i2c_write_data
                           0004E7  2421 	C$i2c.h$321$1$113 ==.
                                   2422 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:321: Data2[0]=0x6B;  //R20 normal power mode, 800Hz ODR, y & x axes enabled
      0005B4 75 22 6B         [24] 2423 	mov	_Data2,#0x6b
                           0004EA  2424 	C$i2c.h$323$1$113 ==.
                                   2425 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:323: Data2[1]=0x00;  //R21 Default - no HP filtering
      0005B7 75 23 00         [24] 2426 	mov	(_Data2 + 0x0001),#0x00
                           0004ED  2427 	C$i2c.h$325$1$113 ==.
                                   2428 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:325: Data2[2]=0x00;  //R22 Default - no interrupts enabled
      0005BA 75 24 00         [24] 2429 	mov	(_Data2 + 0x0002),#0x00
                           0004F0  2430 	C$i2c.h$326$1$113 ==.
                                   2431 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:326: i2c_write_data(addr_accelC, 0x20, Data2, 1);
      0005BD 75 2D 22         [24] 2432 	mov	_i2c_write_data_PARM_3,#_Data2
      0005C0 75 2E 00         [24] 2433 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0005C3 75 2F 40         [24] 2434 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0005C6 75 2C 20         [24] 2435 	mov	_i2c_write_data_PARM_2,#0x20
      0005C9 75 30 01         [24] 2436 	mov	_i2c_write_data_PARM_4,#0x01
      0005CC 75 82 3A         [24] 2437 	mov	dpl,#0x3a
      0005CF 12 04 59         [24] 2438 	lcall	_i2c_write_data
                           000505  2439 	C$i2c.h$328$1$113 ==.
                           000505  2440 	XG$Accel_Init_C$0$0 ==.
      0005D2 22               [24] 2441 	ret
                                   2442 ;------------------------------------------------------------
                                   2443 ;Allocation info for local variables in function 'main'
                                   2444 ;------------------------------------------------------------
                           000506  2445 	G$main$0$0 ==.
                           000506  2446 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$77$1$113 ==.
                                   2447 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:77: void main(void)
                                   2448 ;	-----------------------------------------
                                   2449 ;	 function main
                                   2450 ;	-----------------------------------------
      0005D3                       2451 _main:
                           000506  2452 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$80$1$127 ==.
                                   2453 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:80: Sys_Init();
      0005D3 12 01 04         [24] 2454 	lcall	_Sys_Init
                           000509  2455 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$81$1$127 ==.
                                   2456 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:81: putchar(' '); 
      0005D6 75 82 20         [24] 2457 	mov	dpl,#0x20
      0005D9 12 01 17         [24] 2458 	lcall	_putchar
                           00050F  2459 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$82$1$127 ==.
                                   2460 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:82: Port_Init(); //Set up ports
      0005DC 12 07 07         [24] 2461 	lcall	_Port_Init
                           000512  2462 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$83$1$127 ==.
                                   2463 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:83: XBR0_Init(); //Set the crossbar
      0005DF 12 07 0B         [24] 2464 	lcall	_XBR0_Init
                           000515  2465 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$84$1$127 ==.
                                   2466 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:84: ADC_Init();  //Set up ADC
      0005E2 12 07 0F         [24] 2467 	lcall	_ADC_Init
                           000518  2468 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$85$1$127 ==.
                                   2469 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:85: PCA_Init();  //Initialize the PCA
      0005E5 12 07 5F         [24] 2470 	lcall	_PCA_Init
                           00051B  2471 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$86$1$127 ==.
                                   2472 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:86: SMB_Init();  //Set up external communication
      0005E8 12 07 74         [24] 2473 	lcall	_SMB_Init
                           00051E  2474 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$89$1$127 ==.
                                   2475 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:89: printf("\n\rStart\r\n");
      0005EB 74 58            [12] 2476 	mov	a,#___str_3
      0005ED C0 E0            [24] 2477 	push	acc
      0005EF 74 17            [12] 2478 	mov	a,#(___str_3 >> 8)
      0005F1 C0 E0            [24] 2479 	push	acc
      0005F3 74 80            [12] 2480 	mov	a,#0x80
      0005F5 C0 E0            [24] 2481 	push	acc
      0005F7 12 10 7A         [24] 2482 	lcall	_printf
      0005FA 15 81            [12] 2483 	dec	sp
      0005FC 15 81            [12] 2484 	dec	sp
      0005FE 15 81            [12] 2485 	dec	sp
                           000533  2486 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$90$1$127 ==.
                                   2487 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:90: Counts = 0;
      000600 E4               [12] 2488 	clr	a
      000601 F5 36            [12] 2489 	mov	_Counts,a
      000603 F5 37            [12] 2490 	mov	(_Counts + 1),a
                           000538  2491 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$91$1$127 ==.
                                   2492 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:91: while(Counts < 50);//wait for 1 sec
      000605                       2493 00101$:
      000605 C3               [12] 2494 	clr	c
      000606 E5 36            [12] 2495 	mov	a,_Counts
      000608 94 32            [12] 2496 	subb	a,#0x32
      00060A E5 37            [12] 2497 	mov	a,(_Counts + 1)
      00060C 94 00            [12] 2498 	subb	a,#0x00
      00060E 40 F5            [24] 2499 	jc	00101$
                           000543  2500 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$95$1$127 ==.
                                   2501 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:95: lcd_clear();
      000610 12 01 CD         [24] 2502 	lcall	_lcd_clear
                           000546  2503 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$96$1$127 ==.
                                   2504 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:96: lcd_print("Calibration:\nHello world!\n");
      000613 74 62            [12] 2505 	mov	a,#___str_4
      000615 C0 E0            [24] 2506 	push	acc
      000617 74 17            [12] 2507 	mov	a,#(___str_4 >> 8)
      000619 C0 E0            [24] 2508 	push	acc
      00061B 74 80            [12] 2509 	mov	a,#0x80
      00061D C0 E0            [24] 2510 	push	acc
      00061F 12 01 48         [24] 2511 	lcall	_lcd_print
      000622 15 81            [12] 2512 	dec	sp
      000624 15 81            [12] 2513 	dec	sp
      000626 15 81            [12] 2514 	dec	sp
                           00055B  2515 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$99$1$127 ==.
                                   2516 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:99: thrust_angle = 2540;
      000628 90 00 51         [24] 2517 	mov	dptr,#_thrust_angle
      00062B 74 EC            [12] 2518 	mov	a,#0xec
      00062D F0               [24] 2519 	movx	@dptr,a
      00062E 74 09            [12] 2520 	mov	a,#0x09
      000630 A3               [24] 2521 	inc	dptr
      000631 F0               [24] 2522 	movx	@dptr,a
                           000565  2523 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$100$1$127 ==.
                                   2524 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:100: PCA0CP1 = 0xFFFF-thrust_angle;
      000632 75 EB 13         [24] 2525 	mov	((_PCA0CP1 >> 0) & 0xFF),#0x13
      000635 75 FB F6         [24] 2526 	mov	((_PCA0CP1 >> 8) & 0xFF),#0xf6
                           00056B  2527 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$104$1$127 ==.
                                   2528 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:104: RUDDER_LEFT = pw_neut;
      000638 90 00 57         [24] 2529 	mov	dptr,#_pw_neut
      00063B E0               [24] 2530 	movx	a,@dptr
      00063C FE               [12] 2531 	mov	r6,a
      00063D A3               [24] 2532 	inc	dptr
      00063E E0               [24] 2533 	movx	a,@dptr
      00063F FF               [12] 2534 	mov	r7,a
      000640 8E 4D            [24] 2535 	mov	_RUDDER_LEFT,r6
      000642 8F 4E            [24] 2536 	mov	(_RUDDER_LEFT + 1),r7
                           000577  2537 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$105$1$127 ==.
                                   2538 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:105: RUDDER_RIGHT = pw_neut;
      000644 8E 4F            [24] 2539 	mov	_RUDDER_RIGHT,r6
      000646 8F 50            [24] 2540 	mov	(_RUDDER_RIGHT + 1),r7
                           00057B  2541 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$106$1$127 ==.
                                   2542 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:106: rudder_pw = pw_neut;
      000648 8E 51            [24] 2543 	mov	_rudder_pw,r6
      00064A 8F 52            [24] 2544 	mov	(_rudder_pw + 1),r7
                           00057F  2545 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$107$1$127 ==.
                                   2546 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:107: PCA0CP0 = 0xFFFF - rudder_pw;
      00064C 74 FF            [12] 2547 	mov	a,#0xff
      00064E C3               [12] 2548 	clr	c
      00064F 95 51            [12] 2549 	subb	a,_rudder_pw
      000651 F5 EA            [12] 2550 	mov	((_PCA0CP0 >> 0) & 0xFF),a
      000653 74 FF            [12] 2551 	mov	a,#0xff
      000655 95 52            [12] 2552 	subb	a,(_rudder_pw + 1)
      000657 F5 FA            [12] 2553 	mov	((_PCA0CP0 >> 8) & 0xFF),a
                           00058C  2554 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$108$1$127 ==.
                                   2555 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:108: PCA0CP2 = 0xFFFF - RUDDER_LEFT;
      000659 74 FF            [12] 2556 	mov	a,#0xff
      00065B C3               [12] 2557 	clr	c
      00065C 95 4D            [12] 2558 	subb	a,_RUDDER_LEFT
      00065E F5 EC            [12] 2559 	mov	((_PCA0CP2 >> 0) & 0xFF),a
      000660 74 FF            [12] 2560 	mov	a,#0xff
      000662 95 4E            [12] 2561 	subb	a,(_RUDDER_LEFT + 1)
      000664 F5 FC            [12] 2562 	mov	((_PCA0CP2 >> 8) & 0xFF),a
                           000599  2563 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$109$1$127 ==.
                                   2564 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:109: PCA0CP3 = 0xFFFF - RUDDER_RIGHT;
      000666 74 FF            [12] 2565 	mov	a,#0xff
      000668 C3               [12] 2566 	clr	c
      000669 95 4F            [12] 2567 	subb	a,_RUDDER_RIGHT
      00066B F5 ED            [12] 2568 	mov	((_PCA0CP3 >> 0) & 0xFF),a
      00066D 74 FF            [12] 2569 	mov	a,#0xff
      00066F 95 50            [12] 2570 	subb	a,(_RUDDER_RIGHT + 1)
      000671 F5 FD            [12] 2571 	mov	((_PCA0CP3 >> 8) & 0xFF),a
                           0005A6  2572 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$110$1$127 ==.
                                   2573 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:110: Counts = 0;
      000673 E4               [12] 2574 	clr	a
      000674 F5 36            [12] 2575 	mov	_Counts,a
      000676 F5 37            [12] 2576 	mov	(_Counts + 1),a
                           0005AB  2577 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$111$1$127 ==.
                                   2578 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:111: while(Counts < 100);//Wait for two seconds
      000678                       2579 00104$:
      000678 C3               [12] 2580 	clr	c
      000679 E5 36            [12] 2581 	mov	a,_Counts
      00067B 94 64            [12] 2582 	subb	a,#0x64
      00067D E5 37            [12] 2583 	mov	a,(_Counts + 1)
      00067F 94 00            [12] 2584 	subb	a,#0x00
      000681 40 F5            [24] 2585 	jc	00104$
                           0005B6  2586 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$115$1$127 ==.
                                   2587 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:115: printf("Entering Main Loop\n");
      000683 74 7D            [12] 2588 	mov	a,#___str_5
      000685 C0 E0            [24] 2589 	push	acc
      000687 74 17            [12] 2590 	mov	a,#(___str_5 >> 8)
      000689 C0 E0            [24] 2591 	push	acc
      00068B 74 80            [12] 2592 	mov	a,#0x80
      00068D C0 E0            [24] 2593 	push	acc
      00068F 12 10 7A         [24] 2594 	lcall	_printf
      000692 15 81            [12] 2595 	dec	sp
      000694 15 81            [12] 2596 	dec	sp
      000696 15 81            [12] 2597 	dec	sp
                           0005CB  2598 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$116$1$127 ==.
                                   2599 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:116: lcd_clear();
      000698 12 01 CD         [24] 2600 	lcall	_lcd_clear
                           0005CE  2601 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$117$1$127 ==.
                                   2602 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:117: lcd_print("Starting Lab6\n");
      00069B 74 91            [12] 2603 	mov	a,#___str_6
      00069D C0 E0            [24] 2604 	push	acc
      00069F 74 17            [12] 2605 	mov	a,#(___str_6 >> 8)
      0006A1 C0 E0            [24] 2606 	push	acc
      0006A3 74 80            [12] 2607 	mov	a,#0x80
      0006A5 C0 E0            [24] 2608 	push	acc
      0006A7 12 01 48         [24] 2609 	lcall	_lcd_print
      0006AA 15 81            [12] 2610 	dec	sp
      0006AC 15 81            [12] 2611 	dec	sp
      0006AE 15 81            [12] 2612 	dec	sp
                           0005E3  2613 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$120$1$127 ==.
                                   2614 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:120: Set_Gain();
      0006B0 12 07 B5         [24] 2615 	lcall	_Set_Gain
                           0005E6  2616 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$121$1$127 ==.
                                   2617 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:121: Counts = 0;
      0006B3 E4               [12] 2618 	clr	a
      0006B4 F5 36            [12] 2619 	mov	_Counts,a
      0006B6 F5 37            [12] 2620 	mov	(_Counts + 1),a
                           0005EB  2621 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$122$1$127 ==.
                                   2622 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:122: while(Counts < 1500)
      0006B8                       2623 00107$:
      0006B8 C3               [12] 2624 	clr	c
      0006B9 E5 36            [12] 2625 	mov	a,_Counts
      0006BB 94 DC            [12] 2626 	subb	a,#0xdc
      0006BD E5 37            [12] 2627 	mov	a,(_Counts + 1)
      0006BF 94 05            [12] 2628 	subb	a,#0x05
      0006C1 50 05            [24] 2629 	jnc	00109$
                           0005F6  2630 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$124$2$128 ==.
                                   2631 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:124: CarControl();
      0006C3 12 09 DF         [24] 2632 	lcall	_CarControl
      0006C6 80 F0            [24] 2633 	sjmp	00107$
      0006C8                       2634 00109$:
                           0005FB  2635 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$128$1$127 ==.
                                   2636 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:128: RUDDER_LEFT = pw_neut;
      0006C8 90 00 57         [24] 2637 	mov	dptr,#_pw_neut
      0006CB E0               [24] 2638 	movx	a,@dptr
      0006CC FE               [12] 2639 	mov	r6,a
      0006CD A3               [24] 2640 	inc	dptr
      0006CE E0               [24] 2641 	movx	a,@dptr
      0006CF FF               [12] 2642 	mov	r7,a
      0006D0 8E 4D            [24] 2643 	mov	_RUDDER_LEFT,r6
      0006D2 8F 4E            [24] 2644 	mov	(_RUDDER_LEFT + 1),r7
                           000607  2645 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$129$1$127 ==.
                                   2646 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:129: RUDDER_RIGHT = pw_neut;
      0006D4 8E 4F            [24] 2647 	mov	_RUDDER_RIGHT,r6
      0006D6 8F 50            [24] 2648 	mov	(_RUDDER_RIGHT + 1),r7
                           00060B  2649 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$130$1$127 ==.
                                   2650 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:130: rudder_pw = pw_neut;
      0006D8 8E 51            [24] 2651 	mov	_rudder_pw,r6
      0006DA 8F 52            [24] 2652 	mov	(_rudder_pw + 1),r7
                           00060F  2653 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$131$1$127 ==.
                                   2654 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:131: PCA0CP0 = 0xFFFF - rudder_pw;
      0006DC 74 FF            [12] 2655 	mov	a,#0xff
      0006DE C3               [12] 2656 	clr	c
      0006DF 95 51            [12] 2657 	subb	a,_rudder_pw
      0006E1 F5 EA            [12] 2658 	mov	((_PCA0CP0 >> 0) & 0xFF),a
      0006E3 74 FF            [12] 2659 	mov	a,#0xff
      0006E5 95 52            [12] 2660 	subb	a,(_rudder_pw + 1)
      0006E7 F5 FA            [12] 2661 	mov	((_PCA0CP0 >> 8) & 0xFF),a
                           00061C  2662 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$132$1$127 ==.
                                   2663 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:132: PCA0CP2 = 0xFFFF - RUDDER_LEFT;
      0006E9 74 FF            [12] 2664 	mov	a,#0xff
      0006EB C3               [12] 2665 	clr	c
      0006EC 95 4D            [12] 2666 	subb	a,_RUDDER_LEFT
      0006EE F5 EC            [12] 2667 	mov	((_PCA0CP2 >> 0) & 0xFF),a
      0006F0 74 FF            [12] 2668 	mov	a,#0xff
      0006F2 95 4E            [12] 2669 	subb	a,(_RUDDER_LEFT + 1)
      0006F4 F5 FC            [12] 2670 	mov	((_PCA0CP2 >> 8) & 0xFF),a
                           000629  2671 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$133$1$127 ==.
                                   2672 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:133: PCA0CP3 = 0xFFFF - RUDDER_RIGHT;
      0006F6 74 FF            [12] 2673 	mov	a,#0xff
      0006F8 C3               [12] 2674 	clr	c
      0006F9 95 4F            [12] 2675 	subb	a,_RUDDER_RIGHT
      0006FB F5 ED            [12] 2676 	mov	((_PCA0CP3 >> 0) & 0xFF),a
      0006FD 74 FF            [12] 2677 	mov	a,#0xff
      0006FF 95 50            [12] 2678 	subb	a,(_RUDDER_RIGHT + 1)
      000701 F5 FD            [12] 2679 	mov	((_PCA0CP3 >> 8) & 0xFF),a
                           000636  2680 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$134$1$127 ==.
                                   2681 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:134: getchar();//Pause the system
      000703 12 01 21         [24] 2682 	lcall	_getchar
                           000639  2683 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$135$1$127 ==.
                           000639  2684 	XG$main$0$0 ==.
      000706 22               [24] 2685 	ret
                                   2686 ;------------------------------------------------------------
                                   2687 ;Allocation info for local variables in function 'Port_Init'
                                   2688 ;------------------------------------------------------------
                           00063A  2689 	G$Port_Init$0$0 ==.
                           00063A  2690 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$140$1$127 ==.
                                   2691 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:140: void Port_Init()
                                   2692 ;	-----------------------------------------
                                   2693 ;	 function Port_Init
                                   2694 ;	-----------------------------------------
      000707                       2695 _Port_Init:
                           00063A  2696 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$142$1$129 ==.
                                   2697 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:142: P1MDOUT |= 0xF0;//CEX0 Rudder, CEX1 Angle, CEX2 Left fan, CEX3 Right fan
      000707 43 A5 F0         [24] 2698 	orl	_P1MDOUT,#0xf0
                           00063D  2699 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$143$1$129 ==.
                           00063D  2700 	XG$Port_Init$0$0 ==.
      00070A 22               [24] 2701 	ret
                                   2702 ;------------------------------------------------------------
                                   2703 ;Allocation info for local variables in function 'XBR0_Init'
                                   2704 ;------------------------------------------------------------
                           00063E  2705 	G$XBR0_Init$0$0 ==.
                           00063E  2706 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$145$1$129 ==.
                                   2707 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:145: void XBR0_Init()
                                   2708 ;	-----------------------------------------
                                   2709 ;	 function XBR0_Init
                                   2710 ;	-----------------------------------------
      00070B                       2711 _XBR0_Init:
                           00063E  2712 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$147$1$130 ==.
                                   2713 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:147: XBR0 = 0x25;
      00070B 75 E1 25         [24] 2714 	mov	_XBR0,#0x25
                           000641  2715 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$149$1$130 ==.
                           000641  2716 	XG$XBR0_Init$0$0 ==.
      00070E 22               [24] 2717 	ret
                                   2718 ;------------------------------------------------------------
                                   2719 ;Allocation info for local variables in function 'ADC_Init'
                                   2720 ;------------------------------------------------------------
                           000642  2721 	G$ADC_Init$0$0 ==.
                           000642  2722 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$150$1$130 ==.
                                   2723 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:150: void ADC_Init(void)
                                   2724 ;	-----------------------------------------
                                   2725 ;	 function ADC_Init
                                   2726 ;	-----------------------------------------
      00070F                       2727 _ADC_Init:
                           000642  2728 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$152$1$132 ==.
                                   2729 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:152: REF0CN = 0x03;  /* Set Vref to use internal reference voltage (2.4V) */
      00070F 75 D1 03         [24] 2730 	mov	_REF0CN,#0x03
                           000645  2731 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$153$1$132 ==.
                                   2732 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:153: ADC1CN = 0x80;  /* Enable A/D converter (ADC1) */
      000712 75 AA 80         [24] 2733 	mov	_ADC1CN,#0x80
                           000648  2734 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$154$1$132 ==.
                                   2735 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:154: ADC1CF |= 0x01; /* Set A/D converter gain to 1 */
      000715 43 AB 01         [24] 2736 	orl	_ADC1CF,#0x01
                           00064B  2737 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$155$1$132 ==.
                           00064B  2738 	XG$ADC_Init$0$0 ==.
      000718 22               [24] 2739 	ret
                                   2740 ;------------------------------------------------------------
                                   2741 ;Allocation info for local variables in function 'read_ADC_value'
                                   2742 ;------------------------------------------------------------
                                   2743 ;n                         Allocated to registers 
                                   2744 ;------------------------------------------------------------
                           00064C  2745 	G$read_ADC_value$0$0 ==.
                           00064C  2746 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$156$1$132 ==.
                                   2747 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:156: unsigned int read_ADC_value(unsigned char n)
                                   2748 ;	-----------------------------------------
                                   2749 ;	 function read_ADC_value
                                   2750 ;	-----------------------------------------
      000719                       2751 _read_ADC_value:
      000719 85 82 AC         [24] 2752 	mov	_AMX1SL,dpl
                           00064F  2753 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$159$1$134 ==.
                                   2754 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:159: ADC1CN = ADC1CN & ~0x20; /* Clear the “Conversion Completed?flag */
      00071C 53 AA DF         [24] 2755 	anl	_ADC1CN,#0xdf
                           000652  2756 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$160$1$134 ==.
                                   2757 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:160: ADC1CN = ADC1CN | 0x10; /* Initiate A/D conversion */
      00071F 43 AA 10         [24] 2758 	orl	_ADC1CN,#0x10
                           000655  2759 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$161$1$134 ==.
                                   2760 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:161: while ((ADC1CN & 0x20) == 0x00); /* Wait for conversion to complete */
      000722                       2761 00101$:
      000722 E5 AA            [12] 2762 	mov	a,_ADC1CN
      000724 30 E5 FB         [24] 2763 	jnb	acc.5,00101$
                           00065A  2764 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$162$1$134 ==.
                                   2765 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:162: return ADC1 * 4.235; /* Return digital value in ADC1 register */
      000727 85 9C 82         [24] 2766 	mov	dpl,_ADC1
      00072A 12 16 91         [24] 2767 	lcall	___uchar2fs
      00072D AC 82            [24] 2768 	mov	r4,dpl
      00072F AD 83            [24] 2769 	mov	r5,dph
      000731 AE F0            [24] 2770 	mov	r6,b
      000733 FF               [12] 2771 	mov	r7,a
      000734 C0 04            [24] 2772 	push	ar4
      000736 C0 05            [24] 2773 	push	ar5
      000738 C0 06            [24] 2774 	push	ar6
      00073A C0 07            [24] 2775 	push	ar7
      00073C 90 85 1F         [24] 2776 	mov	dptr,#0x851f
      00073F 75 F0 87         [24] 2777 	mov	b,#0x87
      000742 74 40            [12] 2778 	mov	a,#0x40
      000744 12 0D 4A         [24] 2779 	lcall	___fsmul
      000747 AC 82            [24] 2780 	mov	r4,dpl
      000749 AD 83            [24] 2781 	mov	r5,dph
      00074B AE F0            [24] 2782 	mov	r6,b
      00074D FF               [12] 2783 	mov	r7,a
      00074E E5 81            [12] 2784 	mov	a,sp
      000750 24 FC            [12] 2785 	add	a,#0xfc
      000752 F5 81            [12] 2786 	mov	sp,a
      000754 8C 82            [24] 2787 	mov	dpl,r4
      000756 8D 83            [24] 2788 	mov	dph,r5
      000758 8E F0            [24] 2789 	mov	b,r6
      00075A EF               [12] 2790 	mov	a,r7
      00075B 12 0F FC         [24] 2791 	lcall	___fs2uint
                           000691  2792 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$163$1$134 ==.
                           000691  2793 	XG$read_ADC_value$0$0 ==.
      00075E 22               [24] 2794 	ret
                                   2795 ;------------------------------------------------------------
                                   2796 ;Allocation info for local variables in function 'PCA_Init'
                                   2797 ;------------------------------------------------------------
                           000692  2798 	G$PCA_Init$0$0 ==.
                           000692  2799 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$165$1$134 ==.
                                   2800 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:165: void PCA_Init(void)
                                   2801 ;	-----------------------------------------
                                   2802 ;	 function PCA_Init
                                   2803 ;	-----------------------------------------
      00075F                       2804 _PCA_Init:
                           000692  2805 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$167$1$136 ==.
                                   2806 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:167: PCA0CN = 0x40;
      00075F 75 D8 40         [24] 2807 	mov	_PCA0CN,#0x40
                           000695  2808 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$168$1$136 ==.
                                   2809 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:168: PCA0MD = 0x81;
      000762 75 D9 81         [24] 2810 	mov	_PCA0MD,#0x81
                           000698  2811 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$169$1$136 ==.
                                   2812 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:169: EIE1 |= 0x08;
      000765 43 E6 08         [24] 2813 	orl	_EIE1,#0x08
                           00069B  2814 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$170$1$136 ==.
                                   2815 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:170: EA = 1;
      000768 D2 AF            [12] 2816 	setb	_EA
                           00069D  2817 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$171$1$136 ==.
                                   2818 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:171: PCA0CPM0 = PCA0CPM2 = PCA0CPM3 = 0xC2;
      00076A 75 DD C2         [24] 2819 	mov	_PCA0CPM3,#0xc2
      00076D 75 DC C2         [24] 2820 	mov	_PCA0CPM2,#0xc2
      000770 75 DA C2         [24] 2821 	mov	_PCA0CPM0,#0xc2
                           0006A6  2822 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$172$1$136 ==.
                           0006A6  2823 	XG$PCA_Init$0$0 ==.
      000773 22               [24] 2824 	ret
                                   2825 ;------------------------------------------------------------
                                   2826 ;Allocation info for local variables in function 'SMB_Init'
                                   2827 ;------------------------------------------------------------
                           0006A7  2828 	G$SMB_Init$0$0 ==.
                           0006A7  2829 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$174$1$136 ==.
                                   2830 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:174: void SMB_Init(void)
                                   2831 ;	-----------------------------------------
                                   2832 ;	 function SMB_Init
                                   2833 ;	-----------------------------------------
      000774                       2834 _SMB_Init:
                           0006A7  2835 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$176$1$138 ==.
                                   2836 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:176: SMB0CR = 0x93; //100KHZ frequency
      000774 75 CF 93         [24] 2837 	mov	_SMB0CR,#0x93
                           0006AA  2838 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$177$1$138 ==.
                                   2839 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:177: ENSMB = 1; 
      000777 D2 C6            [12] 2840 	setb	_ENSMB
                           0006AC  2841 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$178$1$138 ==.
                           0006AC  2842 	XG$SMB_Init$0$0 ==.
      000779 22               [24] 2843 	ret
                                   2844 ;------------------------------------------------------------
                                   2845 ;Allocation info for local variables in function 'PCA_ISR'
                                   2846 ;------------------------------------------------------------
                           0006AD  2847 	G$PCA_ISR$0$0 ==.
                           0006AD  2848 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$180$1$138 ==.
                                   2849 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:180: void PCA_ISR ( void ) __interrupt 9
                                   2850 ;	-----------------------------------------
                                   2851 ;	 function PCA_ISR
                                   2852 ;	-----------------------------------------
      00077A                       2853 _PCA_ISR:
      00077A C0 E0            [24] 2854 	push	acc
      00077C C0 D0            [24] 2855 	push	psw
                           0006B1  2856 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$183$1$140 ==.
                                   2857 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:183: if(CF)
      00077E 30 DF 2C         [24] 2858 	jnb	_CF,00106$
                           0006B4  2859 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$185$2$141 ==.
                                   2860 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:185: Counts ++;
      000781 05 36            [12] 2861 	inc	_Counts
      000783 E4               [12] 2862 	clr	a
      000784 B5 36 02         [24] 2863 	cjne	a,_Counts,00119$
      000787 05 37            [12] 2864 	inc	(_Counts + 1)
      000789                       2865 00119$:
                           0006BC  2866 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$186$2$141 ==.
                                   2867 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:186: r_Counts++;
      000789 05 3F            [12] 2868 	inc	_r_Counts
                           0006BE  2869 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$187$2$141 ==.
                                   2870 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:187: h_Counts++;
      00078B 05 44            [12] 2871 	inc	_h_Counts
                           0006C0  2872 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$188$2$141 ==.
                                   2873 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:188: PCA0 = 65535 - 36864;//fixed period of 20ms
      00078D 75 E9 FF         [24] 2874 	mov	((_PCA0 >> 0) & 0xFF),#0xff
      000790 75 F9 6F         [24] 2875 	mov	((_PCA0 >> 8) & 0xFF),#0x6f
                           0006C6  2876 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$189$2$141 ==.
                                   2877 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:189: CF=0;//Clear flag
      000793 C2 DF            [12] 2878 	clr	_CF
                           0006C8  2879 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$191$2$141 ==.
                                   2880 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:191: if(r_Counts>=5)//5 overflows, 100 ms
      000795 74 FB            [12] 2881 	mov	a,#0x100 - 0x05
      000797 25 3F            [12] 2882 	add	a,_r_Counts
      000799 50 06            [24] 2883 	jnc	00102$
                           0006CE  2884 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$193$3$142 ==.
                                   2885 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:193: new_range = 1;
      00079B 75 40 01         [24] 2886 	mov	_new_range,#0x01
                           0006D1  2887 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$194$3$142 ==.
                                   2888 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:194: r_Counts = 0;
      00079E 75 3F 00         [24] 2889 	mov	_r_Counts,#0x00
      0007A1                       2890 00102$:
                           0006D4  2891 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$197$2$141 ==.
                                   2892 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:197: if(h_Counts>=2)//40ms
      0007A1 74 FE            [12] 2893 	mov	a,#0x100 - 0x02
      0007A3 25 44            [12] 2894 	add	a,_h_Counts
      0007A5 50 06            [24] 2895 	jnc	00106$
                           0006DA  2896 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$199$3$143 ==.
                                   2897 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:199: new_heading = 1;
      0007A7 75 43 01         [24] 2898 	mov	_new_heading,#0x01
                           0006DD  2899 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$200$3$143 ==.
                                   2900 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:200: h_Counts = 0;
      0007AA 75 44 00         [24] 2901 	mov	_h_Counts,#0x00
      0007AD                       2902 00106$:
                           0006E0  2903 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$204$1$140 ==.
                                   2904 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:204: PCA0CN &= 0x40;	
      0007AD 53 D8 40         [24] 2905 	anl	_PCA0CN,#0x40
      0007B0 D0 D0            [24] 2906 	pop	psw
      0007B2 D0 E0            [24] 2907 	pop	acc
                           0006E7  2908 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$205$1$140 ==.
                           0006E7  2909 	XG$PCA_ISR$0$0 ==.
      0007B4 32               [24] 2910 	reti
                                   2911 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   2912 ;	eliminated unneeded push/pop dpl
                                   2913 ;	eliminated unneeded push/pop dph
                                   2914 ;	eliminated unneeded push/pop b
                                   2915 ;------------------------------------------------------------
                                   2916 ;Allocation info for local variables in function 'Set_Gain'
                                   2917 ;------------------------------------------------------------
                                   2918 ;gain_stop                 Allocated to registers r7 
                                   2919 ;angle_stop                Allocated to registers r6 
                                   2920 ;input                     Allocated to registers r5 
                                   2921 ;------------------------------------------------------------
                           0006E8  2922 	G$Set_Gain$0$0 ==.
                           0006E8  2923 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$208$1$140 ==.
                                   2924 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:208: void Set_Gain()
                                   2925 ;	-----------------------------------------
                                   2926 ;	 function Set_Gain
                                   2927 ;	-----------------------------------------
      0007B5                       2928 _Set_Gain:
                           0006E8  2929 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$210$1$140 ==.
                                   2930 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:210: unsigned char gain_stop = 0;
      0007B5 7F 00            [12] 2931 	mov	r7,#0x00
                           0006EA  2932 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$211$1$140 ==.
                                   2933 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:211: unsigned char angle_stop = 0;
      0007B7 7E 00            [12] 2934 	mov	r6,#0x00
                           0006EC  2935 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$214$2$145 ==.
                                   2936 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:214: while(gain_stop == 0)
      0007B9                       2937 00112$:
      0007B9 EF               [12] 2938 	mov	a,r7
      0007BA 60 03            [24] 2939 	jz	00138$
      0007BC 02 09 DE         [24] 2940 	ljmp	00115$
      0007BF                       2941 00138$:
                           0006F2  2942 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$218$2$145 ==.
                                   2943 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:218: printf("\r\nSetting gains...");
      0007BF C0 06            [24] 2944 	push	ar6
      0007C1 74 A0            [12] 2945 	mov	a,#___str_7
      0007C3 C0 E0            [24] 2946 	push	acc
      0007C5 74 17            [12] 2947 	mov	a,#(___str_7 >> 8)
      0007C7 C0 E0            [24] 2948 	push	acc
      0007C9 74 80            [12] 2949 	mov	a,#0x80
      0007CB C0 E0            [24] 2950 	push	acc
      0007CD 12 10 7A         [24] 2951 	lcall	_printf
      0007D0 15 81            [12] 2952 	dec	sp
      0007D2 15 81            [12] 2953 	dec	sp
      0007D4 15 81            [12] 2954 	dec	sp
                           000709  2955 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$220$2$145 ==.
                                   2956 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:220: lcd_clear();
      0007D6 12 01 CD         [24] 2957 	lcall	_lcd_clear
                           00070C  2958 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$221$2$145 ==.
                                   2959 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:221: lcd_print("Enter desired \nheading:");
      0007D9 74 B3            [12] 2960 	mov	a,#___str_8
      0007DB C0 E0            [24] 2961 	push	acc
      0007DD 74 17            [12] 2962 	mov	a,#(___str_8 >> 8)
      0007DF C0 E0            [24] 2963 	push	acc
      0007E1 74 80            [12] 2964 	mov	a,#0x80
      0007E3 C0 E0            [24] 2965 	push	acc
      0007E5 12 01 48         [24] 2966 	lcall	_lcd_print
      0007E8 15 81            [12] 2967 	dec	sp
      0007EA 15 81            [12] 2968 	dec	sp
      0007EC 15 81            [12] 2969 	dec	sp
                           000721  2970 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$222$2$145 ==.
                                   2971 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:222: printf("\r\nEnter desired heading in keypad");
      0007EE 74 CB            [12] 2972 	mov	a,#___str_9
      0007F0 C0 E0            [24] 2973 	push	acc
      0007F2 74 17            [12] 2974 	mov	a,#(___str_9 >> 8)
      0007F4 C0 E0            [24] 2975 	push	acc
      0007F6 74 80            [12] 2976 	mov	a,#0x80
      0007F8 C0 E0            [24] 2977 	push	acc
      0007FA 12 10 7A         [24] 2978 	lcall	_printf
      0007FD 15 81            [12] 2979 	dec	sp
      0007FF 15 81            [12] 2980 	dec	sp
      000801 15 81            [12] 2981 	dec	sp
                           000736  2982 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$223$2$145 ==.
                                   2983 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:223: desired = kpd_input(1);
      000803 75 82 01         [24] 2984 	mov	dpl,#0x01
      000806 12 02 85         [24] 2985 	lcall	_kpd_input
      000809 85 82 45         [24] 2986 	mov	_desired,dpl
      00080C 85 83 46         [24] 2987 	mov	(_desired + 1),dph
                           000742  2988 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$224$2$145 ==.
                                   2989 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:224: printf("\r\ndesired: %u",desired);
      00080F C0 45            [24] 2990 	push	_desired
      000811 C0 46            [24] 2991 	push	(_desired + 1)
      000813 74 ED            [12] 2992 	mov	a,#___str_10
      000815 C0 E0            [24] 2993 	push	acc
      000817 74 17            [12] 2994 	mov	a,#(___str_10 >> 8)
      000819 C0 E0            [24] 2995 	push	acc
      00081B 74 80            [12] 2996 	mov	a,#0x80
      00081D C0 E0            [24] 2997 	push	acc
      00081F 12 10 7A         [24] 2998 	lcall	_printf
      000822 E5 81            [12] 2999 	mov	a,sp
      000824 24 FB            [12] 3000 	add	a,#0xfb
      000826 F5 81            [12] 3001 	mov	sp,a
                           00075B  3002 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$226$2$145 ==.
                                   3003 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:226: original_desired = desired; //must save for adjusting heading 
      000828 85 45 47         [24] 3004 	mov	_original_desired,_desired
      00082B 85 46 48         [24] 3005 	mov	(_original_desired + 1),(_desired + 1)
                           000761  3006 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$229$2$145 ==.
                                   3007 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:229: lcd_clear();
      00082E 12 01 CD         [24] 3008 	lcall	_lcd_clear
                           000764  3009 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$230$2$145 ==.
                                   3010 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:230: lcd_print("Enter kp:\n");
      000831 74 FB            [12] 3011 	mov	a,#___str_11
      000833 C0 E0            [24] 3012 	push	acc
      000835 74 17            [12] 3013 	mov	a,#(___str_11 >> 8)
      000837 C0 E0            [24] 3014 	push	acc
      000839 74 80            [12] 3015 	mov	a,#0x80
      00083B C0 E0            [24] 3016 	push	acc
      00083D 12 01 48         [24] 3017 	lcall	_lcd_print
      000840 15 81            [12] 3018 	dec	sp
      000842 15 81            [12] 3019 	dec	sp
      000844 15 81            [12] 3020 	dec	sp
                           000779  3021 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$231$2$145 ==.
                                   3022 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:231: printf("\r\nEnter kp in keypad");
      000846 74 06            [12] 3023 	mov	a,#___str_12
      000848 C0 E0            [24] 3024 	push	acc
      00084A 74 18            [12] 3025 	mov	a,#(___str_12 >> 8)
      00084C C0 E0            [24] 3026 	push	acc
      00084E 74 80            [12] 3027 	mov	a,#0x80
      000850 C0 E0            [24] 3028 	push	acc
      000852 12 10 7A         [24] 3029 	lcall	_printf
      000855 15 81            [12] 3030 	dec	sp
      000857 15 81            [12] 3031 	dec	sp
      000859 15 81            [12] 3032 	dec	sp
                           00078E  3033 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$232$2$145 ==.
                                   3034 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:232: kp = kpd_input(1);
      00085B 75 82 01         [24] 3035 	mov	dpl,#0x01
      00085E 12 02 85         [24] 3036 	lcall	_kpd_input
      000861 85 82 49         [24] 3037 	mov	_kp,dpl
      000864 85 83 4A         [24] 3038 	mov	(_kp + 1),dph
                           00079A  3039 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$233$2$145 ==.
                                   3040 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:233: printf("\r\nkp: %u",kp);
      000867 C0 49            [24] 3041 	push	_kp
      000869 C0 4A            [24] 3042 	push	(_kp + 1)
      00086B 74 1B            [12] 3043 	mov	a,#___str_13
      00086D C0 E0            [24] 3044 	push	acc
      00086F 74 18            [12] 3045 	mov	a,#(___str_13 >> 8)
      000871 C0 E0            [24] 3046 	push	acc
      000873 74 80            [12] 3047 	mov	a,#0x80
      000875 C0 E0            [24] 3048 	push	acc
      000877 12 10 7A         [24] 3049 	lcall	_printf
      00087A E5 81            [12] 3050 	mov	a,sp
      00087C 24 FB            [12] 3051 	add	a,#0xfb
      00087E F5 81            [12] 3052 	mov	sp,a
                           0007B3  3053 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$236$2$145 ==.
                                   3054 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:236: lcd_clear();
      000880 12 01 CD         [24] 3055 	lcall	_lcd_clear
                           0007B6  3056 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$237$2$145 ==.
                                   3057 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:237: lcd_print("Enter kd:\n");
      000883 74 24            [12] 3058 	mov	a,#___str_14
      000885 C0 E0            [24] 3059 	push	acc
      000887 74 18            [12] 3060 	mov	a,#(___str_14 >> 8)
      000889 C0 E0            [24] 3061 	push	acc
      00088B 74 80            [12] 3062 	mov	a,#0x80
      00088D C0 E0            [24] 3063 	push	acc
      00088F 12 01 48         [24] 3064 	lcall	_lcd_print
      000892 15 81            [12] 3065 	dec	sp
      000894 15 81            [12] 3066 	dec	sp
      000896 15 81            [12] 3067 	dec	sp
                           0007CB  3068 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$238$2$145 ==.
                                   3069 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:238: printf("\r\nEnter kd in keypad");
      000898 74 2F            [12] 3070 	mov	a,#___str_15
      00089A C0 E0            [24] 3071 	push	acc
      00089C 74 18            [12] 3072 	mov	a,#(___str_15 >> 8)
      00089E C0 E0            [24] 3073 	push	acc
      0008A0 74 80            [12] 3074 	mov	a,#0x80
      0008A2 C0 E0            [24] 3075 	push	acc
      0008A4 12 10 7A         [24] 3076 	lcall	_printf
      0008A7 15 81            [12] 3077 	dec	sp
      0008A9 15 81            [12] 3078 	dec	sp
      0008AB 15 81            [12] 3079 	dec	sp
                           0007E0  3080 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$239$2$145 ==.
                                   3081 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:239: kd = kpd_input(1);
      0008AD 75 82 01         [24] 3082 	mov	dpl,#0x01
      0008B0 12 02 85         [24] 3083 	lcall	_kpd_input
      0008B3 85 82 4B         [24] 3084 	mov	_kd,dpl
      0008B6 85 83 4C         [24] 3085 	mov	(_kd + 1),dph
                           0007EC  3086 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$240$2$145 ==.
                                   3087 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:240: printf("\r\nkd: %u",kd);
      0008B9 C0 4B            [24] 3088 	push	_kd
      0008BB C0 4C            [24] 3089 	push	(_kd + 1)
      0008BD 74 44            [12] 3090 	mov	a,#___str_16
      0008BF C0 E0            [24] 3091 	push	acc
      0008C1 74 18            [12] 3092 	mov	a,#(___str_16 >> 8)
      0008C3 C0 E0            [24] 3093 	push	acc
      0008C5 74 80            [12] 3094 	mov	a,#0x80
      0008C7 C0 E0            [24] 3095 	push	acc
      0008C9 12 10 7A         [24] 3096 	lcall	_printf
      0008CC E5 81            [12] 3097 	mov	a,sp
      0008CE 24 FB            [12] 3098 	add	a,#0xfb
      0008D0 F5 81            [12] 3099 	mov	sp,a
      0008D2 D0 06            [24] 3100 	pop	ar6
                           000807  3101 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$243$2$145 ==.
                                   3102 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:243: while(angle_stop == 0)
      0008D4                       3103 00109$:
      0008D4 EE               [12] 3104 	mov	a,r6
      0008D5 60 03            [24] 3105 	jz	00139$
      0008D7 02 09 D9         [24] 3106 	ljmp	00111$
      0008DA                       3107 00139$:
                           00080D  3108 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$245$3$146 ==.
                                   3109 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:245: printf("\r\nCurrent thrust angle pw: %u",thrust_angle);
      0008DA C0 06            [24] 3110 	push	ar6
      0008DC 90 00 51         [24] 3111 	mov	dptr,#_thrust_angle
      0008DF E0               [24] 3112 	movx	a,@dptr
      0008E0 C0 E0            [24] 3113 	push	acc
      0008E2 A3               [24] 3114 	inc	dptr
      0008E3 E0               [24] 3115 	movx	a,@dptr
      0008E4 C0 E0            [24] 3116 	push	acc
      0008E6 74 4D            [12] 3117 	mov	a,#___str_17
      0008E8 C0 E0            [24] 3118 	push	acc
      0008EA 74 18            [12] 3119 	mov	a,#(___str_17 >> 8)
      0008EC C0 E0            [24] 3120 	push	acc
      0008EE 74 80            [12] 3121 	mov	a,#0x80
      0008F0 C0 E0            [24] 3122 	push	acc
      0008F2 12 10 7A         [24] 3123 	lcall	_printf
      0008F5 E5 81            [12] 3124 	mov	a,sp
      0008F7 24 FB            [12] 3125 	add	a,#0xfb
      0008F9 F5 81            [12] 3126 	mov	sp,a
                           00082E  3127 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$246$3$146 ==.
                                   3128 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:246: printf("\r\nPress i to increase, d to decrease, and f to finalize\n\r");
      0008FB 74 6B            [12] 3129 	mov	a,#___str_18
      0008FD C0 E0            [24] 3130 	push	acc
      0008FF 74 18            [12] 3131 	mov	a,#(___str_18 >> 8)
      000901 C0 E0            [24] 3132 	push	acc
      000903 74 80            [12] 3133 	mov	a,#0x80
      000905 C0 E0            [24] 3134 	push	acc
      000907 12 10 7A         [24] 3135 	lcall	_printf
      00090A 15 81            [12] 3136 	dec	sp
      00090C 15 81            [12] 3137 	dec	sp
      00090E 15 81            [12] 3138 	dec	sp
                           000843  3139 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$247$3$146 ==.
                                   3140 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:247: input = getchar();
      000910 12 01 21         [24] 3141 	lcall	_getchar
      000913 AD 82            [24] 3142 	mov	r5,dpl
      000915 D0 06            [24] 3143 	pop	ar6
                           00084A  3144 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$248$3$146 ==.
                                   3145 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:248: if (input == 'f')
      000917 BD 66 23         [24] 3146 	cjne	r5,#0x66,00107$
                           00084D  3147 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$250$4$147 ==.
                                   3148 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:250: printf("\r\nFinal thrust angle: %u",thrust_angle);
      00091A 90 00 51         [24] 3149 	mov	dptr,#_thrust_angle
      00091D E0               [24] 3150 	movx	a,@dptr
      00091E C0 E0            [24] 3151 	push	acc
      000920 A3               [24] 3152 	inc	dptr
      000921 E0               [24] 3153 	movx	a,@dptr
      000922 C0 E0            [24] 3154 	push	acc
      000924 74 A5            [12] 3155 	mov	a,#___str_19
      000926 C0 E0            [24] 3156 	push	acc
      000928 74 18            [12] 3157 	mov	a,#(___str_19 >> 8)
      00092A C0 E0            [24] 3158 	push	acc
      00092C 74 80            [12] 3159 	mov	a,#0x80
      00092E C0 E0            [24] 3160 	push	acc
      000930 12 10 7A         [24] 3161 	lcall	_printf
      000933 E5 81            [12] 3162 	mov	a,sp
      000935 24 FB            [12] 3163 	add	a,#0xfb
      000937 F5 81            [12] 3164 	mov	sp,a
                           00086C  3165 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$251$4$147 ==.
                                   3166 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:251: angle_stop = 1;
      000939 7E 01            [12] 3167 	mov	r6,#0x01
      00093B 80 97            [24] 3168 	sjmp	00109$
      00093D                       3169 00107$:
                           000870  3170 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$252$3$146 ==.
                                   3171 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:252: }else if (input == 'i')
      00093D BD 69 46         [24] 3172 	cjne	r5,#0x69,00104$
                           000873  3173 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$254$4$148 ==.
                                   3174 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:254: thrust_angle += 15;
      000940 90 00 51         [24] 3175 	mov	dptr,#_thrust_angle
      000943 E0               [24] 3176 	movx	a,@dptr
      000944 FB               [12] 3177 	mov	r3,a
      000945 A3               [24] 3178 	inc	dptr
      000946 E0               [24] 3179 	movx	a,@dptr
      000947 FC               [12] 3180 	mov	r4,a
      000948 90 00 51         [24] 3181 	mov	dptr,#_thrust_angle
      00094B 74 0F            [12] 3182 	mov	a,#0x0f
      00094D 2B               [12] 3183 	add	a,r3
      00094E F0               [24] 3184 	movx	@dptr,a
      00094F E4               [12] 3185 	clr	a
      000950 3C               [12] 3186 	addc	a,r4
      000951 A3               [24] 3187 	inc	dptr
      000952 F0               [24] 3188 	movx	@dptr,a
                           000886  3189 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$255$4$148 ==.
                                   3190 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:255: PCA0CP1 = 0xFFFF - thrust_angle;
      000953 90 00 51         [24] 3191 	mov	dptr,#_thrust_angle
      000956 E0               [24] 3192 	movx	a,@dptr
      000957 FB               [12] 3193 	mov	r3,a
      000958 A3               [24] 3194 	inc	dptr
      000959 E0               [24] 3195 	movx	a,@dptr
      00095A FC               [12] 3196 	mov	r4,a
      00095B 74 FF            [12] 3197 	mov	a,#0xff
      00095D C3               [12] 3198 	clr	c
      00095E 9B               [12] 3199 	subb	a,r3
      00095F F5 EB            [12] 3200 	mov	((_PCA0CP1 >> 0) & 0xFF),a
      000961 74 FF            [12] 3201 	mov	a,#0xff
      000963 9C               [12] 3202 	subb	a,r4
      000964 F5 FB            [12] 3203 	mov	((_PCA0CP1 >> 8) & 0xFF),a
                           000899  3204 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$256$4$148 ==.
                                   3205 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:256: printf("\r\nIncreased THRUST_ANGLE_PW %u\r\n",thrust_angle);
      000966 C0 06            [24] 3206 	push	ar6
      000968 C0 03            [24] 3207 	push	ar3
      00096A C0 04            [24] 3208 	push	ar4
      00096C 74 BE            [12] 3209 	mov	a,#___str_20
      00096E C0 E0            [24] 3210 	push	acc
      000970 74 18            [12] 3211 	mov	a,#(___str_20 >> 8)
      000972 C0 E0            [24] 3212 	push	acc
      000974 74 80            [12] 3213 	mov	a,#0x80
      000976 C0 E0            [24] 3214 	push	acc
      000978 12 10 7A         [24] 3215 	lcall	_printf
      00097B E5 81            [12] 3216 	mov	a,sp
      00097D 24 FB            [12] 3217 	add	a,#0xfb
      00097F F5 81            [12] 3218 	mov	sp,a
      000981 D0 06            [24] 3219 	pop	ar6
      000983 02 08 D4         [24] 3220 	ljmp	00109$
      000986                       3221 00104$:
                           0008B9  3222 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$257$3$146 ==.
                                   3223 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:257: }else if (input == 'd')
      000986 BD 64 02         [24] 3224 	cjne	r5,#0x64,00144$
      000989 80 03            [24] 3225 	sjmp	00145$
      00098B                       3226 00144$:
      00098B 02 08 D4         [24] 3227 	ljmp	00109$
      00098E                       3228 00145$:
                           0008C1  3229 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$259$4$149 ==.
                                   3230 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:259: thrust_angle -= 15;
      00098E 90 00 51         [24] 3231 	mov	dptr,#_thrust_angle
      000991 E0               [24] 3232 	movx	a,@dptr
      000992 FC               [12] 3233 	mov	r4,a
      000993 A3               [24] 3234 	inc	dptr
      000994 E0               [24] 3235 	movx	a,@dptr
      000995 FD               [12] 3236 	mov	r5,a
      000996 EC               [12] 3237 	mov	a,r4
      000997 24 F1            [12] 3238 	add	a,#0xf1
      000999 FC               [12] 3239 	mov	r4,a
      00099A ED               [12] 3240 	mov	a,r5
      00099B 34 FF            [12] 3241 	addc	a,#0xff
      00099D FD               [12] 3242 	mov	r5,a
      00099E 90 00 51         [24] 3243 	mov	dptr,#_thrust_angle
      0009A1 EC               [12] 3244 	mov	a,r4
      0009A2 F0               [24] 3245 	movx	@dptr,a
      0009A3 ED               [12] 3246 	mov	a,r5
      0009A4 A3               [24] 3247 	inc	dptr
      0009A5 F0               [24] 3248 	movx	@dptr,a
                           0008D9  3249 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$260$4$149 ==.
                                   3250 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:260: PCA0CP1 = 0xFFFF - thrust_angle;
      0009A6 90 00 51         [24] 3251 	mov	dptr,#_thrust_angle
      0009A9 E0               [24] 3252 	movx	a,@dptr
      0009AA FC               [12] 3253 	mov	r4,a
      0009AB A3               [24] 3254 	inc	dptr
      0009AC E0               [24] 3255 	movx	a,@dptr
      0009AD FD               [12] 3256 	mov	r5,a
      0009AE 74 FF            [12] 3257 	mov	a,#0xff
      0009B0 C3               [12] 3258 	clr	c
      0009B1 9C               [12] 3259 	subb	a,r4
      0009B2 F5 EB            [12] 3260 	mov	((_PCA0CP1 >> 0) & 0xFF),a
      0009B4 74 FF            [12] 3261 	mov	a,#0xff
      0009B6 9D               [12] 3262 	subb	a,r5
      0009B7 F5 FB            [12] 3263 	mov	((_PCA0CP1 >> 8) & 0xFF),a
                           0008EC  3264 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$261$4$149 ==.
                                   3265 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:261: printf("\r\nDecreased THRUST_ANGLE_PW %u\r\n",thrust_angle);
      0009B9 C0 06            [24] 3266 	push	ar6
      0009BB C0 04            [24] 3267 	push	ar4
      0009BD C0 05            [24] 3268 	push	ar5
      0009BF 74 DF            [12] 3269 	mov	a,#___str_21
      0009C1 C0 E0            [24] 3270 	push	acc
      0009C3 74 18            [12] 3271 	mov	a,#(___str_21 >> 8)
      0009C5 C0 E0            [24] 3272 	push	acc
      0009C7 74 80            [12] 3273 	mov	a,#0x80
      0009C9 C0 E0            [24] 3274 	push	acc
      0009CB 12 10 7A         [24] 3275 	lcall	_printf
      0009CE E5 81            [12] 3276 	mov	a,sp
      0009D0 24 FB            [12] 3277 	add	a,#0xfb
      0009D2 F5 81            [12] 3278 	mov	sp,a
      0009D4 D0 06            [24] 3279 	pop	ar6
      0009D6 02 08 D4         [24] 3280 	ljmp	00109$
      0009D9                       3281 00111$:
                           00090C  3282 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$265$2$145 ==.
                                   3283 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:265: gain_stop = 1;
      0009D9 7F 01            [12] 3284 	mov	r7,#0x01
      0009DB 02 07 B9         [24] 3285 	ljmp	00112$
      0009DE                       3286 00115$:
                           000911  3287 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$267$1$144 ==.
                           000911  3288 	XG$Set_Gain$0$0 ==.
      0009DE 22               [24] 3289 	ret
                                   3290 ;------------------------------------------------------------
                                   3291 ;Allocation info for local variables in function 'CarControl'
                                   3292 ;------------------------------------------------------------
                           000912  3293 	G$CarControl$0$0 ==.
                           000912  3294 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$269$1$144 ==.
                                   3295 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:269: void CarControl()
                                   3296 ;	-----------------------------------------
                                   3297 ;	 function CarControl
                                   3298 ;	-----------------------------------------
      0009DF                       3299 _CarControl:
                           000912  3300 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$271$1$150 ==.
                                   3301 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:271: if(new_heading)//Check Flag 
      0009DF E5 43            [12] 3302 	mov	a,_new_heading
      0009E1 60 3F            [24] 3303 	jz	00102$
                           000916  3304 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$274$2$151 ==.
                                   3305 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:274: heading = ReadCompass();
      0009E3 12 0D 1E         [24] 3306 	lcall	_ReadCompass
      0009E6 85 82 41         [24] 3307 	mov	_heading,dpl
      0009E9 85 83 42         [24] 3308 	mov	(_heading + 1),dph
                           00091F  3309 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$275$2$151 ==.
                                   3310 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:275: new_heading = 0; //reset the flag
      0009EC 75 43 00         [24] 3311 	mov	_new_heading,#0x00
                           000922  3312 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$278$2$151 ==.
                                   3313 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:278: Set_Motor();
      0009EF 12 0A 6D         [24] 3314 	lcall	_Set_Motor
                           000925  3315 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$281$2$151 ==.
                                   3316 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:281: voltage = read_ADC_value(3);
      0009F2 75 82 03         [24] 3317 	mov	dpl,#0x03
      0009F5 12 07 19         [24] 3318 	lcall	_read_ADC_value
      0009F8 85 82 38         [24] 3319 	mov	_voltage,dpl
      0009FB 85 83 39         [24] 3320 	mov	(_voltage + 1),dph
                           000931  3321 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$282$2$151 ==.
                                   3322 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:282: lcd_clear();
      0009FE 12 01 CD         [24] 3323 	lcall	_lcd_clear
                           000934  3324 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$283$2$151 ==.
                                   3325 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:283: lcd_print("\nBattery %u,\nHeading %u,\n Reading %u\n", voltage, heading, range);  
      000A01 C0 3D            [24] 3326 	push	_range
      000A03 C0 3E            [24] 3327 	push	(_range + 1)
      000A05 C0 41            [24] 3328 	push	_heading
      000A07 C0 42            [24] 3329 	push	(_heading + 1)
      000A09 C0 38            [24] 3330 	push	_voltage
      000A0B C0 39            [24] 3331 	push	(_voltage + 1)
      000A0D 74 00            [12] 3332 	mov	a,#___str_22
      000A0F C0 E0            [24] 3333 	push	acc
      000A11 74 19            [12] 3334 	mov	a,#(___str_22 >> 8)
      000A13 C0 E0            [24] 3335 	push	acc
      000A15 74 80            [12] 3336 	mov	a,#0x80
      000A17 C0 E0            [24] 3337 	push	acc
      000A19 12 01 48         [24] 3338 	lcall	_lcd_print
      000A1C E5 81            [12] 3339 	mov	a,sp
      000A1E 24 F7            [12] 3340 	add	a,#0xf7
      000A20 F5 81            [12] 3341 	mov	sp,a
      000A22                       3342 00102$:
                           000955  3343 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$286$1$150 ==.
                                   3344 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:286: if(new_range)//Check Flag
      000A22 E5 40            [12] 3345 	mov	a,_new_range
      000A24 60 46            [24] 3346 	jz	00105$
                           000959  3347 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$289$2$152 ==.
                                   3348 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:289: dist = ReadRanger();
      000A26 12 0C F2         [24] 3349 	lcall	_ReadRanger
      000A29 AE 82            [24] 3350 	mov	r6,dpl
      000A2B 8E 3A            [24] 3351 	mov	_dist,r6
                           000960  3352 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$290$2$152 ==.
                                   3353 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:290: r_Data[0] = 0x51;//reading in cm
      000A2D 75 3B 51         [24] 3354 	mov	_r_Data,#0x51
                           000963  3355 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$291$2$152 ==.
                                   3356 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:291: i2c_write_data(0xE0,0,r_Data,1);
      000A30 75 2D 3B         [24] 3357 	mov	_i2c_write_data_PARM_3,#_r_Data
      000A33 75 2E 00         [24] 3358 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      000A36 75 2F 40         [24] 3359 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      000A39 75 2C 00         [24] 3360 	mov	_i2c_write_data_PARM_2,#0x00
      000A3C 75 30 01         [24] 3361 	mov	_i2c_write_data_PARM_4,#0x01
      000A3F 75 82 E0         [24] 3362 	mov	dpl,#0xe0
      000A42 12 04 59         [24] 3363 	lcall	_i2c_write_data
                           000978  3364 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$292$2$152 ==.
                                   3365 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:292: new_range = 0;
      000A45 75 40 00         [24] 3366 	mov	_new_range,#0x00
                           00097B  3367 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$293$2$152 ==.
                                   3368 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:293: printf("\nHeading: %u, PW right %u, PW left %u\r", heading, RUDDER_RIGHT, RUDDER_LEFT);
      000A48 C0 4D            [24] 3369 	push	_RUDDER_LEFT
      000A4A C0 4E            [24] 3370 	push	(_RUDDER_LEFT + 1)
      000A4C C0 4F            [24] 3371 	push	_RUDDER_RIGHT
      000A4E C0 50            [24] 3372 	push	(_RUDDER_RIGHT + 1)
      000A50 C0 41            [24] 3373 	push	_heading
      000A52 C0 42            [24] 3374 	push	(_heading + 1)
      000A54 74 26            [12] 3375 	mov	a,#___str_23
      000A56 C0 E0            [24] 3376 	push	acc
      000A58 74 19            [12] 3377 	mov	a,#(___str_23 >> 8)
      000A5A C0 E0            [24] 3378 	push	acc
      000A5C 74 80            [12] 3379 	mov	a,#0x80
      000A5E C0 E0            [24] 3380 	push	acc
      000A60 12 10 7A         [24] 3381 	lcall	_printf
      000A63 E5 81            [12] 3382 	mov	a,sp
      000A65 24 F7            [12] 3383 	add	a,#0xf7
      000A67 F5 81            [12] 3384 	mov	sp,a
                           00099C  3385 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$296$2$152 ==.
                                   3386 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:296: Heading_Control();
      000A69 12 0C D9         [24] 3387 	lcall	_Heading_Control
      000A6C                       3388 00105$:
                           00099F  3389 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$298$1$150 ==.
                           00099F  3390 	XG$CarControl$0$0 ==.
      000A6C 22               [24] 3391 	ret
                                   3392 ;------------------------------------------------------------
                                   3393 ;Allocation info for local variables in function 'Set_Motor'
                                   3394 ;------------------------------------------------------------
                                   3395 ;sloc0                     Allocated with name '_Set_Motor_sloc0_1_0'
                                   3396 ;------------------------------------------------------------
                           0009A0  3397 	G$Set_Motor$0$0 ==.
                           0009A0  3398 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$300$1$150 ==.
                                   3399 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:300: void Set_Motor()
                                   3400 ;	-----------------------------------------
                                   3401 ;	 function Set_Motor
                                   3402 ;	-----------------------------------------
      000A6D                       3403 _Set_Motor:
                           0009A0  3404 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$302$1$153 ==.
                                   3405 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:302: error = desired - heading;	
      000A6D E5 45            [12] 3406 	mov	a,_desired
      000A6F C3               [12] 3407 	clr	c
      000A70 95 41            [12] 3408 	subb	a,_heading
      000A72 F5 57            [12] 3409 	mov	_error,a
      000A74 E5 46            [12] 3410 	mov	a,(_desired + 1)
      000A76 95 42            [12] 3411 	subb	a,(_heading + 1)
      000A78 F5 58            [12] 3412 	mov	(_error + 1),a
                           0009AD  3413 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$305$1$153 ==.
                                   3414 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:305: if (error > 1800)
      000A7A C3               [12] 3415 	clr	c
      000A7B 74 08            [12] 3416 	mov	a,#0x08
      000A7D 95 57            [12] 3417 	subb	a,_error
      000A7F 74 87            [12] 3418 	mov	a,#(0x07 ^ 0x80)
      000A81 85 58 F0         [24] 3419 	mov	b,(_error + 1)
      000A84 63 F0 80         [24] 3420 	xrl	b,#0x80
      000A87 95 F0            [12] 3421 	subb	a,b
      000A89 50 0E            [24] 3422 	jnc	00104$
                           0009BE  3423 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$307$2$154 ==.
                                   3424 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:307: error -= 3600;
      000A8B E5 57            [12] 3425 	mov	a,_error
      000A8D 24 F0            [12] 3426 	add	a,#0xf0
      000A8F F5 57            [12] 3427 	mov	_error,a
      000A91 E5 58            [12] 3428 	mov	a,(_error + 1)
      000A93 34 F1            [12] 3429 	addc	a,#0xf1
      000A95 F5 58            [12] 3430 	mov	(_error + 1),a
      000A97 80 19            [24] 3431 	sjmp	00105$
      000A99                       3432 00104$:
                           0009CC  3433 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$308$1$153 ==.
                                   3434 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:308: }else if (error < -1800)
      000A99 C3               [12] 3435 	clr	c
      000A9A E5 57            [12] 3436 	mov	a,_error
      000A9C 94 F8            [12] 3437 	subb	a,#0xf8
      000A9E E5 58            [12] 3438 	mov	a,(_error + 1)
      000AA0 64 80            [12] 3439 	xrl	a,#0x80
      000AA2 94 78            [12] 3440 	subb	a,#0x78
      000AA4 50 0C            [24] 3441 	jnc	00105$
                           0009D9  3442 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$310$2$155 ==.
                                   3443 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:310: error += 3600;
      000AA6 74 10            [12] 3444 	mov	a,#0x10
      000AA8 25 57            [12] 3445 	add	a,_error
      000AAA F5 57            [12] 3446 	mov	_error,a
      000AAC 74 0E            [12] 3447 	mov	a,#0x0e
      000AAE 35 58            [12] 3448 	addc	a,(_error + 1)
      000AB0 F5 58            [12] 3449 	mov	(_error + 1),a
      000AB2                       3450 00105$:
                           0009E5  3451 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$317$1$153 ==.
                                   3452 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:317: if (abs(error - previous_error) > 100)
      000AB2 E5 57            [12] 3453 	mov	a,_error
      000AB4 C3               [12] 3454 	clr	c
      000AB5 95 59            [12] 3455 	subb	a,_previous_error
      000AB7 F5 82            [12] 3456 	mov	dpl,a
      000AB9 E5 58            [12] 3457 	mov	a,(_error + 1)
      000ABB 95 5A            [12] 3458 	subb	a,(_previous_error + 1)
      000ABD F5 83            [12] 3459 	mov	dph,a
      000ABF 12 0E 69         [24] 3460 	lcall	_abs
      000AC2 AE 82            [24] 3461 	mov	r6,dpl
      000AC4 AF 83            [24] 3462 	mov	r7,dph
      000AC6 C3               [12] 3463 	clr	c
      000AC7 74 64            [12] 3464 	mov	a,#0x64
      000AC9 9E               [12] 3465 	subb	a,r6
      000ACA 74 80            [12] 3466 	mov	a,#(0x00 ^ 0x80)
      000ACC 8F F0            [24] 3467 	mov	b,r7
      000ACE 63 F0 80         [24] 3468 	xrl	b,#0x80
      000AD1 95 F0            [12] 3469 	subb	a,b
      000AD3 40 03            [24] 3470 	jc	00143$
      000AD5 02 0B 56         [24] 3471 	ljmp	00107$
      000AD8                       3472 00143$:
                           000A0B  3473 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$320$2$156 ==.
                                   3474 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:320: temp_motorpw = (signed long)kp*(signed long)error+(signed long)kd*(signed long)(error-previous_error);
      000AD8 AC 49            [24] 3475 	mov	r4,_kp
      000ADA AD 4A            [24] 3476 	mov	r5,(_kp + 1)
      000ADC 7E 00            [12] 3477 	mov	r6,#0x00
      000ADE 7F 00            [12] 3478 	mov	r7,#0x00
      000AE0 85 57 11         [24] 3479 	mov	__mullong_PARM_2,_error
      000AE3 E5 58            [12] 3480 	mov	a,(_error + 1)
      000AE5 F5 12            [12] 3481 	mov	(__mullong_PARM_2 + 1),a
      000AE7 33               [12] 3482 	rlc	a
      000AE8 95 E0            [12] 3483 	subb	a,acc
      000AEA F5 13            [12] 3484 	mov	(__mullong_PARM_2 + 2),a
      000AEC F5 14            [12] 3485 	mov	(__mullong_PARM_2 + 3),a
      000AEE 8C 82            [24] 3486 	mov	dpl,r4
      000AF0 8D 83            [24] 3487 	mov	dph,r5
      000AF2 8E F0            [24] 3488 	mov	b,r6
      000AF4 EF               [12] 3489 	mov	a,r7
      000AF5 12 0F 8E         [24] 3490 	lcall	__mullong
      000AF8 AC 82            [24] 3491 	mov	r4,dpl
      000AFA AD 83            [24] 3492 	mov	r5,dph
      000AFC AE F0            [24] 3493 	mov	r6,b
      000AFE FF               [12] 3494 	mov	r7,a
      000AFF 85 4B 5B         [24] 3495 	mov	_Set_Motor_sloc0_1_0,_kd
      000B02 85 4C 5C         [24] 3496 	mov	(_Set_Motor_sloc0_1_0 + 1),(_kd + 1)
      000B05 E4               [12] 3497 	clr	a
      000B06 F5 5D            [12] 3498 	mov	(_Set_Motor_sloc0_1_0 + 2),a
      000B08 F5 5E            [12] 3499 	mov	(_Set_Motor_sloc0_1_0 + 3),a
      000B0A E5 57            [12] 3500 	mov	a,_error
      000B0C C3               [12] 3501 	clr	c
      000B0D 95 59            [12] 3502 	subb	a,_previous_error
      000B0F FA               [12] 3503 	mov	r2,a
      000B10 E5 58            [12] 3504 	mov	a,(_error + 1)
      000B12 95 5A            [12] 3505 	subb	a,(_previous_error + 1)
      000B14 8A 11            [24] 3506 	mov	__mullong_PARM_2,r2
      000B16 F5 12            [12] 3507 	mov	(__mullong_PARM_2 + 1),a
      000B18 33               [12] 3508 	rlc	a
      000B19 95 E0            [12] 3509 	subb	a,acc
      000B1B F5 13            [12] 3510 	mov	(__mullong_PARM_2 + 2),a
      000B1D F5 14            [12] 3511 	mov	(__mullong_PARM_2 + 3),a
      000B1F 85 5B 82         [24] 3512 	mov	dpl,_Set_Motor_sloc0_1_0
      000B22 85 5C 83         [24] 3513 	mov	dph,(_Set_Motor_sloc0_1_0 + 1)
      000B25 85 5D F0         [24] 3514 	mov	b,(_Set_Motor_sloc0_1_0 + 2)
      000B28 E5 5E            [12] 3515 	mov	a,(_Set_Motor_sloc0_1_0 + 3)
      000B2A C0 07            [24] 3516 	push	ar7
      000B2C C0 06            [24] 3517 	push	ar6
      000B2E C0 05            [24] 3518 	push	ar5
      000B30 C0 04            [24] 3519 	push	ar4
      000B32 12 0F 8E         [24] 3520 	lcall	__mullong
      000B35 A8 82            [24] 3521 	mov	r0,dpl
      000B37 A9 83            [24] 3522 	mov	r1,dph
      000B39 AA F0            [24] 3523 	mov	r2,b
      000B3B FB               [12] 3524 	mov	r3,a
      000B3C D0 04            [24] 3525 	pop	ar4
      000B3E D0 05            [24] 3526 	pop	ar5
      000B40 D0 06            [24] 3527 	pop	ar6
      000B42 D0 07            [24] 3528 	pop	ar7
      000B44 E8               [12] 3529 	mov	a,r0
      000B45 2C               [12] 3530 	add	a,r4
      000B46 F5 53            [12] 3531 	mov	_temp_motorpw,a
      000B48 E9               [12] 3532 	mov	a,r1
      000B49 3D               [12] 3533 	addc	a,r5
      000B4A F5 54            [12] 3534 	mov	(_temp_motorpw + 1),a
      000B4C EA               [12] 3535 	mov	a,r2
      000B4D 3E               [12] 3536 	addc	a,r6
      000B4E F5 55            [12] 3537 	mov	(_temp_motorpw + 2),a
      000B50 EB               [12] 3538 	mov	a,r3
      000B51 3F               [12] 3539 	addc	a,r7
      000B52 F5 56            [12] 3540 	mov	(_temp_motorpw + 3),a
      000B54 80 2B            [24] 3541 	sjmp	00108$
      000B56                       3542 00107$:
                           000A89  3543 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$324$2$157 ==.
                                   3544 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:324: temp_motorpw = (signed long)kp*(signed long)error;
      000B56 AC 49            [24] 3545 	mov	r4,_kp
      000B58 AD 4A            [24] 3546 	mov	r5,(_kp + 1)
      000B5A 7E 00            [12] 3547 	mov	r6,#0x00
      000B5C 7F 00            [12] 3548 	mov	r7,#0x00
      000B5E 85 57 11         [24] 3549 	mov	__mullong_PARM_2,_error
      000B61 E5 58            [12] 3550 	mov	a,(_error + 1)
      000B63 F5 12            [12] 3551 	mov	(__mullong_PARM_2 + 1),a
      000B65 33               [12] 3552 	rlc	a
      000B66 95 E0            [12] 3553 	subb	a,acc
      000B68 F5 13            [12] 3554 	mov	(__mullong_PARM_2 + 2),a
      000B6A F5 14            [12] 3555 	mov	(__mullong_PARM_2 + 3),a
      000B6C 8C 82            [24] 3556 	mov	dpl,r4
      000B6E 8D 83            [24] 3557 	mov	dph,r5
      000B70 8E F0            [24] 3558 	mov	b,r6
      000B72 EF               [12] 3559 	mov	a,r7
      000B73 12 0F 8E         [24] 3560 	lcall	__mullong
      000B76 85 82 53         [24] 3561 	mov	_temp_motorpw,dpl
      000B79 85 83 54         [24] 3562 	mov	(_temp_motorpw + 1),dph
      000B7C 85 F0 55         [24] 3563 	mov	(_temp_motorpw + 2),b
      000B7F F5 56            [12] 3564 	mov	(_temp_motorpw + 3),a
      000B81                       3565 00108$:
                           000AB4  3566 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$327$1$153 ==.
                                   3567 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:327: previous_error = error; //Place into old error
      000B81 85 57 59         [24] 3568 	mov	_previous_error,_error
      000B84 85 58 5A         [24] 3569 	mov	(_previous_error + 1),(_error + 1)
                           000ABA  3570 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$330$1$153 ==.
                                   3571 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:330: if (temp_motorpw > 737)
      000B87 C3               [12] 3572 	clr	c
      000B88 74 E1            [12] 3573 	mov	a,#0xe1
      000B8A 95 53            [12] 3574 	subb	a,_temp_motorpw
      000B8C 74 02            [12] 3575 	mov	a,#0x02
      000B8E 95 54            [12] 3576 	subb	a,(_temp_motorpw + 1)
      000B90 E4               [12] 3577 	clr	a
      000B91 95 55            [12] 3578 	subb	a,(_temp_motorpw + 2)
      000B93 74 80            [12] 3579 	mov	a,#(0x00 ^ 0x80)
      000B95 85 56 F0         [24] 3580 	mov	b,(_temp_motorpw + 3)
      000B98 63 F0 80         [24] 3581 	xrl	b,#0x80
      000B9B 95 F0            [12] 3582 	subb	a,b
      000B9D 50 0B            [24] 3583 	jnc	00110$
                           000AD2  3584 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$332$2$158 ==.
                                   3585 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:332: temp_motorpw = 737;//set maximum difference
      000B9F 75 53 E1         [24] 3586 	mov	_temp_motorpw,#0xe1
      000BA2 75 54 02         [24] 3587 	mov	(_temp_motorpw + 1),#0x02
      000BA5 E4               [12] 3588 	clr	a
      000BA6 F5 55            [12] 3589 	mov	(_temp_motorpw + 2),a
      000BA8 F5 56            [12] 3590 	mov	(_temp_motorpw + 3),a
      000BAA                       3591 00110$:
                           000ADD  3592 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$334$1$153 ==.
                                   3593 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:334: if (temp_motorpw < -737)
      000BAA C3               [12] 3594 	clr	c
      000BAB E5 53            [12] 3595 	mov	a,_temp_motorpw
      000BAD 94 1F            [12] 3596 	subb	a,#0x1f
      000BAF E5 54            [12] 3597 	mov	a,(_temp_motorpw + 1)
      000BB1 94 FD            [12] 3598 	subb	a,#0xfd
      000BB3 E5 55            [12] 3599 	mov	a,(_temp_motorpw + 2)
      000BB5 94 FF            [12] 3600 	subb	a,#0xff
      000BB7 E5 56            [12] 3601 	mov	a,(_temp_motorpw + 3)
      000BB9 64 80            [12] 3602 	xrl	a,#0x80
      000BBB 94 7F            [12] 3603 	subb	a,#0x7f
      000BBD 50 0C            [24] 3604 	jnc	00112$
                           000AF2  3605 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$336$2$159 ==.
                                   3606 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:336: temp_motorpw = -737;//set minimum difference
      000BBF 75 53 1F         [24] 3607 	mov	_temp_motorpw,#0x1f
      000BC2 75 54 FD         [24] 3608 	mov	(_temp_motorpw + 1),#0xfd
      000BC5 75 55 FF         [24] 3609 	mov	(_temp_motorpw + 2),#0xff
      000BC8 75 56 FF         [24] 3610 	mov	(_temp_motorpw + 3),#0xff
      000BCB                       3611 00112$:
                           000AFE  3612 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$340$1$153 ==.
                                   3613 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:340: if (temp_motorpw < pw_neut)
      000BCB 90 00 57         [24] 3614 	mov	dptr,#_pw_neut
      000BCE E0               [24] 3615 	movx	a,@dptr
      000BCF FE               [12] 3616 	mov	r6,a
      000BD0 A3               [24] 3617 	inc	dptr
      000BD1 E0               [24] 3618 	movx	a,@dptr
      000BD2 FF               [12] 3619 	mov	r7,a
      000BD3 33               [12] 3620 	rlc	a
      000BD4 95 E0            [12] 3621 	subb	a,acc
      000BD6 FD               [12] 3622 	mov	r5,a
      000BD7 FC               [12] 3623 	mov	r4,a
      000BD8 C3               [12] 3624 	clr	c
      000BD9 E5 53            [12] 3625 	mov	a,_temp_motorpw
      000BDB 9E               [12] 3626 	subb	a,r6
      000BDC E5 54            [12] 3627 	mov	a,(_temp_motorpw + 1)
      000BDE 9F               [12] 3628 	subb	a,r7
      000BDF E5 55            [12] 3629 	mov	a,(_temp_motorpw + 2)
      000BE1 9D               [12] 3630 	subb	a,r5
      000BE2 E5 56            [12] 3631 	mov	a,(_temp_motorpw + 3)
      000BE4 64 80            [12] 3632 	xrl	a,#0x80
      000BE6 8C F0            [24] 3633 	mov	b,r4
      000BE8 63 F0 80         [24] 3634 	xrl	b,#0x80
      000BEB 95 F0            [12] 3635 	subb	a,b
      000BED 50 64            [24] 3636 	jnc	00116$
                           000B22  3637 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$343$2$160 ==.
                                   3638 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:343: rudder_pw = pw_neut - temp_motorpw;
      000BEF 90 00 57         [24] 3639 	mov	dptr,#_pw_neut
      000BF2 E0               [24] 3640 	movx	a,@dptr
      000BF3 FE               [12] 3641 	mov	r6,a
      000BF4 A3               [24] 3642 	inc	dptr
      000BF5 E0               [24] 3643 	movx	a,@dptr
      000BF6 FF               [12] 3644 	mov	r7,a
      000BF7 33               [12] 3645 	rlc	a
      000BF8 95 E0            [12] 3646 	subb	a,acc
      000BFA FD               [12] 3647 	mov	r5,a
      000BFB FC               [12] 3648 	mov	r4,a
      000BFC EE               [12] 3649 	mov	a,r6
      000BFD C3               [12] 3650 	clr	c
      000BFE 95 53            [12] 3651 	subb	a,_temp_motorpw
      000C00 F8               [12] 3652 	mov	r0,a
      000C01 EF               [12] 3653 	mov	a,r7
      000C02 95 54            [12] 3654 	subb	a,(_temp_motorpw + 1)
      000C04 F9               [12] 3655 	mov	r1,a
      000C05 ED               [12] 3656 	mov	a,r5
      000C06 95 55            [12] 3657 	subb	a,(_temp_motorpw + 2)
      000C08 FA               [12] 3658 	mov	r2,a
      000C09 EC               [12] 3659 	mov	a,r4
      000C0A 95 56            [12] 3660 	subb	a,(_temp_motorpw + 3)
      000C0C FB               [12] 3661 	mov	r3,a
      000C0D 88 51            [24] 3662 	mov	_rudder_pw,r0
      000C0F 89 52            [24] 3663 	mov	(_rudder_pw + 1),r1
                           000B44  3664 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$345$2$160 ==.
                                   3665 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:345: RUDDER_RIGHT = pw_neut - temp_motorpw;
      000C11 88 4F            [24] 3666 	mov	_RUDDER_RIGHT,r0
      000C13 89 50            [24] 3667 	mov	(_RUDDER_RIGHT + 1),r1
                           000B48  3668 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$348$2$160 ==.
                                   3669 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:348: RUDDER_LEFT = pw_neut + temp_motorpw;
      000C15 E5 53            [12] 3670 	mov	a,_temp_motorpw
      000C17 2E               [12] 3671 	add	a,r6
      000C18 FE               [12] 3672 	mov	r6,a
      000C19 E5 54            [12] 3673 	mov	a,(_temp_motorpw + 1)
      000C1B 3F               [12] 3674 	addc	a,r7
      000C1C FF               [12] 3675 	mov	r7,a
      000C1D E5 55            [12] 3676 	mov	a,(_temp_motorpw + 2)
      000C1F 3D               [12] 3677 	addc	a,r5
      000C20 FD               [12] 3678 	mov	r5,a
      000C21 E5 56            [12] 3679 	mov	a,(_temp_motorpw + 3)
      000C23 3C               [12] 3680 	addc	a,r4
      000C24 FC               [12] 3681 	mov	r4,a
      000C25 8E 4D            [24] 3682 	mov	_RUDDER_LEFT,r6
      000C27 8F 4E            [24] 3683 	mov	(_RUDDER_LEFT + 1),r7
                           000B5C  3684 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$350$2$160 ==.
                                   3685 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:350: PCA0CP0 = 0xFFFF - rudder_pw;
      000C29 74 FF            [12] 3686 	mov	a,#0xff
      000C2B C3               [12] 3687 	clr	c
      000C2C 95 51            [12] 3688 	subb	a,_rudder_pw
      000C2E F5 EA            [12] 3689 	mov	((_PCA0CP0 >> 0) & 0xFF),a
      000C30 74 FF            [12] 3690 	mov	a,#0xff
      000C32 95 52            [12] 3691 	subb	a,(_rudder_pw + 1)
      000C34 F5 FA            [12] 3692 	mov	((_PCA0CP0 >> 8) & 0xFF),a
                           000B69  3693 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$351$2$160 ==.
                                   3694 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:351: PCA0CP2 = 0xFFFF - RUDDER_LEFT;
      000C36 74 FF            [12] 3695 	mov	a,#0xff
      000C38 C3               [12] 3696 	clr	c
      000C39 95 4D            [12] 3697 	subb	a,_RUDDER_LEFT
      000C3B F5 EC            [12] 3698 	mov	((_PCA0CP2 >> 0) & 0xFF),a
      000C3D 74 FF            [12] 3699 	mov	a,#0xff
      000C3F 95 4E            [12] 3700 	subb	a,(_RUDDER_LEFT + 1)
      000C41 F5 FC            [12] 3701 	mov	((_PCA0CP2 >> 8) & 0xFF),a
                           000B76  3702 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$352$2$160 ==.
                                   3703 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:352: PCA0CP3 = 0xFFFF - RUDDER_RIGHT;
      000C43 74 FF            [12] 3704 	mov	a,#0xff
      000C45 C3               [12] 3705 	clr	c
      000C46 95 4F            [12] 3706 	subb	a,_RUDDER_RIGHT
      000C48 F5 ED            [12] 3707 	mov	((_PCA0CP3 >> 0) & 0xFF),a
      000C4A 74 FF            [12] 3708 	mov	a,#0xff
      000C4C 95 50            [12] 3709 	subb	a,(_RUDDER_RIGHT + 1)
      000C4E F5 FD            [12] 3710 	mov	((_PCA0CP3 >> 8) & 0xFF),a
      000C50 02 0C D8         [24] 3711 	ljmp	00118$
      000C53                       3712 00116$:
                           000B86  3713 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$354$1$153 ==.
                                   3714 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:354: }else if (temp_motorpw > pw_neut)
      000C53 90 00 57         [24] 3715 	mov	dptr,#_pw_neut
      000C56 E0               [24] 3716 	movx	a,@dptr
      000C57 FE               [12] 3717 	mov	r6,a
      000C58 A3               [24] 3718 	inc	dptr
      000C59 E0               [24] 3719 	movx	a,@dptr
      000C5A FF               [12] 3720 	mov	r7,a
      000C5B 33               [12] 3721 	rlc	a
      000C5C 95 E0            [12] 3722 	subb	a,acc
      000C5E FD               [12] 3723 	mov	r5,a
      000C5F FC               [12] 3724 	mov	r4,a
      000C60 C3               [12] 3725 	clr	c
      000C61 EE               [12] 3726 	mov	a,r6
      000C62 95 53            [12] 3727 	subb	a,_temp_motorpw
      000C64 EF               [12] 3728 	mov	a,r7
      000C65 95 54            [12] 3729 	subb	a,(_temp_motorpw + 1)
      000C67 ED               [12] 3730 	mov	a,r5
      000C68 95 55            [12] 3731 	subb	a,(_temp_motorpw + 2)
      000C6A EC               [12] 3732 	mov	a,r4
      000C6B 64 80            [12] 3733 	xrl	a,#0x80
      000C6D 85 56 F0         [24] 3734 	mov	b,(_temp_motorpw + 3)
      000C70 63 F0 80         [24] 3735 	xrl	b,#0x80
      000C73 95 F0            [12] 3736 	subb	a,b
      000C75 50 61            [24] 3737 	jnc	00118$
                           000BAA  3738 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$357$2$161 ==.
                                   3739 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:357: rudder_pw = pw_neut + temp_motorpw;
      000C77 90 00 57         [24] 3740 	mov	dptr,#_pw_neut
      000C7A E0               [24] 3741 	movx	a,@dptr
      000C7B FE               [12] 3742 	mov	r6,a
      000C7C A3               [24] 3743 	inc	dptr
      000C7D E0               [24] 3744 	movx	a,@dptr
      000C7E FF               [12] 3745 	mov	r7,a
      000C7F 33               [12] 3746 	rlc	a
      000C80 95 E0            [12] 3747 	subb	a,acc
      000C82 FD               [12] 3748 	mov	r5,a
      000C83 FC               [12] 3749 	mov	r4,a
      000C84 E5 53            [12] 3750 	mov	a,_temp_motorpw
      000C86 2E               [12] 3751 	add	a,r6
      000C87 F8               [12] 3752 	mov	r0,a
      000C88 E5 54            [12] 3753 	mov	a,(_temp_motorpw + 1)
      000C8A 3F               [12] 3754 	addc	a,r7
      000C8B F9               [12] 3755 	mov	r1,a
      000C8C E5 55            [12] 3756 	mov	a,(_temp_motorpw + 2)
      000C8E 3D               [12] 3757 	addc	a,r5
      000C8F FA               [12] 3758 	mov	r2,a
      000C90 E5 56            [12] 3759 	mov	a,(_temp_motorpw + 3)
      000C92 3C               [12] 3760 	addc	a,r4
      000C93 FB               [12] 3761 	mov	r3,a
      000C94 88 51            [24] 3762 	mov	_rudder_pw,r0
      000C96 89 52            [24] 3763 	mov	(_rudder_pw + 1),r1
                           000BCB  3764 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$359$2$161 ==.
                                   3765 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:359: RUDDER_RIGHT = pw_neut + temp_motorpw;
      000C98 88 4F            [24] 3766 	mov	_RUDDER_RIGHT,r0
      000C9A 89 50            [24] 3767 	mov	(_RUDDER_RIGHT + 1),r1
                           000BCF  3768 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$362$2$161 ==.
                                   3769 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:362: RUDDER_LEFT = pw_neut - temp_motorpw;
      000C9C EE               [12] 3770 	mov	a,r6
      000C9D C3               [12] 3771 	clr	c
      000C9E 95 53            [12] 3772 	subb	a,_temp_motorpw
      000CA0 FE               [12] 3773 	mov	r6,a
      000CA1 EF               [12] 3774 	mov	a,r7
      000CA2 95 54            [12] 3775 	subb	a,(_temp_motorpw + 1)
      000CA4 FF               [12] 3776 	mov	r7,a
      000CA5 ED               [12] 3777 	mov	a,r5
      000CA6 95 55            [12] 3778 	subb	a,(_temp_motorpw + 2)
      000CA8 FD               [12] 3779 	mov	r5,a
      000CA9 EC               [12] 3780 	mov	a,r4
      000CAA 95 56            [12] 3781 	subb	a,(_temp_motorpw + 3)
      000CAC FC               [12] 3782 	mov	r4,a
      000CAD 8E 4D            [24] 3783 	mov	_RUDDER_LEFT,r6
      000CAF 8F 4E            [24] 3784 	mov	(_RUDDER_LEFT + 1),r7
                           000BE4  3785 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$364$2$161 ==.
                                   3786 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:364: PCA0CP0 = 0xFFFF - rudder_pw;
      000CB1 74 FF            [12] 3787 	mov	a,#0xff
      000CB3 C3               [12] 3788 	clr	c
      000CB4 95 51            [12] 3789 	subb	a,_rudder_pw
      000CB6 F5 EA            [12] 3790 	mov	((_PCA0CP0 >> 0) & 0xFF),a
      000CB8 74 FF            [12] 3791 	mov	a,#0xff
      000CBA 95 52            [12] 3792 	subb	a,(_rudder_pw + 1)
      000CBC F5 FA            [12] 3793 	mov	((_PCA0CP0 >> 8) & 0xFF),a
                           000BF1  3794 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$365$2$161 ==.
                                   3795 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:365: PCA0CP2 = 0xFFFF - RUDDER_LEFT;
      000CBE 74 FF            [12] 3796 	mov	a,#0xff
      000CC0 C3               [12] 3797 	clr	c
      000CC1 95 4D            [12] 3798 	subb	a,_RUDDER_LEFT
      000CC3 F5 EC            [12] 3799 	mov	((_PCA0CP2 >> 0) & 0xFF),a
      000CC5 74 FF            [12] 3800 	mov	a,#0xff
      000CC7 95 4E            [12] 3801 	subb	a,(_RUDDER_LEFT + 1)
      000CC9 F5 FC            [12] 3802 	mov	((_PCA0CP2 >> 8) & 0xFF),a
                           000BFE  3803 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$366$2$161 ==.
                                   3804 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:366: PCA0CP3 = 0xFFFF - RUDDER_RIGHT;
      000CCB 74 FF            [12] 3805 	mov	a,#0xff
      000CCD C3               [12] 3806 	clr	c
      000CCE 95 4F            [12] 3807 	subb	a,_RUDDER_RIGHT
      000CD0 F5 ED            [12] 3808 	mov	((_PCA0CP3 >> 0) & 0xFF),a
      000CD2 74 FF            [12] 3809 	mov	a,#0xff
      000CD4 95 50            [12] 3810 	subb	a,(_RUDDER_RIGHT + 1)
      000CD6 F5 FD            [12] 3811 	mov	((_PCA0CP3 >> 8) & 0xFF),a
      000CD8                       3812 00118$:
                           000C0B  3813 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$369$1$153 ==.
                           000C0B  3814 	XG$Set_Motor$0$0 ==.
      000CD8 22               [24] 3815 	ret
                                   3816 ;------------------------------------------------------------
                                   3817 ;Allocation info for local variables in function 'Heading_Control'
                                   3818 ;------------------------------------------------------------
                           000C0C  3819 	G$Heading_Control$0$0 ==.
                           000C0C  3820 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$371$1$153 ==.
                                   3821 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:371: void Heading_Control(void)
                                   3822 ;	-----------------------------------------
                                   3823 ;	 function Heading_Control
                                   3824 ;	-----------------------------------------
      000CD9                       3825 _Heading_Control:
                           000C0C  3826 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$373$1$163 ==.
                                   3827 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:373: if (range>50)
      000CD9 C3               [12] 3828 	clr	c
      000CDA 74 32            [12] 3829 	mov	a,#0x32
      000CDC 95 3D            [12] 3830 	subb	a,_range
      000CDE E4               [12] 3831 	clr	a
      000CDF 95 3E            [12] 3832 	subb	a,(_range + 1)
      000CE1 50 08            [24] 3833 	jnc	00102$
                           000C16  3834 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$375$2$164 ==.
                                   3835 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:375: desired = original_desired;
      000CE3 85 47 45         [24] 3836 	mov	_desired,_original_desired
      000CE6 85 48 46         [24] 3837 	mov	(_desired + 1),(_original_desired + 1)
      000CE9 80 06            [24] 3838 	sjmp	00104$
      000CEB                       3839 00102$:
                           000C1E  3840 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$379$2$165 ==.
                                   3841 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:379: desired = 2700;
      000CEB 75 45 8C         [24] 3842 	mov	_desired,#0x8c
      000CEE 75 46 0A         [24] 3843 	mov	(_desired + 1),#0x0a
      000CF1                       3844 00104$:
                           000C24  3845 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$382$1$163 ==.
                           000C24  3846 	XG$Heading_Control$0$0 ==.
      000CF1 22               [24] 3847 	ret
                                   3848 ;------------------------------------------------------------
                                   3849 ;Allocation info for local variables in function 'ReadRanger'
                                   3850 ;------------------------------------------------------------
                           000C25  3851 	G$ReadRanger$0$0 ==.
                           000C25  3852 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$384$1$163 ==.
                                   3853 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:384: unsigned int ReadRanger()
                                   3854 ;	-----------------------------------------
                                   3855 ;	 function ReadRanger
                                   3856 ;	-----------------------------------------
      000CF2                       3857 _ReadRanger:
                           000C25  3858 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$386$1$166 ==.
                                   3859 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:386: i2c_read_data(0xE0,2,r_Data,2);
      000CF2 75 32 3B         [24] 3860 	mov	_i2c_read_data_PARM_3,#_r_Data
      000CF5 75 33 00         [24] 3861 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      000CF8 75 34 40         [24] 3862 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      000CFB 75 31 02         [24] 3863 	mov	_i2c_read_data_PARM_2,#0x02
      000CFE 75 35 02         [24] 3864 	mov	_i2c_read_data_PARM_4,#0x02
      000D01 75 82 E0         [24] 3865 	mov	dpl,#0xe0
      000D04 12 04 D3         [24] 3866 	lcall	_i2c_read_data
                           000C3A  3867 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$387$1$166 ==.
                                   3868 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:387: range = ((r_Data[0] << 8) | r_Data[1]);
      000D07 AF 3B            [24] 3869 	mov	r7,_r_Data
      000D09 7E 00            [12] 3870 	mov	r6,#0x00
      000D0B AC 3C            [24] 3871 	mov	r4,(_r_Data + 0x0001)
      000D0D 7D 00            [12] 3872 	mov	r5,#0x00
      000D0F EC               [12] 3873 	mov	a,r4
      000D10 4E               [12] 3874 	orl	a,r6
      000D11 F5 3D            [12] 3875 	mov	_range,a
      000D13 ED               [12] 3876 	mov	a,r5
      000D14 4F               [12] 3877 	orl	a,r7
      000D15 F5 3E            [12] 3878 	mov	(_range + 1),a
                           000C4A  3879 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$388$1$166 ==.
                                   3880 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:388: return range;
      000D17 85 3D 82         [24] 3881 	mov	dpl,_range
      000D1A 85 3E 83         [24] 3882 	mov	dph,(_range + 1)
                           000C50  3883 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$390$1$166 ==.
                           000C50  3884 	XG$ReadRanger$0$0 ==.
      000D1D 22               [24] 3885 	ret
                                   3886 ;------------------------------------------------------------
                                   3887 ;Allocation info for local variables in function 'ReadCompass'
                                   3888 ;------------------------------------------------------------
                                   3889 ;c_Data                    Allocated with name '_ReadCompass_c_Data_1_167'
                                   3890 ;------------------------------------------------------------
                           000C51  3891 	G$ReadCompass$0$0 ==.
                           000C51  3892 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$392$1$166 ==.
                                   3893 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:392: unsigned int ReadCompass()
                                   3894 ;	-----------------------------------------
                                   3895 ;	 function ReadCompass
                                   3896 ;	-----------------------------------------
      000D1E                       3897 _ReadCompass:
                           000C51  3898 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$395$1$167 ==.
                                   3899 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:395: i2c_read_data(0xc0,2,c_Data,2);
      000D1E 75 32 5F         [24] 3900 	mov	_i2c_read_data_PARM_3,#_ReadCompass_c_Data_1_167
      000D21 75 33 00         [24] 3901 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      000D24 75 34 40         [24] 3902 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      000D27 75 31 02         [24] 3903 	mov	_i2c_read_data_PARM_2,#0x02
      000D2A 75 35 02         [24] 3904 	mov	_i2c_read_data_PARM_4,#0x02
      000D2D 75 82 C0         [24] 3905 	mov	dpl,#0xc0
      000D30 12 04 D3         [24] 3906 	lcall	_i2c_read_data
                           000C66  3907 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$396$1$167 ==.
                                   3908 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:396: heading = ((c_Data[0] << 8) | c_Data[1]); 
      000D33 AF 5F            [24] 3909 	mov	r7,_ReadCompass_c_Data_1_167
      000D35 7E 00            [12] 3910 	mov	r6,#0x00
      000D37 AC 60            [24] 3911 	mov	r4,(_ReadCompass_c_Data_1_167 + 0x0001)
      000D39 7D 00            [12] 3912 	mov	r5,#0x00
      000D3B EC               [12] 3913 	mov	a,r4
      000D3C 4E               [12] 3914 	orl	a,r6
      000D3D F5 41            [12] 3915 	mov	_heading,a
      000D3F ED               [12] 3916 	mov	a,r5
      000D40 4F               [12] 3917 	orl	a,r7
      000D41 F5 42            [12] 3918 	mov	(_heading + 1),a
                           000C76  3919 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$397$1$167 ==.
                                   3920 ;	C:\Users\Tim\Documents\LITEC\Lab6\lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c:397: return heading;
      000D43 85 41 82         [24] 3921 	mov	dpl,_heading
      000D46 85 42 83         [24] 3922 	mov	dph,(_heading + 1)
                           000C7C  3923 	C$lab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong.c$398$1$167 ==.
                           000C7C  3924 	XG$ReadCompass$0$0 ==.
      000D49 22               [24] 3925 	ret
                                   3926 	.area CSEG    (CODE)
                                   3927 	.area CONST   (CODE)
                           000000  3928 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__str_0$0$0 == .
      00172F                       3929 ___str_0:
      00172F 0A                    3930 	.db 0x0a
      001730 54 79 70 65 20 64 69  3931 	.ascii "Type digits; end w/#"
             67 69 74 73 3B 20 65
             6E 64 20 77 2F 23
      001744 00                    3932 	.db 0x00
                           000016  3933 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__str_1$0$0 == .
      001745                       3934 ___str_1:
      001745 20 20 20 20 20 25 63  3935 	.ascii "     %c%c%c%c%c"
             25 63 25 63 25 63 25
             63
      001754 00                    3936 	.db 0x00
                           000026  3937 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__str_2$0$0 == .
      001755                       3938 ___str_2:
      001755 25 63                 3939 	.ascii "%c"
      001757 00                    3940 	.db 0x00
                           000029  3941 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__str_3$0$0 == .
      001758                       3942 ___str_3:
      001758 0A                    3943 	.db 0x0a
      001759 0D                    3944 	.db 0x0d
      00175A 53 74 61 72 74        3945 	.ascii "Start"
      00175F 0D                    3946 	.db 0x0d
      001760 0A                    3947 	.db 0x0a
      001761 00                    3948 	.db 0x00
                           000033  3949 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__str_4$0$0 == .
      001762                       3950 ___str_4:
      001762 43 61 6C 69 62 72 61  3951 	.ascii "Calibration:"
             74 69 6F 6E 3A
      00176E 0A                    3952 	.db 0x0a
      00176F 48 65 6C 6C 6F 20 77  3953 	.ascii "Hello world!"
             6F 72 6C 64 21
      00177B 0A                    3954 	.db 0x0a
      00177C 00                    3955 	.db 0x00
                           00004E  3956 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__str_5$0$0 == .
      00177D                       3957 ___str_5:
      00177D 45 6E 74 65 72 69 6E  3958 	.ascii "Entering Main Loop"
             67 20 4D 61 69 6E 20
             4C 6F 6F 70
      00178F 0A                    3959 	.db 0x0a
      001790 00                    3960 	.db 0x00
                           000062  3961 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__str_6$0$0 == .
      001791                       3962 ___str_6:
      001791 53 74 61 72 74 69 6E  3963 	.ascii "Starting Lab6"
             67 20 4C 61 62 36
      00179E 0A                    3964 	.db 0x0a
      00179F 00                    3965 	.db 0x00
                           000071  3966 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__str_7$0$0 == .
      0017A0                       3967 ___str_7:
      0017A0 0D                    3968 	.db 0x0d
      0017A1 0A                    3969 	.db 0x0a
      0017A2 53 65 74 74 69 6E 67  3970 	.ascii "Setting gains..."
             20 67 61 69 6E 73 2E
             2E 2E
      0017B2 00                    3971 	.db 0x00
                           000084  3972 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__str_8$0$0 == .
      0017B3                       3973 ___str_8:
      0017B3 45 6E 74 65 72 20 64  3974 	.ascii "Enter desired "
             65 73 69 72 65 64 20
      0017C1 0A                    3975 	.db 0x0a
      0017C2 68 65 61 64 69 6E 67  3976 	.ascii "heading:"
             3A
      0017CA 00                    3977 	.db 0x00
                           00009C  3978 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__str_9$0$0 == .
      0017CB                       3979 ___str_9:
      0017CB 0D                    3980 	.db 0x0d
      0017CC 0A                    3981 	.db 0x0a
      0017CD 45 6E 74 65 72 20 64  3982 	.ascii "Enter desired heading in keypad"
             65 73 69 72 65 64 20
             68 65 61 64 69 6E 67
             20 69 6E 20 6B 65 79
             70 61 64
      0017EC 00                    3983 	.db 0x00
                           0000BE  3984 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__str_10$0$0 == .
      0017ED                       3985 ___str_10:
      0017ED 0D                    3986 	.db 0x0d
      0017EE 0A                    3987 	.db 0x0a
      0017EF 64 65 73 69 72 65 64  3988 	.ascii "desired: %u"
             3A 20 25 75
      0017FA 00                    3989 	.db 0x00
                           0000CC  3990 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__str_11$0$0 == .
      0017FB                       3991 ___str_11:
      0017FB 45 6E 74 65 72 20 6B  3992 	.ascii "Enter kp:"
             70 3A
      001804 0A                    3993 	.db 0x0a
      001805 00                    3994 	.db 0x00
                           0000D7  3995 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__str_12$0$0 == .
      001806                       3996 ___str_12:
      001806 0D                    3997 	.db 0x0d
      001807 0A                    3998 	.db 0x0a
      001808 45 6E 74 65 72 20 6B  3999 	.ascii "Enter kp in keypad"
             70 20 69 6E 20 6B 65
             79 70 61 64
      00181A 00                    4000 	.db 0x00
                           0000EC  4001 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__str_13$0$0 == .
      00181B                       4002 ___str_13:
      00181B 0D                    4003 	.db 0x0d
      00181C 0A                    4004 	.db 0x0a
      00181D 6B 70 3A 20 25 75     4005 	.ascii "kp: %u"
      001823 00                    4006 	.db 0x00
                           0000F5  4007 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__str_14$0$0 == .
      001824                       4008 ___str_14:
      001824 45 6E 74 65 72 20 6B  4009 	.ascii "Enter kd:"
             64 3A
      00182D 0A                    4010 	.db 0x0a
      00182E 00                    4011 	.db 0x00
                           000100  4012 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__str_15$0$0 == .
      00182F                       4013 ___str_15:
      00182F 0D                    4014 	.db 0x0d
      001830 0A                    4015 	.db 0x0a
      001831 45 6E 74 65 72 20 6B  4016 	.ascii "Enter kd in keypad"
             64 20 69 6E 20 6B 65
             79 70 61 64
      001843 00                    4017 	.db 0x00
                           000115  4018 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__str_16$0$0 == .
      001844                       4019 ___str_16:
      001844 0D                    4020 	.db 0x0d
      001845 0A                    4021 	.db 0x0a
      001846 6B 64 3A 20 25 75     4022 	.ascii "kd: %u"
      00184C 00                    4023 	.db 0x00
                           00011E  4024 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__str_17$0$0 == .
      00184D                       4025 ___str_17:
      00184D 0D                    4026 	.db 0x0d
      00184E 0A                    4027 	.db 0x0a
      00184F 43 75 72 72 65 6E 74  4028 	.ascii "Current thrust angle pw: %u"
             20 74 68 72 75 73 74
             20 61 6E 67 6C 65 20
             70 77 3A 20 25 75
      00186A 00                    4029 	.db 0x00
                           00013C  4030 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__str_18$0$0 == .
      00186B                       4031 ___str_18:
      00186B 0D                    4032 	.db 0x0d
      00186C 0A                    4033 	.db 0x0a
      00186D 50 72 65 73 73 20 69  4034 	.ascii "Press i to increase, d to decrease, and f to finalize"
             20 74 6F 20 69 6E 63
             72 65 61 73 65 2C 20
             64 20 74 6F 20 64 65
             63 72 65 61 73 65 2C
             20 61 6E 64 20 66 20
             74 6F 20 66 69 6E 61
             6C 69 7A 65
      0018A2 0A                    4035 	.db 0x0a
      0018A3 0D                    4036 	.db 0x0d
      0018A4 00                    4037 	.db 0x00
                           000176  4038 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__str_19$0$0 == .
      0018A5                       4039 ___str_19:
      0018A5 0D                    4040 	.db 0x0d
      0018A6 0A                    4041 	.db 0x0a
      0018A7 46 69 6E 61 6C 20 74  4042 	.ascii "Final thrust angle: %u"
             68 72 75 73 74 20 61
             6E 67 6C 65 3A 20 25
             75
      0018BD 00                    4043 	.db 0x00
                           00018F  4044 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__str_20$0$0 == .
      0018BE                       4045 ___str_20:
      0018BE 0D                    4046 	.db 0x0d
      0018BF 0A                    4047 	.db 0x0a
      0018C0 49 6E 63 72 65 61 73  4048 	.ascii "Increased THRUST_ANGLE_PW %u"
             65 64 20 54 48 52 55
             53 54 5F 41 4E 47 4C
             45 5F 50 57 20 25 75
      0018DC 0D                    4049 	.db 0x0d
      0018DD 0A                    4050 	.db 0x0a
      0018DE 00                    4051 	.db 0x00
                           0001B0  4052 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__str_21$0$0 == .
      0018DF                       4053 ___str_21:
      0018DF 0D                    4054 	.db 0x0d
      0018E0 0A                    4055 	.db 0x0a
      0018E1 44 65 63 72 65 61 73  4056 	.ascii "Decreased THRUST_ANGLE_PW %u"
             65 64 20 54 48 52 55
             53 54 5F 41 4E 47 4C
             45 5F 50 57 20 25 75
      0018FD 0D                    4057 	.db 0x0d
      0018FE 0A                    4058 	.db 0x0a
      0018FF 00                    4059 	.db 0x00
                           0001D1  4060 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__str_22$0$0 == .
      001900                       4061 ___str_22:
      001900 0A                    4062 	.db 0x0a
      001901 42 61 74 74 65 72 79  4063 	.ascii "Battery %u,"
             20 25 75 2C
      00190C 0A                    4064 	.db 0x0a
      00190D 48 65 61 64 69 6E 67  4065 	.ascii "Heading %u,"
             20 25 75 2C
      001918 0A                    4066 	.db 0x0a
      001919 20 52 65 61 64 69 6E  4067 	.ascii " Reading %u"
             67 20 25 75
      001924 0A                    4068 	.db 0x0a
      001925 00                    4069 	.db 0x00
                           0001F7  4070 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__str_23$0$0 == .
      001926                       4071 ___str_23:
      001926 0A                    4072 	.db 0x0a
      001927 48 65 61 64 69 6E 67  4073 	.ascii "Heading: %u, PW right %u, PW left %u"
             3A 20 25 75 2C 20 50
             57 20 72 69 67 68 74
             20 25 75 2C 20 50 57
             20 6C 65 66 74 20 25
             75
      00194B 0D                    4074 	.db 0x0d
      00194C 00                    4075 	.db 0x00
                                   4076 	.area XINIT   (CODE)
                           000000  4077 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__xinit_pw_min$0$0 == .
      001958                       4078 __xinit__pw_min:
      001958 EC 07                 4079 	.byte #0xec,#0x07	; 2028
                           000002  4080 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__xinit_pw_max$0$0 == .
      00195A                       4081 __xinit__pw_max:
      00195A AE 0D                 4082 	.byte #0xae,#0x0d	; 3502
                           000004  4083 Flab6Timothy_Ho_Shengyi_Shen_Chuizheng_Kong$__xinit_pw_neut$0$0 == .
      00195C                       4084 __xinit__pw_neut:
      00195C CD 0A                 4085 	.byte #0xcd,#0x0a	;  2765
                                   4086 	.area CABS    (ABS,CODE)
