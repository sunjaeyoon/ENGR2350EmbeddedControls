                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module lab3_3
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _read_keypad
                                     13 	.globl _strlen
                                     14 	.globl _putchar
                                     15 	.globl _vsprintf
                                     16 	.globl _printf
                                     17 	.globl _getchar_nw
                                     18 	.globl _Sys_Init
                                     19 	.globl _UART0_Init
                                     20 	.globl _SYSCLK_Init
                                     21 	.globl _SS3
                                     22 	.globl _SS2
                                     23 	.globl _SS1
                                     24 	.globl _BUS_SCL
                                     25 	.globl _BUS_TOE
                                     26 	.globl _BUS_FTE
                                     27 	.globl _BUS_AA
                                     28 	.globl _BUS_INT
                                     29 	.globl _BUS_STOP
                                     30 	.globl _BUS_START
                                     31 	.globl _BUS_EN
                                     32 	.globl _BUS_BUSY
                                     33 	.globl _SPIF
                                     34 	.globl _WCOL
                                     35 	.globl _MODF
                                     36 	.globl _RXOVRN
                                     37 	.globl _TXBSY
                                     38 	.globl _SLVSEL
                                     39 	.globl _MSTEN
                                     40 	.globl _SPIEN
                                     41 	.globl _AD0EN
                                     42 	.globl _ADCEN
                                     43 	.globl _AD0TM
                                     44 	.globl _ADCTM
                                     45 	.globl _AD0INT
                                     46 	.globl _ADCINT
                                     47 	.globl _AD0BUSY
                                     48 	.globl _ADBUSY
                                     49 	.globl _AD0CM1
                                     50 	.globl _ADSTM1
                                     51 	.globl _AD0CM0
                                     52 	.globl _ADSTM0
                                     53 	.globl _AD0WINT
                                     54 	.globl _ADWINT
                                     55 	.globl _AD0LJST
                                     56 	.globl _ADLJST
                                     57 	.globl _CF
                                     58 	.globl _CR
                                     59 	.globl _CCF4
                                     60 	.globl _CCF3
                                     61 	.globl _CCF2
                                     62 	.globl _CCF1
                                     63 	.globl _CCF0
                                     64 	.globl _CY
                                     65 	.globl _AC
                                     66 	.globl _F0
                                     67 	.globl _RS1
                                     68 	.globl _RS0
                                     69 	.globl _OV
                                     70 	.globl _F1
                                     71 	.globl _P
                                     72 	.globl _TF2
                                     73 	.globl _EXF2
                                     74 	.globl _RCLK
                                     75 	.globl _TCLK
                                     76 	.globl _EXEN2
                                     77 	.globl _TR2
                                     78 	.globl _CT2
                                     79 	.globl _CPRL2
                                     80 	.globl _BUSY
                                     81 	.globl _ENSMB
                                     82 	.globl _STA
                                     83 	.globl _STO
                                     84 	.globl _SI
                                     85 	.globl _AA
                                     86 	.globl _SMBFTE
                                     87 	.globl _SMBTOE
                                     88 	.globl _PT2
                                     89 	.globl _PS
                                     90 	.globl _PS0
                                     91 	.globl _PT1
                                     92 	.globl _PX1
                                     93 	.globl _PT0
                                     94 	.globl _PX0
                                     95 	.globl _P3_7
                                     96 	.globl _P3_6
                                     97 	.globl _P3_5
                                     98 	.globl _P3_4
                                     99 	.globl _P3_3
                                    100 	.globl _P3_2
                                    101 	.globl _P3_1
                                    102 	.globl _P3_0
                                    103 	.globl _EA
                                    104 	.globl _ET2
                                    105 	.globl _ES
                                    106 	.globl _ES0
                                    107 	.globl _ET1
                                    108 	.globl _EX1
                                    109 	.globl _ET0
                                    110 	.globl _EX0
                                    111 	.globl _P2_7
                                    112 	.globl _P2_6
                                    113 	.globl _P2_5
                                    114 	.globl _P2_4
                                    115 	.globl _P2_3
                                    116 	.globl _P2_2
                                    117 	.globl _P2_1
                                    118 	.globl _P2_0
                                    119 	.globl _S0MODE
                                    120 	.globl _SM00
                                    121 	.globl _SM0
                                    122 	.globl _SM10
                                    123 	.globl _SM1
                                    124 	.globl _MCE0
                                    125 	.globl _SM20
                                    126 	.globl _SM2
                                    127 	.globl _REN0
                                    128 	.globl _REN
                                    129 	.globl _TB80
                                    130 	.globl _TB8
                                    131 	.globl _RB80
                                    132 	.globl _RB8
                                    133 	.globl _TI0
                                    134 	.globl _TI
                                    135 	.globl _RI0
                                    136 	.globl _RI
                                    137 	.globl _P1_7
                                    138 	.globl _P1_6
                                    139 	.globl _P1_5
                                    140 	.globl _P1_4
                                    141 	.globl _P1_3
                                    142 	.globl _P1_2
                                    143 	.globl _P1_1
                                    144 	.globl _P1_0
                                    145 	.globl _TF1
                                    146 	.globl _TR1
                                    147 	.globl _TF0
                                    148 	.globl _TR0
                                    149 	.globl _IE1
                                    150 	.globl _IT1
                                    151 	.globl _IE0
                                    152 	.globl _IT0
                                    153 	.globl _P0_7
                                    154 	.globl _P0_6
                                    155 	.globl _P0_5
                                    156 	.globl _P0_4
                                    157 	.globl _P0_3
                                    158 	.globl _P0_2
                                    159 	.globl _P0_1
                                    160 	.globl _P0_0
                                    161 	.globl _PCA0CP4
                                    162 	.globl _PCA0CP3
                                    163 	.globl _PCA0CP2
                                    164 	.globl _PCA0CP1
                                    165 	.globl _PCA0CP0
                                    166 	.globl _PCA0
                                    167 	.globl _DAC1
                                    168 	.globl _DAC0
                                    169 	.globl _ADC0LT
                                    170 	.globl _ADC0GT
                                    171 	.globl _ADC0
                                    172 	.globl _RCAP4
                                    173 	.globl _TMR4
                                    174 	.globl _TMR3RL
                                    175 	.globl _TMR3
                                    176 	.globl _RCAP2
                                    177 	.globl _TMR2
                                    178 	.globl _TMR1
                                    179 	.globl _TMR0
                                    180 	.globl _WDTCN
                                    181 	.globl _PCA0CPH4
                                    182 	.globl _PCA0CPH3
                                    183 	.globl _PCA0CPH2
                                    184 	.globl _PCA0CPH1
                                    185 	.globl _PCA0CPH0
                                    186 	.globl _PCA0H
                                    187 	.globl _SPI0CN
                                    188 	.globl _EIP2
                                    189 	.globl _EIP1
                                    190 	.globl _TH4
                                    191 	.globl _TL4
                                    192 	.globl _SADDR1
                                    193 	.globl _SBUF1
                                    194 	.globl _SCON1
                                    195 	.globl _B
                                    196 	.globl _RSTSRC
                                    197 	.globl _PCA0CPL4
                                    198 	.globl _PCA0CPL3
                                    199 	.globl _PCA0CPL2
                                    200 	.globl _PCA0CPL1
                                    201 	.globl _PCA0CPL0
                                    202 	.globl _PCA0L
                                    203 	.globl _ADC0CN
                                    204 	.globl _EIE2
                                    205 	.globl _EIE1
                                    206 	.globl _RCAP4H
                                    207 	.globl _RCAP4L
                                    208 	.globl _XBR2
                                    209 	.globl _XBR1
                                    210 	.globl _XBR0
                                    211 	.globl _ACC
                                    212 	.globl _PCA0CPM4
                                    213 	.globl _PCA0CPM3
                                    214 	.globl _PCA0CPM2
                                    215 	.globl _PCA0CPM1
                                    216 	.globl _PCA0CPM0
                                    217 	.globl _PCA0MD
                                    218 	.globl _PCA0CN
                                    219 	.globl _DAC1CN
                                    220 	.globl _DAC1H
                                    221 	.globl _DAC1L
                                    222 	.globl _DAC0CN
                                    223 	.globl _DAC0H
                                    224 	.globl _DAC0L
                                    225 	.globl _REF0CN
                                    226 	.globl _PSW
                                    227 	.globl _SMB0CR
                                    228 	.globl _TH2
                                    229 	.globl _TL2
                                    230 	.globl _RCAP2H
                                    231 	.globl _RCAP2L
                                    232 	.globl _T4CON
                                    233 	.globl _T2CON
                                    234 	.globl _ADC0LTH
                                    235 	.globl _ADC0LTL
                                    236 	.globl _ADC0GTH
                                    237 	.globl _ADC0GTL
                                    238 	.globl _SMB0ADR
                                    239 	.globl _SMB0DAT
                                    240 	.globl _SMB0STA
                                    241 	.globl _SMB0CN
                                    242 	.globl _ADC0H
                                    243 	.globl _ADC0L
                                    244 	.globl _P1MDIN
                                    245 	.globl _ADC0CF
                                    246 	.globl _AMX0SL
                                    247 	.globl _AMX0CF
                                    248 	.globl _SADEN0
                                    249 	.globl _IP
                                    250 	.globl _FLACL
                                    251 	.globl _FLSCL
                                    252 	.globl _P74OUT
                                    253 	.globl _OSCICN
                                    254 	.globl _OSCXCN
                                    255 	.globl _P3
                                    256 	.globl __XPAGE
                                    257 	.globl _EMI0CN
                                    258 	.globl _SADEN1
                                    259 	.globl _P3IF
                                    260 	.globl _AMX1SL
                                    261 	.globl _ADC1CF
                                    262 	.globl _ADC1CN
                                    263 	.globl _SADDR0
                                    264 	.globl _IE
                                    265 	.globl _P3MDOUT
                                    266 	.globl _PRT3CF
                                    267 	.globl _P2MDOUT
                                    268 	.globl _PRT2CF
                                    269 	.globl _P1MDOUT
                                    270 	.globl _PRT1CF
                                    271 	.globl _P0MDOUT
                                    272 	.globl _PRT0CF
                                    273 	.globl _EMI0CF
                                    274 	.globl _EMI0TC
                                    275 	.globl _P2
                                    276 	.globl _CPT1CN
                                    277 	.globl _CPT0CN
                                    278 	.globl _SPI0CKR
                                    279 	.globl _ADC1
                                    280 	.globl _SPI0DAT
                                    281 	.globl _SPI0CFG
                                    282 	.globl _SBUF0
                                    283 	.globl _SBUF
                                    284 	.globl _SCON0
                                    285 	.globl _SCON
                                    286 	.globl _P7
                                    287 	.globl _TMR3H
                                    288 	.globl _TMR3L
                                    289 	.globl _TMR3RLH
                                    290 	.globl _TMR3RLL
                                    291 	.globl _TMR3CN
                                    292 	.globl _P1
                                    293 	.globl _PSCTL
                                    294 	.globl _CKCON
                                    295 	.globl _TH1
                                    296 	.globl _TH0
                                    297 	.globl _TL1
                                    298 	.globl _TL0
                                    299 	.globl _TMOD
                                    300 	.globl _TCON
                                    301 	.globl _PCON
                                    302 	.globl _P6
                                    303 	.globl _P5
                                    304 	.globl _P4
                                    305 	.globl _DPH
                                    306 	.globl _DPL
                                    307 	.globl _SP
                                    308 	.globl _P0
                                    309 	.globl _version
                                    310 	.globl _new_heading
                                    311 	.globl _h_count
                                    312 	.globl _heading
                                    313 	.globl _c_Data
                                    314 	.globl _c_addr
                                    315 	.globl _Data
                                    316 	.globl _read
                                    317 	.globl _new_light
                                    318 	.globl _l_count
                                    319 	.globl _addr
                                    320 	.globl _PCA_start
                                    321 	.globl _PW
                                    322 	.globl _PW_MAX
                                    323 	.globl _PW_MIN
                                    324 	.globl _i2c_read_data_PARM_4
                                    325 	.globl _i2c_read_data_PARM_3
                                    326 	.globl _i2c_read_data_PARM_2
                                    327 	.globl _i2c_write_data_PARM_4
                                    328 	.globl _i2c_write_data_PARM_3
                                    329 	.globl _i2c_write_data_PARM_2
                                    330 	.globl _aligned_alloc_PARM_2
                                    331 	.globl _Data2
                                    332 	.globl _lcd_print
                                    333 	.globl _lcd_clear
                                    334 	.globl _kpd_input
                                    335 	.globl _delay_time
                                    336 	.globl _i2c_start
                                    337 	.globl _i2c_write
                                    338 	.globl _i2c_write_and_stop
                                    339 	.globl _i2c_read
                                    340 	.globl _i2c_read_and_stop
                                    341 	.globl _i2c_write_data
                                    342 	.globl _i2c_read_data
                                    343 	.globl _Accel_Init
                                    344 	.globl _Accel_Init_C
                                    345 	.globl _Port_Init
                                    346 	.globl _XBR0_Init
                                    347 	.globl _PCA_Init
                                    348 	.globl _SMB_Init
                                    349 	.globl _PCA_ISR
                                    350 	.globl _ReadRanger
                                    351 	.globl _ReadCompass
                                    352 	.globl _ReadVersion
                                    353 	.globl _Set_Pulsewidth
                                    354 ;--------------------------------------------------------
                                    355 ; special function registers
                                    356 ;--------------------------------------------------------
                                    357 	.area RSEG    (ABS,DATA)
      000000                        358 	.org 0x0000
                           000080   359 G$P0$0$0 == 0x0080
                           000080   360 _P0	=	0x0080
                           000081   361 G$SP$0$0 == 0x0081
                           000081   362 _SP	=	0x0081
                           000082   363 G$DPL$0$0 == 0x0082
                           000082   364 _DPL	=	0x0082
                           000083   365 G$DPH$0$0 == 0x0083
                           000083   366 _DPH	=	0x0083
                           000084   367 G$P4$0$0 == 0x0084
                           000084   368 _P4	=	0x0084
                           000085   369 G$P5$0$0 == 0x0085
                           000085   370 _P5	=	0x0085
                           000086   371 G$P6$0$0 == 0x0086
                           000086   372 _P6	=	0x0086
                           000087   373 G$PCON$0$0 == 0x0087
                           000087   374 _PCON	=	0x0087
                           000088   375 G$TCON$0$0 == 0x0088
                           000088   376 _TCON	=	0x0088
                           000089   377 G$TMOD$0$0 == 0x0089
                           000089   378 _TMOD	=	0x0089
                           00008A   379 G$TL0$0$0 == 0x008a
                           00008A   380 _TL0	=	0x008a
                           00008B   381 G$TL1$0$0 == 0x008b
                           00008B   382 _TL1	=	0x008b
                           00008C   383 G$TH0$0$0 == 0x008c
                           00008C   384 _TH0	=	0x008c
                           00008D   385 G$TH1$0$0 == 0x008d
                           00008D   386 _TH1	=	0x008d
                           00008E   387 G$CKCON$0$0 == 0x008e
                           00008E   388 _CKCON	=	0x008e
                           00008F   389 G$PSCTL$0$0 == 0x008f
                           00008F   390 _PSCTL	=	0x008f
                           000090   391 G$P1$0$0 == 0x0090
                           000090   392 _P1	=	0x0090
                           000091   393 G$TMR3CN$0$0 == 0x0091
                           000091   394 _TMR3CN	=	0x0091
                           000092   395 G$TMR3RLL$0$0 == 0x0092
                           000092   396 _TMR3RLL	=	0x0092
                           000093   397 G$TMR3RLH$0$0 == 0x0093
                           000093   398 _TMR3RLH	=	0x0093
                           000094   399 G$TMR3L$0$0 == 0x0094
                           000094   400 _TMR3L	=	0x0094
                           000095   401 G$TMR3H$0$0 == 0x0095
                           000095   402 _TMR3H	=	0x0095
                           000096   403 G$P7$0$0 == 0x0096
                           000096   404 _P7	=	0x0096
                           000098   405 G$SCON$0$0 == 0x0098
                           000098   406 _SCON	=	0x0098
                           000098   407 G$SCON0$0$0 == 0x0098
                           000098   408 _SCON0	=	0x0098
                           000099   409 G$SBUF$0$0 == 0x0099
                           000099   410 _SBUF	=	0x0099
                           000099   411 G$SBUF0$0$0 == 0x0099
                           000099   412 _SBUF0	=	0x0099
                           00009A   413 G$SPI0CFG$0$0 == 0x009a
                           00009A   414 _SPI0CFG	=	0x009a
                           00009B   415 G$SPI0DAT$0$0 == 0x009b
                           00009B   416 _SPI0DAT	=	0x009b
                           00009C   417 G$ADC1$0$0 == 0x009c
                           00009C   418 _ADC1	=	0x009c
                           00009D   419 G$SPI0CKR$0$0 == 0x009d
                           00009D   420 _SPI0CKR	=	0x009d
                           00009E   421 G$CPT0CN$0$0 == 0x009e
                           00009E   422 _CPT0CN	=	0x009e
                           00009F   423 G$CPT1CN$0$0 == 0x009f
                           00009F   424 _CPT1CN	=	0x009f
                           0000A0   425 G$P2$0$0 == 0x00a0
                           0000A0   426 _P2	=	0x00a0
                           0000A1   427 G$EMI0TC$0$0 == 0x00a1
                           0000A1   428 _EMI0TC	=	0x00a1
                           0000A3   429 G$EMI0CF$0$0 == 0x00a3
                           0000A3   430 _EMI0CF	=	0x00a3
                           0000A4   431 G$PRT0CF$0$0 == 0x00a4
                           0000A4   432 _PRT0CF	=	0x00a4
                           0000A4   433 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   434 _P0MDOUT	=	0x00a4
                           0000A5   435 G$PRT1CF$0$0 == 0x00a5
                           0000A5   436 _PRT1CF	=	0x00a5
                           0000A5   437 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   438 _P1MDOUT	=	0x00a5
                           0000A6   439 G$PRT2CF$0$0 == 0x00a6
                           0000A6   440 _PRT2CF	=	0x00a6
                           0000A6   441 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   442 _P2MDOUT	=	0x00a6
                           0000A7   443 G$PRT3CF$0$0 == 0x00a7
                           0000A7   444 _PRT3CF	=	0x00a7
                           0000A7   445 G$P3MDOUT$0$0 == 0x00a7
                           0000A7   446 _P3MDOUT	=	0x00a7
                           0000A8   447 G$IE$0$0 == 0x00a8
                           0000A8   448 _IE	=	0x00a8
                           0000A9   449 G$SADDR0$0$0 == 0x00a9
                           0000A9   450 _SADDR0	=	0x00a9
                           0000AA   451 G$ADC1CN$0$0 == 0x00aa
                           0000AA   452 _ADC1CN	=	0x00aa
                           0000AB   453 G$ADC1CF$0$0 == 0x00ab
                           0000AB   454 _ADC1CF	=	0x00ab
                           0000AC   455 G$AMX1SL$0$0 == 0x00ac
                           0000AC   456 _AMX1SL	=	0x00ac
                           0000AD   457 G$P3IF$0$0 == 0x00ad
                           0000AD   458 _P3IF	=	0x00ad
                           0000AE   459 G$SADEN1$0$0 == 0x00ae
                           0000AE   460 _SADEN1	=	0x00ae
                           0000AF   461 G$EMI0CN$0$0 == 0x00af
                           0000AF   462 _EMI0CN	=	0x00af
                           0000AF   463 G$_XPAGE$0$0 == 0x00af
                           0000AF   464 __XPAGE	=	0x00af
                           0000B0   465 G$P3$0$0 == 0x00b0
                           0000B0   466 _P3	=	0x00b0
                           0000B1   467 G$OSCXCN$0$0 == 0x00b1
                           0000B1   468 _OSCXCN	=	0x00b1
                           0000B2   469 G$OSCICN$0$0 == 0x00b2
                           0000B2   470 _OSCICN	=	0x00b2
                           0000B5   471 G$P74OUT$0$0 == 0x00b5
                           0000B5   472 _P74OUT	=	0x00b5
                           0000B6   473 G$FLSCL$0$0 == 0x00b6
                           0000B6   474 _FLSCL	=	0x00b6
                           0000B7   475 G$FLACL$0$0 == 0x00b7
                           0000B7   476 _FLACL	=	0x00b7
                           0000B8   477 G$IP$0$0 == 0x00b8
                           0000B8   478 _IP	=	0x00b8
                           0000B9   479 G$SADEN0$0$0 == 0x00b9
                           0000B9   480 _SADEN0	=	0x00b9
                           0000BA   481 G$AMX0CF$0$0 == 0x00ba
                           0000BA   482 _AMX0CF	=	0x00ba
                           0000BB   483 G$AMX0SL$0$0 == 0x00bb
                           0000BB   484 _AMX0SL	=	0x00bb
                           0000BC   485 G$ADC0CF$0$0 == 0x00bc
                           0000BC   486 _ADC0CF	=	0x00bc
                           0000BD   487 G$P1MDIN$0$0 == 0x00bd
                           0000BD   488 _P1MDIN	=	0x00bd
                           0000BE   489 G$ADC0L$0$0 == 0x00be
                           0000BE   490 _ADC0L	=	0x00be
                           0000BF   491 G$ADC0H$0$0 == 0x00bf
                           0000BF   492 _ADC0H	=	0x00bf
                           0000C0   493 G$SMB0CN$0$0 == 0x00c0
                           0000C0   494 _SMB0CN	=	0x00c0
                           0000C1   495 G$SMB0STA$0$0 == 0x00c1
                           0000C1   496 _SMB0STA	=	0x00c1
                           0000C2   497 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   498 _SMB0DAT	=	0x00c2
                           0000C3   499 G$SMB0ADR$0$0 == 0x00c3
                           0000C3   500 _SMB0ADR	=	0x00c3
                           0000C4   501 G$ADC0GTL$0$0 == 0x00c4
                           0000C4   502 _ADC0GTL	=	0x00c4
                           0000C5   503 G$ADC0GTH$0$0 == 0x00c5
                           0000C5   504 _ADC0GTH	=	0x00c5
                           0000C6   505 G$ADC0LTL$0$0 == 0x00c6
                           0000C6   506 _ADC0LTL	=	0x00c6
                           0000C7   507 G$ADC0LTH$0$0 == 0x00c7
                           0000C7   508 _ADC0LTH	=	0x00c7
                           0000C8   509 G$T2CON$0$0 == 0x00c8
                           0000C8   510 _T2CON	=	0x00c8
                           0000C9   511 G$T4CON$0$0 == 0x00c9
                           0000C9   512 _T4CON	=	0x00c9
                           0000CA   513 G$RCAP2L$0$0 == 0x00ca
                           0000CA   514 _RCAP2L	=	0x00ca
                           0000CB   515 G$RCAP2H$0$0 == 0x00cb
                           0000CB   516 _RCAP2H	=	0x00cb
                           0000CC   517 G$TL2$0$0 == 0x00cc
                           0000CC   518 _TL2	=	0x00cc
                           0000CD   519 G$TH2$0$0 == 0x00cd
                           0000CD   520 _TH2	=	0x00cd
                           0000CF   521 G$SMB0CR$0$0 == 0x00cf
                           0000CF   522 _SMB0CR	=	0x00cf
                           0000D0   523 G$PSW$0$0 == 0x00d0
                           0000D0   524 _PSW	=	0x00d0
                           0000D1   525 G$REF0CN$0$0 == 0x00d1
                           0000D1   526 _REF0CN	=	0x00d1
                           0000D2   527 G$DAC0L$0$0 == 0x00d2
                           0000D2   528 _DAC0L	=	0x00d2
                           0000D3   529 G$DAC0H$0$0 == 0x00d3
                           0000D3   530 _DAC0H	=	0x00d3
                           0000D4   531 G$DAC0CN$0$0 == 0x00d4
                           0000D4   532 _DAC0CN	=	0x00d4
                           0000D5   533 G$DAC1L$0$0 == 0x00d5
                           0000D5   534 _DAC1L	=	0x00d5
                           0000D6   535 G$DAC1H$0$0 == 0x00d6
                           0000D6   536 _DAC1H	=	0x00d6
                           0000D7   537 G$DAC1CN$0$0 == 0x00d7
                           0000D7   538 _DAC1CN	=	0x00d7
                           0000D8   539 G$PCA0CN$0$0 == 0x00d8
                           0000D8   540 _PCA0CN	=	0x00d8
                           0000D9   541 G$PCA0MD$0$0 == 0x00d9
                           0000D9   542 _PCA0MD	=	0x00d9
                           0000DA   543 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   544 _PCA0CPM0	=	0x00da
                           0000DB   545 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   546 _PCA0CPM1	=	0x00db
                           0000DC   547 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   548 _PCA0CPM2	=	0x00dc
                           0000DD   549 G$PCA0CPM3$0$0 == 0x00dd
                           0000DD   550 _PCA0CPM3	=	0x00dd
                           0000DE   551 G$PCA0CPM4$0$0 == 0x00de
                           0000DE   552 _PCA0CPM4	=	0x00de
                           0000E0   553 G$ACC$0$0 == 0x00e0
                           0000E0   554 _ACC	=	0x00e0
                           0000E1   555 G$XBR0$0$0 == 0x00e1
                           0000E1   556 _XBR0	=	0x00e1
                           0000E2   557 G$XBR1$0$0 == 0x00e2
                           0000E2   558 _XBR1	=	0x00e2
                           0000E3   559 G$XBR2$0$0 == 0x00e3
                           0000E3   560 _XBR2	=	0x00e3
                           0000E4   561 G$RCAP4L$0$0 == 0x00e4
                           0000E4   562 _RCAP4L	=	0x00e4
                           0000E5   563 G$RCAP4H$0$0 == 0x00e5
                           0000E5   564 _RCAP4H	=	0x00e5
                           0000E6   565 G$EIE1$0$0 == 0x00e6
                           0000E6   566 _EIE1	=	0x00e6
                           0000E7   567 G$EIE2$0$0 == 0x00e7
                           0000E7   568 _EIE2	=	0x00e7
                           0000E8   569 G$ADC0CN$0$0 == 0x00e8
                           0000E8   570 _ADC0CN	=	0x00e8
                           0000E9   571 G$PCA0L$0$0 == 0x00e9
                           0000E9   572 _PCA0L	=	0x00e9
                           0000EA   573 G$PCA0CPL0$0$0 == 0x00ea
                           0000EA   574 _PCA0CPL0	=	0x00ea
                           0000EB   575 G$PCA0CPL1$0$0 == 0x00eb
                           0000EB   576 _PCA0CPL1	=	0x00eb
                           0000EC   577 G$PCA0CPL2$0$0 == 0x00ec
                           0000EC   578 _PCA0CPL2	=	0x00ec
                           0000ED   579 G$PCA0CPL3$0$0 == 0x00ed
                           0000ED   580 _PCA0CPL3	=	0x00ed
                           0000EE   581 G$PCA0CPL4$0$0 == 0x00ee
                           0000EE   582 _PCA0CPL4	=	0x00ee
                           0000EF   583 G$RSTSRC$0$0 == 0x00ef
                           0000EF   584 _RSTSRC	=	0x00ef
                           0000F0   585 G$B$0$0 == 0x00f0
                           0000F0   586 _B	=	0x00f0
                           0000F1   587 G$SCON1$0$0 == 0x00f1
                           0000F1   588 _SCON1	=	0x00f1
                           0000F2   589 G$SBUF1$0$0 == 0x00f2
                           0000F2   590 _SBUF1	=	0x00f2
                           0000F3   591 G$SADDR1$0$0 == 0x00f3
                           0000F3   592 _SADDR1	=	0x00f3
                           0000F4   593 G$TL4$0$0 == 0x00f4
                           0000F4   594 _TL4	=	0x00f4
                           0000F5   595 G$TH4$0$0 == 0x00f5
                           0000F5   596 _TH4	=	0x00f5
                           0000F6   597 G$EIP1$0$0 == 0x00f6
                           0000F6   598 _EIP1	=	0x00f6
                           0000F7   599 G$EIP2$0$0 == 0x00f7
                           0000F7   600 _EIP2	=	0x00f7
                           0000F8   601 G$SPI0CN$0$0 == 0x00f8
                           0000F8   602 _SPI0CN	=	0x00f8
                           0000F9   603 G$PCA0H$0$0 == 0x00f9
                           0000F9   604 _PCA0H	=	0x00f9
                           0000FA   605 G$PCA0CPH0$0$0 == 0x00fa
                           0000FA   606 _PCA0CPH0	=	0x00fa
                           0000FB   607 G$PCA0CPH1$0$0 == 0x00fb
                           0000FB   608 _PCA0CPH1	=	0x00fb
                           0000FC   609 G$PCA0CPH2$0$0 == 0x00fc
                           0000FC   610 _PCA0CPH2	=	0x00fc
                           0000FD   611 G$PCA0CPH3$0$0 == 0x00fd
                           0000FD   612 _PCA0CPH3	=	0x00fd
                           0000FE   613 G$PCA0CPH4$0$0 == 0x00fe
                           0000FE   614 _PCA0CPH4	=	0x00fe
                           0000FF   615 G$WDTCN$0$0 == 0x00ff
                           0000FF   616 _WDTCN	=	0x00ff
                           008C8A   617 G$TMR0$0$0 == 0x8c8a
                           008C8A   618 _TMR0	=	0x8c8a
                           008D8B   619 G$TMR1$0$0 == 0x8d8b
                           008D8B   620 _TMR1	=	0x8d8b
                           00CDCC   621 G$TMR2$0$0 == 0xcdcc
                           00CDCC   622 _TMR2	=	0xcdcc
                           00CBCA   623 G$RCAP2$0$0 == 0xcbca
                           00CBCA   624 _RCAP2	=	0xcbca
                           009594   625 G$TMR3$0$0 == 0x9594
                           009594   626 _TMR3	=	0x9594
                           009392   627 G$TMR3RL$0$0 == 0x9392
                           009392   628 _TMR3RL	=	0x9392
                           00F5F4   629 G$TMR4$0$0 == 0xf5f4
                           00F5F4   630 _TMR4	=	0xf5f4
                           00E5E4   631 G$RCAP4$0$0 == 0xe5e4
                           00E5E4   632 _RCAP4	=	0xe5e4
                           00BFBE   633 G$ADC0$0$0 == 0xbfbe
                           00BFBE   634 _ADC0	=	0xbfbe
                           00C5C4   635 G$ADC0GT$0$0 == 0xc5c4
                           00C5C4   636 _ADC0GT	=	0xc5c4
                           00C7C6   637 G$ADC0LT$0$0 == 0xc7c6
                           00C7C6   638 _ADC0LT	=	0xc7c6
                           00D3D2   639 G$DAC0$0$0 == 0xd3d2
                           00D3D2   640 _DAC0	=	0xd3d2
                           00D6D5   641 G$DAC1$0$0 == 0xd6d5
                           00D6D5   642 _DAC1	=	0xd6d5
                           00F9E9   643 G$PCA0$0$0 == 0xf9e9
                           00F9E9   644 _PCA0	=	0xf9e9
                           00FAEA   645 G$PCA0CP0$0$0 == 0xfaea
                           00FAEA   646 _PCA0CP0	=	0xfaea
                           00FBEB   647 G$PCA0CP1$0$0 == 0xfbeb
                           00FBEB   648 _PCA0CP1	=	0xfbeb
                           00FCEC   649 G$PCA0CP2$0$0 == 0xfcec
                           00FCEC   650 _PCA0CP2	=	0xfcec
                           00FDED   651 G$PCA0CP3$0$0 == 0xfded
                           00FDED   652 _PCA0CP3	=	0xfded
                           00FEEE   653 G$PCA0CP4$0$0 == 0xfeee
                           00FEEE   654 _PCA0CP4	=	0xfeee
                                    655 ;--------------------------------------------------------
                                    656 ; special function bits
                                    657 ;--------------------------------------------------------
                                    658 	.area RSEG    (ABS,DATA)
      000000                        659 	.org 0x0000
                           000080   660 G$P0_0$0$0 == 0x0080
                           000080   661 _P0_0	=	0x0080
                           000081   662 G$P0_1$0$0 == 0x0081
                           000081   663 _P0_1	=	0x0081
                           000082   664 G$P0_2$0$0 == 0x0082
                           000082   665 _P0_2	=	0x0082
                           000083   666 G$P0_3$0$0 == 0x0083
                           000083   667 _P0_3	=	0x0083
                           000084   668 G$P0_4$0$0 == 0x0084
                           000084   669 _P0_4	=	0x0084
                           000085   670 G$P0_5$0$0 == 0x0085
                           000085   671 _P0_5	=	0x0085
                           000086   672 G$P0_6$0$0 == 0x0086
                           000086   673 _P0_6	=	0x0086
                           000087   674 G$P0_7$0$0 == 0x0087
                           000087   675 _P0_7	=	0x0087
                           000088   676 G$IT0$0$0 == 0x0088
                           000088   677 _IT0	=	0x0088
                           000089   678 G$IE0$0$0 == 0x0089
                           000089   679 _IE0	=	0x0089
                           00008A   680 G$IT1$0$0 == 0x008a
                           00008A   681 _IT1	=	0x008a
                           00008B   682 G$IE1$0$0 == 0x008b
                           00008B   683 _IE1	=	0x008b
                           00008C   684 G$TR0$0$0 == 0x008c
                           00008C   685 _TR0	=	0x008c
                           00008D   686 G$TF0$0$0 == 0x008d
                           00008D   687 _TF0	=	0x008d
                           00008E   688 G$TR1$0$0 == 0x008e
                           00008E   689 _TR1	=	0x008e
                           00008F   690 G$TF1$0$0 == 0x008f
                           00008F   691 _TF1	=	0x008f
                           000090   692 G$P1_0$0$0 == 0x0090
                           000090   693 _P1_0	=	0x0090
                           000091   694 G$P1_1$0$0 == 0x0091
                           000091   695 _P1_1	=	0x0091
                           000092   696 G$P1_2$0$0 == 0x0092
                           000092   697 _P1_2	=	0x0092
                           000093   698 G$P1_3$0$0 == 0x0093
                           000093   699 _P1_3	=	0x0093
                           000094   700 G$P1_4$0$0 == 0x0094
                           000094   701 _P1_4	=	0x0094
                           000095   702 G$P1_5$0$0 == 0x0095
                           000095   703 _P1_5	=	0x0095
                           000096   704 G$P1_6$0$0 == 0x0096
                           000096   705 _P1_6	=	0x0096
                           000097   706 G$P1_7$0$0 == 0x0097
                           000097   707 _P1_7	=	0x0097
                           000098   708 G$RI$0$0 == 0x0098
                           000098   709 _RI	=	0x0098
                           000098   710 G$RI0$0$0 == 0x0098
                           000098   711 _RI0	=	0x0098
                           000099   712 G$TI$0$0 == 0x0099
                           000099   713 _TI	=	0x0099
                           000099   714 G$TI0$0$0 == 0x0099
                           000099   715 _TI0	=	0x0099
                           00009A   716 G$RB8$0$0 == 0x009a
                           00009A   717 _RB8	=	0x009a
                           00009A   718 G$RB80$0$0 == 0x009a
                           00009A   719 _RB80	=	0x009a
                           00009B   720 G$TB8$0$0 == 0x009b
                           00009B   721 _TB8	=	0x009b
                           00009B   722 G$TB80$0$0 == 0x009b
                           00009B   723 _TB80	=	0x009b
                           00009C   724 G$REN$0$0 == 0x009c
                           00009C   725 _REN	=	0x009c
                           00009C   726 G$REN0$0$0 == 0x009c
                           00009C   727 _REN0	=	0x009c
                           00009D   728 G$SM2$0$0 == 0x009d
                           00009D   729 _SM2	=	0x009d
                           00009D   730 G$SM20$0$0 == 0x009d
                           00009D   731 _SM20	=	0x009d
                           00009D   732 G$MCE0$0$0 == 0x009d
                           00009D   733 _MCE0	=	0x009d
                           00009E   734 G$SM1$0$0 == 0x009e
                           00009E   735 _SM1	=	0x009e
                           00009E   736 G$SM10$0$0 == 0x009e
                           00009E   737 _SM10	=	0x009e
                           00009F   738 G$SM0$0$0 == 0x009f
                           00009F   739 _SM0	=	0x009f
                           00009F   740 G$SM00$0$0 == 0x009f
                           00009F   741 _SM00	=	0x009f
                           00009F   742 G$S0MODE$0$0 == 0x009f
                           00009F   743 _S0MODE	=	0x009f
                           0000A0   744 G$P2_0$0$0 == 0x00a0
                           0000A0   745 _P2_0	=	0x00a0
                           0000A1   746 G$P2_1$0$0 == 0x00a1
                           0000A1   747 _P2_1	=	0x00a1
                           0000A2   748 G$P2_2$0$0 == 0x00a2
                           0000A2   749 _P2_2	=	0x00a2
                           0000A3   750 G$P2_3$0$0 == 0x00a3
                           0000A3   751 _P2_3	=	0x00a3
                           0000A4   752 G$P2_4$0$0 == 0x00a4
                           0000A4   753 _P2_4	=	0x00a4
                           0000A5   754 G$P2_5$0$0 == 0x00a5
                           0000A5   755 _P2_5	=	0x00a5
                           0000A6   756 G$P2_6$0$0 == 0x00a6
                           0000A6   757 _P2_6	=	0x00a6
                           0000A7   758 G$P2_7$0$0 == 0x00a7
                           0000A7   759 _P2_7	=	0x00a7
                           0000A8   760 G$EX0$0$0 == 0x00a8
                           0000A8   761 _EX0	=	0x00a8
                           0000A9   762 G$ET0$0$0 == 0x00a9
                           0000A9   763 _ET0	=	0x00a9
                           0000AA   764 G$EX1$0$0 == 0x00aa
                           0000AA   765 _EX1	=	0x00aa
                           0000AB   766 G$ET1$0$0 == 0x00ab
                           0000AB   767 _ET1	=	0x00ab
                           0000AC   768 G$ES0$0$0 == 0x00ac
                           0000AC   769 _ES0	=	0x00ac
                           0000AC   770 G$ES$0$0 == 0x00ac
                           0000AC   771 _ES	=	0x00ac
                           0000AD   772 G$ET2$0$0 == 0x00ad
                           0000AD   773 _ET2	=	0x00ad
                           0000AF   774 G$EA$0$0 == 0x00af
                           0000AF   775 _EA	=	0x00af
                           0000B0   776 G$P3_0$0$0 == 0x00b0
                           0000B0   777 _P3_0	=	0x00b0
                           0000B1   778 G$P3_1$0$0 == 0x00b1
                           0000B1   779 _P3_1	=	0x00b1
                           0000B2   780 G$P3_2$0$0 == 0x00b2
                           0000B2   781 _P3_2	=	0x00b2
                           0000B3   782 G$P3_3$0$0 == 0x00b3
                           0000B3   783 _P3_3	=	0x00b3
                           0000B4   784 G$P3_4$0$0 == 0x00b4
                           0000B4   785 _P3_4	=	0x00b4
                           0000B5   786 G$P3_5$0$0 == 0x00b5
                           0000B5   787 _P3_5	=	0x00b5
                           0000B6   788 G$P3_6$0$0 == 0x00b6
                           0000B6   789 _P3_6	=	0x00b6
                           0000B7   790 G$P3_7$0$0 == 0x00b7
                           0000B7   791 _P3_7	=	0x00b7
                           0000B8   792 G$PX0$0$0 == 0x00b8
                           0000B8   793 _PX0	=	0x00b8
                           0000B9   794 G$PT0$0$0 == 0x00b9
                           0000B9   795 _PT0	=	0x00b9
                           0000BA   796 G$PX1$0$0 == 0x00ba
                           0000BA   797 _PX1	=	0x00ba
                           0000BB   798 G$PT1$0$0 == 0x00bb
                           0000BB   799 _PT1	=	0x00bb
                           0000BC   800 G$PS0$0$0 == 0x00bc
                           0000BC   801 _PS0	=	0x00bc
                           0000BC   802 G$PS$0$0 == 0x00bc
                           0000BC   803 _PS	=	0x00bc
                           0000BD   804 G$PT2$0$0 == 0x00bd
                           0000BD   805 _PT2	=	0x00bd
                           0000C0   806 G$SMBTOE$0$0 == 0x00c0
                           0000C0   807 _SMBTOE	=	0x00c0
                           0000C1   808 G$SMBFTE$0$0 == 0x00c1
                           0000C1   809 _SMBFTE	=	0x00c1
                           0000C2   810 G$AA$0$0 == 0x00c2
                           0000C2   811 _AA	=	0x00c2
                           0000C3   812 G$SI$0$0 == 0x00c3
                           0000C3   813 _SI	=	0x00c3
                           0000C4   814 G$STO$0$0 == 0x00c4
                           0000C4   815 _STO	=	0x00c4
                           0000C5   816 G$STA$0$0 == 0x00c5
                           0000C5   817 _STA	=	0x00c5
                           0000C6   818 G$ENSMB$0$0 == 0x00c6
                           0000C6   819 _ENSMB	=	0x00c6
                           0000C7   820 G$BUSY$0$0 == 0x00c7
                           0000C7   821 _BUSY	=	0x00c7
                           0000C8   822 G$CPRL2$0$0 == 0x00c8
                           0000C8   823 _CPRL2	=	0x00c8
                           0000C9   824 G$CT2$0$0 == 0x00c9
                           0000C9   825 _CT2	=	0x00c9
                           0000CA   826 G$TR2$0$0 == 0x00ca
                           0000CA   827 _TR2	=	0x00ca
                           0000CB   828 G$EXEN2$0$0 == 0x00cb
                           0000CB   829 _EXEN2	=	0x00cb
                           0000CC   830 G$TCLK$0$0 == 0x00cc
                           0000CC   831 _TCLK	=	0x00cc
                           0000CD   832 G$RCLK$0$0 == 0x00cd
                           0000CD   833 _RCLK	=	0x00cd
                           0000CE   834 G$EXF2$0$0 == 0x00ce
                           0000CE   835 _EXF2	=	0x00ce
                           0000CF   836 G$TF2$0$0 == 0x00cf
                           0000CF   837 _TF2	=	0x00cf
                           0000D0   838 G$P$0$0 == 0x00d0
                           0000D0   839 _P	=	0x00d0
                           0000D1   840 G$F1$0$0 == 0x00d1
                           0000D1   841 _F1	=	0x00d1
                           0000D2   842 G$OV$0$0 == 0x00d2
                           0000D2   843 _OV	=	0x00d2
                           0000D3   844 G$RS0$0$0 == 0x00d3
                           0000D3   845 _RS0	=	0x00d3
                           0000D4   846 G$RS1$0$0 == 0x00d4
                           0000D4   847 _RS1	=	0x00d4
                           0000D5   848 G$F0$0$0 == 0x00d5
                           0000D5   849 _F0	=	0x00d5
                           0000D6   850 G$AC$0$0 == 0x00d6
                           0000D6   851 _AC	=	0x00d6
                           0000D7   852 G$CY$0$0 == 0x00d7
                           0000D7   853 _CY	=	0x00d7
                           0000D8   854 G$CCF0$0$0 == 0x00d8
                           0000D8   855 _CCF0	=	0x00d8
                           0000D9   856 G$CCF1$0$0 == 0x00d9
                           0000D9   857 _CCF1	=	0x00d9
                           0000DA   858 G$CCF2$0$0 == 0x00da
                           0000DA   859 _CCF2	=	0x00da
                           0000DB   860 G$CCF3$0$0 == 0x00db
                           0000DB   861 _CCF3	=	0x00db
                           0000DC   862 G$CCF4$0$0 == 0x00dc
                           0000DC   863 _CCF4	=	0x00dc
                           0000DE   864 G$CR$0$0 == 0x00de
                           0000DE   865 _CR	=	0x00de
                           0000DF   866 G$CF$0$0 == 0x00df
                           0000DF   867 _CF	=	0x00df
                           0000E8   868 G$ADLJST$0$0 == 0x00e8
                           0000E8   869 _ADLJST	=	0x00e8
                           0000E8   870 G$AD0LJST$0$0 == 0x00e8
                           0000E8   871 _AD0LJST	=	0x00e8
                           0000E9   872 G$ADWINT$0$0 == 0x00e9
                           0000E9   873 _ADWINT	=	0x00e9
                           0000E9   874 G$AD0WINT$0$0 == 0x00e9
                           0000E9   875 _AD0WINT	=	0x00e9
                           0000EA   876 G$ADSTM0$0$0 == 0x00ea
                           0000EA   877 _ADSTM0	=	0x00ea
                           0000EA   878 G$AD0CM0$0$0 == 0x00ea
                           0000EA   879 _AD0CM0	=	0x00ea
                           0000EB   880 G$ADSTM1$0$0 == 0x00eb
                           0000EB   881 _ADSTM1	=	0x00eb
                           0000EB   882 G$AD0CM1$0$0 == 0x00eb
                           0000EB   883 _AD0CM1	=	0x00eb
                           0000EC   884 G$ADBUSY$0$0 == 0x00ec
                           0000EC   885 _ADBUSY	=	0x00ec
                           0000EC   886 G$AD0BUSY$0$0 == 0x00ec
                           0000EC   887 _AD0BUSY	=	0x00ec
                           0000ED   888 G$ADCINT$0$0 == 0x00ed
                           0000ED   889 _ADCINT	=	0x00ed
                           0000ED   890 G$AD0INT$0$0 == 0x00ed
                           0000ED   891 _AD0INT	=	0x00ed
                           0000EE   892 G$ADCTM$0$0 == 0x00ee
                           0000EE   893 _ADCTM	=	0x00ee
                           0000EE   894 G$AD0TM$0$0 == 0x00ee
                           0000EE   895 _AD0TM	=	0x00ee
                           0000EF   896 G$ADCEN$0$0 == 0x00ef
                           0000EF   897 _ADCEN	=	0x00ef
                           0000EF   898 G$AD0EN$0$0 == 0x00ef
                           0000EF   899 _AD0EN	=	0x00ef
                           0000F8   900 G$SPIEN$0$0 == 0x00f8
                           0000F8   901 _SPIEN	=	0x00f8
                           0000F9   902 G$MSTEN$0$0 == 0x00f9
                           0000F9   903 _MSTEN	=	0x00f9
                           0000FA   904 G$SLVSEL$0$0 == 0x00fa
                           0000FA   905 _SLVSEL	=	0x00fa
                           0000FB   906 G$TXBSY$0$0 == 0x00fb
                           0000FB   907 _TXBSY	=	0x00fb
                           0000FC   908 G$RXOVRN$0$0 == 0x00fc
                           0000FC   909 _RXOVRN	=	0x00fc
                           0000FD   910 G$MODF$0$0 == 0x00fd
                           0000FD   911 _MODF	=	0x00fd
                           0000FE   912 G$WCOL$0$0 == 0x00fe
                           0000FE   913 _WCOL	=	0x00fe
                           0000FF   914 G$SPIF$0$0 == 0x00ff
                           0000FF   915 _SPIF	=	0x00ff
                           0000C7   916 G$BUS_BUSY$0$0 == 0x00c7
                           0000C7   917 _BUS_BUSY	=	0x00c7
                           0000C6   918 G$BUS_EN$0$0 == 0x00c6
                           0000C6   919 _BUS_EN	=	0x00c6
                           0000C5   920 G$BUS_START$0$0 == 0x00c5
                           0000C5   921 _BUS_START	=	0x00c5
                           0000C4   922 G$BUS_STOP$0$0 == 0x00c4
                           0000C4   923 _BUS_STOP	=	0x00c4
                           0000C3   924 G$BUS_INT$0$0 == 0x00c3
                           0000C3   925 _BUS_INT	=	0x00c3
                           0000C2   926 G$BUS_AA$0$0 == 0x00c2
                           0000C2   927 _BUS_AA	=	0x00c2
                           0000C1   928 G$BUS_FTE$0$0 == 0x00c1
                           0000C1   929 _BUS_FTE	=	0x00c1
                           0000C0   930 G$BUS_TOE$0$0 == 0x00c0
                           0000C0   931 _BUS_TOE	=	0x00c0
                           000083   932 G$BUS_SCL$0$0 == 0x0083
                           000083   933 _BUS_SCL	=	0x0083
                           0000B5   934 G$SS1$0$0 == 0x00b5
                           0000B5   935 _SS1	=	0x00b5
                           0000B1   936 G$SS2$0$0 == 0x00b1
                           0000B1   937 _SS2	=	0x00b1
                           0000B3   938 G$SS3$0$0 == 0x00b3
                           0000B3   939 _SS3	=	0x00b3
                                    940 ;--------------------------------------------------------
                                    941 ; overlayable register banks
                                    942 ;--------------------------------------------------------
                                    943 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        944 	.ds 8
                                    945 ;--------------------------------------------------------
                                    946 ; internal ram data
                                    947 ;--------------------------------------------------------
                                    948 	.area DSEG    (DATA)
                           000000   949 G$Data2$0$0==.
      000022                        950 _Data2::
      000022                        951 	.ds 3
                           000003   952 Llab3_3.aligned_alloc$size$1$39==.
      000025                        953 _aligned_alloc_PARM_2:
      000025                        954 	.ds 2
                           000005   955 Llab3_3.lcd_clear$NumBytes$1$85==.
      000027                        956 _lcd_clear_NumBytes_1_85:
      000027                        957 	.ds 1
                           000006   958 Llab3_3.lcd_clear$Cmd$1$85==.
      000028                        959 _lcd_clear_Cmd_1_85:
      000028                        960 	.ds 2
                           000008   961 Llab3_3.read_keypad$Data$1$86==.
      00002A                        962 _read_keypad_Data_1_86:
      00002A                        963 	.ds 2
                           00000A   964 Llab3_3.i2c_write_data$start_reg$1$105==.
      00002C                        965 _i2c_write_data_PARM_2:
      00002C                        966 	.ds 1
                           00000B   967 Llab3_3.i2c_write_data$buffer$1$105==.
      00002D                        968 _i2c_write_data_PARM_3:
      00002D                        969 	.ds 3
                           00000E   970 Llab3_3.i2c_write_data$num_bytes$1$105==.
      000030                        971 _i2c_write_data_PARM_4:
      000030                        972 	.ds 1
                           00000F   973 Llab3_3.i2c_read_data$start_reg$1$107==.
      000031                        974 _i2c_read_data_PARM_2:
      000031                        975 	.ds 1
                           000010   976 Llab3_3.i2c_read_data$buffer$1$107==.
      000032                        977 _i2c_read_data_PARM_3:
      000032                        978 	.ds 3
                           000013   979 Llab3_3.i2c_read_data$num_bytes$1$107==.
      000035                        980 _i2c_read_data_PARM_4:
      000035                        981 	.ds 1
                           000014   982 G$PW_MIN$0$0==.
      000036                        983 _PW_MIN::
      000036                        984 	.ds 2
                           000016   985 G$PW_MAX$0$0==.
      000038                        986 _PW_MAX::
      000038                        987 	.ds 2
                           000018   988 G$PW$0$0==.
      00003A                        989 _PW::
      00003A                        990 	.ds 2
                           00001A   991 G$PCA_start$0$0==.
      00003C                        992 _PCA_start::
      00003C                        993 	.ds 2
                           00001C   994 G$addr$0$0==.
      00003E                        995 _addr::
      00003E                        996 	.ds 1
                           00001D   997 G$l_count$0$0==.
      00003F                        998 _l_count::
      00003F                        999 	.ds 1
                           00001E  1000 G$new_light$0$0==.
      000040                       1001 _new_light::
      000040                       1002 	.ds 1
                           00001F  1003 G$read$0$0==.
      000041                       1004 _read::
      000041                       1005 	.ds 2
                           000021  1006 G$Data$0$0==.
      000043                       1007 _Data::
      000043                       1008 	.ds 4
                           000025  1009 G$c_addr$0$0==.
      000047                       1010 _c_addr::
      000047                       1011 	.ds 1
                           000026  1012 G$c_Data$0$0==.
      000048                       1013 _c_Data::
      000048                       1014 	.ds 2
                           000028  1015 G$heading$0$0==.
      00004A                       1016 _heading::
      00004A                       1017 	.ds 2
                           00002A  1018 G$h_count$0$0==.
      00004C                       1019 _h_count::
      00004C                       1020 	.ds 2
                           00002C  1021 G$new_heading$0$0==.
      00004E                       1022 _new_heading::
      00004E                       1023 	.ds 1
                           00002D  1024 G$version$0$0==.
      00004F                       1025 _version::
      00004F                       1026 	.ds 2
                                   1027 ;--------------------------------------------------------
                                   1028 ; overlayable items in internal ram 
                                   1029 ;--------------------------------------------------------
                                   1030 	.area	OSEG    (OVR,DATA)
                                   1031 	.area	OSEG    (OVR,DATA)
                                   1032 	.area	OSEG    (OVR,DATA)
                                   1033 	.area	OSEG    (OVR,DATA)
                                   1034 	.area	OSEG    (OVR,DATA)
                                   1035 	.area	OSEG    (OVR,DATA)
                                   1036 	.area	OSEG    (OVR,DATA)
                                   1037 ;--------------------------------------------------------
                                   1038 ; Stack segment in internal ram 
                                   1039 ;--------------------------------------------------------
                                   1040 	.area	SSEG
      00006B                       1041 __start__stack:
      00006B                       1042 	.ds	1
                                   1043 
                                   1044 ;--------------------------------------------------------
                                   1045 ; indirectly addressable internal ram data
                                   1046 ;--------------------------------------------------------
                                   1047 	.area ISEG    (DATA)
                                   1048 ;--------------------------------------------------------
                                   1049 ; absolute internal ram data
                                   1050 ;--------------------------------------------------------
                                   1051 	.area IABS    (ABS,DATA)
                                   1052 	.area IABS    (ABS,DATA)
                                   1053 ;--------------------------------------------------------
                                   1054 ; bit data
                                   1055 ;--------------------------------------------------------
                                   1056 	.area BSEG    (BIT)
                                   1057 ;--------------------------------------------------------
                                   1058 ; paged external ram data
                                   1059 ;--------------------------------------------------------
                                   1060 	.area PSEG    (PAG,XDATA)
                                   1061 ;--------------------------------------------------------
                                   1062 ; external ram data
                                   1063 ;--------------------------------------------------------
                                   1064 	.area XSEG    (XDATA)
                           000000  1065 Llab3_3.lcd_print$text$1$81==.
      000001                       1066 _lcd_print_text_1_81:
      000001                       1067 	.ds 80
                                   1068 ;--------------------------------------------------------
                                   1069 ; absolute external ram data
                                   1070 ;--------------------------------------------------------
                                   1071 	.area XABS    (ABS,XDATA)
                                   1072 ;--------------------------------------------------------
                                   1073 ; external initialized ram data
                                   1074 ;--------------------------------------------------------
                                   1075 	.area XISEG   (XDATA)
                                   1076 	.area HOME    (CODE)
                                   1077 	.area GSINIT0 (CODE)
                                   1078 	.area GSINIT1 (CODE)
                                   1079 	.area GSINIT2 (CODE)
                                   1080 	.area GSINIT3 (CODE)
                                   1081 	.area GSINIT4 (CODE)
                                   1082 	.area GSINIT5 (CODE)
                                   1083 	.area GSINIT  (CODE)
                                   1084 	.area GSFINAL (CODE)
                                   1085 	.area CSEG    (CODE)
                                   1086 ;--------------------------------------------------------
                                   1087 ; interrupt vector 
                                   1088 ;--------------------------------------------------------
                                   1089 	.area HOME    (CODE)
      000000                       1090 __interrupt_vect:
      000000 02 00 51         [24] 1091 	ljmp	__sdcc_gsinit_startup
      000003 32               [24] 1092 	reti
      000004                       1093 	.ds	7
      00000B 32               [24] 1094 	reti
      00000C                       1095 	.ds	7
      000013 32               [24] 1096 	reti
      000014                       1097 	.ds	7
      00001B 32               [24] 1098 	reti
      00001C                       1099 	.ds	7
      000023 32               [24] 1100 	reti
      000024                       1101 	.ds	7
      00002B 32               [24] 1102 	reti
      00002C                       1103 	.ds	7
      000033 32               [24] 1104 	reti
      000034                       1105 	.ds	7
      00003B 32               [24] 1106 	reti
      00003C                       1107 	.ds	7
      000043 32               [24] 1108 	reti
      000044                       1109 	.ds	7
      00004B 02 06 66         [24] 1110 	ljmp	_PCA_ISR
                                   1111 ;--------------------------------------------------------
                                   1112 ; global & static initialisations
                                   1113 ;--------------------------------------------------------
                                   1114 	.area HOME    (CODE)
                                   1115 	.area GSINIT  (CODE)
                                   1116 	.area GSFINAL (CODE)
                                   1117 	.area GSINIT  (CODE)
                                   1118 	.globl __sdcc_gsinit_startup
                                   1119 	.globl __sdcc_program_startup
                                   1120 	.globl __start__stack
                                   1121 	.globl __mcs51_genXINIT
                                   1122 	.globl __mcs51_genXRAMCLEAR
                                   1123 	.globl __mcs51_genRAMCLEAR
                           000000  1124 	C$lab3_3.c$37$1$140 ==.
                                   1125 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:37: unsigned int PW_MIN = 1844;
      0000AA 75 36 34         [24] 1126 	mov	_PW_MIN,#0x34
      0000AD 75 37 07         [24] 1127 	mov	(_PW_MIN + 1),#0x07
                           000006  1128 	C$lab3_3.c$38$1$140 ==.
                                   1129 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:38: unsigned int PW_MAX = 28420; //brightest //35020;//19ms pw
      0000B0 75 38 04         [24] 1130 	mov	_PW_MAX,#0x04
      0000B3 75 39 6F         [24] 1131 	mov	(_PW_MAX + 1),#0x6f
                           00000C  1132 	C$lab3_3.c$39$1$140 ==.
                                   1133 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:39: unsigned int PW = 18432;
      0000B6 75 3A 00         [24] 1134 	mov	_PW,#0x00
      0000B9 75 3B 48         [24] 1135 	mov	(_PW + 1),#0x48
                           000012  1136 	C$lab3_3.c$40$1$140 ==.
                                   1137 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:40: unsigned int PCA_start = 28672;   // start count for PCA
      0000BC 75 3C 00         [24] 1138 	mov	_PCA_start,#0x00
      0000BF 75 3D 70         [24] 1139 	mov	(_PCA_start + 1),#0x70
                           000018  1140 	C$lab3_3.c$47$1$140 ==.
                                   1141 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:47: unsigned char addr = 0xE0; //Ultrasonic Memory Address
      0000C2 75 3E E0         [24] 1142 	mov	_addr,#0xe0
                           00001B  1143 	C$lab3_3.c$48$1$140 ==.
                                   1144 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:48: unsigned char l_count = 0;
      0000C5 75 3F 00         [24] 1145 	mov	_l_count,#0x00
                           00001E  1146 	C$lab3_3.c$53$1$140 ==.
                                   1147 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:53: unsigned char c_addr = 0xC0;
      0000C8 75 47 C0         [24] 1148 	mov	_c_addr,#0xc0
                           000021  1149 	C$lab3_3.c$56$1$140 ==.
                                   1150 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:56: unsigned int h_count = 0;
      0000CB E4               [12] 1151 	clr	a
      0000CC F5 4C            [12] 1152 	mov	_h_count,a
      0000CE F5 4D            [12] 1153 	mov	(_h_count + 1),a
                           000026  1154 	C$lab3_3.c$57$1$140 ==.
                                   1155 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:57: unsigned char new_heading = 0;
                                   1156 ;	1-genFromRTrack replaced	mov	_new_heading,#0x00
      0000D0 F5 4E            [12] 1157 	mov	_new_heading,a
                                   1158 	.area GSFINAL (CODE)
      0000D2 02 00 4E         [24] 1159 	ljmp	__sdcc_program_startup
                                   1160 ;--------------------------------------------------------
                                   1161 ; Home
                                   1162 ;--------------------------------------------------------
                                   1163 	.area HOME    (CODE)
                                   1164 	.area HOME    (CODE)
      00004E                       1165 __sdcc_program_startup:
      00004E 02 05 DB         [24] 1166 	ljmp	_main
                                   1167 ;	return from main will return to caller
                                   1168 ;--------------------------------------------------------
                                   1169 ; code
                                   1170 ;--------------------------------------------------------
                                   1171 	.area CSEG    (CODE)
                                   1172 ;------------------------------------------------------------
                                   1173 ;Allocation info for local variables in function 'SYSCLK_Init'
                                   1174 ;------------------------------------------------------------
                                   1175 ;i                         Allocated to registers r6 r7 
                                   1176 ;------------------------------------------------------------
                           000000  1177 	G$SYSCLK_Init$0$0 ==.
                           000000  1178 	C$c8051_SDCC.h$62$0$0 ==.
                                   1179 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:62: void SYSCLK_Init(void)
                                   1180 ;	-----------------------------------------
                                   1181 ;	 function SYSCLK_Init
                                   1182 ;	-----------------------------------------
      0000D5                       1183 _SYSCLK_Init:
                           000007  1184 	ar7 = 0x07
                           000006  1185 	ar6 = 0x06
                           000005  1186 	ar5 = 0x05
                           000004  1187 	ar4 = 0x04
                           000003  1188 	ar3 = 0x03
                           000002  1189 	ar2 = 0x02
                           000001  1190 	ar1 = 0x01
                           000000  1191 	ar0 = 0x00
                           000000  1192 	C$c8051_SDCC.h$66$1$2 ==.
                                   1193 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:66: OSCXCN = 0x67;                      // start external oscillator with
      0000D5 75 B1 67         [24] 1194 	mov	_OSCXCN,#0x67
                           000003  1195 	C$c8051_SDCC.h$69$1$2 ==.
                                   1196 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:69: for (i=0; i < 256; i++);            // wait for oscillator to start
      0000D8 7E 00            [12] 1197 	mov	r6,#0x00
      0000DA 7F 01            [12] 1198 	mov	r7,#0x01
      0000DC                       1199 00107$:
      0000DC EE               [12] 1200 	mov	a,r6
      0000DD 24 FF            [12] 1201 	add	a,#0xff
      0000DF FC               [12] 1202 	mov	r4,a
      0000E0 EF               [12] 1203 	mov	a,r7
      0000E1 34 FF            [12] 1204 	addc	a,#0xff
      0000E3 FD               [12] 1205 	mov	r5,a
      0000E4 8C 06            [24] 1206 	mov	ar6,r4
      0000E6 8D 07            [24] 1207 	mov	ar7,r5
      0000E8 EC               [12] 1208 	mov	a,r4
      0000E9 4D               [12] 1209 	orl	a,r5
      0000EA 70 F0            [24] 1210 	jnz	00107$
                           000017  1211 	C$c8051_SDCC.h$71$1$2 ==.
                                   1212 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:71: while (!(OSCXCN & 0x80));           // Wait for crystal osc. to settle
      0000EC                       1213 00102$:
      0000EC E5 B1            [12] 1214 	mov	a,_OSCXCN
      0000EE 30 E7 FB         [24] 1215 	jnb	acc.7,00102$
                           00001C  1216 	C$c8051_SDCC.h$73$1$2 ==.
                                   1217 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:73: OSCICN = 0x88;                      // select external oscillator as SYSCLK
      0000F1 75 B2 88         [24] 1218 	mov	_OSCICN,#0x88
                           00001F  1219 	C$c8051_SDCC.h$76$1$2 ==.
                           00001F  1220 	XG$SYSCLK_Init$0$0 ==.
      0000F4 22               [24] 1221 	ret
                                   1222 ;------------------------------------------------------------
                                   1223 ;Allocation info for local variables in function 'UART0_Init'
                                   1224 ;------------------------------------------------------------
                           000020  1225 	G$UART0_Init$0$0 ==.
                           000020  1226 	C$c8051_SDCC.h$84$1$2 ==.
                                   1227 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:84: void UART0_Init(void)
                                   1228 ;	-----------------------------------------
                                   1229 ;	 function UART0_Init
                                   1230 ;	-----------------------------------------
      0000F5                       1231 _UART0_Init:
                           000020  1232 	C$c8051_SDCC.h$86$1$4 ==.
                                   1233 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:86: SCON0  = 0x50;                      // SCON0: mode 1, 8-bit UART, enable RX
      0000F5 75 98 50         [24] 1234 	mov	_SCON0,#0x50
                           000023  1235 	C$c8051_SDCC.h$87$1$4 ==.
                                   1236 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:87: TMOD   = 0x20;                      // TMOD: timer 1, mode 2, 8-bit reload
      0000F8 75 89 20         [24] 1237 	mov	_TMOD,#0x20
                           000026  1238 	C$c8051_SDCC.h$88$1$4 ==.
                                   1239 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:88: TH1    = 0xFF&-(SYSCLK/BAUDRATE/16);     // set Timer1 reload value for baudrate
      0000FB 75 8D DC         [24] 1240 	mov	_TH1,#0xdc
                           000029  1241 	C$c8051_SDCC.h$89$1$4 ==.
                                   1242 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:89: TR1    = 1;                         // start Timer1
      0000FE D2 8E            [12] 1243 	setb	_TR1
                           00002B  1244 	C$c8051_SDCC.h$90$1$4 ==.
                                   1245 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:90: CKCON |= 0x10;                      // Timer1 uses SYSCLK as time base
      000100 43 8E 10         [24] 1246 	orl	_CKCON,#0x10
                           00002E  1247 	C$c8051_SDCC.h$91$1$4 ==.
                                   1248 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:91: PCON  |= 0x80;                      // SMOD00 = 1 (disable baud rate 
      000103 43 87 80         [24] 1249 	orl	_PCON,#0x80
                           000031  1250 	C$c8051_SDCC.h$93$1$4 ==.
                                   1251 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:93: TI0    = 1;                         // Indicate TX0 ready
      000106 D2 99            [12] 1252 	setb	_TI0
                           000033  1253 	C$c8051_SDCC.h$94$1$4 ==.
                                   1254 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:94: P0MDOUT |= 0x01;                    // Set TX0 to push/pull
      000108 43 A4 01         [24] 1255 	orl	_P0MDOUT,#0x01
                           000036  1256 	C$c8051_SDCC.h$95$1$4 ==.
                           000036  1257 	XG$UART0_Init$0$0 ==.
      00010B 22               [24] 1258 	ret
                                   1259 ;------------------------------------------------------------
                                   1260 ;Allocation info for local variables in function 'Sys_Init'
                                   1261 ;------------------------------------------------------------
                           000037  1262 	G$Sys_Init$0$0 ==.
                           000037  1263 	C$c8051_SDCC.h$103$1$4 ==.
                                   1264 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:103: void Sys_Init(void)
                                   1265 ;	-----------------------------------------
                                   1266 ;	 function Sys_Init
                                   1267 ;	-----------------------------------------
      00010C                       1268 _Sys_Init:
                           000037  1269 	C$c8051_SDCC.h$105$1$6 ==.
                                   1270 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:105: WDTCN = 0xde;			// disable watchdog timer
      00010C 75 FF DE         [24] 1271 	mov	_WDTCN,#0xde
                           00003A  1272 	C$c8051_SDCC.h$106$1$6 ==.
                                   1273 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:106: WDTCN = 0xad;
      00010F 75 FF AD         [24] 1274 	mov	_WDTCN,#0xad
                           00003D  1275 	C$c8051_SDCC.h$108$1$6 ==.
                                   1276 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:108: SYSCLK_Init();			// initialize oscillator
      000112 12 00 D5         [24] 1277 	lcall	_SYSCLK_Init
                           000040  1278 	C$c8051_SDCC.h$109$1$6 ==.
                                   1279 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:109: UART0_Init();			// initialize UART0
      000115 12 00 F5         [24] 1280 	lcall	_UART0_Init
                           000043  1281 	C$c8051_SDCC.h$111$1$6 ==.
                                   1282 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:111: XBR0 |= 0x04;
      000118 43 E1 04         [24] 1283 	orl	_XBR0,#0x04
                           000046  1284 	C$c8051_SDCC.h$112$1$6 ==.
                                   1285 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:112: XBR2 |= 0x40;                    	// Enable crossbar and weak pull-ups
      00011B 43 E3 40         [24] 1286 	orl	_XBR2,#0x40
                           000049  1287 	C$c8051_SDCC.h$113$1$6 ==.
                           000049  1288 	XG$Sys_Init$0$0 ==.
      00011E 22               [24] 1289 	ret
                                   1290 ;------------------------------------------------------------
                                   1291 ;Allocation info for local variables in function 'putchar'
                                   1292 ;------------------------------------------------------------
                                   1293 ;c                         Allocated to registers r7 
                                   1294 ;------------------------------------------------------------
                           00004A  1295 	G$putchar$0$0 ==.
                           00004A  1296 	C$c8051_SDCC.h$129$1$6 ==.
                                   1297 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:129: void putchar(char c)
                                   1298 ;	-----------------------------------------
                                   1299 ;	 function putchar
                                   1300 ;	-----------------------------------------
      00011F                       1301 _putchar:
      00011F AF 82            [24] 1302 	mov	r7,dpl
                           00004C  1303 	C$c8051_SDCC.h$132$1$8 ==.
                                   1304 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:132: while (!TI0); 
      000121                       1305 00101$:
                           00004C  1306 	C$c8051_SDCC.h$133$1$8 ==.
                                   1307 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:133: TI0 = 0;
      000121 10 99 02         [24] 1308 	jbc	_TI0,00112$
      000124 80 FB            [24] 1309 	sjmp	00101$
      000126                       1310 00112$:
                           000051  1311 	C$c8051_SDCC.h$134$1$8 ==.
                                   1312 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:134: SBUF0 = c;
      000126 8F 99            [24] 1313 	mov	_SBUF0,r7
                           000053  1314 	C$c8051_SDCC.h$135$1$8 ==.
                           000053  1315 	XG$putchar$0$0 ==.
      000128 22               [24] 1316 	ret
                                   1317 ;------------------------------------------------------------
                                   1318 ;Allocation info for local variables in function 'getchar'
                                   1319 ;------------------------------------------------------------
                                   1320 ;c                         Allocated to registers r7 
                                   1321 ;------------------------------------------------------------
                           000054  1322 	G$getchar$0$0 ==.
                           000054  1323 	C$c8051_SDCC.h$154$1$8 ==.
                                   1324 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:154: char getchar(void)
                                   1325 ;	-----------------------------------------
                                   1326 ;	 function getchar
                                   1327 ;	-----------------------------------------
      000129                       1328 _getchar:
                           000054  1329 	C$c8051_SDCC.h$157$1$10 ==.
                                   1330 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:157: while (!RI0);
      000129                       1331 00101$:
                           000054  1332 	C$c8051_SDCC.h$158$1$10 ==.
                                   1333 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:158: RI0 = 0;
      000129 10 98 02         [24] 1334 	jbc	_RI0,00112$
      00012C 80 FB            [24] 1335 	sjmp	00101$
      00012E                       1336 00112$:
                           000059  1337 	C$c8051_SDCC.h$159$1$10 ==.
                                   1338 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:159: c = SBUF0;
      00012E AF 99            [24] 1339 	mov	r7,_SBUF0
                           00005B  1340 	C$c8051_SDCC.h$160$1$10 ==.
                                   1341 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:160: putchar(c);                          // echo to terminal
      000130 8F 82            [24] 1342 	mov	dpl,r7
      000132 C0 07            [24] 1343 	push	ar7
      000134 12 01 1F         [24] 1344 	lcall	_putchar
      000137 D0 07            [24] 1345 	pop	ar7
                           000064  1346 	C$c8051_SDCC.h$161$1$10 ==.
                                   1347 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:161: return c;
      000139 8F 82            [24] 1348 	mov	dpl,r7
                           000066  1349 	C$c8051_SDCC.h$162$1$10 ==.
                           000066  1350 	XG$getchar$0$0 ==.
      00013B 22               [24] 1351 	ret
                                   1352 ;------------------------------------------------------------
                                   1353 ;Allocation info for local variables in function 'getchar_nw'
                                   1354 ;------------------------------------------------------------
                                   1355 ;c                         Allocated to registers 
                                   1356 ;------------------------------------------------------------
                           000067  1357 	G$getchar_nw$0$0 ==.
                           000067  1358 	C$c8051_SDCC.h$168$1$10 ==.
                                   1359 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:168: char getchar_nw(void)
                                   1360 ;	-----------------------------------------
                                   1361 ;	 function getchar_nw
                                   1362 ;	-----------------------------------------
      00013C                       1363 _getchar_nw:
                           000067  1364 	C$c8051_SDCC.h$171$1$12 ==.
                                   1365 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:171: if (!RI0) return 0xFF;
      00013C 20 98 05         [24] 1366 	jb	_RI0,00102$
      00013F 75 82 FF         [24] 1367 	mov	dpl,#0xff
      000142 80 0B            [24] 1368 	sjmp	00104$
      000144                       1369 00102$:
                           00006F  1370 	C$c8051_SDCC.h$174$2$13 ==.
                                   1371 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:174: RI0 = 0;
      000144 C2 98            [12] 1372 	clr	_RI0
                           000071  1373 	C$c8051_SDCC.h$175$2$13 ==.
                                   1374 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:175: c = SBUF0;
      000146 85 99 82         [24] 1375 	mov	dpl,_SBUF0
                           000074  1376 	C$c8051_SDCC.h$176$2$13 ==.
                                   1377 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:176: putchar(c);                          // echo to terminal
      000149 12 01 1F         [24] 1378 	lcall	_putchar
                           000077  1379 	C$c8051_SDCC.h$177$2$13 ==.
                                   1380 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:177: return SBUF0;
      00014C 85 99 82         [24] 1381 	mov	dpl,_SBUF0
      00014F                       1382 00104$:
                           00007A  1383 	C$c8051_SDCC.h$179$1$12 ==.
                           00007A  1384 	XG$getchar_nw$0$0 ==.
      00014F 22               [24] 1385 	ret
                                   1386 ;------------------------------------------------------------
                                   1387 ;Allocation info for local variables in function 'lcd_print'
                                   1388 ;------------------------------------------------------------
                                   1389 ;fmt                       Allocated to stack - _bp -5
                                   1390 ;len                       Allocated to registers r6 
                                   1391 ;i                         Allocated to registers 
                                   1392 ;ap                        Allocated to registers 
                                   1393 ;text                      Allocated with name '_lcd_print_text_1_81'
                                   1394 ;------------------------------------------------------------
                           00007B  1395 	G$lcd_print$0$0 ==.
                           00007B  1396 	C$i2c.h$84$1$12 ==.
                                   1397 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:84: void lcd_print(const char *fmt, ...)
                                   1398 ;	-----------------------------------------
                                   1399 ;	 function lcd_print
                                   1400 ;	-----------------------------------------
      000150                       1401 _lcd_print:
      000150 C0 0F            [24] 1402 	push	_bp
      000152 85 81 0F         [24] 1403 	mov	_bp,sp
                           000080  1404 	C$i2c.h$90$1$81 ==.
                                   1405 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:90: if ( strlen(fmt) <= 0 ) return;         //If there is no data to print, return
      000155 E5 0F            [12] 1406 	mov	a,_bp
      000157 24 FB            [12] 1407 	add	a,#0xfb
      000159 F8               [12] 1408 	mov	r0,a
      00015A 86 82            [24] 1409 	mov	dpl,@r0
      00015C 08               [12] 1410 	inc	r0
      00015D 86 83            [24] 1411 	mov	dph,@r0
      00015F 08               [12] 1412 	inc	r0
      000160 86 F0            [24] 1413 	mov	b,@r0
      000162 12 11 13         [24] 1414 	lcall	_strlen
      000165 E5 82            [12] 1415 	mov	a,dpl
      000167 85 83 F0         [24] 1416 	mov	b,dph
      00016A 45 F0            [12] 1417 	orl	a,b
      00016C 70 02            [24] 1418 	jnz	00102$
      00016E 80 62            [24] 1419 	sjmp	00109$
      000170                       1420 00102$:
                           00009B  1421 	C$i2c.h$92$2$82 ==.
                                   1422 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:92: va_start(ap, fmt);
      000170 E5 0F            [12] 1423 	mov	a,_bp
      000172 24 FB            [12] 1424 	add	a,#0xfb
      000174 FF               [12] 1425 	mov	r7,a
      000175 8F 0B            [24] 1426 	mov	_vsprintf_PARM_3,r7
                           0000A2  1427 	C$i2c.h$93$1$81 ==.
                                   1428 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:93: vsprintf(text, fmt, ap);
      000177 E5 0F            [12] 1429 	mov	a,_bp
      000179 24 FB            [12] 1430 	add	a,#0xfb
      00017B F8               [12] 1431 	mov	r0,a
      00017C 86 08            [24] 1432 	mov	_vsprintf_PARM_2,@r0
      00017E 08               [12] 1433 	inc	r0
      00017F 86 09            [24] 1434 	mov	(_vsprintf_PARM_2 + 1),@r0
      000181 08               [12] 1435 	inc	r0
      000182 86 0A            [24] 1436 	mov	(_vsprintf_PARM_2 + 2),@r0
      000184 90 00 01         [24] 1437 	mov	dptr,#_lcd_print_text_1_81
      000187 75 F0 00         [24] 1438 	mov	b,#0x00
      00018A 12 09 A8         [24] 1439 	lcall	_vsprintf
                           0000B8  1440 	C$i2c.h$96$1$81 ==.
                                   1441 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:96: len = strlen(text);
      00018D 90 00 01         [24] 1442 	mov	dptr,#_lcd_print_text_1_81
      000190 75 F0 00         [24] 1443 	mov	b,#0x00
      000193 12 11 13         [24] 1444 	lcall	_strlen
      000196 AE 82            [24] 1445 	mov	r6,dpl
                           0000C3  1446 	C$i2c.h$97$1$81 ==.
                                   1447 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:97: for(i=0; i<len; i++)
      000198 7F 00            [12] 1448 	mov	r7,#0x00
      00019A                       1449 00107$:
      00019A C3               [12] 1450 	clr	c
      00019B EF               [12] 1451 	mov	a,r7
      00019C 9E               [12] 1452 	subb	a,r6
      00019D 50 1F            [24] 1453 	jnc	00105$
                           0000CA  1454 	C$i2c.h$99$2$84 ==.
                                   1455 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:99: if(text[i] == (unsigned char)'\n') text[i] = 13;
      00019F EF               [12] 1456 	mov	a,r7
      0001A0 24 01            [12] 1457 	add	a,#_lcd_print_text_1_81
      0001A2 F5 82            [12] 1458 	mov	dpl,a
      0001A4 E4               [12] 1459 	clr	a
      0001A5 34 00            [12] 1460 	addc	a,#(_lcd_print_text_1_81 >> 8)
      0001A7 F5 83            [12] 1461 	mov	dph,a
      0001A9 E0               [24] 1462 	movx	a,@dptr
      0001AA FD               [12] 1463 	mov	r5,a
      0001AB BD 0A 0D         [24] 1464 	cjne	r5,#0x0a,00108$
      0001AE EF               [12] 1465 	mov	a,r7
      0001AF 24 01            [12] 1466 	add	a,#_lcd_print_text_1_81
      0001B1 F5 82            [12] 1467 	mov	dpl,a
      0001B3 E4               [12] 1468 	clr	a
      0001B4 34 00            [12] 1469 	addc	a,#(_lcd_print_text_1_81 >> 8)
      0001B6 F5 83            [12] 1470 	mov	dph,a
      0001B8 74 0D            [12] 1471 	mov	a,#0x0d
      0001BA F0               [24] 1472 	movx	@dptr,a
      0001BB                       1473 00108$:
                           0000E6  1474 	C$i2c.h$97$1$81 ==.
                                   1475 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:97: for(i=0; i<len; i++)
      0001BB 0F               [12] 1476 	inc	r7
      0001BC 80 DC            [24] 1477 	sjmp	00107$
      0001BE                       1478 00105$:
                           0000E9  1479 	C$i2c.h$102$1$81 ==.
                                   1480 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:102: i2c_write_data(0xC6, 0x00, text, len);
      0001BE 75 2D 01         [24] 1481 	mov	_i2c_write_data_PARM_3,#_lcd_print_text_1_81
      0001C1 75 2E 00         [24] 1482 	mov	(_i2c_write_data_PARM_3 + 1),#(_lcd_print_text_1_81 >> 8)
      0001C4 75 2F 00         [24] 1483 	mov	(_i2c_write_data_PARM_3 + 2),#0x00
      0001C7 75 2C 00         [24] 1484 	mov	_i2c_write_data_PARM_2,#0x00
      0001CA 8E 30            [24] 1485 	mov	_i2c_write_data_PARM_4,r6
      0001CC 75 82 C6         [24] 1486 	mov	dpl,#0xc6
      0001CF 12 04 61         [24] 1487 	lcall	_i2c_write_data
      0001D2                       1488 00109$:
      0001D2 D0 0F            [24] 1489 	pop	_bp
                           0000FF  1490 	C$i2c.h$103$1$81 ==.
                           0000FF  1491 	XG$lcd_print$0$0 ==.
      0001D4 22               [24] 1492 	ret
                                   1493 ;------------------------------------------------------------
                                   1494 ;Allocation info for local variables in function 'lcd_clear'
                                   1495 ;------------------------------------------------------------
                                   1496 ;NumBytes                  Allocated with name '_lcd_clear_NumBytes_1_85'
                                   1497 ;Cmd                       Allocated with name '_lcd_clear_Cmd_1_85'
                                   1498 ;------------------------------------------------------------
                           000100  1499 	G$lcd_clear$0$0 ==.
                           000100  1500 	C$i2c.h$106$1$81 ==.
                                   1501 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:106: void lcd_clear()
                                   1502 ;	-----------------------------------------
                                   1503 ;	 function lcd_clear
                                   1504 ;	-----------------------------------------
      0001D5                       1505 _lcd_clear:
                           000100  1506 	C$i2c.h$108$1$81 ==.
                                   1507 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:108: unsigned char NumBytes=0, Cmd[2];
      0001D5 75 27 00         [24] 1508 	mov	_lcd_clear_NumBytes_1_85,#0x00
                           000103  1509 	C$i2c.h$110$1$85 ==.
                                   1510 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:110: while(NumBytes < 64) i2c_read_data(0xC6, 0x00, &NumBytes, 1);
      0001D8                       1511 00101$:
      0001D8 74 C0            [12] 1512 	mov	a,#0x100 - 0x40
      0001DA 25 27            [12] 1513 	add	a,_lcd_clear_NumBytes_1_85
      0001DC 40 17            [24] 1514 	jc	00103$
      0001DE 75 32 27         [24] 1515 	mov	_i2c_read_data_PARM_3,#_lcd_clear_NumBytes_1_85
      0001E1 75 33 00         [24] 1516 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      0001E4 75 34 40         [24] 1517 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      0001E7 75 31 00         [24] 1518 	mov	_i2c_read_data_PARM_2,#0x00
      0001EA 75 35 01         [24] 1519 	mov	_i2c_read_data_PARM_4,#0x01
      0001ED 75 82 C6         [24] 1520 	mov	dpl,#0xc6
      0001F0 12 04 DB         [24] 1521 	lcall	_i2c_read_data
      0001F3 80 E3            [24] 1522 	sjmp	00101$
      0001F5                       1523 00103$:
                           000120  1524 	C$i2c.h$112$1$85 ==.
                                   1525 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:112: Cmd[0] = 12;
      0001F5 75 28 0C         [24] 1526 	mov	_lcd_clear_Cmd_1_85,#0x0c
                           000123  1527 	C$i2c.h$113$1$85 ==.
                                   1528 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:113: i2c_write_data(0xC6, 0x00, Cmd, 1);
      0001F8 75 2D 28         [24] 1529 	mov	_i2c_write_data_PARM_3,#_lcd_clear_Cmd_1_85
      0001FB 75 2E 00         [24] 1530 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0001FE 75 2F 40         [24] 1531 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      000201 75 2C 00         [24] 1532 	mov	_i2c_write_data_PARM_2,#0x00
      000204 75 30 01         [24] 1533 	mov	_i2c_write_data_PARM_4,#0x01
      000207 75 82 C6         [24] 1534 	mov	dpl,#0xc6
      00020A 12 04 61         [24] 1535 	lcall	_i2c_write_data
                           000138  1536 	C$i2c.h$114$1$85 ==.
                           000138  1537 	XG$lcd_clear$0$0 ==.
      00020D 22               [24] 1538 	ret
                                   1539 ;------------------------------------------------------------
                                   1540 ;Allocation info for local variables in function 'read_keypad'
                                   1541 ;------------------------------------------------------------
                                   1542 ;i                         Allocated to registers r7 
                                   1543 ;Data                      Allocated with name '_read_keypad_Data_1_86'
                                   1544 ;------------------------------------------------------------
                           000139  1545 	G$read_keypad$0$0 ==.
                           000139  1546 	C$i2c.h$117$1$85 ==.
                                   1547 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:117: unsigned char read_keypad()
                                   1548 ;	-----------------------------------------
                                   1549 ;	 function read_keypad
                                   1550 ;	-----------------------------------------
      00020E                       1551 _read_keypad:
                           000139  1552 	C$i2c.h$121$1$86 ==.
                                   1553 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:121: i2c_read_data(0xC6, 0x01, Data, 2); //Read I2C data on address 192, register 1, 2 bytes of data.
      00020E 75 32 2A         [24] 1554 	mov	_i2c_read_data_PARM_3,#_read_keypad_Data_1_86
      000211 75 33 00         [24] 1555 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      000214 75 34 40         [24] 1556 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      000217 75 31 01         [24] 1557 	mov	_i2c_read_data_PARM_2,#0x01
      00021A 75 35 02         [24] 1558 	mov	_i2c_read_data_PARM_4,#0x02
      00021D 75 82 C6         [24] 1559 	mov	dpl,#0xc6
      000220 12 04 DB         [24] 1560 	lcall	_i2c_read_data
                           00014E  1561 	C$i2c.h$122$1$86 ==.
                                   1562 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:122: if(Data[0] == 0xFF) return 0;   //No response on bus, no display
      000223 74 FF            [12] 1563 	mov	a,#0xff
      000225 B5 2A 05         [24] 1564 	cjne	a,_read_keypad_Data_1_86,00102$
      000228 75 82 00         [24] 1565 	mov	dpl,#0x00
      00022B 80 5F            [24] 1566 	sjmp	00116$
      00022D                       1567 00102$:
                           000158  1568 	C$i2c.h$124$1$86 ==.
                                   1569 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:124: for(i=0; i<8; i++)              //loop 8 times
      00022D 7F 00            [12] 1570 	mov	r7,#0x00
      00022F 8F 06            [24] 1571 	mov	ar6,r7
      000231                       1572 00114$:
                           00015C  1573 	C$i2c.h$126$2$87 ==.
                                   1574 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:126: if(Data[0] & (0x01 << i))   //find the ASCII value of the keypad read, if it is the current loop value
      000231 8E F0            [24] 1575 	mov	b,r6
      000233 05 F0            [12] 1576 	inc	b
      000235 7C 01            [12] 1577 	mov	r4,#0x01
      000237 7D 00            [12] 1578 	mov	r5,#0x00
      000239 80 06            [24] 1579 	sjmp	00145$
      00023B                       1580 00144$:
      00023B EC               [12] 1581 	mov	a,r4
      00023C 2C               [12] 1582 	add	a,r4
      00023D FC               [12] 1583 	mov	r4,a
      00023E ED               [12] 1584 	mov	a,r5
      00023F 33               [12] 1585 	rlc	a
      000240 FD               [12] 1586 	mov	r5,a
      000241                       1587 00145$:
      000241 D5 F0 F7         [24] 1588 	djnz	b,00144$
      000244 AA 2A            [24] 1589 	mov	r2,_read_keypad_Data_1_86
      000246 7B 00            [12] 1590 	mov	r3,#0x00
      000248 EA               [12] 1591 	mov	a,r2
      000249 52 04            [12] 1592 	anl	ar4,a
      00024B EB               [12] 1593 	mov	a,r3
      00024C 52 05            [12] 1594 	anl	ar5,a
      00024E EC               [12] 1595 	mov	a,r4
      00024F 4D               [12] 1596 	orl	a,r5
      000250 60 07            [24] 1597 	jz	00115$
                           00017D  1598 	C$i2c.h$127$2$87 ==.
                                   1599 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:127: return i+49;
      000252 74 31            [12] 1600 	mov	a,#0x31
      000254 2F               [12] 1601 	add	a,r7
      000255 F5 82            [12] 1602 	mov	dpl,a
      000257 80 33            [24] 1603 	sjmp	00116$
      000259                       1604 00115$:
                           000184  1605 	C$i2c.h$124$1$86 ==.
                                   1606 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:124: for(i=0; i<8; i++)              //loop 8 times
      000259 0E               [12] 1607 	inc	r6
      00025A 8E 07            [24] 1608 	mov	ar7,r6
      00025C BE 08 00         [24] 1609 	cjne	r6,#0x08,00147$
      00025F                       1610 00147$:
      00025F 40 D0            [24] 1611 	jc	00114$
                           00018C  1612 	C$i2c.h$130$1$86 ==.
                                   1613 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:130: if(Data[1] & 0x01) return '9';  //if the value is equal to 9 return 9.
      000261 E5 2B            [12] 1614 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      000263 30 E0 05         [24] 1615 	jnb	acc.0,00107$
      000266 75 82 39         [24] 1616 	mov	dpl,#0x39
      000269 80 21            [24] 1617 	sjmp	00116$
      00026B                       1618 00107$:
                           000196  1619 	C$i2c.h$132$1$86 ==.
                                   1620 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:132: if(Data[1] & 0x02) return '*';  //if the value is equal to the star.
      00026B E5 2B            [12] 1621 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      00026D 30 E1 05         [24] 1622 	jnb	acc.1,00109$
      000270 75 82 2A         [24] 1623 	mov	dpl,#0x2a
      000273 80 17            [24] 1624 	sjmp	00116$
      000275                       1625 00109$:
                           0001A0  1626 	C$i2c.h$134$1$86 ==.
                                   1627 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:134: if(Data[1] & 0x04) return '0';  //if the value is equal to the 0 key
      000275 E5 2B            [12] 1628 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      000277 30 E2 05         [24] 1629 	jnb	acc.2,00111$
      00027A 75 82 30         [24] 1630 	mov	dpl,#0x30
      00027D 80 0D            [24] 1631 	sjmp	00116$
      00027F                       1632 00111$:
                           0001AA  1633 	C$i2c.h$136$1$86 ==.
                                   1634 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:136: if(Data[1] & 0x08) return '#';  //if the value is equal to the pound key
      00027F E5 2B            [12] 1635 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      000281 30 E3 05         [24] 1636 	jnb	acc.3,00113$
      000284 75 82 23         [24] 1637 	mov	dpl,#0x23
      000287 80 03            [24] 1638 	sjmp	00116$
      000289                       1639 00113$:
                           0001B4  1640 	C$i2c.h$138$1$86 ==.
                                   1641 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:138: return 0xFF;                    //else return a numerical -1 (0xFF)
      000289 75 82 FF         [24] 1642 	mov	dpl,#0xff
      00028C                       1643 00116$:
                           0001B7  1644 	C$i2c.h$139$1$86 ==.
                           0001B7  1645 	XG$read_keypad$0$0 ==.
      00028C 22               [24] 1646 	ret
                                   1647 ;------------------------------------------------------------
                                   1648 ;Allocation info for local variables in function 'kpd_input'
                                   1649 ;------------------------------------------------------------
                                   1650 ;mode                      Allocated to registers r7 
                                   1651 ;sum                       Allocated to registers r5 r6 
                                   1652 ;key                       Allocated to registers r3 
                                   1653 ;i                         Allocated to registers 
                                   1654 ;------------------------------------------------------------
                           0001B8  1655 	G$kpd_input$0$0 ==.
                           0001B8  1656 	C$i2c.h$151$1$86 ==.
                                   1657 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:151: unsigned int kpd_input(char mode)
                                   1658 ;	-----------------------------------------
                                   1659 ;	 function kpd_input
                                   1660 ;	-----------------------------------------
      00028D                       1661 _kpd_input:
      00028D AF 82            [24] 1662 	mov	r7,dpl
                           0001BA  1663 	C$i2c.h$156$1$89 ==.
                                   1664 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:156: sum = 0;
                           0001BA  1665 	C$i2c.h$159$1$89 ==.
                                   1666 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:159: if(mode==0)lcd_print("\nType digits; end w/#");
      00028F E4               [12] 1667 	clr	a
      000290 FD               [12] 1668 	mov	r5,a
      000291 FE               [12] 1669 	mov	r6,a
      000292 EF               [12] 1670 	mov	a,r7
      000293 70 1D            [24] 1671 	jnz	00102$
      000295 C0 06            [24] 1672 	push	ar6
      000297 C0 05            [24] 1673 	push	ar5
      000299 74 9D            [12] 1674 	mov	a,#___str_0
      00029B C0 E0            [24] 1675 	push	acc
      00029D 74 12            [12] 1676 	mov	a,#(___str_0 >> 8)
      00029F C0 E0            [24] 1677 	push	acc
      0002A1 74 80            [12] 1678 	mov	a,#0x80
      0002A3 C0 E0            [24] 1679 	push	acc
      0002A5 12 01 50         [24] 1680 	lcall	_lcd_print
      0002A8 15 81            [12] 1681 	dec	sp
      0002AA 15 81            [12] 1682 	dec	sp
      0002AC 15 81            [12] 1683 	dec	sp
      0002AE D0 05            [24] 1684 	pop	ar5
      0002B0 D0 06            [24] 1685 	pop	ar6
      0002B2                       1686 00102$:
                           0001DD  1687 	C$i2c.h$161$1$89 ==.
                                   1688 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:161: lcd_print("     %c%c%c%c%c",0x08,0x08,0x08,0x08,0x08);
      0002B2 C0 06            [24] 1689 	push	ar6
      0002B4 C0 05            [24] 1690 	push	ar5
      0002B6 74 08            [12] 1691 	mov	a,#0x08
      0002B8 C0 E0            [24] 1692 	push	acc
      0002BA E4               [12] 1693 	clr	a
      0002BB C0 E0            [24] 1694 	push	acc
      0002BD 74 08            [12] 1695 	mov	a,#0x08
      0002BF C0 E0            [24] 1696 	push	acc
      0002C1 E4               [12] 1697 	clr	a
      0002C2 C0 E0            [24] 1698 	push	acc
      0002C4 74 08            [12] 1699 	mov	a,#0x08
      0002C6 C0 E0            [24] 1700 	push	acc
      0002C8 E4               [12] 1701 	clr	a
      0002C9 C0 E0            [24] 1702 	push	acc
      0002CB 74 08            [12] 1703 	mov	a,#0x08
      0002CD C0 E0            [24] 1704 	push	acc
      0002CF E4               [12] 1705 	clr	a
      0002D0 C0 E0            [24] 1706 	push	acc
      0002D2 74 08            [12] 1707 	mov	a,#0x08
      0002D4 C0 E0            [24] 1708 	push	acc
      0002D6 E4               [12] 1709 	clr	a
      0002D7 C0 E0            [24] 1710 	push	acc
      0002D9 74 B3            [12] 1711 	mov	a,#___str_1
      0002DB C0 E0            [24] 1712 	push	acc
      0002DD 74 12            [12] 1713 	mov	a,#(___str_1 >> 8)
      0002DF C0 E0            [24] 1714 	push	acc
      0002E1 74 80            [12] 1715 	mov	a,#0x80
      0002E3 C0 E0            [24] 1716 	push	acc
      0002E5 12 01 50         [24] 1717 	lcall	_lcd_print
      0002E8 E5 81            [12] 1718 	mov	a,sp
      0002EA 24 F3            [12] 1719 	add	a,#0xf3
      0002EC F5 81            [12] 1720 	mov	sp,a
                           000219  1721 	C$i2c.h$163$1$89 ==.
                                   1722 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:163: delay_time(500000);             //Add 20ms delay before reading i2c in loop
      0002EE 90 A1 20         [24] 1723 	mov	dptr,#0xa120
      0002F1 75 F0 07         [24] 1724 	mov	b,#0x07
      0002F4 E4               [12] 1725 	clr	a
      0002F5 12 03 FC         [24] 1726 	lcall	_delay_time
      0002F8 D0 05            [24] 1727 	pop	ar5
      0002FA D0 06            [24] 1728 	pop	ar6
                           000227  1729 	C$i2c.h$167$1$89 ==.
                                   1730 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:167: for(i=0; i<5; i++)
      0002FC 7F 00            [12] 1731 	mov	r7,#0x00
                           000229  1732 	C$i2c.h$169$3$92 ==.
                                   1733 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:169: while(((key=read_keypad()) == 0xFF) || (key == '*'))delay_time(10000);
      0002FE                       1734 00104$:
      0002FE C0 07            [24] 1735 	push	ar7
      000300 C0 06            [24] 1736 	push	ar6
      000302 C0 05            [24] 1737 	push	ar5
      000304 12 02 0E         [24] 1738 	lcall	_read_keypad
      000307 AC 82            [24] 1739 	mov	r4,dpl
      000309 D0 05            [24] 1740 	pop	ar5
      00030B D0 06            [24] 1741 	pop	ar6
      00030D D0 07            [24] 1742 	pop	ar7
      00030F 8C 03            [24] 1743 	mov	ar3,r4
      000311 BC FF 02         [24] 1744 	cjne	r4,#0xff,00146$
      000314 80 03            [24] 1745 	sjmp	00105$
      000316                       1746 00146$:
      000316 BB 2A 17         [24] 1747 	cjne	r3,#0x2a,00106$
      000319                       1748 00105$:
      000319 90 27 10         [24] 1749 	mov	dptr,#0x2710
      00031C E4               [12] 1750 	clr	a
      00031D F5 F0            [12] 1751 	mov	b,a
      00031F C0 07            [24] 1752 	push	ar7
      000321 C0 06            [24] 1753 	push	ar6
      000323 C0 05            [24] 1754 	push	ar5
      000325 12 03 FC         [24] 1755 	lcall	_delay_time
      000328 D0 05            [24] 1756 	pop	ar5
      00032A D0 06            [24] 1757 	pop	ar6
      00032C D0 07            [24] 1758 	pop	ar7
      00032E 80 CE            [24] 1759 	sjmp	00104$
      000330                       1760 00106$:
                           00025B  1761 	C$i2c.h$170$2$90 ==.
                                   1762 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:170: if(key == '#')
      000330 BB 23 2A         [24] 1763 	cjne	r3,#0x23,00114$
                           00025E  1764 	C$i2c.h$172$3$91 ==.
                                   1765 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:172: while(read_keypad() == '#')delay_time(10000);
      000333                       1766 00107$:
      000333 C0 06            [24] 1767 	push	ar6
      000335 C0 05            [24] 1768 	push	ar5
      000337 12 02 0E         [24] 1769 	lcall	_read_keypad
      00033A AC 82            [24] 1770 	mov	r4,dpl
      00033C D0 05            [24] 1771 	pop	ar5
      00033E D0 06            [24] 1772 	pop	ar6
      000340 BC 23 13         [24] 1773 	cjne	r4,#0x23,00109$
      000343 90 27 10         [24] 1774 	mov	dptr,#0x2710
      000346 E4               [12] 1775 	clr	a
      000347 F5 F0            [12] 1776 	mov	b,a
      000349 C0 06            [24] 1777 	push	ar6
      00034B C0 05            [24] 1778 	push	ar5
      00034D 12 03 FC         [24] 1779 	lcall	_delay_time
      000350 D0 05            [24] 1780 	pop	ar5
      000352 D0 06            [24] 1781 	pop	ar6
      000354 80 DD            [24] 1782 	sjmp	00107$
      000356                       1783 00109$:
                           000281  1784 	C$i2c.h$173$3$91 ==.
                                   1785 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:173: return sum;
      000356 8D 82            [24] 1786 	mov	dpl,r5
      000358 8E 83            [24] 1787 	mov	dph,r6
      00035A 02 03 FB         [24] 1788 	ljmp	00119$
      00035D                       1789 00114$:
                           000288  1790 	C$i2c.h$177$3$92 ==.
                                   1791 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:177: lcd_print("%c", key);
      00035D 8B 02            [24] 1792 	mov	ar2,r3
      00035F 7C 00            [12] 1793 	mov	r4,#0x00
      000361 C0 07            [24] 1794 	push	ar7
      000363 C0 06            [24] 1795 	push	ar6
      000365 C0 05            [24] 1796 	push	ar5
      000367 C0 04            [24] 1797 	push	ar4
      000369 C0 03            [24] 1798 	push	ar3
      00036B C0 02            [24] 1799 	push	ar2
      00036D C0 02            [24] 1800 	push	ar2
      00036F C0 04            [24] 1801 	push	ar4
      000371 74 C3            [12] 1802 	mov	a,#___str_2
      000373 C0 E0            [24] 1803 	push	acc
      000375 74 12            [12] 1804 	mov	a,#(___str_2 >> 8)
      000377 C0 E0            [24] 1805 	push	acc
      000379 74 80            [12] 1806 	mov	a,#0x80
      00037B C0 E0            [24] 1807 	push	acc
      00037D 12 01 50         [24] 1808 	lcall	_lcd_print
      000380 E5 81            [12] 1809 	mov	a,sp
      000382 24 FB            [12] 1810 	add	a,#0xfb
      000384 F5 81            [12] 1811 	mov	sp,a
      000386 D0 02            [24] 1812 	pop	ar2
      000388 D0 03            [24] 1813 	pop	ar3
      00038A D0 04            [24] 1814 	pop	ar4
      00038C D0 05            [24] 1815 	pop	ar5
      00038E D0 06            [24] 1816 	pop	ar6
                           0002BB  1817 	C$i2c.h$178$1$89 ==.
                                   1818 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:178: sum = sum*10 + key - '0';
      000390 8D 11            [24] 1819 	mov	__mulint_PARM_2,r5
      000392 8E 12            [24] 1820 	mov	(__mulint_PARM_2 + 1),r6
      000394 90 00 0A         [24] 1821 	mov	dptr,#0x000a
      000397 C0 04            [24] 1822 	push	ar4
      000399 C0 03            [24] 1823 	push	ar3
      00039B C0 02            [24] 1824 	push	ar2
      00039D 12 09 1B         [24] 1825 	lcall	__mulint
      0003A0 A8 82            [24] 1826 	mov	r0,dpl
      0003A2 A9 83            [24] 1827 	mov	r1,dph
      0003A4 D0 02            [24] 1828 	pop	ar2
      0003A6 D0 03            [24] 1829 	pop	ar3
      0003A8 D0 04            [24] 1830 	pop	ar4
      0003AA D0 07            [24] 1831 	pop	ar7
      0003AC EA               [12] 1832 	mov	a,r2
      0003AD 28               [12] 1833 	add	a,r0
      0003AE F8               [12] 1834 	mov	r0,a
      0003AF EC               [12] 1835 	mov	a,r4
      0003B0 39               [12] 1836 	addc	a,r1
      0003B1 F9               [12] 1837 	mov	r1,a
      0003B2 E8               [12] 1838 	mov	a,r0
      0003B3 24 D0            [12] 1839 	add	a,#0xd0
      0003B5 FD               [12] 1840 	mov	r5,a
      0003B6 E9               [12] 1841 	mov	a,r1
      0003B7 34 FF            [12] 1842 	addc	a,#0xff
      0003B9 FE               [12] 1843 	mov	r6,a
                           0002E5  1844 	C$i2c.h$179$3$92 ==.
                                   1845 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:179: while(read_keypad() == key)delay_time(10000); //wait for key to be released
      0003BA                       1846 00110$:
      0003BA C0 07            [24] 1847 	push	ar7
      0003BC C0 06            [24] 1848 	push	ar6
      0003BE C0 05            [24] 1849 	push	ar5
      0003C0 C0 03            [24] 1850 	push	ar3
      0003C2 12 02 0E         [24] 1851 	lcall	_read_keypad
      0003C5 AC 82            [24] 1852 	mov	r4,dpl
      0003C7 D0 03            [24] 1853 	pop	ar3
      0003C9 D0 05            [24] 1854 	pop	ar5
      0003CB D0 06            [24] 1855 	pop	ar6
      0003CD D0 07            [24] 1856 	pop	ar7
      0003CF EC               [12] 1857 	mov	a,r4
      0003D0 B5 03 1B         [24] 1858 	cjne	a,ar3,00118$
      0003D3 90 27 10         [24] 1859 	mov	dptr,#0x2710
      0003D6 E4               [12] 1860 	clr	a
      0003D7 F5 F0            [12] 1861 	mov	b,a
      0003D9 C0 07            [24] 1862 	push	ar7
      0003DB C0 06            [24] 1863 	push	ar6
      0003DD C0 05            [24] 1864 	push	ar5
      0003DF C0 03            [24] 1865 	push	ar3
      0003E1 12 03 FC         [24] 1866 	lcall	_delay_time
      0003E4 D0 03            [24] 1867 	pop	ar3
      0003E6 D0 05            [24] 1868 	pop	ar5
      0003E8 D0 06            [24] 1869 	pop	ar6
      0003EA D0 07            [24] 1870 	pop	ar7
      0003EC 80 CC            [24] 1871 	sjmp	00110$
      0003EE                       1872 00118$:
                           000319  1873 	C$i2c.h$167$1$89 ==.
                                   1874 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:167: for(i=0; i<5; i++)
      0003EE 0F               [12] 1875 	inc	r7
      0003EF BF 05 00         [24] 1876 	cjne	r7,#0x05,00155$
      0003F2                       1877 00155$:
      0003F2 50 03            [24] 1878 	jnc	00156$
      0003F4 02 02 FE         [24] 1879 	ljmp	00104$
      0003F7                       1880 00156$:
                           000322  1881 	C$i2c.h$182$1$89 ==.
                                   1882 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:182: return sum;
      0003F7 8D 82            [24] 1883 	mov	dpl,r5
      0003F9 8E 83            [24] 1884 	mov	dph,r6
      0003FB                       1885 00119$:
                           000326  1886 	C$i2c.h$183$1$89 ==.
                           000326  1887 	XG$kpd_input$0$0 ==.
      0003FB 22               [24] 1888 	ret
                                   1889 ;------------------------------------------------------------
                                   1890 ;Allocation info for local variables in function 'delay_time'
                                   1891 ;------------------------------------------------------------
                                   1892 ;time_end                  Allocated to registers r4 r5 r6 r7 
                                   1893 ;index                     Allocated to registers 
                                   1894 ;------------------------------------------------------------
                           000327  1895 	G$delay_time$0$0 ==.
                           000327  1896 	C$i2c.h$192$1$89 ==.
                                   1897 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:192: void delay_time (unsigned long time_end)
                                   1898 ;	-----------------------------------------
                                   1899 ;	 function delay_time
                                   1900 ;	-----------------------------------------
      0003FC                       1901 _delay_time:
      0003FC AC 82            [24] 1902 	mov	r4,dpl
      0003FE AD 83            [24] 1903 	mov	r5,dph
      000400 AE F0            [24] 1904 	mov	r6,b
      000402 FF               [12] 1905 	mov	r7,a
                           00032E  1906 	C$i2c.h$196$1$94 ==.
                                   1907 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:196: for (index = 0; index < time_end; index++); //for loop delay
      000403 78 00            [12] 1908 	mov	r0,#0x00
      000405 79 00            [12] 1909 	mov	r1,#0x00
      000407 7A 00            [12] 1910 	mov	r2,#0x00
      000409 7B 00            [12] 1911 	mov	r3,#0x00
      00040B                       1912 00103$:
      00040B C3               [12] 1913 	clr	c
      00040C E8               [12] 1914 	mov	a,r0
      00040D 9C               [12] 1915 	subb	a,r4
      00040E E9               [12] 1916 	mov	a,r1
      00040F 9D               [12] 1917 	subb	a,r5
      000410 EA               [12] 1918 	mov	a,r2
      000411 9E               [12] 1919 	subb	a,r6
      000412 EB               [12] 1920 	mov	a,r3
      000413 9F               [12] 1921 	subb	a,r7
      000414 50 0F            [24] 1922 	jnc	00105$
      000416 08               [12] 1923 	inc	r0
      000417 B8 00 09         [24] 1924 	cjne	r0,#0x00,00115$
      00041A 09               [12] 1925 	inc	r1
      00041B B9 00 05         [24] 1926 	cjne	r1,#0x00,00115$
      00041E 0A               [12] 1927 	inc	r2
      00041F BA 00 E9         [24] 1928 	cjne	r2,#0x00,00103$
      000422 0B               [12] 1929 	inc	r3
      000423                       1930 00115$:
      000423 80 E6            [24] 1931 	sjmp	00103$
      000425                       1932 00105$:
                           000350  1933 	C$i2c.h$197$1$94 ==.
                           000350  1934 	XG$delay_time$0$0 ==.
      000425 22               [24] 1935 	ret
                                   1936 ;------------------------------------------------------------
                                   1937 ;Allocation info for local variables in function 'i2c_start'
                                   1938 ;------------------------------------------------------------
                           000351  1939 	G$i2c_start$0$0 ==.
                           000351  1940 	C$i2c.h$200$1$94 ==.
                                   1941 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:200: void i2c_start(void)
                                   1942 ;	-----------------------------------------
                                   1943 ;	 function i2c_start
                                   1944 ;	-----------------------------------------
      000426                       1945 _i2c_start:
                           000351  1946 	C$i2c.h$202$1$96 ==.
                                   1947 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:202: while(BUSY);                //Wait until SMBus0 is free
      000426                       1948 00101$:
      000426 20 C7 FD         [24] 1949 	jb	_BUSY,00101$
                           000354  1950 	C$i2c.h$203$1$96 ==.
                                   1951 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:203: STA = 1;                    //Set Start Bit
      000429 D2 C5            [12] 1952 	setb	_STA
                           000356  1953 	C$i2c.h$204$1$96 ==.
                                   1954 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:204: while(!SI);                 //Wait until start sent
      00042B                       1955 00104$:
      00042B 30 C3 FD         [24] 1956 	jnb	_SI,00104$
                           000359  1957 	C$i2c.h$205$1$96 ==.
                                   1958 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:205: STA = 0;                    //Clear start bit
      00042E C2 C5            [12] 1959 	clr	_STA
                           00035B  1960 	C$i2c.h$206$1$96 ==.
                                   1961 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:206: SI = 0;                     //Clear SI
      000430 C2 C3            [12] 1962 	clr	_SI
                           00035D  1963 	C$i2c.h$207$1$96 ==.
                           00035D  1964 	XG$i2c_start$0$0 ==.
      000432 22               [24] 1965 	ret
                                   1966 ;------------------------------------------------------------
                                   1967 ;Allocation info for local variables in function 'i2c_write'
                                   1968 ;------------------------------------------------------------
                                   1969 ;output_data               Allocated to registers 
                                   1970 ;------------------------------------------------------------
                           00035E  1971 	G$i2c_write$0$0 ==.
                           00035E  1972 	C$i2c.h$210$1$96 ==.
                                   1973 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:210: void i2c_write(unsigned char output_data)
                                   1974 ;	-----------------------------------------
                                   1975 ;	 function i2c_write
                                   1976 ;	-----------------------------------------
      000433                       1977 _i2c_write:
      000433 85 82 C2         [24] 1978 	mov	_SMB0DAT,dpl
                           000361  1979 	C$i2c.h$213$1$98 ==.
                                   1980 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:213: while(!SI);                 //Wait until send is complete
      000436                       1981 00101$:
                           000361  1982 	C$i2c.h$214$1$98 ==.
                                   1983 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:214: SI = 0;                     //Clear SI
      000436 10 C3 02         [24] 1984 	jbc	_SI,00112$
      000439 80 FB            [24] 1985 	sjmp	00101$
      00043B                       1986 00112$:
                           000366  1987 	C$i2c.h$215$1$98 ==.
                           000366  1988 	XG$i2c_write$0$0 ==.
      00043B 22               [24] 1989 	ret
                                   1990 ;------------------------------------------------------------
                                   1991 ;Allocation info for local variables in function 'i2c_write_and_stop'
                                   1992 ;------------------------------------------------------------
                                   1993 ;output_data               Allocated to registers 
                                   1994 ;------------------------------------------------------------
                           000367  1995 	G$i2c_write_and_stop$0$0 ==.
                           000367  1996 	C$i2c.h$218$1$98 ==.
                                   1997 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:218: void i2c_write_and_stop(unsigned char output_data)
                                   1998 ;	-----------------------------------------
                                   1999 ;	 function i2c_write_and_stop
                                   2000 ;	-----------------------------------------
      00043C                       2001 _i2c_write_and_stop:
      00043C 85 82 C2         [24] 2002 	mov	_SMB0DAT,dpl
                           00036A  2003 	C$i2c.h$221$1$100 ==.
                                   2004 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:221: STO = 1;                    //Set stop bit
      00043F D2 C4            [12] 2005 	setb	_STO
                           00036C  2006 	C$i2c.h$222$1$100 ==.
                                   2007 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:222: while(!SI);                 //Wait until send is complete
      000441                       2008 00101$:
                           00036C  2009 	C$i2c.h$223$1$100 ==.
                                   2010 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:223: SI = 0;                     //Clear SI
      000441 10 C3 02         [24] 2011 	jbc	_SI,00112$
      000444 80 FB            [24] 2012 	sjmp	00101$
      000446                       2013 00112$:
                           000371  2014 	C$i2c.h$224$1$100 ==.
                           000371  2015 	XG$i2c_write_and_stop$0$0 ==.
      000446 22               [24] 2016 	ret
                                   2017 ;------------------------------------------------------------
                                   2018 ;Allocation info for local variables in function 'i2c_read'
                                   2019 ;------------------------------------------------------------
                                   2020 ;input_data                Allocated to registers 
                                   2021 ;------------------------------------------------------------
                           000372  2022 	G$i2c_read$0$0 ==.
                           000372  2023 	C$i2c.h$227$1$100 ==.
                                   2024 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:227: unsigned char i2c_read(void)
                                   2025 ;	-----------------------------------------
                                   2026 ;	 function i2c_read
                                   2027 ;	-----------------------------------------
      000447                       2028 _i2c_read:
                           000372  2029 	C$i2c.h$231$1$102 ==.
                                   2030 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:231: while(!SI);                 //Wait until we have data to read
      000447                       2031 00101$:
      000447 30 C3 FD         [24] 2032 	jnb	_SI,00101$
                           000375  2033 	C$i2c.h$232$1$102 ==.
                                   2034 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:232: input_data = SMB0DAT;       //Read the data
      00044A 85 C2 82         [24] 2035 	mov	dpl,_SMB0DAT
                           000378  2036 	C$i2c.h$233$1$102 ==.
                                   2037 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:233: SI = 0;                     //Clear SI
      00044D C2 C3            [12] 2038 	clr	_SI
                           00037A  2039 	C$i2c.h$234$1$102 ==.
                                   2040 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:234: return input_data;          //Return the read data
                           00037A  2041 	C$i2c.h$235$1$102 ==.
                           00037A  2042 	XG$i2c_read$0$0 ==.
      00044F 22               [24] 2043 	ret
                                   2044 ;------------------------------------------------------------
                                   2045 ;Allocation info for local variables in function 'i2c_read_and_stop'
                                   2046 ;------------------------------------------------------------
                                   2047 ;input_data                Allocated to registers r7 
                                   2048 ;------------------------------------------------------------
                           00037B  2049 	G$i2c_read_and_stop$0$0 ==.
                           00037B  2050 	C$i2c.h$238$1$102 ==.
                                   2051 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:238: unsigned char i2c_read_and_stop(void)
                                   2052 ;	-----------------------------------------
                                   2053 ;	 function i2c_read_and_stop
                                   2054 ;	-----------------------------------------
      000450                       2055 _i2c_read_and_stop:
                           00037B  2056 	C$i2c.h$242$1$104 ==.
                                   2057 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:242: while(!SI);                 //Wait until we have data to read
      000450                       2058 00101$:
      000450 30 C3 FD         [24] 2059 	jnb	_SI,00101$
                           00037E  2060 	C$i2c.h$243$1$104 ==.
                                   2061 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:243: input_data = SMB0DAT;       //Read the data
      000453 AF C2            [24] 2062 	mov	r7,_SMB0DAT
                           000380  2063 	C$i2c.h$244$1$104 ==.
                                   2064 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:244: SI = 0;                     //Clear SI
      000455 C2 C3            [12] 2065 	clr	_SI
                           000382  2066 	C$i2c.h$245$1$104 ==.
                                   2067 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:245: STO = 1;                    //Set stop bit
      000457 D2 C4            [12] 2068 	setb	_STO
                           000384  2069 	C$i2c.h$246$1$104 ==.
                                   2070 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:246: while(!SI);                 //Wait for stop
      000459                       2071 00104$:
                           000384  2072 	C$i2c.h$247$1$104 ==.
                                   2073 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:247: SI = 0;
      000459 10 C3 02         [24] 2074 	jbc	_SI,00122$
      00045C 80 FB            [24] 2075 	sjmp	00104$
      00045E                       2076 00122$:
                           000389  2077 	C$i2c.h$248$1$104 ==.
                                   2078 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:248: return input_data;          //Return the read data
      00045E 8F 82            [24] 2079 	mov	dpl,r7
                           00038B  2080 	C$i2c.h$249$1$104 ==.
                           00038B  2081 	XG$i2c_read_and_stop$0$0 ==.
      000460 22               [24] 2082 	ret
                                   2083 ;------------------------------------------------------------
                                   2084 ;Allocation info for local variables in function 'i2c_write_data'
                                   2085 ;------------------------------------------------------------
                                   2086 ;start_reg                 Allocated with name '_i2c_write_data_PARM_2'
                                   2087 ;buffer                    Allocated with name '_i2c_write_data_PARM_3'
                                   2088 ;num_bytes                 Allocated with name '_i2c_write_data_PARM_4'
                                   2089 ;addr                      Allocated to registers r7 
                                   2090 ;i                         Allocated to registers 
                                   2091 ;------------------------------------------------------------
                           00038C  2092 	G$i2c_write_data$0$0 ==.
                           00038C  2093 	C$i2c.h$252$1$104 ==.
                                   2094 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:252: void i2c_write_data(unsigned char addr, unsigned char start_reg, unsigned char *buffer, unsigned char num_bytes)
                                   2095 ;	-----------------------------------------
                                   2096 ;	 function i2c_write_data
                                   2097 ;	-----------------------------------------
      000461                       2098 _i2c_write_data:
      000461 AF 82            [24] 2099 	mov	r7,dpl
                           00038E  2100 	C$i2c.h$256$1$106 ==.
                                   2101 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:256: EA = 0;                     //Don't allow interrupts during I2C work
      000463 C2 AF            [12] 2102 	clr	_EA
                           000390  2103 	C$i2c.h$257$1$106 ==.
                                   2104 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:257: i2c_start();                //Initiate I2C transfer
      000465 C0 07            [24] 2105 	push	ar7
      000467 12 04 26         [24] 2106 	lcall	_i2c_start
      00046A D0 07            [24] 2107 	pop	ar7
                           000397  2108 	C$i2c.h$258$1$106 ==.
                                   2109 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:258: i2c_write(addr & ~0x01);    //Write the desired address to the bus
      00046C 74 FE            [12] 2110 	mov	a,#0xfe
      00046E 5F               [12] 2111 	anl	a,r7
      00046F F5 82            [12] 2112 	mov	dpl,a
      000471 12 04 33         [24] 2113 	lcall	_i2c_write
                           00039F  2114 	C$i2c.h$259$1$106 ==.
                                   2115 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:259: i2c_write(start_reg);       //Write the start register to the bus
      000474 85 2C 82         [24] 2116 	mov	dpl,_i2c_write_data_PARM_2
      000477 12 04 33         [24] 2117 	lcall	_i2c_write
                           0003A5  2118 	C$i2c.h$260$1$106 ==.
                                   2119 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:260: for(i=0; i<num_bytes-1; i++) //Write the data to the register(s)
      00047A 7F 00            [12] 2120 	mov	r7,#0x00
      00047C                       2121 00103$:
      00047C AD 30            [24] 2122 	mov	r5,_i2c_write_data_PARM_4
      00047E 7E 00            [12] 2123 	mov	r6,#0x00
      000480 1D               [12] 2124 	dec	r5
      000481 BD FF 01         [24] 2125 	cjne	r5,#0xff,00114$
      000484 1E               [12] 2126 	dec	r6
      000485                       2127 00114$:
      000485 8F 03            [24] 2128 	mov	ar3,r7
      000487 7C 00            [12] 2129 	mov	r4,#0x00
      000489 C3               [12] 2130 	clr	c
      00048A EB               [12] 2131 	mov	a,r3
      00048B 9D               [12] 2132 	subb	a,r5
      00048C EC               [12] 2133 	mov	a,r4
      00048D 64 80            [12] 2134 	xrl	a,#0x80
      00048F 8E F0            [24] 2135 	mov	b,r6
      000491 63 F0 80         [24] 2136 	xrl	b,#0x80
      000494 95 F0            [12] 2137 	subb	a,b
      000496 50 1F            [24] 2138 	jnc	00101$
                           0003C3  2139 	C$i2c.h$261$1$106 ==.
                                   2140 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:261: i2c_write(buffer[i]);
      000498 EF               [12] 2141 	mov	a,r7
      000499 25 2D            [12] 2142 	add	a,_i2c_write_data_PARM_3
      00049B FC               [12] 2143 	mov	r4,a
      00049C E4               [12] 2144 	clr	a
      00049D 35 2E            [12] 2145 	addc	a,(_i2c_write_data_PARM_3 + 1)
      00049F FD               [12] 2146 	mov	r5,a
      0004A0 AE 2F            [24] 2147 	mov	r6,(_i2c_write_data_PARM_3 + 2)
      0004A2 8C 82            [24] 2148 	mov	dpl,r4
      0004A4 8D 83            [24] 2149 	mov	dph,r5
      0004A6 8E F0            [24] 2150 	mov	b,r6
      0004A8 12 11 EE         [24] 2151 	lcall	__gptrget
      0004AB F5 82            [12] 2152 	mov	dpl,a
      0004AD C0 07            [24] 2153 	push	ar7
      0004AF 12 04 33         [24] 2154 	lcall	_i2c_write
      0004B2 D0 07            [24] 2155 	pop	ar7
                           0003DF  2156 	C$i2c.h$260$1$106 ==.
                                   2157 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:260: for(i=0; i<num_bytes-1; i++) //Write the data to the register(s)
      0004B4 0F               [12] 2158 	inc	r7
      0004B5 80 C5            [24] 2159 	sjmp	00103$
      0004B7                       2160 00101$:
                           0003E2  2161 	C$i2c.h$262$1$106 ==.
                                   2162 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:262: i2c_write_and_stop(buffer[num_bytes-1]); //Stop transfer
      0004B7 AE 30            [24] 2163 	mov	r6,_i2c_write_data_PARM_4
      0004B9 7F 00            [12] 2164 	mov	r7,#0x00
      0004BB 1E               [12] 2165 	dec	r6
      0004BC BE FF 01         [24] 2166 	cjne	r6,#0xff,00116$
      0004BF 1F               [12] 2167 	dec	r7
      0004C0                       2168 00116$:
      0004C0 EE               [12] 2169 	mov	a,r6
      0004C1 25 2D            [12] 2170 	add	a,_i2c_write_data_PARM_3
      0004C3 FE               [12] 2171 	mov	r6,a
      0004C4 EF               [12] 2172 	mov	a,r7
      0004C5 35 2E            [12] 2173 	addc	a,(_i2c_write_data_PARM_3 + 1)
      0004C7 FF               [12] 2174 	mov	r7,a
      0004C8 AD 2F            [24] 2175 	mov	r5,(_i2c_write_data_PARM_3 + 2)
      0004CA 8E 82            [24] 2176 	mov	dpl,r6
      0004CC 8F 83            [24] 2177 	mov	dph,r7
      0004CE 8D F0            [24] 2178 	mov	b,r5
      0004D0 12 11 EE         [24] 2179 	lcall	__gptrget
      0004D3 F5 82            [12] 2180 	mov	dpl,a
      0004D5 12 04 3C         [24] 2181 	lcall	_i2c_write_and_stop
                           000403  2182 	C$i2c.h$263$1$106 ==.
                                   2183 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:263: EA = 1;                     //Re-Enable interrupts
      0004D8 D2 AF            [12] 2184 	setb	_EA
                           000405  2185 	C$i2c.h$264$1$106 ==.
                           000405  2186 	XG$i2c_write_data$0$0 ==.
      0004DA 22               [24] 2187 	ret
                                   2188 ;------------------------------------------------------------
                                   2189 ;Allocation info for local variables in function 'i2c_read_data'
                                   2190 ;------------------------------------------------------------
                                   2191 ;start_reg                 Allocated with name '_i2c_read_data_PARM_2'
                                   2192 ;buffer                    Allocated with name '_i2c_read_data_PARM_3'
                                   2193 ;num_bytes                 Allocated with name '_i2c_read_data_PARM_4'
                                   2194 ;addr                      Allocated to registers r7 
                                   2195 ;j                         Allocated to registers 
                                   2196 ;------------------------------------------------------------
                           000406  2197 	G$i2c_read_data$0$0 ==.
                           000406  2198 	C$i2c.h$267$1$106 ==.
                                   2199 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:267: void i2c_read_data(unsigned char addr, unsigned char start_reg, unsigned char *buffer, unsigned char num_bytes)
                                   2200 ;	-----------------------------------------
                                   2201 ;	 function i2c_read_data
                                   2202 ;	-----------------------------------------
      0004DB                       2203 _i2c_read_data:
      0004DB AF 82            [24] 2204 	mov	r7,dpl
                           000408  2205 	C$i2c.h$271$1$108 ==.
                                   2206 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:271: EA = 0;                     //Don't allow interrupts during I2C work
      0004DD C2 AF            [12] 2207 	clr	_EA
                           00040A  2208 	C$i2c.h$272$1$108 ==.
                                   2209 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:272: i2c_start();                //Start I2C transfer
      0004DF C0 07            [24] 2210 	push	ar7
      0004E1 12 04 26         [24] 2211 	lcall	_i2c_start
      0004E4 D0 07            [24] 2212 	pop	ar7
                           000411  2213 	C$i2c.h$273$1$108 ==.
                                   2214 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:273: i2c_write(addr & ~0x01);    //Write address of device that will be written to, send 0
      0004E6 74 FE            [12] 2215 	mov	a,#0xfe
      0004E8 5F               [12] 2216 	anl	a,r7
      0004E9 F5 82            [12] 2217 	mov	dpl,a
      0004EB C0 07            [24] 2218 	push	ar7
      0004ED 12 04 33         [24] 2219 	lcall	_i2c_write
                           00041B  2220 	C$i2c.h$274$1$108 ==.
                                   2221 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:274: i2c_write_and_stop(start_reg); //Write & stop the 1st register to be read
      0004F0 85 31 82         [24] 2222 	mov	dpl,_i2c_read_data_PARM_2
      0004F3 12 04 3C         [24] 2223 	lcall	_i2c_write_and_stop
                           000421  2224 	C$i2c.h$275$1$108 ==.
                                   2225 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:275: i2c_start();                //Start I2C transfer
      0004F6 12 04 26         [24] 2226 	lcall	_i2c_start
      0004F9 D0 07            [24] 2227 	pop	ar7
                           000426  2228 	C$i2c.h$276$1$108 ==.
                                   2229 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:276: i2c_write(addr | 0x01);     //Write address again, this time indicating a read operation
      0004FB 74 01            [12] 2230 	mov	a,#0x01
      0004FD 4F               [12] 2231 	orl	a,r7
      0004FE F5 82            [12] 2232 	mov	dpl,a
      000500 12 04 33         [24] 2233 	lcall	_i2c_write
                           00042E  2234 	C$i2c.h$277$1$108 ==.
                                   2235 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:277: for(j = 0; j < num_bytes - 1; j++)
      000503 7F 00            [12] 2236 	mov	r7,#0x00
      000505                       2237 00103$:
      000505 AD 35            [24] 2238 	mov	r5,_i2c_read_data_PARM_4
      000507 7E 00            [12] 2239 	mov	r6,#0x00
      000509 1D               [12] 2240 	dec	r5
      00050A BD FF 01         [24] 2241 	cjne	r5,#0xff,00114$
      00050D 1E               [12] 2242 	dec	r6
      00050E                       2243 00114$:
      00050E 8F 03            [24] 2244 	mov	ar3,r7
      000510 7C 00            [12] 2245 	mov	r4,#0x00
      000512 C3               [12] 2246 	clr	c
      000513 EB               [12] 2247 	mov	a,r3
      000514 9D               [12] 2248 	subb	a,r5
      000515 EC               [12] 2249 	mov	a,r4
      000516 64 80            [12] 2250 	xrl	a,#0x80
      000518 8E F0            [24] 2251 	mov	b,r6
      00051A 63 F0 80         [24] 2252 	xrl	b,#0x80
      00051D 95 F0            [12] 2253 	subb	a,b
      00051F 50 2E            [24] 2254 	jnc	00101$
                           00044C  2255 	C$i2c.h$279$2$109 ==.
                                   2256 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:279: AA = 1;                 //Set acknowledge bit
      000521 D2 C2            [12] 2257 	setb	_AA
                           00044E  2258 	C$i2c.h$280$2$109 ==.
                                   2259 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:280: buffer[j] = i2c_read(); //Read data, save it in buffer
      000523 EF               [12] 2260 	mov	a,r7
      000524 25 32            [12] 2261 	add	a,_i2c_read_data_PARM_3
      000526 FC               [12] 2262 	mov	r4,a
      000527 E4               [12] 2263 	clr	a
      000528 35 33            [12] 2264 	addc	a,(_i2c_read_data_PARM_3 + 1)
      00052A FD               [12] 2265 	mov	r5,a
      00052B AE 34            [24] 2266 	mov	r6,(_i2c_read_data_PARM_3 + 2)
      00052D C0 07            [24] 2267 	push	ar7
      00052F C0 06            [24] 2268 	push	ar6
      000531 C0 05            [24] 2269 	push	ar5
      000533 C0 04            [24] 2270 	push	ar4
      000535 12 04 47         [24] 2271 	lcall	_i2c_read
      000538 AB 82            [24] 2272 	mov	r3,dpl
      00053A D0 04            [24] 2273 	pop	ar4
      00053C D0 05            [24] 2274 	pop	ar5
      00053E D0 06            [24] 2275 	pop	ar6
      000540 D0 07            [24] 2276 	pop	ar7
      000542 8C 82            [24] 2277 	mov	dpl,r4
      000544 8D 83            [24] 2278 	mov	dph,r5
      000546 8E F0            [24] 2279 	mov	b,r6
      000548 EB               [12] 2280 	mov	a,r3
      000549 12 09 00         [24] 2281 	lcall	__gptrput
                           000477  2282 	C$i2c.h$277$1$108 ==.
                                   2283 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:277: for(j = 0; j < num_bytes - 1; j++)
      00054C 0F               [12] 2284 	inc	r7
      00054D 80 B6            [24] 2285 	sjmp	00103$
      00054F                       2286 00101$:
                           00047A  2287 	C$i2c.h$282$1$108 ==.
                                   2288 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:282: AA = 0;
      00054F C2 C2            [12] 2289 	clr	_AA
                           00047C  2290 	C$i2c.h$283$1$108 ==.
                                   2291 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:283: buffer[num_bytes - 1] = i2c_read_and_stop(); //Read the last byte and stop, save it in the buffer
      000551 AE 35            [24] 2292 	mov	r6,_i2c_read_data_PARM_4
      000553 7F 00            [12] 2293 	mov	r7,#0x00
      000555 1E               [12] 2294 	dec	r6
      000556 BE FF 01         [24] 2295 	cjne	r6,#0xff,00116$
      000559 1F               [12] 2296 	dec	r7
      00055A                       2297 00116$:
      00055A EE               [12] 2298 	mov	a,r6
      00055B 25 32            [12] 2299 	add	a,_i2c_read_data_PARM_3
      00055D FE               [12] 2300 	mov	r6,a
      00055E EF               [12] 2301 	mov	a,r7
      00055F 35 33            [12] 2302 	addc	a,(_i2c_read_data_PARM_3 + 1)
      000561 FF               [12] 2303 	mov	r7,a
      000562 AD 34            [24] 2304 	mov	r5,(_i2c_read_data_PARM_3 + 2)
      000564 C0 07            [24] 2305 	push	ar7
      000566 C0 06            [24] 2306 	push	ar6
      000568 C0 05            [24] 2307 	push	ar5
      00056A 12 04 50         [24] 2308 	lcall	_i2c_read_and_stop
      00056D AC 82            [24] 2309 	mov	r4,dpl
      00056F D0 05            [24] 2310 	pop	ar5
      000571 D0 06            [24] 2311 	pop	ar6
      000573 D0 07            [24] 2312 	pop	ar7
      000575 8E 82            [24] 2313 	mov	dpl,r6
      000577 8F 83            [24] 2314 	mov	dph,r7
      000579 8D F0            [24] 2315 	mov	b,r5
      00057B EC               [12] 2316 	mov	a,r4
      00057C 12 09 00         [24] 2317 	lcall	__gptrput
                           0004AA  2318 	C$i2c.h$284$1$108 ==.
                                   2319 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:284: EA = 1;                     //Re-Enable interrupts
      00057F D2 AF            [12] 2320 	setb	_EA
                           0004AC  2321 	C$i2c.h$285$1$108 ==.
                           0004AC  2322 	XG$i2c_read_data$0$0 ==.
      000581 22               [24] 2323 	ret
                                   2324 ;------------------------------------------------------------
                                   2325 ;Allocation info for local variables in function 'Accel_Init'
                                   2326 ;------------------------------------------------------------
                           0004AD  2327 	G$Accel_Init$0$0 ==.
                           0004AD  2328 	C$i2c.h$294$1$108 ==.
                                   2329 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:294: void Accel_Init(void)
                                   2330 ;	-----------------------------------------
                                   2331 ;	 function Accel_Init
                                   2332 ;	-----------------------------------------
      000582                       2333 _Accel_Init:
                           0004AD  2334 	C$i2c.h$298$1$111 ==.
                                   2335 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:298: Data2[0]=0x23;  //normal power mode, 50Hz ODR, y & x axes enabled
      000582 75 22 23         [24] 2336 	mov	_Data2,#0x23
                           0004B0  2337 	C$i2c.h$300$1$111 ==.
                                   2338 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:300: Data2[1]=0x00;  //default - no filtering
      000585 75 23 00         [24] 2339 	mov	(_Data2 + 0x0001),#0x00
                           0004B3  2340 	C$i2c.h$301$1$111 ==.
                                   2341 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:301: Data2[1]=0x10;  //filtered data selected, HPF = 1.0->0.125Hz
      000588 75 23 10         [24] 2342 	mov	(_Data2 + 0x0001),#0x10
                           0004B6  2343 	C$i2c.h$302$1$111 ==.
                                   2344 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:302: Data2[2]=0x00;  //default - no interrupts enabled
      00058B 75 24 00         [24] 2345 	mov	(_Data2 + 0x0002),#0x00
                           0004B9  2346 	C$i2c.h$304$1$111 ==.
                                   2347 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:304: i2c_write_data(addr_accel, 0x20, Data2, 1);
      00058E 75 2D 22         [24] 2348 	mov	_i2c_write_data_PARM_3,#_Data2
      000591 75 2E 00         [24] 2349 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      000594 75 2F 40         [24] 2350 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      000597 75 2C 20         [24] 2351 	mov	_i2c_write_data_PARM_2,#0x20
      00059A 75 30 01         [24] 2352 	mov	_i2c_write_data_PARM_4,#0x01
      00059D 75 82 30         [24] 2353 	mov	dpl,#0x30
      0005A0 12 04 61         [24] 2354 	lcall	_i2c_write_data
                           0004CE  2355 	C$i2c.h$310$1$111 ==.
                           0004CE  2356 	XG$Accel_Init$0$0 ==.
      0005A3 22               [24] 2357 	ret
                                   2358 ;------------------------------------------------------------
                                   2359 ;Allocation info for local variables in function 'Accel_Init_C'
                                   2360 ;------------------------------------------------------------
                           0004CF  2361 	G$Accel_Init_C$0$0 ==.
                           0004CF  2362 	C$i2c.h$313$1$111 ==.
                                   2363 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:313: void Accel_Init_C(void)
                                   2364 ;	-----------------------------------------
                                   2365 ;	 function Accel_Init_C
                                   2366 ;	-----------------------------------------
      0005A4                       2367 _Accel_Init_C:
                           0004CF  2368 	C$i2c.h$318$1$113 ==.
                                   2369 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:318: Data2[0]=0x04;  //set register address auto increment bit
      0005A4 75 22 04         [24] 2370 	mov	_Data2,#0x04
                           0004D2  2371 	C$i2c.h$319$1$113 ==.
                                   2372 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:319: i2c_write_data(addr_accelC, 0x23, Data2, 1);
      0005A7 75 2D 22         [24] 2373 	mov	_i2c_write_data_PARM_3,#_Data2
      0005AA 75 2E 00         [24] 2374 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0005AD 75 2F 40         [24] 2375 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0005B0 75 2C 23         [24] 2376 	mov	_i2c_write_data_PARM_2,#0x23
      0005B3 75 30 01         [24] 2377 	mov	_i2c_write_data_PARM_4,#0x01
      0005B6 75 82 3A         [24] 2378 	mov	dpl,#0x3a
      0005B9 12 04 61         [24] 2379 	lcall	_i2c_write_data
                           0004E7  2380 	C$i2c.h$321$1$113 ==.
                                   2381 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:321: Data2[0]=0x6B;  //R20 normal power mode, 800Hz ODR, y & x axes enabled
      0005BC 75 22 6B         [24] 2382 	mov	_Data2,#0x6b
                           0004EA  2383 	C$i2c.h$323$1$113 ==.
                                   2384 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:323: Data2[1]=0x00;  //R21 Default - no HP filtering
      0005BF 75 23 00         [24] 2385 	mov	(_Data2 + 0x0001),#0x00
                           0004ED  2386 	C$i2c.h$325$1$113 ==.
                                   2387 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:325: Data2[2]=0x00;  //R22 Default - no interrupts enabled
      0005C2 75 24 00         [24] 2388 	mov	(_Data2 + 0x0002),#0x00
                           0004F0  2389 	C$i2c.h$326$1$113 ==.
                                   2390 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:326: i2c_write_data(addr_accelC, 0x20, Data2, 1);
      0005C5 75 2D 22         [24] 2391 	mov	_i2c_write_data_PARM_3,#_Data2
      0005C8 75 2E 00         [24] 2392 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0005CB 75 2F 40         [24] 2393 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0005CE 75 2C 20         [24] 2394 	mov	_i2c_write_data_PARM_2,#0x20
      0005D1 75 30 01         [24] 2395 	mov	_i2c_write_data_PARM_4,#0x01
      0005D4 75 82 3A         [24] 2396 	mov	dpl,#0x3a
      0005D7 12 04 61         [24] 2397 	lcall	_i2c_write_data
                           000505  2398 	C$i2c.h$328$1$113 ==.
                           000505  2399 	XG$Accel_Init_C$0$0 ==.
      0005DA 22               [24] 2400 	ret
                                   2401 ;------------------------------------------------------------
                                   2402 ;Allocation info for local variables in function 'main'
                                   2403 ;------------------------------------------------------------
                           000506  2404 	G$main$0$0 ==.
                           000506  2405 	C$lab3_3.c$63$1$113 ==.
                                   2406 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:63: void main(void)
                                   2407 ;	-----------------------------------------
                                   2408 ;	 function main
                                   2409 ;	-----------------------------------------
      0005DB                       2410 _main:
                           000506  2411 	C$lab3_3.c$66$1$122 ==.
                                   2412 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:66: Sys_Init();
      0005DB 12 01 0C         [24] 2413 	lcall	_Sys_Init
                           000509  2414 	C$lab3_3.c$67$1$122 ==.
                                   2415 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:67: putchar(' '); //the quotes in this line may not format correctly
      0005DE 75 82 20         [24] 2416 	mov	dpl,#0x20
      0005E1 12 01 1F         [24] 2417 	lcall	_putchar
                           00050F  2418 	C$lab3_3.c$68$1$122 ==.
                                   2419 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:68: Port_Init();
      0005E4 12 06 43         [24] 2420 	lcall	_Port_Init
                           000512  2421 	C$lab3_3.c$69$1$122 ==.
                                   2422 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:69: XBR0_Init();
      0005E7 12 06 4D         [24] 2423 	lcall	_XBR0_Init
                           000515  2424 	C$lab3_3.c$70$1$122 ==.
                                   2425 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:70: PCA_Init();
      0005EA 12 06 51         [24] 2426 	lcall	_PCA_Init
                           000518  2427 	C$lab3_3.c$71$1$122 ==.
                                   2428 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:71: SMB_Init();
      0005ED 12 06 60         [24] 2429 	lcall	_SMB_Init
                           00051B  2430 	C$lab3_3.c$74$1$122 ==.
                                   2431 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:74: while (1)
      0005F0                       2432 00106$:
                           00051B  2433 	C$lab3_3.c$78$2$123 ==.
                                   2434 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:78: if (!SS1){
      0005F0 20 B5 FD         [24] 2435 	jb	_SS1,00106$
                           00051E  2436 	C$lab3_3.c$79$3$124 ==.
                                   2437 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:79: if (new_light)
      0005F3 E5 40            [12] 2438 	mov	a,_new_light
      0005F5 60 F9            [24] 2439 	jz	00106$
                           000522  2440 	C$lab3_3.c$83$4$125 ==.
                                   2441 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:83: read = ReadRanger();//read the ranger
      0005F7 12 06 B4         [24] 2442 	lcall	_ReadRanger
      0005FA 85 82 41         [24] 2443 	mov	_read,dpl
      0005FD 85 83 42         [24] 2444 	mov	(_read + 1),dph
                           00052B  2445 	C$lab3_3.c$86$4$125 ==.
                                   2446 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:86: Data[0] = 0x50; // write 0x51 to reg 0 of the ranger:
      000600 75 43 50         [24] 2447 	mov	(_Data + 0),#0x50
      000603 75 44 00         [24] 2448 	mov	(_Data + 1),#0x00
                           000531  2449 	C$lab3_3.c$87$4$125 ==.
                                   2450 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:87: i2c_write_data(addr, 0, Data, 1); // write one byte of data to reg 0 at addr
      000606 75 2D 43         [24] 2451 	mov	_i2c_write_data_PARM_3,#_Data
      000609 75 2E 00         [24] 2452 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      00060C 75 2F 40         [24] 2453 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      00060F 75 2C 00         [24] 2454 	mov	_i2c_write_data_PARM_2,#0x00
      000612 75 30 01         [24] 2455 	mov	_i2c_write_data_PARM_4,#0x01
      000615 85 3E 82         [24] 2456 	mov	dpl,_addr
      000618 12 04 61         [24] 2457 	lcall	_i2c_write_data
                           000546  2458 	C$lab3_3.c$89$4$125 ==.
                                   2459 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:89: new_light = 0; //reset the 80ms flag
      00061B 75 40 00         [24] 2460 	mov	_new_light,#0x00
                           000549  2461 	C$lab3_3.c$90$4$125 ==.
                                   2462 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:90: printf("%u \r\n", read); //print the light
      00061E C0 41            [24] 2463 	push	_read
      000620 C0 42            [24] 2464 	push	(_read + 1)
      000622 74 C6            [12] 2465 	mov	a,#___str_3
      000624 C0 E0            [24] 2466 	push	acc
      000626 74 12            [12] 2467 	mov	a,#(___str_3 >> 8)
      000628 C0 E0            [24] 2468 	push	acc
      00062A 74 80            [12] 2469 	mov	a,#0x80
      00062C C0 E0            [24] 2470 	push	acc
      00062E 12 0B 16         [24] 2471 	lcall	_printf
      000631 E5 81            [12] 2472 	mov	a,sp
      000633 24 FB            [12] 2473 	add	a,#0xfb
      000635 F5 81            [12] 2474 	mov	sp,a
                           000562  2475 	C$lab3_3.c$91$4$125 ==.
                                   2476 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:91: Set_Pulsewidth(read); //Set the dimmest
      000637 85 41 82         [24] 2477 	mov	dpl,_read
      00063A 85 42 83         [24] 2478 	mov	dph,(_read + 1)
      00063D 12 07 1B         [24] 2479 	lcall	_Set_Pulsewidth
      000640 80 AE            [24] 2480 	sjmp	00106$
                           00056D  2481 	C$lab3_3.c$95$1$122 ==.
                           00056D  2482 	XG$main$0$0 ==.
      000642 22               [24] 2483 	ret
                                   2484 ;------------------------------------------------------------
                                   2485 ;Allocation info for local variables in function 'Port_Init'
                                   2486 ;------------------------------------------------------------
                           00056E  2487 	G$Port_Init$0$0 ==.
                           00056E  2488 	C$lab3_3.c$103$1$122 ==.
                                   2489 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:103: void Port_Init()
                                   2490 ;	-----------------------------------------
                                   2491 ;	 function Port_Init
                                   2492 ;	-----------------------------------------
      000643                       2493 _Port_Init:
                           00056E  2494 	C$lab3_3.c$105$1$126 ==.
                                   2495 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:105: P1MDOUT |= 0x08;   //set output pin for CEX0, CEX2, CEX3
      000643 43 A5 08         [24] 2496 	orl	_P1MDOUT,#0x08
                           000571  2497 	C$lab3_3.c$106$1$126 ==.
                                   2498 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:106: P3MDOUT &= ~0x20;  //set input pin for slide switches
      000646 53 A7 DF         [24] 2499 	anl	_P3MDOUT,#0xdf
                           000574  2500 	C$lab3_3.c$107$1$126 ==.
                                   2501 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:107: P3|= 0x20;         //Set High Impedience
      000649 43 B0 20         [24] 2502 	orl	_P3,#0x20
                           000577  2503 	C$lab3_3.c$108$1$126 ==.
                           000577  2504 	XG$Port_Init$0$0 ==.
      00064C 22               [24] 2505 	ret
                                   2506 ;------------------------------------------------------------
                                   2507 ;Allocation info for local variables in function 'XBR0_Init'
                                   2508 ;------------------------------------------------------------
                           000578  2509 	G$XBR0_Init$0$0 ==.
                           000578  2510 	C$lab3_3.c$116$1$126 ==.
                                   2511 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:116: void XBR0_Init()
                                   2512 ;	-----------------------------------------
                                   2513 ;	 function XBR0_Init
                                   2514 ;	-----------------------------------------
      00064D                       2515 _XBR0_Init:
                           000578  2516 	C$lab3_3.c$118$1$127 ==.
                                   2517 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:118: XBR0 = 0x27;  //configure crossbar as directed in the laboratory
      00064D 75 E1 27         [24] 2518 	mov	_XBR0,#0x27
                           00057B  2519 	C$lab3_3.c$119$1$127 ==.
                           00057B  2520 	XG$XBR0_Init$0$0 ==.
      000650 22               [24] 2521 	ret
                                   2522 ;------------------------------------------------------------
                                   2523 ;Allocation info for local variables in function 'PCA_Init'
                                   2524 ;------------------------------------------------------------
                           00057C  2525 	G$PCA_Init$0$0 ==.
                           00057C  2526 	C$lab3_3.c$127$1$127 ==.
                                   2527 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:127: void PCA_Init(void)
                                   2528 ;	-----------------------------------------
                                   2529 ;	 function PCA_Init
                                   2530 ;	-----------------------------------------
      000651                       2531 _PCA_Init:
                           00057C  2532 	C$lab3_3.c$131$1$129 ==.
                                   2533 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:131: PCA0MD = 0x81; // SYSCLK/12
      000651 75 D9 81         [24] 2534 	mov	_PCA0MD,#0x81
                           00057F  2535 	C$lab3_3.c$132$1$129 ==.
                                   2536 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:132: PCA0CN = 0x40; //enable PCA0 counter
      000654 75 D8 40         [24] 2537 	mov	_PCA0CN,#0x40
                           000582  2538 	C$lab3_3.c$133$1$129 ==.
                                   2539 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:133: EIE1 |= 0x08;  //enable PCA interrupt
      000657 43 E6 08         [24] 2540 	orl	_EIE1,#0x08
                           000585  2541 	C$lab3_3.c$134$1$129 ==.
                                   2542 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:134: EA = 1;        //enable GLobal Interrupt
      00065A D2 AF            [12] 2543 	setb	_EA
                           000587  2544 	C$lab3_3.c$136$1$129 ==.
                                   2545 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:136: PCA0CPM3 = 0xC2;
      00065C 75 DD C2         [24] 2546 	mov	_PCA0CPM3,#0xc2
                           00058A  2547 	C$lab3_3.c$138$1$129 ==.
                           00058A  2548 	XG$PCA_Init$0$0 ==.
      00065F 22               [24] 2549 	ret
                                   2550 ;------------------------------------------------------------
                                   2551 ;Allocation info for local variables in function 'SMB_Init'
                                   2552 ;------------------------------------------------------------
                           00058B  2553 	G$SMB_Init$0$0 ==.
                           00058B  2554 	C$lab3_3.c$146$1$129 ==.
                                   2555 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:146: void SMB_Init(void)
                                   2556 ;	-----------------------------------------
                                   2557 ;	 function SMB_Init
                                   2558 ;	-----------------------------------------
      000660                       2559 _SMB_Init:
                           00058B  2560 	C$lab3_3.c$148$1$131 ==.
                                   2561 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:148: ENSMB = 1; //enable SMB
      000660 D2 C6            [12] 2562 	setb	_ENSMB
                           00058D  2563 	C$lab3_3.c$149$1$131 ==.
                                   2564 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:149: SMB0CR = 0x93; //Set clock
      000662 75 CF 93         [24] 2565 	mov	_SMB0CR,#0x93
                           000590  2566 	C$lab3_3.c$150$1$131 ==.
                           000590  2567 	XG$SMB_Init$0$0 ==.
      000665 22               [24] 2568 	ret
                                   2569 ;------------------------------------------------------------
                                   2570 ;Allocation info for local variables in function 'PCA_ISR'
                                   2571 ;------------------------------------------------------------
                           000591  2572 	G$PCA_ISR$0$0 ==.
                           000591  2573 	C$lab3_3.c$158$1$131 ==.
                                   2574 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:158: void PCA_ISR ( void ) __interrupt 9
                                   2575 ;	-----------------------------------------
                                   2576 ;	 function PCA_ISR
                                   2577 ;	-----------------------------------------
      000666                       2578 _PCA_ISR:
      000666 C0 E0            [24] 2579 	push	acc
      000668 C0 07            [24] 2580 	push	ar7
      00066A C0 06            [24] 2581 	push	ar6
      00066C C0 05            [24] 2582 	push	ar5
      00066E C0 04            [24] 2583 	push	ar4
      000670 C0 D0            [24] 2584 	push	psw
      000672 75 D0 00         [24] 2585 	mov	psw,#0x00
                           0005A0  2586 	C$lab3_3.c$163$1$133 ==.
                                   2587 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:163: PCA0 = 65535 - PCA_start;       // start count for 20ms
      000675 AC 3C            [24] 2588 	mov	r4,_PCA_start
      000677 AD 3D            [24] 2589 	mov	r5,(_PCA_start + 1)
      000679 E4               [12] 2590 	clr	a
      00067A FE               [12] 2591 	mov	r6,a
      00067B FF               [12] 2592 	mov	r7,a
      00067C 74 FF            [12] 2593 	mov	a,#0xff
      00067E C3               [12] 2594 	clr	c
      00067F 9C               [12] 2595 	subb	a,r4
      000680 FC               [12] 2596 	mov	r4,a
      000681 74 FF            [12] 2597 	mov	a,#0xff
      000683 9D               [12] 2598 	subb	a,r5
      000684 FD               [12] 2599 	mov	r5,a
      000685 E4               [12] 2600 	clr	a
      000686 9E               [12] 2601 	subb	a,r6
      000687 FE               [12] 2602 	mov	r6,a
      000688 E4               [12] 2603 	clr	a
      000689 9F               [12] 2604 	subb	a,r7
      00068A FF               [12] 2605 	mov	r7,a
      00068B 8C E9            [24] 2606 	mov	((_PCA0 >> 0) & 0xFF),r4
      00068D 8D F9            [24] 2607 	mov	((_PCA0 >> 8) & 0xFF),r5
                           0005BA  2608 	C$lab3_3.c$166$1$133 ==.
                                   2609 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:166: CF = 0;                 // Very important - clear interrupt flag
      00068F C2 DF            [12] 2610 	clr	_CF
                           0005BC  2611 	C$lab3_3.c$169$1$133 ==.
                                   2612 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:169: l_count++;
      000691 05 3F            [12] 2613 	inc	_l_count
                           0005BE  2614 	C$lab3_3.c$170$1$133 ==.
                                   2615 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:170: h_count++;
      000693 05 4C            [12] 2616 	inc	_h_count
      000695 E4               [12] 2617 	clr	a
      000696 B5 4C 02         [24] 2618 	cjne	a,_h_count,00108$
      000699 05 4D            [12] 2619 	inc	(_h_count + 1)
      00069B                       2620 00108$:
                           0005C6  2621 	C$lab3_3.c$172$1$133 ==.
                                   2622 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:172: if(l_count>=8)
      00069B 74 F8            [12] 2623 	mov	a,#0x100 - 0x08
      00069D 25 3F            [12] 2624 	add	a,_l_count
      00069F 50 06            [24] 2625 	jnc	00103$
                           0005CC  2626 	C$lab3_3.c$174$2$134 ==.
                                   2627 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:174: new_light = 1; // at least 4 overflows is about 80 ms
      0006A1 75 40 01         [24] 2628 	mov	_new_light,#0x01
                           0005CF  2629 	C$lab3_3.c$175$2$134 ==.
                                   2630 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:175: l_count = 0;
      0006A4 75 3F 00         [24] 2631 	mov	_l_count,#0x00
      0006A7                       2632 00103$:
      0006A7 D0 D0            [24] 2633 	pop	psw
      0006A9 D0 04            [24] 2634 	pop	ar4
      0006AB D0 05            [24] 2635 	pop	ar5
      0006AD D0 06            [24] 2636 	pop	ar6
      0006AF D0 07            [24] 2637 	pop	ar7
      0006B1 D0 E0            [24] 2638 	pop	acc
                           0005DE  2639 	C$lab3_3.c$185$1$133 ==.
                           0005DE  2640 	XG$PCA_ISR$0$0 ==.
      0006B3 32               [24] 2641 	reti
                                   2642 ;	eliminated unneeded push/pop dpl
                                   2643 ;	eliminated unneeded push/pop dph
                                   2644 ;	eliminated unneeded push/pop b
                                   2645 ;------------------------------------------------------------
                                   2646 ;Allocation info for local variables in function 'ReadRanger'
                                   2647 ;------------------------------------------------------------
                                   2648 ;light                     Allocated to registers 
                                   2649 ;------------------------------------------------------------
                           0005DF  2650 	G$ReadRanger$0$0 ==.
                           0005DF  2651 	C$lab3_3.c$188$1$133 ==.
                                   2652 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:188: unsigned int ReadRanger()
                                   2653 ;	-----------------------------------------
                                   2654 ;	 function ReadRanger
                                   2655 ;	-----------------------------------------
      0006B4                       2656 _ReadRanger:
                           0005DF  2657 	C$lab3_3.c$191$1$135 ==.
                                   2658 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:191: i2c_read_data(addr, 1, Data, 1); // read  byte, starting at reg 6
      0006B4 75 32 43         [24] 2659 	mov	_i2c_read_data_PARM_3,#_Data
      0006B7 75 33 00         [24] 2660 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      0006BA 75 34 40         [24] 2661 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      0006BD 75 31 01         [24] 2662 	mov	_i2c_read_data_PARM_2,#0x01
      0006C0 75 35 01         [24] 2663 	mov	_i2c_read_data_PARM_4,#0x01
      0006C3 85 3E 82         [24] 2664 	mov	dpl,_addr
      0006C6 12 04 DB         [24] 2665 	lcall	_i2c_read_data
                           0005F4  2666 	C$lab3_3.c$192$1$135 ==.
                                   2667 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:192: light = Data[0];
      0006C9 85 43 82         [24] 2668 	mov	dpl,(_Data + 0)
      0006CC 85 44 83         [24] 2669 	mov	dph,(_Data + 1)
                           0005FA  2670 	C$lab3_3.c$193$1$135 ==.
                                   2671 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:193: return light;
                           0005FA  2672 	C$lab3_3.c$194$1$135 ==.
                           0005FA  2673 	XG$ReadRanger$0$0 ==.
      0006CF 22               [24] 2674 	ret
                                   2675 ;------------------------------------------------------------
                                   2676 ;Allocation info for local variables in function 'ReadCompass'
                                   2677 ;------------------------------------------------------------
                           0005FB  2678 	G$ReadCompass$0$0 ==.
                           0005FB  2679 	C$lab3_3.c$196$1$135 ==.
                                   2680 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:196: unsigned int ReadCompass()
                                   2681 ;	-----------------------------------------
                                   2682 ;	 function ReadCompass
                                   2683 ;	-----------------------------------------
      0006D0                       2684 _ReadCompass:
                           0005FB  2685 	C$lab3_3.c$198$1$136 ==.
                                   2686 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:198: i2c_read_data(c_addr,4, c_Data, 2);
      0006D0 75 32 48         [24] 2687 	mov	_i2c_read_data_PARM_3,#_c_Data
      0006D3 75 33 00         [24] 2688 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      0006D6 75 34 40         [24] 2689 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      0006D9 75 31 04         [24] 2690 	mov	_i2c_read_data_PARM_2,#0x04
      0006DC 75 35 02         [24] 2691 	mov	_i2c_read_data_PARM_4,#0x02
      0006DF 85 47 82         [24] 2692 	mov	dpl,_c_addr
      0006E2 12 04 DB         [24] 2693 	lcall	_i2c_read_data
                           000610  2694 	C$lab3_3.c$199$1$136 ==.
                                   2695 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:199: heading = ((c_Data[0] << 8)|c_Data[1]);
      0006E5 AF 48            [24] 2696 	mov	r7,_c_Data
      0006E7 7E 00            [12] 2697 	mov	r6,#0x00
      0006E9 AC 49            [24] 2698 	mov	r4,(_c_Data + 0x0001)
      0006EB 7D 00            [12] 2699 	mov	r5,#0x00
      0006ED EC               [12] 2700 	mov	a,r4
      0006EE 4E               [12] 2701 	orl	a,r6
      0006EF F5 4A            [12] 2702 	mov	_heading,a
      0006F1 ED               [12] 2703 	mov	a,r5
      0006F2 4F               [12] 2704 	orl	a,r7
      0006F3 F5 4B            [12] 2705 	mov	(_heading + 1),a
                           000620  2706 	C$lab3_3.c$200$1$136 ==.
                                   2707 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:200: return heading;
      0006F5 85 4A 82         [24] 2708 	mov	dpl,_heading
      0006F8 85 4B 83         [24] 2709 	mov	dph,(_heading + 1)
                           000626  2710 	C$lab3_3.c$201$1$136 ==.
                           000626  2711 	XG$ReadCompass$0$0 ==.
      0006FB 22               [24] 2712 	ret
                                   2713 ;------------------------------------------------------------
                                   2714 ;Allocation info for local variables in function 'ReadVersion'
                                   2715 ;------------------------------------------------------------
                                   2716 ;adr                       Allocated to registers 
                                   2717 ;------------------------------------------------------------
                           000627  2718 	G$ReadVersion$0$0 ==.
                           000627  2719 	C$lab3_3.c$203$1$136 ==.
                                   2720 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:203: unsigned int ReadVersion(unsigned char adr)
                                   2721 ;	-----------------------------------------
                                   2722 ;	 function ReadVersion
                                   2723 ;	-----------------------------------------
      0006FC                       2724 _ReadVersion:
                           000627  2725 	C$lab3_3.c$205$1$138 ==.
                                   2726 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:205: i2c_read_data(adr,0,c_Data,1);
      0006FC 75 32 48         [24] 2727 	mov	_i2c_read_data_PARM_3,#_c_Data
      0006FF 75 33 00         [24] 2728 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      000702 75 34 40         [24] 2729 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      000705 75 31 00         [24] 2730 	mov	_i2c_read_data_PARM_2,#0x00
      000708 75 35 01         [24] 2731 	mov	_i2c_read_data_PARM_4,#0x01
      00070B 12 04 DB         [24] 2732 	lcall	_i2c_read_data
                           000639  2733 	C$lab3_3.c$206$1$138 ==.
                                   2734 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:206: version = c_Data[0];
      00070E 85 48 4F         [24] 2735 	mov	_version,_c_Data
      000711 75 50 00         [24] 2736 	mov	(_version + 1),#0x00
                           00063F  2737 	C$lab3_3.c$207$1$138 ==.
                                   2738 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:207: return version;
      000714 85 4F 82         [24] 2739 	mov	dpl,_version
      000717 85 50 83         [24] 2740 	mov	dph,(_version + 1)
                           000645  2741 	C$lab3_3.c$208$1$138 ==.
                           000645  2742 	XG$ReadVersion$0$0 ==.
      00071A 22               [24] 2743 	ret
                                   2744 ;------------------------------------------------------------
                                   2745 ;Allocation info for local variables in function 'Set_Pulsewidth'
                                   2746 ;------------------------------------------------------------
                                   2747 ;input                     Allocated to registers r6 r7 
                                   2748 ;------------------------------------------------------------
                           000646  2749 	G$Set_Pulsewidth$0$0 ==.
                           000646  2750 	C$lab3_3.c$210$1$138 ==.
                                   2751 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:210: void Set_Pulsewidth(unsigned int input)
                                   2752 ;	-----------------------------------------
                                   2753 ;	 function Set_Pulsewidth
                                   2754 ;	-----------------------------------------
      00071B                       2755 _Set_Pulsewidth:
      00071B AE 82            [24] 2756 	mov	r6,dpl
      00071D AF 83            [24] 2757 	mov	r7,dph
                           00064A  2758 	C$lab3_3.c$213$1$140 ==.
                                   2759 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:213: if(input < 40)  // single character input to increase the pulsewidth
      00071F C3               [12] 2760 	clr	c
      000720 EE               [12] 2761 	mov	a,r6
      000721 94 28            [12] 2762 	subb	a,#0x28
      000723 EF               [12] 2763 	mov	a,r7
      000724 94 00            [12] 2764 	subb	a,#0x00
      000726 50 09            [24] 2765 	jnc	00105$
                           000653  2766 	C$lab3_3.c$215$2$141 ==.
                                   2767 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:215: PW = PW_MIN;    // set PW to the maximum value       }
      000728 85 36 3A         [24] 2768 	mov	_PW,_PW_MIN
      00072B 85 37 3B         [24] 2769 	mov	(_PW + 1),(_PW_MIN + 1)
      00072E 02 07 CA         [24] 2770 	ljmp	00106$
      000731                       2771 00105$:
                           00065C  2772 	C$lab3_3.c$217$1$140 ==.
                                   2773 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:217: else if(input > 215)  // single character input to decrease the pulsewidth
      000731 C3               [12] 2774 	clr	c
      000732 74 D7            [12] 2775 	mov	a,#0xd7
      000734 9E               [12] 2776 	subb	a,r6
      000735 E4               [12] 2777 	clr	a
      000736 9F               [12] 2778 	subb	a,r7
      000737 50 09            [24] 2779 	jnc	00102$
                           000664  2780 	C$lab3_3.c$219$2$142 ==.
                                   2781 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:219: PW = PW_MAX; //set PW to min value
      000739 85 38 3A         [24] 2782 	mov	_PW,_PW_MAX
      00073C 85 39 3B         [24] 2783 	mov	(_PW + 1),(_PW_MAX + 1)
      00073F 02 07 CA         [24] 2784 	ljmp	00106$
      000742                       2785 00102$:
                           00066D  2786 	C$lab3_3.c$223$1$140 ==.
                                   2787 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:223: PW = 26576.0*(input/175.0) - 4230.0; 
      000742 8E 82            [24] 2788 	mov	dpl,r6
      000744 8F 83            [24] 2789 	mov	dph,r7
      000746 12 0A 8C         [24] 2790 	lcall	___uint2fs
      000749 AC 82            [24] 2791 	mov	r4,dpl
      00074B AD 83            [24] 2792 	mov	r5,dph
      00074D AE F0            [24] 2793 	mov	r6,b
      00074F FF               [12] 2794 	mov	r7,a
      000750 E4               [12] 2795 	clr	a
      000751 C0 E0            [24] 2796 	push	acc
      000753 C0 E0            [24] 2797 	push	acc
      000755 74 2F            [12] 2798 	mov	a,#0x2f
      000757 C0 E0            [24] 2799 	push	acc
      000759 74 43            [12] 2800 	mov	a,#0x43
      00075B C0 E0            [24] 2801 	push	acc
      00075D 8C 82            [24] 2802 	mov	dpl,r4
      00075F 8D 83            [24] 2803 	mov	dph,r5
      000761 8E F0            [24] 2804 	mov	b,r6
      000763 EF               [12] 2805 	mov	a,r7
      000764 12 11 2B         [24] 2806 	lcall	___fsdiv
      000767 AC 82            [24] 2807 	mov	r4,dpl
      000769 AD 83            [24] 2808 	mov	r5,dph
      00076B AE F0            [24] 2809 	mov	r6,b
      00076D FF               [12] 2810 	mov	r7,a
      00076E E5 81            [12] 2811 	mov	a,sp
      000770 24 FC            [12] 2812 	add	a,#0xfc
      000772 F5 81            [12] 2813 	mov	sp,a
      000774 C0 04            [24] 2814 	push	ar4
      000776 C0 05            [24] 2815 	push	ar5
      000778 C0 06            [24] 2816 	push	ar6
      00077A C0 07            [24] 2817 	push	ar7
      00077C 90 A0 00         [24] 2818 	mov	dptr,#0xa000
      00077F 75 F0 CF         [24] 2819 	mov	b,#0xcf
      000782 74 46            [12] 2820 	mov	a,#0x46
      000784 12 07 FC         [24] 2821 	lcall	___fsmul
      000787 AC 82            [24] 2822 	mov	r4,dpl
      000789 AD 83            [24] 2823 	mov	r5,dph
      00078B AE F0            [24] 2824 	mov	r6,b
      00078D FF               [12] 2825 	mov	r7,a
      00078E E5 81            [12] 2826 	mov	a,sp
      000790 24 FC            [12] 2827 	add	a,#0xfc
      000792 F5 81            [12] 2828 	mov	sp,a
      000794 E4               [12] 2829 	clr	a
      000795 C0 E0            [24] 2830 	push	acc
      000797 74 30            [12] 2831 	mov	a,#0x30
      000799 C0 E0            [24] 2832 	push	acc
      00079B 74 84            [12] 2833 	mov	a,#0x84
      00079D C0 E0            [24] 2834 	push	acc
      00079F 74 45            [12] 2835 	mov	a,#0x45
      0007A1 C0 E0            [24] 2836 	push	acc
      0007A3 8C 82            [24] 2837 	mov	dpl,r4
      0007A5 8D 83            [24] 2838 	mov	dph,r5
      0007A7 8E F0            [24] 2839 	mov	b,r6
      0007A9 EF               [12] 2840 	mov	a,r7
      0007AA 12 07 F1         [24] 2841 	lcall	___fssub
      0007AD AC 82            [24] 2842 	mov	r4,dpl
      0007AF AD 83            [24] 2843 	mov	r5,dph
      0007B1 AE F0            [24] 2844 	mov	r6,b
      0007B3 FF               [12] 2845 	mov	r7,a
      0007B4 E5 81            [12] 2846 	mov	a,sp
      0007B6 24 FC            [12] 2847 	add	a,#0xfc
      0007B8 F5 81            [12] 2848 	mov	sp,a
      0007BA 8C 82            [24] 2849 	mov	dpl,r4
      0007BC 8D 83            [24] 2850 	mov	dph,r5
      0007BE 8E F0            [24] 2851 	mov	b,r6
      0007C0 EF               [12] 2852 	mov	a,r7
      0007C1 12 0A 98         [24] 2853 	lcall	___fs2uint
      0007C4 85 82 3A         [24] 2854 	mov	_PW,dpl
      0007C7 85 83 3B         [24] 2855 	mov	(_PW + 1),dph
      0007CA                       2856 00106$:
                           0006F5  2857 	C$lab3_3.c$226$1$140 ==.
                                   2858 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:226: printf("\rPW: %u\n", PW);
      0007CA C0 3A            [24] 2859 	push	_PW
      0007CC C0 3B            [24] 2860 	push	(_PW + 1)
      0007CE 74 CC            [12] 2861 	mov	a,#___str_4
      0007D0 C0 E0            [24] 2862 	push	acc
      0007D2 74 12            [12] 2863 	mov	a,#(___str_4 >> 8)
      0007D4 C0 E0            [24] 2864 	push	acc
      0007D6 74 80            [12] 2865 	mov	a,#0x80
      0007D8 C0 E0            [24] 2866 	push	acc
      0007DA 12 0B 16         [24] 2867 	lcall	_printf
      0007DD E5 81            [12] 2868 	mov	a,sp
      0007DF 24 FB            [12] 2869 	add	a,#0xfb
      0007E1 F5 81            [12] 2870 	mov	sp,a
                           00070E  2871 	C$lab3_3.c$227$1$140 ==.
                                   2872 ;	C:\Users\Tim\Documents\LITEC\Lab3-3\lab3_3.c:227: PCA0CP3 = 0xFFFF - PW;
      0007E3 74 FF            [12] 2873 	mov	a,#0xff
      0007E5 C3               [12] 2874 	clr	c
      0007E6 95 3A            [12] 2875 	subb	a,_PW
      0007E8 F5 ED            [12] 2876 	mov	((_PCA0CP3 >> 0) & 0xFF),a
      0007EA 74 FF            [12] 2877 	mov	a,#0xff
      0007EC 95 3B            [12] 2878 	subb	a,(_PW + 1)
      0007EE F5 FD            [12] 2879 	mov	((_PCA0CP3 >> 8) & 0xFF),a
                           00071B  2880 	C$lab3_3.c$229$1$140 ==.
                           00071B  2881 	XG$Set_Pulsewidth$0$0 ==.
      0007F0 22               [24] 2882 	ret
                                   2883 	.area CSEG    (CODE)
                                   2884 	.area CONST   (CODE)
                           000000  2885 Flab3_3$__str_0$0$0 == .
      00129D                       2886 ___str_0:
      00129D 0A                    2887 	.db 0x0a
      00129E 54 79 70 65 20 64 69  2888 	.ascii "Type digits; end w/#"
             67 69 74 73 3B 20 65
             6E 64 20 77 2F 23
      0012B2 00                    2889 	.db 0x00
                           000016  2890 Flab3_3$__str_1$0$0 == .
      0012B3                       2891 ___str_1:
      0012B3 20 20 20 20 20 25 63  2892 	.ascii "     %c%c%c%c%c"
             25 63 25 63 25 63 25
             63
      0012C2 00                    2893 	.db 0x00
                           000026  2894 Flab3_3$__str_2$0$0 == .
      0012C3                       2895 ___str_2:
      0012C3 25 63                 2896 	.ascii "%c"
      0012C5 00                    2897 	.db 0x00
                           000029  2898 Flab3_3$__str_3$0$0 == .
      0012C6                       2899 ___str_3:
      0012C6 25 75 20              2900 	.ascii "%u "
      0012C9 0D                    2901 	.db 0x0d
      0012CA 0A                    2902 	.db 0x0a
      0012CB 00                    2903 	.db 0x00
                           00002F  2904 Flab3_3$__str_4$0$0 == .
      0012CC                       2905 ___str_4:
      0012CC 0D                    2906 	.db 0x0d
      0012CD 50 57 3A 20 25 75     2907 	.ascii "PW: %u"
      0012D3 0A                    2908 	.db 0x0a
      0012D4 00                    2909 	.db 0x00
                                   2910 	.area XINIT   (CODE)
                                   2911 	.area CABS    (ABS,CODE)
