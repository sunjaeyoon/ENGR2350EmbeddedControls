                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module lab3_1
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _read_keypad
                                     13 	.globl _strlen
                                     14 	.globl _putchar
                                     15 	.globl _getchar
                                     16 	.globl _vsprintf
                                     17 	.globl _printf
                                     18 	.globl _getchar_nw
                                     19 	.globl _Sys_Init
                                     20 	.globl _UART0_Init
                                     21 	.globl _SYSCLK_Init
                                     22 	.globl _BUS_SCL
                                     23 	.globl _BUS_TOE
                                     24 	.globl _BUS_FTE
                                     25 	.globl _BUS_AA
                                     26 	.globl _BUS_INT
                                     27 	.globl _BUS_STOP
                                     28 	.globl _BUS_START
                                     29 	.globl _BUS_EN
                                     30 	.globl _BUS_BUSY
                                     31 	.globl _SPIF
                                     32 	.globl _WCOL
                                     33 	.globl _MODF
                                     34 	.globl _RXOVRN
                                     35 	.globl _TXBSY
                                     36 	.globl _SLVSEL
                                     37 	.globl _MSTEN
                                     38 	.globl _SPIEN
                                     39 	.globl _AD0EN
                                     40 	.globl _ADCEN
                                     41 	.globl _AD0TM
                                     42 	.globl _ADCTM
                                     43 	.globl _AD0INT
                                     44 	.globl _ADCINT
                                     45 	.globl _AD0BUSY
                                     46 	.globl _ADBUSY
                                     47 	.globl _AD0CM1
                                     48 	.globl _ADSTM1
                                     49 	.globl _AD0CM0
                                     50 	.globl _ADSTM0
                                     51 	.globl _AD0WINT
                                     52 	.globl _ADWINT
                                     53 	.globl _AD0LJST
                                     54 	.globl _ADLJST
                                     55 	.globl _CF
                                     56 	.globl _CR
                                     57 	.globl _CCF4
                                     58 	.globl _CCF3
                                     59 	.globl _CCF2
                                     60 	.globl _CCF1
                                     61 	.globl _CCF0
                                     62 	.globl _CY
                                     63 	.globl _AC
                                     64 	.globl _F0
                                     65 	.globl _RS1
                                     66 	.globl _RS0
                                     67 	.globl _OV
                                     68 	.globl _F1
                                     69 	.globl _P
                                     70 	.globl _TF2
                                     71 	.globl _EXF2
                                     72 	.globl _RCLK
                                     73 	.globl _TCLK
                                     74 	.globl _EXEN2
                                     75 	.globl _TR2
                                     76 	.globl _CT2
                                     77 	.globl _CPRL2
                                     78 	.globl _BUSY
                                     79 	.globl _ENSMB
                                     80 	.globl _STA
                                     81 	.globl _STO
                                     82 	.globl _SI
                                     83 	.globl _AA
                                     84 	.globl _SMBFTE
                                     85 	.globl _SMBTOE
                                     86 	.globl _PT2
                                     87 	.globl _PS
                                     88 	.globl _PS0
                                     89 	.globl _PT1
                                     90 	.globl _PX1
                                     91 	.globl _PT0
                                     92 	.globl _PX0
                                     93 	.globl _P3_7
                                     94 	.globl _P3_6
                                     95 	.globl _P3_5
                                     96 	.globl _P3_4
                                     97 	.globl _P3_3
                                     98 	.globl _P3_2
                                     99 	.globl _P3_1
                                    100 	.globl _P3_0
                                    101 	.globl _EA
                                    102 	.globl _ET2
                                    103 	.globl _ES
                                    104 	.globl _ES0
                                    105 	.globl _ET1
                                    106 	.globl _EX1
                                    107 	.globl _ET0
                                    108 	.globl _EX0
                                    109 	.globl _P2_7
                                    110 	.globl _P2_6
                                    111 	.globl _P2_5
                                    112 	.globl _P2_4
                                    113 	.globl _P2_3
                                    114 	.globl _P2_2
                                    115 	.globl _P2_1
                                    116 	.globl _P2_0
                                    117 	.globl _S0MODE
                                    118 	.globl _SM00
                                    119 	.globl _SM0
                                    120 	.globl _SM10
                                    121 	.globl _SM1
                                    122 	.globl _MCE0
                                    123 	.globl _SM20
                                    124 	.globl _SM2
                                    125 	.globl _REN0
                                    126 	.globl _REN
                                    127 	.globl _TB80
                                    128 	.globl _TB8
                                    129 	.globl _RB80
                                    130 	.globl _RB8
                                    131 	.globl _TI0
                                    132 	.globl _TI
                                    133 	.globl _RI0
                                    134 	.globl _RI
                                    135 	.globl _P1_7
                                    136 	.globl _P1_6
                                    137 	.globl _P1_5
                                    138 	.globl _P1_4
                                    139 	.globl _P1_3
                                    140 	.globl _P1_2
                                    141 	.globl _P1_1
                                    142 	.globl _P1_0
                                    143 	.globl _TF1
                                    144 	.globl _TR1
                                    145 	.globl _TF0
                                    146 	.globl _TR0
                                    147 	.globl _IE1
                                    148 	.globl _IT1
                                    149 	.globl _IE0
                                    150 	.globl _IT0
                                    151 	.globl _P0_7
                                    152 	.globl _P0_6
                                    153 	.globl _P0_5
                                    154 	.globl _P0_4
                                    155 	.globl _P0_3
                                    156 	.globl _P0_2
                                    157 	.globl _P0_1
                                    158 	.globl _P0_0
                                    159 	.globl _PCA0CP4
                                    160 	.globl _PCA0CP3
                                    161 	.globl _PCA0CP2
                                    162 	.globl _PCA0CP1
                                    163 	.globl _PCA0CP0
                                    164 	.globl _PCA0
                                    165 	.globl _DAC1
                                    166 	.globl _DAC0
                                    167 	.globl _ADC0LT
                                    168 	.globl _ADC0GT
                                    169 	.globl _ADC0
                                    170 	.globl _RCAP4
                                    171 	.globl _TMR4
                                    172 	.globl _TMR3RL
                                    173 	.globl _TMR3
                                    174 	.globl _RCAP2
                                    175 	.globl _TMR2
                                    176 	.globl _TMR1
                                    177 	.globl _TMR0
                                    178 	.globl _WDTCN
                                    179 	.globl _PCA0CPH4
                                    180 	.globl _PCA0CPH3
                                    181 	.globl _PCA0CPH2
                                    182 	.globl _PCA0CPH1
                                    183 	.globl _PCA0CPH0
                                    184 	.globl _PCA0H
                                    185 	.globl _SPI0CN
                                    186 	.globl _EIP2
                                    187 	.globl _EIP1
                                    188 	.globl _TH4
                                    189 	.globl _TL4
                                    190 	.globl _SADDR1
                                    191 	.globl _SBUF1
                                    192 	.globl _SCON1
                                    193 	.globl _B
                                    194 	.globl _RSTSRC
                                    195 	.globl _PCA0CPL4
                                    196 	.globl _PCA0CPL3
                                    197 	.globl _PCA0CPL2
                                    198 	.globl _PCA0CPL1
                                    199 	.globl _PCA0CPL0
                                    200 	.globl _PCA0L
                                    201 	.globl _ADC0CN
                                    202 	.globl _EIE2
                                    203 	.globl _EIE1
                                    204 	.globl _RCAP4H
                                    205 	.globl _RCAP4L
                                    206 	.globl _XBR2
                                    207 	.globl _XBR1
                                    208 	.globl _XBR0
                                    209 	.globl _ACC
                                    210 	.globl _PCA0CPM4
                                    211 	.globl _PCA0CPM3
                                    212 	.globl _PCA0CPM2
                                    213 	.globl _PCA0CPM1
                                    214 	.globl _PCA0CPM0
                                    215 	.globl _PCA0MD
                                    216 	.globl _PCA0CN
                                    217 	.globl _DAC1CN
                                    218 	.globl _DAC1H
                                    219 	.globl _DAC1L
                                    220 	.globl _DAC0CN
                                    221 	.globl _DAC0H
                                    222 	.globl _DAC0L
                                    223 	.globl _REF0CN
                                    224 	.globl _PSW
                                    225 	.globl _SMB0CR
                                    226 	.globl _TH2
                                    227 	.globl _TL2
                                    228 	.globl _RCAP2H
                                    229 	.globl _RCAP2L
                                    230 	.globl _T4CON
                                    231 	.globl _T2CON
                                    232 	.globl _ADC0LTH
                                    233 	.globl _ADC0LTL
                                    234 	.globl _ADC0GTH
                                    235 	.globl _ADC0GTL
                                    236 	.globl _SMB0ADR
                                    237 	.globl _SMB0DAT
                                    238 	.globl _SMB0STA
                                    239 	.globl _SMB0CN
                                    240 	.globl _ADC0H
                                    241 	.globl _ADC0L
                                    242 	.globl _P1MDIN
                                    243 	.globl _ADC0CF
                                    244 	.globl _AMX0SL
                                    245 	.globl _AMX0CF
                                    246 	.globl _SADEN0
                                    247 	.globl _IP
                                    248 	.globl _FLACL
                                    249 	.globl _FLSCL
                                    250 	.globl _P74OUT
                                    251 	.globl _OSCICN
                                    252 	.globl _OSCXCN
                                    253 	.globl _P3
                                    254 	.globl __XPAGE
                                    255 	.globl _EMI0CN
                                    256 	.globl _SADEN1
                                    257 	.globl _P3IF
                                    258 	.globl _AMX1SL
                                    259 	.globl _ADC1CF
                                    260 	.globl _ADC1CN
                                    261 	.globl _SADDR0
                                    262 	.globl _IE
                                    263 	.globl _P3MDOUT
                                    264 	.globl _PRT3CF
                                    265 	.globl _P2MDOUT
                                    266 	.globl _PRT2CF
                                    267 	.globl _P1MDOUT
                                    268 	.globl _PRT1CF
                                    269 	.globl _P0MDOUT
                                    270 	.globl _PRT0CF
                                    271 	.globl _EMI0CF
                                    272 	.globl _EMI0TC
                                    273 	.globl _P2
                                    274 	.globl _CPT1CN
                                    275 	.globl _CPT0CN
                                    276 	.globl _SPI0CKR
                                    277 	.globl _ADC1
                                    278 	.globl _SPI0DAT
                                    279 	.globl _SPI0CFG
                                    280 	.globl _SBUF0
                                    281 	.globl _SBUF
                                    282 	.globl _SCON0
                                    283 	.globl _SCON
                                    284 	.globl _P7
                                    285 	.globl _TMR3H
                                    286 	.globl _TMR3L
                                    287 	.globl _TMR3RLH
                                    288 	.globl _TMR3RLL
                                    289 	.globl _TMR3CN
                                    290 	.globl _P1
                                    291 	.globl _PSCTL
                                    292 	.globl _CKCON
                                    293 	.globl _TH1
                                    294 	.globl _TH0
                                    295 	.globl _TL1
                                    296 	.globl _TL0
                                    297 	.globl _TMOD
                                    298 	.globl _TCON
                                    299 	.globl _PCON
                                    300 	.globl _P6
                                    301 	.globl _P5
                                    302 	.globl _P4
                                    303 	.globl _DPH
                                    304 	.globl _DPL
                                    305 	.globl _SP
                                    306 	.globl _P0
                                    307 	.globl _Data
                                    308 	.globl _read
                                    309 	.globl _new_light
                                    310 	.globl _l_count
                                    311 	.globl _addr
                                    312 	.globl _PCA_start
                                    313 	.globl _PW
                                    314 	.globl _PW_MAX
                                    315 	.globl _PW_MIN
                                    316 	.globl _PW_CENTER
                                    317 	.globl _i2c_read_data_PARM_4
                                    318 	.globl _i2c_read_data_PARM_3
                                    319 	.globl _i2c_read_data_PARM_2
                                    320 	.globl _i2c_write_data_PARM_4
                                    321 	.globl _i2c_write_data_PARM_3
                                    322 	.globl _i2c_write_data_PARM_2
                                    323 	.globl _aligned_alloc_PARM_2
                                    324 	.globl _Data2
                                    325 	.globl _lcd_print
                                    326 	.globl _lcd_clear
                                    327 	.globl _kpd_input
                                    328 	.globl _delay_time
                                    329 	.globl _i2c_start
                                    330 	.globl _i2c_write
                                    331 	.globl _i2c_write_and_stop
                                    332 	.globl _i2c_read
                                    333 	.globl _i2c_read_and_stop
                                    334 	.globl _i2c_write_data
                                    335 	.globl _i2c_read_data
                                    336 	.globl _Accel_Init
                                    337 	.globl _Accel_Init_C
                                    338 	.globl _Port_Init
                                    339 	.globl _XBR0_Init
                                    340 	.globl _PCA_Init
                                    341 	.globl _SMB_Init
                                    342 	.globl _PCA_ISR
                                    343 	.globl _Set_Pulsewidth
                                    344 	.globl _ReadRanger
                                    345 ;--------------------------------------------------------
                                    346 ; special function registers
                                    347 ;--------------------------------------------------------
                                    348 	.area RSEG    (ABS,DATA)
      000000                        349 	.org 0x0000
                           000080   350 G$P0$0$0 == 0x0080
                           000080   351 _P0	=	0x0080
                           000081   352 G$SP$0$0 == 0x0081
                           000081   353 _SP	=	0x0081
                           000082   354 G$DPL$0$0 == 0x0082
                           000082   355 _DPL	=	0x0082
                           000083   356 G$DPH$0$0 == 0x0083
                           000083   357 _DPH	=	0x0083
                           000084   358 G$P4$0$0 == 0x0084
                           000084   359 _P4	=	0x0084
                           000085   360 G$P5$0$0 == 0x0085
                           000085   361 _P5	=	0x0085
                           000086   362 G$P6$0$0 == 0x0086
                           000086   363 _P6	=	0x0086
                           000087   364 G$PCON$0$0 == 0x0087
                           000087   365 _PCON	=	0x0087
                           000088   366 G$TCON$0$0 == 0x0088
                           000088   367 _TCON	=	0x0088
                           000089   368 G$TMOD$0$0 == 0x0089
                           000089   369 _TMOD	=	0x0089
                           00008A   370 G$TL0$0$0 == 0x008a
                           00008A   371 _TL0	=	0x008a
                           00008B   372 G$TL1$0$0 == 0x008b
                           00008B   373 _TL1	=	0x008b
                           00008C   374 G$TH0$0$0 == 0x008c
                           00008C   375 _TH0	=	0x008c
                           00008D   376 G$TH1$0$0 == 0x008d
                           00008D   377 _TH1	=	0x008d
                           00008E   378 G$CKCON$0$0 == 0x008e
                           00008E   379 _CKCON	=	0x008e
                           00008F   380 G$PSCTL$0$0 == 0x008f
                           00008F   381 _PSCTL	=	0x008f
                           000090   382 G$P1$0$0 == 0x0090
                           000090   383 _P1	=	0x0090
                           000091   384 G$TMR3CN$0$0 == 0x0091
                           000091   385 _TMR3CN	=	0x0091
                           000092   386 G$TMR3RLL$0$0 == 0x0092
                           000092   387 _TMR3RLL	=	0x0092
                           000093   388 G$TMR3RLH$0$0 == 0x0093
                           000093   389 _TMR3RLH	=	0x0093
                           000094   390 G$TMR3L$0$0 == 0x0094
                           000094   391 _TMR3L	=	0x0094
                           000095   392 G$TMR3H$0$0 == 0x0095
                           000095   393 _TMR3H	=	0x0095
                           000096   394 G$P7$0$0 == 0x0096
                           000096   395 _P7	=	0x0096
                           000098   396 G$SCON$0$0 == 0x0098
                           000098   397 _SCON	=	0x0098
                           000098   398 G$SCON0$0$0 == 0x0098
                           000098   399 _SCON0	=	0x0098
                           000099   400 G$SBUF$0$0 == 0x0099
                           000099   401 _SBUF	=	0x0099
                           000099   402 G$SBUF0$0$0 == 0x0099
                           000099   403 _SBUF0	=	0x0099
                           00009A   404 G$SPI0CFG$0$0 == 0x009a
                           00009A   405 _SPI0CFG	=	0x009a
                           00009B   406 G$SPI0DAT$0$0 == 0x009b
                           00009B   407 _SPI0DAT	=	0x009b
                           00009C   408 G$ADC1$0$0 == 0x009c
                           00009C   409 _ADC1	=	0x009c
                           00009D   410 G$SPI0CKR$0$0 == 0x009d
                           00009D   411 _SPI0CKR	=	0x009d
                           00009E   412 G$CPT0CN$0$0 == 0x009e
                           00009E   413 _CPT0CN	=	0x009e
                           00009F   414 G$CPT1CN$0$0 == 0x009f
                           00009F   415 _CPT1CN	=	0x009f
                           0000A0   416 G$P2$0$0 == 0x00a0
                           0000A0   417 _P2	=	0x00a0
                           0000A1   418 G$EMI0TC$0$0 == 0x00a1
                           0000A1   419 _EMI0TC	=	0x00a1
                           0000A3   420 G$EMI0CF$0$0 == 0x00a3
                           0000A3   421 _EMI0CF	=	0x00a3
                           0000A4   422 G$PRT0CF$0$0 == 0x00a4
                           0000A4   423 _PRT0CF	=	0x00a4
                           0000A4   424 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   425 _P0MDOUT	=	0x00a4
                           0000A5   426 G$PRT1CF$0$0 == 0x00a5
                           0000A5   427 _PRT1CF	=	0x00a5
                           0000A5   428 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   429 _P1MDOUT	=	0x00a5
                           0000A6   430 G$PRT2CF$0$0 == 0x00a6
                           0000A6   431 _PRT2CF	=	0x00a6
                           0000A6   432 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   433 _P2MDOUT	=	0x00a6
                           0000A7   434 G$PRT3CF$0$0 == 0x00a7
                           0000A7   435 _PRT3CF	=	0x00a7
                           0000A7   436 G$P3MDOUT$0$0 == 0x00a7
                           0000A7   437 _P3MDOUT	=	0x00a7
                           0000A8   438 G$IE$0$0 == 0x00a8
                           0000A8   439 _IE	=	0x00a8
                           0000A9   440 G$SADDR0$0$0 == 0x00a9
                           0000A9   441 _SADDR0	=	0x00a9
                           0000AA   442 G$ADC1CN$0$0 == 0x00aa
                           0000AA   443 _ADC1CN	=	0x00aa
                           0000AB   444 G$ADC1CF$0$0 == 0x00ab
                           0000AB   445 _ADC1CF	=	0x00ab
                           0000AC   446 G$AMX1SL$0$0 == 0x00ac
                           0000AC   447 _AMX1SL	=	0x00ac
                           0000AD   448 G$P3IF$0$0 == 0x00ad
                           0000AD   449 _P3IF	=	0x00ad
                           0000AE   450 G$SADEN1$0$0 == 0x00ae
                           0000AE   451 _SADEN1	=	0x00ae
                           0000AF   452 G$EMI0CN$0$0 == 0x00af
                           0000AF   453 _EMI0CN	=	0x00af
                           0000AF   454 G$_XPAGE$0$0 == 0x00af
                           0000AF   455 __XPAGE	=	0x00af
                           0000B0   456 G$P3$0$0 == 0x00b0
                           0000B0   457 _P3	=	0x00b0
                           0000B1   458 G$OSCXCN$0$0 == 0x00b1
                           0000B1   459 _OSCXCN	=	0x00b1
                           0000B2   460 G$OSCICN$0$0 == 0x00b2
                           0000B2   461 _OSCICN	=	0x00b2
                           0000B5   462 G$P74OUT$0$0 == 0x00b5
                           0000B5   463 _P74OUT	=	0x00b5
                           0000B6   464 G$FLSCL$0$0 == 0x00b6
                           0000B6   465 _FLSCL	=	0x00b6
                           0000B7   466 G$FLACL$0$0 == 0x00b7
                           0000B7   467 _FLACL	=	0x00b7
                           0000B8   468 G$IP$0$0 == 0x00b8
                           0000B8   469 _IP	=	0x00b8
                           0000B9   470 G$SADEN0$0$0 == 0x00b9
                           0000B9   471 _SADEN0	=	0x00b9
                           0000BA   472 G$AMX0CF$0$0 == 0x00ba
                           0000BA   473 _AMX0CF	=	0x00ba
                           0000BB   474 G$AMX0SL$0$0 == 0x00bb
                           0000BB   475 _AMX0SL	=	0x00bb
                           0000BC   476 G$ADC0CF$0$0 == 0x00bc
                           0000BC   477 _ADC0CF	=	0x00bc
                           0000BD   478 G$P1MDIN$0$0 == 0x00bd
                           0000BD   479 _P1MDIN	=	0x00bd
                           0000BE   480 G$ADC0L$0$0 == 0x00be
                           0000BE   481 _ADC0L	=	0x00be
                           0000BF   482 G$ADC0H$0$0 == 0x00bf
                           0000BF   483 _ADC0H	=	0x00bf
                           0000C0   484 G$SMB0CN$0$0 == 0x00c0
                           0000C0   485 _SMB0CN	=	0x00c0
                           0000C1   486 G$SMB0STA$0$0 == 0x00c1
                           0000C1   487 _SMB0STA	=	0x00c1
                           0000C2   488 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   489 _SMB0DAT	=	0x00c2
                           0000C3   490 G$SMB0ADR$0$0 == 0x00c3
                           0000C3   491 _SMB0ADR	=	0x00c3
                           0000C4   492 G$ADC0GTL$0$0 == 0x00c4
                           0000C4   493 _ADC0GTL	=	0x00c4
                           0000C5   494 G$ADC0GTH$0$0 == 0x00c5
                           0000C5   495 _ADC0GTH	=	0x00c5
                           0000C6   496 G$ADC0LTL$0$0 == 0x00c6
                           0000C6   497 _ADC0LTL	=	0x00c6
                           0000C7   498 G$ADC0LTH$0$0 == 0x00c7
                           0000C7   499 _ADC0LTH	=	0x00c7
                           0000C8   500 G$T2CON$0$0 == 0x00c8
                           0000C8   501 _T2CON	=	0x00c8
                           0000C9   502 G$T4CON$0$0 == 0x00c9
                           0000C9   503 _T4CON	=	0x00c9
                           0000CA   504 G$RCAP2L$0$0 == 0x00ca
                           0000CA   505 _RCAP2L	=	0x00ca
                           0000CB   506 G$RCAP2H$0$0 == 0x00cb
                           0000CB   507 _RCAP2H	=	0x00cb
                           0000CC   508 G$TL2$0$0 == 0x00cc
                           0000CC   509 _TL2	=	0x00cc
                           0000CD   510 G$TH2$0$0 == 0x00cd
                           0000CD   511 _TH2	=	0x00cd
                           0000CF   512 G$SMB0CR$0$0 == 0x00cf
                           0000CF   513 _SMB0CR	=	0x00cf
                           0000D0   514 G$PSW$0$0 == 0x00d0
                           0000D0   515 _PSW	=	0x00d0
                           0000D1   516 G$REF0CN$0$0 == 0x00d1
                           0000D1   517 _REF0CN	=	0x00d1
                           0000D2   518 G$DAC0L$0$0 == 0x00d2
                           0000D2   519 _DAC0L	=	0x00d2
                           0000D3   520 G$DAC0H$0$0 == 0x00d3
                           0000D3   521 _DAC0H	=	0x00d3
                           0000D4   522 G$DAC0CN$0$0 == 0x00d4
                           0000D4   523 _DAC0CN	=	0x00d4
                           0000D5   524 G$DAC1L$0$0 == 0x00d5
                           0000D5   525 _DAC1L	=	0x00d5
                           0000D6   526 G$DAC1H$0$0 == 0x00d6
                           0000D6   527 _DAC1H	=	0x00d6
                           0000D7   528 G$DAC1CN$0$0 == 0x00d7
                           0000D7   529 _DAC1CN	=	0x00d7
                           0000D8   530 G$PCA0CN$0$0 == 0x00d8
                           0000D8   531 _PCA0CN	=	0x00d8
                           0000D9   532 G$PCA0MD$0$0 == 0x00d9
                           0000D9   533 _PCA0MD	=	0x00d9
                           0000DA   534 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   535 _PCA0CPM0	=	0x00da
                           0000DB   536 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   537 _PCA0CPM1	=	0x00db
                           0000DC   538 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   539 _PCA0CPM2	=	0x00dc
                           0000DD   540 G$PCA0CPM3$0$0 == 0x00dd
                           0000DD   541 _PCA0CPM3	=	0x00dd
                           0000DE   542 G$PCA0CPM4$0$0 == 0x00de
                           0000DE   543 _PCA0CPM4	=	0x00de
                           0000E0   544 G$ACC$0$0 == 0x00e0
                           0000E0   545 _ACC	=	0x00e0
                           0000E1   546 G$XBR0$0$0 == 0x00e1
                           0000E1   547 _XBR0	=	0x00e1
                           0000E2   548 G$XBR1$0$0 == 0x00e2
                           0000E2   549 _XBR1	=	0x00e2
                           0000E3   550 G$XBR2$0$0 == 0x00e3
                           0000E3   551 _XBR2	=	0x00e3
                           0000E4   552 G$RCAP4L$0$0 == 0x00e4
                           0000E4   553 _RCAP4L	=	0x00e4
                           0000E5   554 G$RCAP4H$0$0 == 0x00e5
                           0000E5   555 _RCAP4H	=	0x00e5
                           0000E6   556 G$EIE1$0$0 == 0x00e6
                           0000E6   557 _EIE1	=	0x00e6
                           0000E7   558 G$EIE2$0$0 == 0x00e7
                           0000E7   559 _EIE2	=	0x00e7
                           0000E8   560 G$ADC0CN$0$0 == 0x00e8
                           0000E8   561 _ADC0CN	=	0x00e8
                           0000E9   562 G$PCA0L$0$0 == 0x00e9
                           0000E9   563 _PCA0L	=	0x00e9
                           0000EA   564 G$PCA0CPL0$0$0 == 0x00ea
                           0000EA   565 _PCA0CPL0	=	0x00ea
                           0000EB   566 G$PCA0CPL1$0$0 == 0x00eb
                           0000EB   567 _PCA0CPL1	=	0x00eb
                           0000EC   568 G$PCA0CPL2$0$0 == 0x00ec
                           0000EC   569 _PCA0CPL2	=	0x00ec
                           0000ED   570 G$PCA0CPL3$0$0 == 0x00ed
                           0000ED   571 _PCA0CPL3	=	0x00ed
                           0000EE   572 G$PCA0CPL4$0$0 == 0x00ee
                           0000EE   573 _PCA0CPL4	=	0x00ee
                           0000EF   574 G$RSTSRC$0$0 == 0x00ef
                           0000EF   575 _RSTSRC	=	0x00ef
                           0000F0   576 G$B$0$0 == 0x00f0
                           0000F0   577 _B	=	0x00f0
                           0000F1   578 G$SCON1$0$0 == 0x00f1
                           0000F1   579 _SCON1	=	0x00f1
                           0000F2   580 G$SBUF1$0$0 == 0x00f2
                           0000F2   581 _SBUF1	=	0x00f2
                           0000F3   582 G$SADDR1$0$0 == 0x00f3
                           0000F3   583 _SADDR1	=	0x00f3
                           0000F4   584 G$TL4$0$0 == 0x00f4
                           0000F4   585 _TL4	=	0x00f4
                           0000F5   586 G$TH4$0$0 == 0x00f5
                           0000F5   587 _TH4	=	0x00f5
                           0000F6   588 G$EIP1$0$0 == 0x00f6
                           0000F6   589 _EIP1	=	0x00f6
                           0000F7   590 G$EIP2$0$0 == 0x00f7
                           0000F7   591 _EIP2	=	0x00f7
                           0000F8   592 G$SPI0CN$0$0 == 0x00f8
                           0000F8   593 _SPI0CN	=	0x00f8
                           0000F9   594 G$PCA0H$0$0 == 0x00f9
                           0000F9   595 _PCA0H	=	0x00f9
                           0000FA   596 G$PCA0CPH0$0$0 == 0x00fa
                           0000FA   597 _PCA0CPH0	=	0x00fa
                           0000FB   598 G$PCA0CPH1$0$0 == 0x00fb
                           0000FB   599 _PCA0CPH1	=	0x00fb
                           0000FC   600 G$PCA0CPH2$0$0 == 0x00fc
                           0000FC   601 _PCA0CPH2	=	0x00fc
                           0000FD   602 G$PCA0CPH3$0$0 == 0x00fd
                           0000FD   603 _PCA0CPH3	=	0x00fd
                           0000FE   604 G$PCA0CPH4$0$0 == 0x00fe
                           0000FE   605 _PCA0CPH4	=	0x00fe
                           0000FF   606 G$WDTCN$0$0 == 0x00ff
                           0000FF   607 _WDTCN	=	0x00ff
                           008C8A   608 G$TMR0$0$0 == 0x8c8a
                           008C8A   609 _TMR0	=	0x8c8a
                           008D8B   610 G$TMR1$0$0 == 0x8d8b
                           008D8B   611 _TMR1	=	0x8d8b
                           00CDCC   612 G$TMR2$0$0 == 0xcdcc
                           00CDCC   613 _TMR2	=	0xcdcc
                           00CBCA   614 G$RCAP2$0$0 == 0xcbca
                           00CBCA   615 _RCAP2	=	0xcbca
                           009594   616 G$TMR3$0$0 == 0x9594
                           009594   617 _TMR3	=	0x9594
                           009392   618 G$TMR3RL$0$0 == 0x9392
                           009392   619 _TMR3RL	=	0x9392
                           00F5F4   620 G$TMR4$0$0 == 0xf5f4
                           00F5F4   621 _TMR4	=	0xf5f4
                           00E5E4   622 G$RCAP4$0$0 == 0xe5e4
                           00E5E4   623 _RCAP4	=	0xe5e4
                           00BFBE   624 G$ADC0$0$0 == 0xbfbe
                           00BFBE   625 _ADC0	=	0xbfbe
                           00C5C4   626 G$ADC0GT$0$0 == 0xc5c4
                           00C5C4   627 _ADC0GT	=	0xc5c4
                           00C7C6   628 G$ADC0LT$0$0 == 0xc7c6
                           00C7C6   629 _ADC0LT	=	0xc7c6
                           00D3D2   630 G$DAC0$0$0 == 0xd3d2
                           00D3D2   631 _DAC0	=	0xd3d2
                           00D6D5   632 G$DAC1$0$0 == 0xd6d5
                           00D6D5   633 _DAC1	=	0xd6d5
                           00F9E9   634 G$PCA0$0$0 == 0xf9e9
                           00F9E9   635 _PCA0	=	0xf9e9
                           00FAEA   636 G$PCA0CP0$0$0 == 0xfaea
                           00FAEA   637 _PCA0CP0	=	0xfaea
                           00FBEB   638 G$PCA0CP1$0$0 == 0xfbeb
                           00FBEB   639 _PCA0CP1	=	0xfbeb
                           00FCEC   640 G$PCA0CP2$0$0 == 0xfcec
                           00FCEC   641 _PCA0CP2	=	0xfcec
                           00FDED   642 G$PCA0CP3$0$0 == 0xfded
                           00FDED   643 _PCA0CP3	=	0xfded
                           00FEEE   644 G$PCA0CP4$0$0 == 0xfeee
                           00FEEE   645 _PCA0CP4	=	0xfeee
                                    646 ;--------------------------------------------------------
                                    647 ; special function bits
                                    648 ;--------------------------------------------------------
                                    649 	.area RSEG    (ABS,DATA)
      000000                        650 	.org 0x0000
                           000080   651 G$P0_0$0$0 == 0x0080
                           000080   652 _P0_0	=	0x0080
                           000081   653 G$P0_1$0$0 == 0x0081
                           000081   654 _P0_1	=	0x0081
                           000082   655 G$P0_2$0$0 == 0x0082
                           000082   656 _P0_2	=	0x0082
                           000083   657 G$P0_3$0$0 == 0x0083
                           000083   658 _P0_3	=	0x0083
                           000084   659 G$P0_4$0$0 == 0x0084
                           000084   660 _P0_4	=	0x0084
                           000085   661 G$P0_5$0$0 == 0x0085
                           000085   662 _P0_5	=	0x0085
                           000086   663 G$P0_6$0$0 == 0x0086
                           000086   664 _P0_6	=	0x0086
                           000087   665 G$P0_7$0$0 == 0x0087
                           000087   666 _P0_7	=	0x0087
                           000088   667 G$IT0$0$0 == 0x0088
                           000088   668 _IT0	=	0x0088
                           000089   669 G$IE0$0$0 == 0x0089
                           000089   670 _IE0	=	0x0089
                           00008A   671 G$IT1$0$0 == 0x008a
                           00008A   672 _IT1	=	0x008a
                           00008B   673 G$IE1$0$0 == 0x008b
                           00008B   674 _IE1	=	0x008b
                           00008C   675 G$TR0$0$0 == 0x008c
                           00008C   676 _TR0	=	0x008c
                           00008D   677 G$TF0$0$0 == 0x008d
                           00008D   678 _TF0	=	0x008d
                           00008E   679 G$TR1$0$0 == 0x008e
                           00008E   680 _TR1	=	0x008e
                           00008F   681 G$TF1$0$0 == 0x008f
                           00008F   682 _TF1	=	0x008f
                           000090   683 G$P1_0$0$0 == 0x0090
                           000090   684 _P1_0	=	0x0090
                           000091   685 G$P1_1$0$0 == 0x0091
                           000091   686 _P1_1	=	0x0091
                           000092   687 G$P1_2$0$0 == 0x0092
                           000092   688 _P1_2	=	0x0092
                           000093   689 G$P1_3$0$0 == 0x0093
                           000093   690 _P1_3	=	0x0093
                           000094   691 G$P1_4$0$0 == 0x0094
                           000094   692 _P1_4	=	0x0094
                           000095   693 G$P1_5$0$0 == 0x0095
                           000095   694 _P1_5	=	0x0095
                           000096   695 G$P1_6$0$0 == 0x0096
                           000096   696 _P1_6	=	0x0096
                           000097   697 G$P1_7$0$0 == 0x0097
                           000097   698 _P1_7	=	0x0097
                           000098   699 G$RI$0$0 == 0x0098
                           000098   700 _RI	=	0x0098
                           000098   701 G$RI0$0$0 == 0x0098
                           000098   702 _RI0	=	0x0098
                           000099   703 G$TI$0$0 == 0x0099
                           000099   704 _TI	=	0x0099
                           000099   705 G$TI0$0$0 == 0x0099
                           000099   706 _TI0	=	0x0099
                           00009A   707 G$RB8$0$0 == 0x009a
                           00009A   708 _RB8	=	0x009a
                           00009A   709 G$RB80$0$0 == 0x009a
                           00009A   710 _RB80	=	0x009a
                           00009B   711 G$TB8$0$0 == 0x009b
                           00009B   712 _TB8	=	0x009b
                           00009B   713 G$TB80$0$0 == 0x009b
                           00009B   714 _TB80	=	0x009b
                           00009C   715 G$REN$0$0 == 0x009c
                           00009C   716 _REN	=	0x009c
                           00009C   717 G$REN0$0$0 == 0x009c
                           00009C   718 _REN0	=	0x009c
                           00009D   719 G$SM2$0$0 == 0x009d
                           00009D   720 _SM2	=	0x009d
                           00009D   721 G$SM20$0$0 == 0x009d
                           00009D   722 _SM20	=	0x009d
                           00009D   723 G$MCE0$0$0 == 0x009d
                           00009D   724 _MCE0	=	0x009d
                           00009E   725 G$SM1$0$0 == 0x009e
                           00009E   726 _SM1	=	0x009e
                           00009E   727 G$SM10$0$0 == 0x009e
                           00009E   728 _SM10	=	0x009e
                           00009F   729 G$SM0$0$0 == 0x009f
                           00009F   730 _SM0	=	0x009f
                           00009F   731 G$SM00$0$0 == 0x009f
                           00009F   732 _SM00	=	0x009f
                           00009F   733 G$S0MODE$0$0 == 0x009f
                           00009F   734 _S0MODE	=	0x009f
                           0000A0   735 G$P2_0$0$0 == 0x00a0
                           0000A0   736 _P2_0	=	0x00a0
                           0000A1   737 G$P2_1$0$0 == 0x00a1
                           0000A1   738 _P2_1	=	0x00a1
                           0000A2   739 G$P2_2$0$0 == 0x00a2
                           0000A2   740 _P2_2	=	0x00a2
                           0000A3   741 G$P2_3$0$0 == 0x00a3
                           0000A3   742 _P2_3	=	0x00a3
                           0000A4   743 G$P2_4$0$0 == 0x00a4
                           0000A4   744 _P2_4	=	0x00a4
                           0000A5   745 G$P2_5$0$0 == 0x00a5
                           0000A5   746 _P2_5	=	0x00a5
                           0000A6   747 G$P2_6$0$0 == 0x00a6
                           0000A6   748 _P2_6	=	0x00a6
                           0000A7   749 G$P2_7$0$0 == 0x00a7
                           0000A7   750 _P2_7	=	0x00a7
                           0000A8   751 G$EX0$0$0 == 0x00a8
                           0000A8   752 _EX0	=	0x00a8
                           0000A9   753 G$ET0$0$0 == 0x00a9
                           0000A9   754 _ET0	=	0x00a9
                           0000AA   755 G$EX1$0$0 == 0x00aa
                           0000AA   756 _EX1	=	0x00aa
                           0000AB   757 G$ET1$0$0 == 0x00ab
                           0000AB   758 _ET1	=	0x00ab
                           0000AC   759 G$ES0$0$0 == 0x00ac
                           0000AC   760 _ES0	=	0x00ac
                           0000AC   761 G$ES$0$0 == 0x00ac
                           0000AC   762 _ES	=	0x00ac
                           0000AD   763 G$ET2$0$0 == 0x00ad
                           0000AD   764 _ET2	=	0x00ad
                           0000AF   765 G$EA$0$0 == 0x00af
                           0000AF   766 _EA	=	0x00af
                           0000B0   767 G$P3_0$0$0 == 0x00b0
                           0000B0   768 _P3_0	=	0x00b0
                           0000B1   769 G$P3_1$0$0 == 0x00b1
                           0000B1   770 _P3_1	=	0x00b1
                           0000B2   771 G$P3_2$0$0 == 0x00b2
                           0000B2   772 _P3_2	=	0x00b2
                           0000B3   773 G$P3_3$0$0 == 0x00b3
                           0000B3   774 _P3_3	=	0x00b3
                           0000B4   775 G$P3_4$0$0 == 0x00b4
                           0000B4   776 _P3_4	=	0x00b4
                           0000B5   777 G$P3_5$0$0 == 0x00b5
                           0000B5   778 _P3_5	=	0x00b5
                           0000B6   779 G$P3_6$0$0 == 0x00b6
                           0000B6   780 _P3_6	=	0x00b6
                           0000B7   781 G$P3_7$0$0 == 0x00b7
                           0000B7   782 _P3_7	=	0x00b7
                           0000B8   783 G$PX0$0$0 == 0x00b8
                           0000B8   784 _PX0	=	0x00b8
                           0000B9   785 G$PT0$0$0 == 0x00b9
                           0000B9   786 _PT0	=	0x00b9
                           0000BA   787 G$PX1$0$0 == 0x00ba
                           0000BA   788 _PX1	=	0x00ba
                           0000BB   789 G$PT1$0$0 == 0x00bb
                           0000BB   790 _PT1	=	0x00bb
                           0000BC   791 G$PS0$0$0 == 0x00bc
                           0000BC   792 _PS0	=	0x00bc
                           0000BC   793 G$PS$0$0 == 0x00bc
                           0000BC   794 _PS	=	0x00bc
                           0000BD   795 G$PT2$0$0 == 0x00bd
                           0000BD   796 _PT2	=	0x00bd
                           0000C0   797 G$SMBTOE$0$0 == 0x00c0
                           0000C0   798 _SMBTOE	=	0x00c0
                           0000C1   799 G$SMBFTE$0$0 == 0x00c1
                           0000C1   800 _SMBFTE	=	0x00c1
                           0000C2   801 G$AA$0$0 == 0x00c2
                           0000C2   802 _AA	=	0x00c2
                           0000C3   803 G$SI$0$0 == 0x00c3
                           0000C3   804 _SI	=	0x00c3
                           0000C4   805 G$STO$0$0 == 0x00c4
                           0000C4   806 _STO	=	0x00c4
                           0000C5   807 G$STA$0$0 == 0x00c5
                           0000C5   808 _STA	=	0x00c5
                           0000C6   809 G$ENSMB$0$0 == 0x00c6
                           0000C6   810 _ENSMB	=	0x00c6
                           0000C7   811 G$BUSY$0$0 == 0x00c7
                           0000C7   812 _BUSY	=	0x00c7
                           0000C8   813 G$CPRL2$0$0 == 0x00c8
                           0000C8   814 _CPRL2	=	0x00c8
                           0000C9   815 G$CT2$0$0 == 0x00c9
                           0000C9   816 _CT2	=	0x00c9
                           0000CA   817 G$TR2$0$0 == 0x00ca
                           0000CA   818 _TR2	=	0x00ca
                           0000CB   819 G$EXEN2$0$0 == 0x00cb
                           0000CB   820 _EXEN2	=	0x00cb
                           0000CC   821 G$TCLK$0$0 == 0x00cc
                           0000CC   822 _TCLK	=	0x00cc
                           0000CD   823 G$RCLK$0$0 == 0x00cd
                           0000CD   824 _RCLK	=	0x00cd
                           0000CE   825 G$EXF2$0$0 == 0x00ce
                           0000CE   826 _EXF2	=	0x00ce
                           0000CF   827 G$TF2$0$0 == 0x00cf
                           0000CF   828 _TF2	=	0x00cf
                           0000D0   829 G$P$0$0 == 0x00d0
                           0000D0   830 _P	=	0x00d0
                           0000D1   831 G$F1$0$0 == 0x00d1
                           0000D1   832 _F1	=	0x00d1
                           0000D2   833 G$OV$0$0 == 0x00d2
                           0000D2   834 _OV	=	0x00d2
                           0000D3   835 G$RS0$0$0 == 0x00d3
                           0000D3   836 _RS0	=	0x00d3
                           0000D4   837 G$RS1$0$0 == 0x00d4
                           0000D4   838 _RS1	=	0x00d4
                           0000D5   839 G$F0$0$0 == 0x00d5
                           0000D5   840 _F0	=	0x00d5
                           0000D6   841 G$AC$0$0 == 0x00d6
                           0000D6   842 _AC	=	0x00d6
                           0000D7   843 G$CY$0$0 == 0x00d7
                           0000D7   844 _CY	=	0x00d7
                           0000D8   845 G$CCF0$0$0 == 0x00d8
                           0000D8   846 _CCF0	=	0x00d8
                           0000D9   847 G$CCF1$0$0 == 0x00d9
                           0000D9   848 _CCF1	=	0x00d9
                           0000DA   849 G$CCF2$0$0 == 0x00da
                           0000DA   850 _CCF2	=	0x00da
                           0000DB   851 G$CCF3$0$0 == 0x00db
                           0000DB   852 _CCF3	=	0x00db
                           0000DC   853 G$CCF4$0$0 == 0x00dc
                           0000DC   854 _CCF4	=	0x00dc
                           0000DE   855 G$CR$0$0 == 0x00de
                           0000DE   856 _CR	=	0x00de
                           0000DF   857 G$CF$0$0 == 0x00df
                           0000DF   858 _CF	=	0x00df
                           0000E8   859 G$ADLJST$0$0 == 0x00e8
                           0000E8   860 _ADLJST	=	0x00e8
                           0000E8   861 G$AD0LJST$0$0 == 0x00e8
                           0000E8   862 _AD0LJST	=	0x00e8
                           0000E9   863 G$ADWINT$0$0 == 0x00e9
                           0000E9   864 _ADWINT	=	0x00e9
                           0000E9   865 G$AD0WINT$0$0 == 0x00e9
                           0000E9   866 _AD0WINT	=	0x00e9
                           0000EA   867 G$ADSTM0$0$0 == 0x00ea
                           0000EA   868 _ADSTM0	=	0x00ea
                           0000EA   869 G$AD0CM0$0$0 == 0x00ea
                           0000EA   870 _AD0CM0	=	0x00ea
                           0000EB   871 G$ADSTM1$0$0 == 0x00eb
                           0000EB   872 _ADSTM1	=	0x00eb
                           0000EB   873 G$AD0CM1$0$0 == 0x00eb
                           0000EB   874 _AD0CM1	=	0x00eb
                           0000EC   875 G$ADBUSY$0$0 == 0x00ec
                           0000EC   876 _ADBUSY	=	0x00ec
                           0000EC   877 G$AD0BUSY$0$0 == 0x00ec
                           0000EC   878 _AD0BUSY	=	0x00ec
                           0000ED   879 G$ADCINT$0$0 == 0x00ed
                           0000ED   880 _ADCINT	=	0x00ed
                           0000ED   881 G$AD0INT$0$0 == 0x00ed
                           0000ED   882 _AD0INT	=	0x00ed
                           0000EE   883 G$ADCTM$0$0 == 0x00ee
                           0000EE   884 _ADCTM	=	0x00ee
                           0000EE   885 G$AD0TM$0$0 == 0x00ee
                           0000EE   886 _AD0TM	=	0x00ee
                           0000EF   887 G$ADCEN$0$0 == 0x00ef
                           0000EF   888 _ADCEN	=	0x00ef
                           0000EF   889 G$AD0EN$0$0 == 0x00ef
                           0000EF   890 _AD0EN	=	0x00ef
                           0000F8   891 G$SPIEN$0$0 == 0x00f8
                           0000F8   892 _SPIEN	=	0x00f8
                           0000F9   893 G$MSTEN$0$0 == 0x00f9
                           0000F9   894 _MSTEN	=	0x00f9
                           0000FA   895 G$SLVSEL$0$0 == 0x00fa
                           0000FA   896 _SLVSEL	=	0x00fa
                           0000FB   897 G$TXBSY$0$0 == 0x00fb
                           0000FB   898 _TXBSY	=	0x00fb
                           0000FC   899 G$RXOVRN$0$0 == 0x00fc
                           0000FC   900 _RXOVRN	=	0x00fc
                           0000FD   901 G$MODF$0$0 == 0x00fd
                           0000FD   902 _MODF	=	0x00fd
                           0000FE   903 G$WCOL$0$0 == 0x00fe
                           0000FE   904 _WCOL	=	0x00fe
                           0000FF   905 G$SPIF$0$0 == 0x00ff
                           0000FF   906 _SPIF	=	0x00ff
                           0000C7   907 G$BUS_BUSY$0$0 == 0x00c7
                           0000C7   908 _BUS_BUSY	=	0x00c7
                           0000C6   909 G$BUS_EN$0$0 == 0x00c6
                           0000C6   910 _BUS_EN	=	0x00c6
                           0000C5   911 G$BUS_START$0$0 == 0x00c5
                           0000C5   912 _BUS_START	=	0x00c5
                           0000C4   913 G$BUS_STOP$0$0 == 0x00c4
                           0000C4   914 _BUS_STOP	=	0x00c4
                           0000C3   915 G$BUS_INT$0$0 == 0x00c3
                           0000C3   916 _BUS_INT	=	0x00c3
                           0000C2   917 G$BUS_AA$0$0 == 0x00c2
                           0000C2   918 _BUS_AA	=	0x00c2
                           0000C1   919 G$BUS_FTE$0$0 == 0x00c1
                           0000C1   920 _BUS_FTE	=	0x00c1
                           0000C0   921 G$BUS_TOE$0$0 == 0x00c0
                           0000C0   922 _BUS_TOE	=	0x00c0
                           000083   923 G$BUS_SCL$0$0 == 0x0083
                           000083   924 _BUS_SCL	=	0x0083
                                    925 ;--------------------------------------------------------
                                    926 ; overlayable register banks
                                    927 ;--------------------------------------------------------
                                    928 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        929 	.ds 8
                                    930 ;--------------------------------------------------------
                                    931 ; internal ram data
                                    932 ;--------------------------------------------------------
                                    933 	.area DSEG    (DATA)
                           000000   934 G$Data2$0$0==.
      000022                        935 _Data2::
      000022                        936 	.ds 3
                           000003   937 Llab3_1.aligned_alloc$size$1$39==.
      000025                        938 _aligned_alloc_PARM_2:
      000025                        939 	.ds 2
                           000005   940 Llab3_1.lcd_clear$NumBytes$1$85==.
      000027                        941 _lcd_clear_NumBytes_1_85:
      000027                        942 	.ds 1
                           000006   943 Llab3_1.lcd_clear$Cmd$1$85==.
      000028                        944 _lcd_clear_Cmd_1_85:
      000028                        945 	.ds 2
                           000008   946 Llab3_1.read_keypad$Data$1$86==.
      00002A                        947 _read_keypad_Data_1_86:
      00002A                        948 	.ds 2
                           00000A   949 Llab3_1.i2c_write_data$start_reg$1$105==.
      00002C                        950 _i2c_write_data_PARM_2:
      00002C                        951 	.ds 1
                           00000B   952 Llab3_1.i2c_write_data$buffer$1$105==.
      00002D                        953 _i2c_write_data_PARM_3:
      00002D                        954 	.ds 3
                           00000E   955 Llab3_1.i2c_write_data$num_bytes$1$105==.
      000030                        956 _i2c_write_data_PARM_4:
      000030                        957 	.ds 1
                           00000F   958 Llab3_1.i2c_read_data$start_reg$1$107==.
      000031                        959 _i2c_read_data_PARM_2:
      000031                        960 	.ds 1
                           000010   961 Llab3_1.i2c_read_data$buffer$1$107==.
      000032                        962 _i2c_read_data_PARM_3:
      000032                        963 	.ds 3
                           000013   964 Llab3_1.i2c_read_data$num_bytes$1$107==.
      000035                        965 _i2c_read_data_PARM_4:
      000035                        966 	.ds 1
                           000014   967 G$PW_CENTER$0$0==.
      000036                        968 _PW_CENTER::
      000036                        969 	.ds 2
                           000016   970 G$PW_MIN$0$0==.
      000038                        971 _PW_MIN::
      000038                        972 	.ds 2
                           000018   973 G$PW_MAX$0$0==.
      00003A                        974 _PW_MAX::
      00003A                        975 	.ds 2
                           00001A   976 G$PW$0$0==.
      00003C                        977 _PW::
      00003C                        978 	.ds 2
                           00001C   979 G$PCA_start$0$0==.
      00003E                        980 _PCA_start::
      00003E                        981 	.ds 2
                           00001E   982 G$addr$0$0==.
      000040                        983 _addr::
      000040                        984 	.ds 1
                           00001F   985 G$l_count$0$0==.
      000041                        986 _l_count::
      000041                        987 	.ds 1
                           000020   988 G$new_light$0$0==.
      000042                        989 _new_light::
      000042                        990 	.ds 1
                           000021   991 G$read$0$0==.
      000043                        992 _read::
      000043                        993 	.ds 2
                           000023   994 G$Data$0$0==.
      000045                        995 _Data::
      000045                        996 	.ds 6
                           000029   997 Llab3_1.ReadRanger$Data$1$136==.
      00004B                        998 _ReadRanger_Data_1_136:
      00004B                        999 	.ds 1
                                   1000 ;--------------------------------------------------------
                                   1001 ; overlayable items in internal ram 
                                   1002 ;--------------------------------------------------------
                                   1003 	.area	OSEG    (OVR,DATA)
                                   1004 	.area	OSEG    (OVR,DATA)
                                   1005 	.area	OSEG    (OVR,DATA)
                                   1006 	.area	OSEG    (OVR,DATA)
                                   1007 	.area	OSEG    (OVR,DATA)
                                   1008 	.area	OSEG    (OVR,DATA)
                                   1009 	.area	OSEG    (OVR,DATA)
                                   1010 ;--------------------------------------------------------
                                   1011 ; Stack segment in internal ram 
                                   1012 ;--------------------------------------------------------
                                   1013 	.area	SSEG
      000066                       1014 __start__stack:
      000066                       1015 	.ds	1
                                   1016 
                                   1017 ;--------------------------------------------------------
                                   1018 ; indirectly addressable internal ram data
                                   1019 ;--------------------------------------------------------
                                   1020 	.area ISEG    (DATA)
                                   1021 ;--------------------------------------------------------
                                   1022 ; absolute internal ram data
                                   1023 ;--------------------------------------------------------
                                   1024 	.area IABS    (ABS,DATA)
                                   1025 	.area IABS    (ABS,DATA)
                                   1026 ;--------------------------------------------------------
                                   1027 ; bit data
                                   1028 ;--------------------------------------------------------
                                   1029 	.area BSEG    (BIT)
                                   1030 ;--------------------------------------------------------
                                   1031 ; paged external ram data
                                   1032 ;--------------------------------------------------------
                                   1033 	.area PSEG    (PAG,XDATA)
                                   1034 ;--------------------------------------------------------
                                   1035 ; external ram data
                                   1036 ;--------------------------------------------------------
                                   1037 	.area XSEG    (XDATA)
                           000000  1038 Llab3_1.lcd_print$text$1$81==.
      000001                       1039 _lcd_print_text_1_81:
      000001                       1040 	.ds 80
                                   1041 ;--------------------------------------------------------
                                   1042 ; absolute external ram data
                                   1043 ;--------------------------------------------------------
                                   1044 	.area XABS    (ABS,XDATA)
                                   1045 ;--------------------------------------------------------
                                   1046 ; external initialized ram data
                                   1047 ;--------------------------------------------------------
                                   1048 	.area XISEG   (XDATA)
                                   1049 	.area HOME    (CODE)
                                   1050 	.area GSINIT0 (CODE)
                                   1051 	.area GSINIT1 (CODE)
                                   1052 	.area GSINIT2 (CODE)
                                   1053 	.area GSINIT3 (CODE)
                                   1054 	.area GSINIT4 (CODE)
                                   1055 	.area GSINIT5 (CODE)
                                   1056 	.area GSINIT  (CODE)
                                   1057 	.area GSFINAL (CODE)
                                   1058 	.area CSEG    (CODE)
                                   1059 ;--------------------------------------------------------
                                   1060 ; interrupt vector 
                                   1061 ;--------------------------------------------------------
                                   1062 	.area HOME    (CODE)
      000000                       1063 __interrupt_vect:
      000000 02 00 51         [24] 1064 	ljmp	__sdcc_gsinit_startup
      000003 32               [24] 1065 	reti
      000004                       1066 	.ds	7
      00000B 32               [24] 1067 	reti
      00000C                       1068 	.ds	7
      000013 32               [24] 1069 	reti
      000014                       1070 	.ds	7
      00001B 32               [24] 1071 	reti
      00001C                       1072 	.ds	7
      000023 32               [24] 1073 	reti
      000024                       1074 	.ds	7
      00002B 32               [24] 1075 	reti
      00002C                       1076 	.ds	7
      000033 32               [24] 1077 	reti
      000034                       1078 	.ds	7
      00003B 32               [24] 1079 	reti
      00003C                       1080 	.ds	7
      000043 32               [24] 1081 	reti
      000044                       1082 	.ds	7
      00004B 02 06 6B         [24] 1083 	ljmp	_PCA_ISR
                                   1084 ;--------------------------------------------------------
                                   1085 ; global & static initialisations
                                   1086 ;--------------------------------------------------------
                                   1087 	.area HOME    (CODE)
                                   1088 	.area GSINIT  (CODE)
                                   1089 	.area GSFINAL (CODE)
                                   1090 	.area GSINIT  (CODE)
                                   1091 	.globl __sdcc_gsinit_startup
                                   1092 	.globl __sdcc_program_startup
                                   1093 	.globl __start__stack
                                   1094 	.globl __mcs51_genXINIT
                                   1095 	.globl __mcs51_genXRAMCLEAR
                                   1096 	.globl __mcs51_genRAMCLEAR
                           000000  1097 	C$lab3_1.c$32$1$136 ==.
                                   1098 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:32: unsigned int PW_CENTER = 18432;
      0000AA 75 36 00         [24] 1099 	mov	_PW_CENTER,#0x00
      0000AD 75 37 48         [24] 1100 	mov	(_PW_CENTER + 1),#0x48
                           000006  1101 	C$lab3_1.c$33$1$136 ==.
                                   1102 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:33: unsigned int PW_MIN = 1844;
      0000B0 75 38 34         [24] 1103 	mov	_PW_MIN,#0x34
      0000B3 75 39 07         [24] 1104 	mov	(_PW_MIN + 1),#0x07
                           00000C  1105 	C$lab3_1.c$34$1$136 ==.
                                   1106 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:34: unsigned int PW_MAX = 28420;//brightest //35020;//19ms pw
      0000B6 75 3A 04         [24] 1107 	mov	_PW_MAX,#0x04
      0000B9 75 3B 6F         [24] 1108 	mov	(_PW_MAX + 1),#0x6f
                           000012  1109 	C$lab3_1.c$35$1$136 ==.
                                   1110 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:35: unsigned int PW = 18432;
      0000BC 75 3C 00         [24] 1111 	mov	_PW,#0x00
      0000BF 75 3D 48         [24] 1112 	mov	(_PW + 1),#0x48
                           000018  1113 	C$lab3_1.c$36$1$136 ==.
                                   1114 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:36: unsigned int PCA_start = 28672;   // start count for PCA
      0000C2 75 3E 00         [24] 1115 	mov	_PCA_start,#0x00
      0000C5 75 3F 70         [24] 1116 	mov	(_PCA_start + 1),#0x70
                           00001E  1117 	C$lab3_1.c$37$1$136 ==.
                                   1118 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:37: unsigned char addr = 0xE0;
      0000C8 75 40 E0         [24] 1119 	mov	_addr,#0xe0
                           000021  1120 	C$lab3_1.c$43$1$136 ==.
                                   1121 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:43: unsigned char l_count = 0;
      0000CB 75 41 00         [24] 1122 	mov	_l_count,#0x00
                                   1123 	.area GSFINAL (CODE)
      0000CE 02 00 4E         [24] 1124 	ljmp	__sdcc_program_startup
                                   1125 ;--------------------------------------------------------
                                   1126 ; Home
                                   1127 ;--------------------------------------------------------
                                   1128 	.area HOME    (CODE)
                                   1129 	.area HOME    (CODE)
      00004E                       1130 __sdcc_program_startup:
      00004E 02 05 D7         [24] 1131 	ljmp	_main
                                   1132 ;	return from main will return to caller
                                   1133 ;--------------------------------------------------------
                                   1134 ; code
                                   1135 ;--------------------------------------------------------
                                   1136 	.area CSEG    (CODE)
                                   1137 ;------------------------------------------------------------
                                   1138 ;Allocation info for local variables in function 'SYSCLK_Init'
                                   1139 ;------------------------------------------------------------
                                   1140 ;i                         Allocated to registers r6 r7 
                                   1141 ;------------------------------------------------------------
                           000000  1142 	G$SYSCLK_Init$0$0 ==.
                           000000  1143 	C$c8051_SDCC.h$62$0$0 ==.
                                   1144 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:62: void SYSCLK_Init(void)
                                   1145 ;	-----------------------------------------
                                   1146 ;	 function SYSCLK_Init
                                   1147 ;	-----------------------------------------
      0000D1                       1148 _SYSCLK_Init:
                           000007  1149 	ar7 = 0x07
                           000006  1150 	ar6 = 0x06
                           000005  1151 	ar5 = 0x05
                           000004  1152 	ar4 = 0x04
                           000003  1153 	ar3 = 0x03
                           000002  1154 	ar2 = 0x02
                           000001  1155 	ar1 = 0x01
                           000000  1156 	ar0 = 0x00
                           000000  1157 	C$c8051_SDCC.h$66$1$2 ==.
                                   1158 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:66: OSCXCN = 0x67;                      // start external oscillator with
      0000D1 75 B1 67         [24] 1159 	mov	_OSCXCN,#0x67
                           000003  1160 	C$c8051_SDCC.h$69$1$2 ==.
                                   1161 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:69: for (i=0; i < 256; i++);            // wait for oscillator to start
      0000D4 7E 00            [12] 1162 	mov	r6,#0x00
      0000D6 7F 01            [12] 1163 	mov	r7,#0x01
      0000D8                       1164 00107$:
      0000D8 EE               [12] 1165 	mov	a,r6
      0000D9 24 FF            [12] 1166 	add	a,#0xff
      0000DB FC               [12] 1167 	mov	r4,a
      0000DC EF               [12] 1168 	mov	a,r7
      0000DD 34 FF            [12] 1169 	addc	a,#0xff
      0000DF FD               [12] 1170 	mov	r5,a
      0000E0 8C 06            [24] 1171 	mov	ar6,r4
      0000E2 8D 07            [24] 1172 	mov	ar7,r5
      0000E4 EC               [12] 1173 	mov	a,r4
      0000E5 4D               [12] 1174 	orl	a,r5
      0000E6 70 F0            [24] 1175 	jnz	00107$
                           000017  1176 	C$c8051_SDCC.h$71$1$2 ==.
                                   1177 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:71: while (!(OSCXCN & 0x80));           // Wait for crystal osc. to settle
      0000E8                       1178 00102$:
      0000E8 E5 B1            [12] 1179 	mov	a,_OSCXCN
      0000EA 30 E7 FB         [24] 1180 	jnb	acc.7,00102$
                           00001C  1181 	C$c8051_SDCC.h$73$1$2 ==.
                                   1182 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:73: OSCICN = 0x88;                      // select external oscillator as SYSCLK
      0000ED 75 B2 88         [24] 1183 	mov	_OSCICN,#0x88
                           00001F  1184 	C$c8051_SDCC.h$76$1$2 ==.
                           00001F  1185 	XG$SYSCLK_Init$0$0 ==.
      0000F0 22               [24] 1186 	ret
                                   1187 ;------------------------------------------------------------
                                   1188 ;Allocation info for local variables in function 'UART0_Init'
                                   1189 ;------------------------------------------------------------
                           000020  1190 	G$UART0_Init$0$0 ==.
                           000020  1191 	C$c8051_SDCC.h$84$1$2 ==.
                                   1192 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:84: void UART0_Init(void)
                                   1193 ;	-----------------------------------------
                                   1194 ;	 function UART0_Init
                                   1195 ;	-----------------------------------------
      0000F1                       1196 _UART0_Init:
                           000020  1197 	C$c8051_SDCC.h$86$1$4 ==.
                                   1198 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:86: SCON0  = 0x50;                      // SCON0: mode 1, 8-bit UART, enable RX
      0000F1 75 98 50         [24] 1199 	mov	_SCON0,#0x50
                           000023  1200 	C$c8051_SDCC.h$87$1$4 ==.
                                   1201 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:87: TMOD   = 0x20;                      // TMOD: timer 1, mode 2, 8-bit reload
      0000F4 75 89 20         [24] 1202 	mov	_TMOD,#0x20
                           000026  1203 	C$c8051_SDCC.h$88$1$4 ==.
                                   1204 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:88: TH1    = 0xFF&-(SYSCLK/BAUDRATE/16);     // set Timer1 reload value for baudrate
      0000F7 75 8D DC         [24] 1205 	mov	_TH1,#0xdc
                           000029  1206 	C$c8051_SDCC.h$89$1$4 ==.
                                   1207 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:89: TR1    = 1;                         // start Timer1
      0000FA D2 8E            [12] 1208 	setb	_TR1
                           00002B  1209 	C$c8051_SDCC.h$90$1$4 ==.
                                   1210 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:90: CKCON |= 0x10;                      // Timer1 uses SYSCLK as time base
      0000FC 43 8E 10         [24] 1211 	orl	_CKCON,#0x10
                           00002E  1212 	C$c8051_SDCC.h$91$1$4 ==.
                                   1213 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:91: PCON  |= 0x80;                      // SMOD00 = 1 (disable baud rate 
      0000FF 43 87 80         [24] 1214 	orl	_PCON,#0x80
                           000031  1215 	C$c8051_SDCC.h$93$1$4 ==.
                                   1216 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:93: TI0    = 1;                         // Indicate TX0 ready
      000102 D2 99            [12] 1217 	setb	_TI0
                           000033  1218 	C$c8051_SDCC.h$94$1$4 ==.
                                   1219 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:94: P0MDOUT |= 0x01;                    // Set TX0 to push/pull
      000104 43 A4 01         [24] 1220 	orl	_P0MDOUT,#0x01
                           000036  1221 	C$c8051_SDCC.h$95$1$4 ==.
                           000036  1222 	XG$UART0_Init$0$0 ==.
      000107 22               [24] 1223 	ret
                                   1224 ;------------------------------------------------------------
                                   1225 ;Allocation info for local variables in function 'Sys_Init'
                                   1226 ;------------------------------------------------------------
                           000037  1227 	G$Sys_Init$0$0 ==.
                           000037  1228 	C$c8051_SDCC.h$103$1$4 ==.
                                   1229 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:103: void Sys_Init(void)
                                   1230 ;	-----------------------------------------
                                   1231 ;	 function Sys_Init
                                   1232 ;	-----------------------------------------
      000108                       1233 _Sys_Init:
                           000037  1234 	C$c8051_SDCC.h$105$1$6 ==.
                                   1235 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:105: WDTCN = 0xde;			// disable watchdog timer
      000108 75 FF DE         [24] 1236 	mov	_WDTCN,#0xde
                           00003A  1237 	C$c8051_SDCC.h$106$1$6 ==.
                                   1238 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:106: WDTCN = 0xad;
      00010B 75 FF AD         [24] 1239 	mov	_WDTCN,#0xad
                           00003D  1240 	C$c8051_SDCC.h$108$1$6 ==.
                                   1241 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:108: SYSCLK_Init();			// initialize oscillator
      00010E 12 00 D1         [24] 1242 	lcall	_SYSCLK_Init
                           000040  1243 	C$c8051_SDCC.h$109$1$6 ==.
                                   1244 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:109: UART0_Init();			// initialize UART0
      000111 12 00 F1         [24] 1245 	lcall	_UART0_Init
                           000043  1246 	C$c8051_SDCC.h$111$1$6 ==.
                                   1247 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:111: XBR0 |= 0x04;
      000114 43 E1 04         [24] 1248 	orl	_XBR0,#0x04
                           000046  1249 	C$c8051_SDCC.h$112$1$6 ==.
                                   1250 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:112: XBR2 |= 0x40;                    	// Enable crossbar and weak pull-ups
      000117 43 E3 40         [24] 1251 	orl	_XBR2,#0x40
                           000049  1252 	C$c8051_SDCC.h$113$1$6 ==.
                           000049  1253 	XG$Sys_Init$0$0 ==.
      00011A 22               [24] 1254 	ret
                                   1255 ;------------------------------------------------------------
                                   1256 ;Allocation info for local variables in function 'putchar'
                                   1257 ;------------------------------------------------------------
                                   1258 ;c                         Allocated to registers r7 
                                   1259 ;------------------------------------------------------------
                           00004A  1260 	G$putchar$0$0 ==.
                           00004A  1261 	C$c8051_SDCC.h$129$1$6 ==.
                                   1262 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:129: void putchar(char c)
                                   1263 ;	-----------------------------------------
                                   1264 ;	 function putchar
                                   1265 ;	-----------------------------------------
      00011B                       1266 _putchar:
      00011B AF 82            [24] 1267 	mov	r7,dpl
                           00004C  1268 	C$c8051_SDCC.h$132$1$8 ==.
                                   1269 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:132: while (!TI0); 
      00011D                       1270 00101$:
                           00004C  1271 	C$c8051_SDCC.h$133$1$8 ==.
                                   1272 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:133: TI0 = 0;
      00011D 10 99 02         [24] 1273 	jbc	_TI0,00112$
      000120 80 FB            [24] 1274 	sjmp	00101$
      000122                       1275 00112$:
                           000051  1276 	C$c8051_SDCC.h$134$1$8 ==.
                                   1277 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:134: SBUF0 = c;
      000122 8F 99            [24] 1278 	mov	_SBUF0,r7
                           000053  1279 	C$c8051_SDCC.h$135$1$8 ==.
                           000053  1280 	XG$putchar$0$0 ==.
      000124 22               [24] 1281 	ret
                                   1282 ;------------------------------------------------------------
                                   1283 ;Allocation info for local variables in function 'getchar'
                                   1284 ;------------------------------------------------------------
                                   1285 ;c                         Allocated to registers r7 
                                   1286 ;------------------------------------------------------------
                           000054  1287 	G$getchar$0$0 ==.
                           000054  1288 	C$c8051_SDCC.h$154$1$8 ==.
                                   1289 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:154: char getchar(void)
                                   1290 ;	-----------------------------------------
                                   1291 ;	 function getchar
                                   1292 ;	-----------------------------------------
      000125                       1293 _getchar:
                           000054  1294 	C$c8051_SDCC.h$157$1$10 ==.
                                   1295 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:157: while (!RI0);
      000125                       1296 00101$:
                           000054  1297 	C$c8051_SDCC.h$158$1$10 ==.
                                   1298 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:158: RI0 = 0;
      000125 10 98 02         [24] 1299 	jbc	_RI0,00112$
      000128 80 FB            [24] 1300 	sjmp	00101$
      00012A                       1301 00112$:
                           000059  1302 	C$c8051_SDCC.h$159$1$10 ==.
                                   1303 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:159: c = SBUF0;
      00012A AF 99            [24] 1304 	mov	r7,_SBUF0
                           00005B  1305 	C$c8051_SDCC.h$160$1$10 ==.
                                   1306 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:160: putchar(c);                          // echo to terminal
      00012C 8F 82            [24] 1307 	mov	dpl,r7
      00012E C0 07            [24] 1308 	push	ar7
      000130 12 01 1B         [24] 1309 	lcall	_putchar
      000133 D0 07            [24] 1310 	pop	ar7
                           000064  1311 	C$c8051_SDCC.h$161$1$10 ==.
                                   1312 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:161: return c;
      000135 8F 82            [24] 1313 	mov	dpl,r7
                           000066  1314 	C$c8051_SDCC.h$162$1$10 ==.
                           000066  1315 	XG$getchar$0$0 ==.
      000137 22               [24] 1316 	ret
                                   1317 ;------------------------------------------------------------
                                   1318 ;Allocation info for local variables in function 'getchar_nw'
                                   1319 ;------------------------------------------------------------
                                   1320 ;c                         Allocated to registers 
                                   1321 ;------------------------------------------------------------
                           000067  1322 	G$getchar_nw$0$0 ==.
                           000067  1323 	C$c8051_SDCC.h$168$1$10 ==.
                                   1324 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:168: char getchar_nw(void)
                                   1325 ;	-----------------------------------------
                                   1326 ;	 function getchar_nw
                                   1327 ;	-----------------------------------------
      000138                       1328 _getchar_nw:
                           000067  1329 	C$c8051_SDCC.h$171$1$12 ==.
                                   1330 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:171: if (!RI0) return 0xFF;
      000138 20 98 05         [24] 1331 	jb	_RI0,00102$
      00013B 75 82 FF         [24] 1332 	mov	dpl,#0xff
      00013E 80 0B            [24] 1333 	sjmp	00104$
      000140                       1334 00102$:
                           00006F  1335 	C$c8051_SDCC.h$174$2$13 ==.
                                   1336 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:174: RI0 = 0;
      000140 C2 98            [12] 1337 	clr	_RI0
                           000071  1338 	C$c8051_SDCC.h$175$2$13 ==.
                                   1339 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:175: c = SBUF0;
      000142 85 99 82         [24] 1340 	mov	dpl,_SBUF0
                           000074  1341 	C$c8051_SDCC.h$176$2$13 ==.
                                   1342 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:176: putchar(c);                          // echo to terminal
      000145 12 01 1B         [24] 1343 	lcall	_putchar
                           000077  1344 	C$c8051_SDCC.h$177$2$13 ==.
                                   1345 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:177: return SBUF0;
      000148 85 99 82         [24] 1346 	mov	dpl,_SBUF0
      00014B                       1347 00104$:
                           00007A  1348 	C$c8051_SDCC.h$179$1$12 ==.
                           00007A  1349 	XG$getchar_nw$0$0 ==.
      00014B 22               [24] 1350 	ret
                                   1351 ;------------------------------------------------------------
                                   1352 ;Allocation info for local variables in function 'lcd_print'
                                   1353 ;------------------------------------------------------------
                                   1354 ;fmt                       Allocated to stack - _bp -5
                                   1355 ;len                       Allocated to registers r6 
                                   1356 ;i                         Allocated to registers 
                                   1357 ;ap                        Allocated to registers 
                                   1358 ;text                      Allocated with name '_lcd_print_text_1_81'
                                   1359 ;------------------------------------------------------------
                           00007B  1360 	G$lcd_print$0$0 ==.
                           00007B  1361 	C$i2c.h$84$1$12 ==.
                                   1362 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:84: void lcd_print(const char *fmt, ...)
                                   1363 ;	-----------------------------------------
                                   1364 ;	 function lcd_print
                                   1365 ;	-----------------------------------------
      00014C                       1366 _lcd_print:
      00014C C0 0F            [24] 1367 	push	_bp
      00014E 85 81 0F         [24] 1368 	mov	_bp,sp
                           000080  1369 	C$i2c.h$90$1$81 ==.
                                   1370 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:90: if ( strlen(fmt) <= 0 ) return;         //If there is no data to print, return
      000151 E5 0F            [12] 1371 	mov	a,_bp
      000153 24 FB            [12] 1372 	add	a,#0xfb
      000155 F8               [12] 1373 	mov	r0,a
      000156 86 82            [24] 1374 	mov	dpl,@r0
      000158 08               [12] 1375 	inc	r0
      000159 86 83            [24] 1376 	mov	dph,@r0
      00015B 08               [12] 1377 	inc	r0
      00015C 86 F0            [24] 1378 	mov	b,@r0
      00015E 12 0E 76         [24] 1379 	lcall	_strlen
      000161 E5 82            [12] 1380 	mov	a,dpl
      000163 85 83 F0         [24] 1381 	mov	b,dph
      000166 45 F0            [12] 1382 	orl	a,b
      000168 70 02            [24] 1383 	jnz	00102$
      00016A 80 62            [24] 1384 	sjmp	00109$
      00016C                       1385 00102$:
                           00009B  1386 	C$i2c.h$92$2$82 ==.
                                   1387 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:92: va_start(ap, fmt);
      00016C E5 0F            [12] 1388 	mov	a,_bp
      00016E 24 FB            [12] 1389 	add	a,#0xfb
      000170 FF               [12] 1390 	mov	r7,a
      000171 8F 0B            [24] 1391 	mov	_vsprintf_PARM_3,r7
                           0000A2  1392 	C$i2c.h$93$1$81 ==.
                                   1393 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:93: vsprintf(text, fmt, ap);
      000173 E5 0F            [12] 1394 	mov	a,_bp
      000175 24 FB            [12] 1395 	add	a,#0xfb
      000177 F8               [12] 1396 	mov	r0,a
      000178 86 08            [24] 1397 	mov	_vsprintf_PARM_2,@r0
      00017A 08               [12] 1398 	inc	r0
      00017B 86 09            [24] 1399 	mov	(_vsprintf_PARM_2 + 1),@r0
      00017D 08               [12] 1400 	inc	r0
      00017E 86 0A            [24] 1401 	mov	(_vsprintf_PARM_2 + 2),@r0
      000180 90 00 01         [24] 1402 	mov	dptr,#_lcd_print_text_1_81
      000183 75 F0 00         [24] 1403 	mov	b,#0x00
      000186 12 07 E4         [24] 1404 	lcall	_vsprintf
                           0000B8  1405 	C$i2c.h$96$1$81 ==.
                                   1406 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:96: len = strlen(text);
      000189 90 00 01         [24] 1407 	mov	dptr,#_lcd_print_text_1_81
      00018C 75 F0 00         [24] 1408 	mov	b,#0x00
      00018F 12 0E 76         [24] 1409 	lcall	_strlen
      000192 AE 82            [24] 1410 	mov	r6,dpl
                           0000C3  1411 	C$i2c.h$97$1$81 ==.
                                   1412 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:97: for(i=0; i<len; i++)
      000194 7F 00            [12] 1413 	mov	r7,#0x00
      000196                       1414 00107$:
      000196 C3               [12] 1415 	clr	c
      000197 EF               [12] 1416 	mov	a,r7
      000198 9E               [12] 1417 	subb	a,r6
      000199 50 1F            [24] 1418 	jnc	00105$
                           0000CA  1419 	C$i2c.h$99$2$84 ==.
                                   1420 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:99: if(text[i] == (unsigned char)'\n') text[i] = 13;
      00019B EF               [12] 1421 	mov	a,r7
      00019C 24 01            [12] 1422 	add	a,#_lcd_print_text_1_81
      00019E F5 82            [12] 1423 	mov	dpl,a
      0001A0 E4               [12] 1424 	clr	a
      0001A1 34 00            [12] 1425 	addc	a,#(_lcd_print_text_1_81 >> 8)
      0001A3 F5 83            [12] 1426 	mov	dph,a
      0001A5 E0               [24] 1427 	movx	a,@dptr
      0001A6 FD               [12] 1428 	mov	r5,a
      0001A7 BD 0A 0D         [24] 1429 	cjne	r5,#0x0a,00108$
      0001AA EF               [12] 1430 	mov	a,r7
      0001AB 24 01            [12] 1431 	add	a,#_lcd_print_text_1_81
      0001AD F5 82            [12] 1432 	mov	dpl,a
      0001AF E4               [12] 1433 	clr	a
      0001B0 34 00            [12] 1434 	addc	a,#(_lcd_print_text_1_81 >> 8)
      0001B2 F5 83            [12] 1435 	mov	dph,a
      0001B4 74 0D            [12] 1436 	mov	a,#0x0d
      0001B6 F0               [24] 1437 	movx	@dptr,a
      0001B7                       1438 00108$:
                           0000E6  1439 	C$i2c.h$97$1$81 ==.
                                   1440 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:97: for(i=0; i<len; i++)
      0001B7 0F               [12] 1441 	inc	r7
      0001B8 80 DC            [24] 1442 	sjmp	00107$
      0001BA                       1443 00105$:
                           0000E9  1444 	C$i2c.h$102$1$81 ==.
                                   1445 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:102: i2c_write_data(0xC6, 0x00, text, len);
      0001BA 75 2D 01         [24] 1446 	mov	_i2c_write_data_PARM_3,#_lcd_print_text_1_81
      0001BD 75 2E 00         [24] 1447 	mov	(_i2c_write_data_PARM_3 + 1),#(_lcd_print_text_1_81 >> 8)
      0001C0 75 2F 00         [24] 1448 	mov	(_i2c_write_data_PARM_3 + 2),#0x00
      0001C3 75 2C 00         [24] 1449 	mov	_i2c_write_data_PARM_2,#0x00
      0001C6 8E 30            [24] 1450 	mov	_i2c_write_data_PARM_4,r6
      0001C8 75 82 C6         [24] 1451 	mov	dpl,#0xc6
      0001CB 12 04 5D         [24] 1452 	lcall	_i2c_write_data
      0001CE                       1453 00109$:
      0001CE D0 0F            [24] 1454 	pop	_bp
                           0000FF  1455 	C$i2c.h$103$1$81 ==.
                           0000FF  1456 	XG$lcd_print$0$0 ==.
      0001D0 22               [24] 1457 	ret
                                   1458 ;------------------------------------------------------------
                                   1459 ;Allocation info for local variables in function 'lcd_clear'
                                   1460 ;------------------------------------------------------------
                                   1461 ;NumBytes                  Allocated with name '_lcd_clear_NumBytes_1_85'
                                   1462 ;Cmd                       Allocated with name '_lcd_clear_Cmd_1_85'
                                   1463 ;------------------------------------------------------------
                           000100  1464 	G$lcd_clear$0$0 ==.
                           000100  1465 	C$i2c.h$106$1$81 ==.
                                   1466 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:106: void lcd_clear()
                                   1467 ;	-----------------------------------------
                                   1468 ;	 function lcd_clear
                                   1469 ;	-----------------------------------------
      0001D1                       1470 _lcd_clear:
                           000100  1471 	C$i2c.h$108$1$81 ==.
                                   1472 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:108: unsigned char NumBytes=0, Cmd[2];
      0001D1 75 27 00         [24] 1473 	mov	_lcd_clear_NumBytes_1_85,#0x00
                           000103  1474 	C$i2c.h$110$1$85 ==.
                                   1475 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:110: while(NumBytes < 64) i2c_read_data(0xC6, 0x00, &NumBytes, 1);
      0001D4                       1476 00101$:
      0001D4 74 C0            [12] 1477 	mov	a,#0x100 - 0x40
      0001D6 25 27            [12] 1478 	add	a,_lcd_clear_NumBytes_1_85
      0001D8 40 17            [24] 1479 	jc	00103$
      0001DA 75 32 27         [24] 1480 	mov	_i2c_read_data_PARM_3,#_lcd_clear_NumBytes_1_85
      0001DD 75 33 00         [24] 1481 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      0001E0 75 34 40         [24] 1482 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      0001E3 75 31 00         [24] 1483 	mov	_i2c_read_data_PARM_2,#0x00
      0001E6 75 35 01         [24] 1484 	mov	_i2c_read_data_PARM_4,#0x01
      0001E9 75 82 C6         [24] 1485 	mov	dpl,#0xc6
      0001EC 12 04 D7         [24] 1486 	lcall	_i2c_read_data
      0001EF 80 E3            [24] 1487 	sjmp	00101$
      0001F1                       1488 00103$:
                           000120  1489 	C$i2c.h$112$1$85 ==.
                                   1490 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:112: Cmd[0] = 12;
      0001F1 75 28 0C         [24] 1491 	mov	_lcd_clear_Cmd_1_85,#0x0c
                           000123  1492 	C$i2c.h$113$1$85 ==.
                                   1493 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:113: i2c_write_data(0xC6, 0x00, Cmd, 1);
      0001F4 75 2D 28         [24] 1494 	mov	_i2c_write_data_PARM_3,#_lcd_clear_Cmd_1_85
      0001F7 75 2E 00         [24] 1495 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0001FA 75 2F 40         [24] 1496 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0001FD 75 2C 00         [24] 1497 	mov	_i2c_write_data_PARM_2,#0x00
      000200 75 30 01         [24] 1498 	mov	_i2c_write_data_PARM_4,#0x01
      000203 75 82 C6         [24] 1499 	mov	dpl,#0xc6
      000206 12 04 5D         [24] 1500 	lcall	_i2c_write_data
                           000138  1501 	C$i2c.h$114$1$85 ==.
                           000138  1502 	XG$lcd_clear$0$0 ==.
      000209 22               [24] 1503 	ret
                                   1504 ;------------------------------------------------------------
                                   1505 ;Allocation info for local variables in function 'read_keypad'
                                   1506 ;------------------------------------------------------------
                                   1507 ;i                         Allocated to registers r7 
                                   1508 ;Data                      Allocated with name '_read_keypad_Data_1_86'
                                   1509 ;------------------------------------------------------------
                           000139  1510 	G$read_keypad$0$0 ==.
                           000139  1511 	C$i2c.h$117$1$85 ==.
                                   1512 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:117: unsigned char read_keypad()
                                   1513 ;	-----------------------------------------
                                   1514 ;	 function read_keypad
                                   1515 ;	-----------------------------------------
      00020A                       1516 _read_keypad:
                           000139  1517 	C$i2c.h$121$1$86 ==.
                                   1518 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:121: i2c_read_data(0xC6, 0x01, Data, 2); //Read I2C data on address 192, register 1, 2 bytes of data.
      00020A 75 32 2A         [24] 1519 	mov	_i2c_read_data_PARM_3,#_read_keypad_Data_1_86
      00020D 75 33 00         [24] 1520 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      000210 75 34 40         [24] 1521 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      000213 75 31 01         [24] 1522 	mov	_i2c_read_data_PARM_2,#0x01
      000216 75 35 02         [24] 1523 	mov	_i2c_read_data_PARM_4,#0x02
      000219 75 82 C6         [24] 1524 	mov	dpl,#0xc6
      00021C 12 04 D7         [24] 1525 	lcall	_i2c_read_data
                           00014E  1526 	C$i2c.h$122$1$86 ==.
                                   1527 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:122: if(Data[0] == 0xFF) return 0;   //No response on bus, no display
      00021F 74 FF            [12] 1528 	mov	a,#0xff
      000221 B5 2A 05         [24] 1529 	cjne	a,_read_keypad_Data_1_86,00102$
      000224 75 82 00         [24] 1530 	mov	dpl,#0x00
      000227 80 5F            [24] 1531 	sjmp	00116$
      000229                       1532 00102$:
                           000158  1533 	C$i2c.h$124$1$86 ==.
                                   1534 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:124: for(i=0; i<8; i++)              //loop 8 times
      000229 7F 00            [12] 1535 	mov	r7,#0x00
      00022B 8F 06            [24] 1536 	mov	ar6,r7
      00022D                       1537 00114$:
                           00015C  1538 	C$i2c.h$126$2$87 ==.
                                   1539 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:126: if(Data[0] & (0x01 << i))   //find the ASCII value of the keypad read, if it is the current loop value
      00022D 8E F0            [24] 1540 	mov	b,r6
      00022F 05 F0            [12] 1541 	inc	b
      000231 7C 01            [12] 1542 	mov	r4,#0x01
      000233 7D 00            [12] 1543 	mov	r5,#0x00
      000235 80 06            [24] 1544 	sjmp	00145$
      000237                       1545 00144$:
      000237 EC               [12] 1546 	mov	a,r4
      000238 2C               [12] 1547 	add	a,r4
      000239 FC               [12] 1548 	mov	r4,a
      00023A ED               [12] 1549 	mov	a,r5
      00023B 33               [12] 1550 	rlc	a
      00023C FD               [12] 1551 	mov	r5,a
      00023D                       1552 00145$:
      00023D D5 F0 F7         [24] 1553 	djnz	b,00144$
      000240 AA 2A            [24] 1554 	mov	r2,_read_keypad_Data_1_86
      000242 7B 00            [12] 1555 	mov	r3,#0x00
      000244 EA               [12] 1556 	mov	a,r2
      000245 52 04            [12] 1557 	anl	ar4,a
      000247 EB               [12] 1558 	mov	a,r3
      000248 52 05            [12] 1559 	anl	ar5,a
      00024A EC               [12] 1560 	mov	a,r4
      00024B 4D               [12] 1561 	orl	a,r5
      00024C 60 07            [24] 1562 	jz	00115$
                           00017D  1563 	C$i2c.h$127$2$87 ==.
                                   1564 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:127: return i+49;
      00024E 74 31            [12] 1565 	mov	a,#0x31
      000250 2F               [12] 1566 	add	a,r7
      000251 F5 82            [12] 1567 	mov	dpl,a
      000253 80 33            [24] 1568 	sjmp	00116$
      000255                       1569 00115$:
                           000184  1570 	C$i2c.h$124$1$86 ==.
                                   1571 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:124: for(i=0; i<8; i++)              //loop 8 times
      000255 0E               [12] 1572 	inc	r6
      000256 8E 07            [24] 1573 	mov	ar7,r6
      000258 BE 08 00         [24] 1574 	cjne	r6,#0x08,00147$
      00025B                       1575 00147$:
      00025B 40 D0            [24] 1576 	jc	00114$
                           00018C  1577 	C$i2c.h$130$1$86 ==.
                                   1578 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:130: if(Data[1] & 0x01) return '9';  //if the value is equal to 9 return 9.
      00025D E5 2B            [12] 1579 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      00025F 30 E0 05         [24] 1580 	jnb	acc.0,00107$
      000262 75 82 39         [24] 1581 	mov	dpl,#0x39
      000265 80 21            [24] 1582 	sjmp	00116$
      000267                       1583 00107$:
                           000196  1584 	C$i2c.h$132$1$86 ==.
                                   1585 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:132: if(Data[1] & 0x02) return '*';  //if the value is equal to the star.
      000267 E5 2B            [12] 1586 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      000269 30 E1 05         [24] 1587 	jnb	acc.1,00109$
      00026C 75 82 2A         [24] 1588 	mov	dpl,#0x2a
      00026F 80 17            [24] 1589 	sjmp	00116$
      000271                       1590 00109$:
                           0001A0  1591 	C$i2c.h$134$1$86 ==.
                                   1592 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:134: if(Data[1] & 0x04) return '0';  //if the value is equal to the 0 key
      000271 E5 2B            [12] 1593 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      000273 30 E2 05         [24] 1594 	jnb	acc.2,00111$
      000276 75 82 30         [24] 1595 	mov	dpl,#0x30
      000279 80 0D            [24] 1596 	sjmp	00116$
      00027B                       1597 00111$:
                           0001AA  1598 	C$i2c.h$136$1$86 ==.
                                   1599 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:136: if(Data[1] & 0x08) return '#';  //if the value is equal to the pound key
      00027B E5 2B            [12] 1600 	mov	a,(_read_keypad_Data_1_86 + 0x0001)
      00027D 30 E3 05         [24] 1601 	jnb	acc.3,00113$
      000280 75 82 23         [24] 1602 	mov	dpl,#0x23
      000283 80 03            [24] 1603 	sjmp	00116$
      000285                       1604 00113$:
                           0001B4  1605 	C$i2c.h$138$1$86 ==.
                                   1606 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:138: return 0xFF;                    //else return a numerical -1 (0xFF)
      000285 75 82 FF         [24] 1607 	mov	dpl,#0xff
      000288                       1608 00116$:
                           0001B7  1609 	C$i2c.h$139$1$86 ==.
                           0001B7  1610 	XG$read_keypad$0$0 ==.
      000288 22               [24] 1611 	ret
                                   1612 ;------------------------------------------------------------
                                   1613 ;Allocation info for local variables in function 'kpd_input'
                                   1614 ;------------------------------------------------------------
                                   1615 ;mode                      Allocated to registers r7 
                                   1616 ;sum                       Allocated to registers r5 r6 
                                   1617 ;key                       Allocated to registers r3 
                                   1618 ;i                         Allocated to registers 
                                   1619 ;------------------------------------------------------------
                           0001B8  1620 	G$kpd_input$0$0 ==.
                           0001B8  1621 	C$i2c.h$151$1$86 ==.
                                   1622 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:151: unsigned int kpd_input(char mode)
                                   1623 ;	-----------------------------------------
                                   1624 ;	 function kpd_input
                                   1625 ;	-----------------------------------------
      000289                       1626 _kpd_input:
      000289 AF 82            [24] 1627 	mov	r7,dpl
                           0001BA  1628 	C$i2c.h$156$1$89 ==.
                                   1629 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:156: sum = 0;
                           0001BA  1630 	C$i2c.h$159$1$89 ==.
                                   1631 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:159: if(mode==0)lcd_print("\nType digits; end w/#");
      00028B E4               [12] 1632 	clr	a
      00028C FD               [12] 1633 	mov	r5,a
      00028D FE               [12] 1634 	mov	r6,a
      00028E EF               [12] 1635 	mov	a,r7
      00028F 70 1D            [24] 1636 	jnz	00102$
      000291 C0 06            [24] 1637 	push	ar6
      000293 C0 05            [24] 1638 	push	ar5
      000295 74 AE            [12] 1639 	mov	a,#___str_0
      000297 C0 E0            [24] 1640 	push	acc
      000299 74 0E            [12] 1641 	mov	a,#(___str_0 >> 8)
      00029B C0 E0            [24] 1642 	push	acc
      00029D 74 80            [12] 1643 	mov	a,#0x80
      00029F C0 E0            [24] 1644 	push	acc
      0002A1 12 01 4C         [24] 1645 	lcall	_lcd_print
      0002A4 15 81            [12] 1646 	dec	sp
      0002A6 15 81            [12] 1647 	dec	sp
      0002A8 15 81            [12] 1648 	dec	sp
      0002AA D0 05            [24] 1649 	pop	ar5
      0002AC D0 06            [24] 1650 	pop	ar6
      0002AE                       1651 00102$:
                           0001DD  1652 	C$i2c.h$161$1$89 ==.
                                   1653 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:161: lcd_print("     %c%c%c%c%c",0x08,0x08,0x08,0x08,0x08);
      0002AE C0 06            [24] 1654 	push	ar6
      0002B0 C0 05            [24] 1655 	push	ar5
      0002B2 74 08            [12] 1656 	mov	a,#0x08
      0002B4 C0 E0            [24] 1657 	push	acc
      0002B6 E4               [12] 1658 	clr	a
      0002B7 C0 E0            [24] 1659 	push	acc
      0002B9 74 08            [12] 1660 	mov	a,#0x08
      0002BB C0 E0            [24] 1661 	push	acc
      0002BD E4               [12] 1662 	clr	a
      0002BE C0 E0            [24] 1663 	push	acc
      0002C0 74 08            [12] 1664 	mov	a,#0x08
      0002C2 C0 E0            [24] 1665 	push	acc
      0002C4 E4               [12] 1666 	clr	a
      0002C5 C0 E0            [24] 1667 	push	acc
      0002C7 74 08            [12] 1668 	mov	a,#0x08
      0002C9 C0 E0            [24] 1669 	push	acc
      0002CB E4               [12] 1670 	clr	a
      0002CC C0 E0            [24] 1671 	push	acc
      0002CE 74 08            [12] 1672 	mov	a,#0x08
      0002D0 C0 E0            [24] 1673 	push	acc
      0002D2 E4               [12] 1674 	clr	a
      0002D3 C0 E0            [24] 1675 	push	acc
      0002D5 74 C4            [12] 1676 	mov	a,#___str_1
      0002D7 C0 E0            [24] 1677 	push	acc
      0002D9 74 0E            [12] 1678 	mov	a,#(___str_1 >> 8)
      0002DB C0 E0            [24] 1679 	push	acc
      0002DD 74 80            [12] 1680 	mov	a,#0x80
      0002DF C0 E0            [24] 1681 	push	acc
      0002E1 12 01 4C         [24] 1682 	lcall	_lcd_print
      0002E4 E5 81            [12] 1683 	mov	a,sp
      0002E6 24 F3            [12] 1684 	add	a,#0xf3
      0002E8 F5 81            [12] 1685 	mov	sp,a
                           000219  1686 	C$i2c.h$163$1$89 ==.
                                   1687 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:163: delay_time(500000);             //Add 20ms delay before reading i2c in loop
      0002EA 90 A1 20         [24] 1688 	mov	dptr,#0xa120
      0002ED 75 F0 07         [24] 1689 	mov	b,#0x07
      0002F0 E4               [12] 1690 	clr	a
      0002F1 12 03 F8         [24] 1691 	lcall	_delay_time
      0002F4 D0 05            [24] 1692 	pop	ar5
      0002F6 D0 06            [24] 1693 	pop	ar6
                           000227  1694 	C$i2c.h$167$1$89 ==.
                                   1695 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:167: for(i=0; i<5; i++)
      0002F8 7F 00            [12] 1696 	mov	r7,#0x00
                           000229  1697 	C$i2c.h$169$3$92 ==.
                                   1698 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:169: while(((key=read_keypad()) == 0xFF) || (key == '*'))delay_time(10000);
      0002FA                       1699 00104$:
      0002FA C0 07            [24] 1700 	push	ar7
      0002FC C0 06            [24] 1701 	push	ar6
      0002FE C0 05            [24] 1702 	push	ar5
      000300 12 02 0A         [24] 1703 	lcall	_read_keypad
      000303 AC 82            [24] 1704 	mov	r4,dpl
      000305 D0 05            [24] 1705 	pop	ar5
      000307 D0 06            [24] 1706 	pop	ar6
      000309 D0 07            [24] 1707 	pop	ar7
      00030B 8C 03            [24] 1708 	mov	ar3,r4
      00030D BC FF 02         [24] 1709 	cjne	r4,#0xff,00146$
      000310 80 03            [24] 1710 	sjmp	00105$
      000312                       1711 00146$:
      000312 BB 2A 17         [24] 1712 	cjne	r3,#0x2a,00106$
      000315                       1713 00105$:
      000315 90 27 10         [24] 1714 	mov	dptr,#0x2710
      000318 E4               [12] 1715 	clr	a
      000319 F5 F0            [12] 1716 	mov	b,a
      00031B C0 07            [24] 1717 	push	ar7
      00031D C0 06            [24] 1718 	push	ar6
      00031F C0 05            [24] 1719 	push	ar5
      000321 12 03 F8         [24] 1720 	lcall	_delay_time
      000324 D0 05            [24] 1721 	pop	ar5
      000326 D0 06            [24] 1722 	pop	ar6
      000328 D0 07            [24] 1723 	pop	ar7
      00032A 80 CE            [24] 1724 	sjmp	00104$
      00032C                       1725 00106$:
                           00025B  1726 	C$i2c.h$170$2$90 ==.
                                   1727 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:170: if(key == '#')
      00032C BB 23 2A         [24] 1728 	cjne	r3,#0x23,00114$
                           00025E  1729 	C$i2c.h$172$3$91 ==.
                                   1730 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:172: while(read_keypad() == '#')delay_time(10000);
      00032F                       1731 00107$:
      00032F C0 06            [24] 1732 	push	ar6
      000331 C0 05            [24] 1733 	push	ar5
      000333 12 02 0A         [24] 1734 	lcall	_read_keypad
      000336 AC 82            [24] 1735 	mov	r4,dpl
      000338 D0 05            [24] 1736 	pop	ar5
      00033A D0 06            [24] 1737 	pop	ar6
      00033C BC 23 13         [24] 1738 	cjne	r4,#0x23,00109$
      00033F 90 27 10         [24] 1739 	mov	dptr,#0x2710
      000342 E4               [12] 1740 	clr	a
      000343 F5 F0            [12] 1741 	mov	b,a
      000345 C0 06            [24] 1742 	push	ar6
      000347 C0 05            [24] 1743 	push	ar5
      000349 12 03 F8         [24] 1744 	lcall	_delay_time
      00034C D0 05            [24] 1745 	pop	ar5
      00034E D0 06            [24] 1746 	pop	ar6
      000350 80 DD            [24] 1747 	sjmp	00107$
      000352                       1748 00109$:
                           000281  1749 	C$i2c.h$173$3$91 ==.
                                   1750 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:173: return sum;
      000352 8D 82            [24] 1751 	mov	dpl,r5
      000354 8E 83            [24] 1752 	mov	dph,r6
      000356 02 03 F7         [24] 1753 	ljmp	00119$
      000359                       1754 00114$:
                           000288  1755 	C$i2c.h$177$3$92 ==.
                                   1756 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:177: lcd_print("%c", key);
      000359 8B 02            [24] 1757 	mov	ar2,r3
      00035B 7C 00            [12] 1758 	mov	r4,#0x00
      00035D C0 07            [24] 1759 	push	ar7
      00035F C0 06            [24] 1760 	push	ar6
      000361 C0 05            [24] 1761 	push	ar5
      000363 C0 04            [24] 1762 	push	ar4
      000365 C0 03            [24] 1763 	push	ar3
      000367 C0 02            [24] 1764 	push	ar2
      000369 C0 02            [24] 1765 	push	ar2
      00036B C0 04            [24] 1766 	push	ar4
      00036D 74 D4            [12] 1767 	mov	a,#___str_2
      00036F C0 E0            [24] 1768 	push	acc
      000371 74 0E            [12] 1769 	mov	a,#(___str_2 >> 8)
      000373 C0 E0            [24] 1770 	push	acc
      000375 74 80            [12] 1771 	mov	a,#0x80
      000377 C0 E0            [24] 1772 	push	acc
      000379 12 01 4C         [24] 1773 	lcall	_lcd_print
      00037C E5 81            [12] 1774 	mov	a,sp
      00037E 24 FB            [12] 1775 	add	a,#0xfb
      000380 F5 81            [12] 1776 	mov	sp,a
      000382 D0 02            [24] 1777 	pop	ar2
      000384 D0 03            [24] 1778 	pop	ar3
      000386 D0 04            [24] 1779 	pop	ar4
      000388 D0 05            [24] 1780 	pop	ar5
      00038A D0 06            [24] 1781 	pop	ar6
                           0002BB  1782 	C$i2c.h$178$1$89 ==.
                                   1783 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:178: sum = sum*10 + key - '0';
      00038C 8D 11            [24] 1784 	mov	__mulint_PARM_2,r5
      00038E 8E 12            [24] 1785 	mov	(__mulint_PARM_2 + 1),r6
      000390 90 00 0A         [24] 1786 	mov	dptr,#0x000a
      000393 C0 04            [24] 1787 	push	ar4
      000395 C0 03            [24] 1788 	push	ar3
      000397 C0 02            [24] 1789 	push	ar2
      000399 12 07 57         [24] 1790 	lcall	__mulint
      00039C A8 82            [24] 1791 	mov	r0,dpl
      00039E A9 83            [24] 1792 	mov	r1,dph
      0003A0 D0 02            [24] 1793 	pop	ar2
      0003A2 D0 03            [24] 1794 	pop	ar3
      0003A4 D0 04            [24] 1795 	pop	ar4
      0003A6 D0 07            [24] 1796 	pop	ar7
      0003A8 EA               [12] 1797 	mov	a,r2
      0003A9 28               [12] 1798 	add	a,r0
      0003AA F8               [12] 1799 	mov	r0,a
      0003AB EC               [12] 1800 	mov	a,r4
      0003AC 39               [12] 1801 	addc	a,r1
      0003AD F9               [12] 1802 	mov	r1,a
      0003AE E8               [12] 1803 	mov	a,r0
      0003AF 24 D0            [12] 1804 	add	a,#0xd0
      0003B1 FD               [12] 1805 	mov	r5,a
      0003B2 E9               [12] 1806 	mov	a,r1
      0003B3 34 FF            [12] 1807 	addc	a,#0xff
      0003B5 FE               [12] 1808 	mov	r6,a
                           0002E5  1809 	C$i2c.h$179$3$92 ==.
                                   1810 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:179: while(read_keypad() == key)delay_time(10000); //wait for key to be released
      0003B6                       1811 00110$:
      0003B6 C0 07            [24] 1812 	push	ar7
      0003B8 C0 06            [24] 1813 	push	ar6
      0003BA C0 05            [24] 1814 	push	ar5
      0003BC C0 03            [24] 1815 	push	ar3
      0003BE 12 02 0A         [24] 1816 	lcall	_read_keypad
      0003C1 AC 82            [24] 1817 	mov	r4,dpl
      0003C3 D0 03            [24] 1818 	pop	ar3
      0003C5 D0 05            [24] 1819 	pop	ar5
      0003C7 D0 06            [24] 1820 	pop	ar6
      0003C9 D0 07            [24] 1821 	pop	ar7
      0003CB EC               [12] 1822 	mov	a,r4
      0003CC B5 03 1B         [24] 1823 	cjne	a,ar3,00118$
      0003CF 90 27 10         [24] 1824 	mov	dptr,#0x2710
      0003D2 E4               [12] 1825 	clr	a
      0003D3 F5 F0            [12] 1826 	mov	b,a
      0003D5 C0 07            [24] 1827 	push	ar7
      0003D7 C0 06            [24] 1828 	push	ar6
      0003D9 C0 05            [24] 1829 	push	ar5
      0003DB C0 03            [24] 1830 	push	ar3
      0003DD 12 03 F8         [24] 1831 	lcall	_delay_time
      0003E0 D0 03            [24] 1832 	pop	ar3
      0003E2 D0 05            [24] 1833 	pop	ar5
      0003E4 D0 06            [24] 1834 	pop	ar6
      0003E6 D0 07            [24] 1835 	pop	ar7
      0003E8 80 CC            [24] 1836 	sjmp	00110$
      0003EA                       1837 00118$:
                           000319  1838 	C$i2c.h$167$1$89 ==.
                                   1839 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:167: for(i=0; i<5; i++)
      0003EA 0F               [12] 1840 	inc	r7
      0003EB BF 05 00         [24] 1841 	cjne	r7,#0x05,00155$
      0003EE                       1842 00155$:
      0003EE 50 03            [24] 1843 	jnc	00156$
      0003F0 02 02 FA         [24] 1844 	ljmp	00104$
      0003F3                       1845 00156$:
                           000322  1846 	C$i2c.h$182$1$89 ==.
                                   1847 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:182: return sum;
      0003F3 8D 82            [24] 1848 	mov	dpl,r5
      0003F5 8E 83            [24] 1849 	mov	dph,r6
      0003F7                       1850 00119$:
                           000326  1851 	C$i2c.h$183$1$89 ==.
                           000326  1852 	XG$kpd_input$0$0 ==.
      0003F7 22               [24] 1853 	ret
                                   1854 ;------------------------------------------------------------
                                   1855 ;Allocation info for local variables in function 'delay_time'
                                   1856 ;------------------------------------------------------------
                                   1857 ;time_end                  Allocated to registers r4 r5 r6 r7 
                                   1858 ;index                     Allocated to registers 
                                   1859 ;------------------------------------------------------------
                           000327  1860 	G$delay_time$0$0 ==.
                           000327  1861 	C$i2c.h$192$1$89 ==.
                                   1862 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:192: void delay_time (unsigned long time_end)
                                   1863 ;	-----------------------------------------
                                   1864 ;	 function delay_time
                                   1865 ;	-----------------------------------------
      0003F8                       1866 _delay_time:
      0003F8 AC 82            [24] 1867 	mov	r4,dpl
      0003FA AD 83            [24] 1868 	mov	r5,dph
      0003FC AE F0            [24] 1869 	mov	r6,b
      0003FE FF               [12] 1870 	mov	r7,a
                           00032E  1871 	C$i2c.h$196$1$94 ==.
                                   1872 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:196: for (index = 0; index < time_end; index++); //for loop delay
      0003FF 78 00            [12] 1873 	mov	r0,#0x00
      000401 79 00            [12] 1874 	mov	r1,#0x00
      000403 7A 00            [12] 1875 	mov	r2,#0x00
      000405 7B 00            [12] 1876 	mov	r3,#0x00
      000407                       1877 00103$:
      000407 C3               [12] 1878 	clr	c
      000408 E8               [12] 1879 	mov	a,r0
      000409 9C               [12] 1880 	subb	a,r4
      00040A E9               [12] 1881 	mov	a,r1
      00040B 9D               [12] 1882 	subb	a,r5
      00040C EA               [12] 1883 	mov	a,r2
      00040D 9E               [12] 1884 	subb	a,r6
      00040E EB               [12] 1885 	mov	a,r3
      00040F 9F               [12] 1886 	subb	a,r7
      000410 50 0F            [24] 1887 	jnc	00105$
      000412 08               [12] 1888 	inc	r0
      000413 B8 00 09         [24] 1889 	cjne	r0,#0x00,00115$
      000416 09               [12] 1890 	inc	r1
      000417 B9 00 05         [24] 1891 	cjne	r1,#0x00,00115$
      00041A 0A               [12] 1892 	inc	r2
      00041B BA 00 E9         [24] 1893 	cjne	r2,#0x00,00103$
      00041E 0B               [12] 1894 	inc	r3
      00041F                       1895 00115$:
      00041F 80 E6            [24] 1896 	sjmp	00103$
      000421                       1897 00105$:
                           000350  1898 	C$i2c.h$197$1$94 ==.
                           000350  1899 	XG$delay_time$0$0 ==.
      000421 22               [24] 1900 	ret
                                   1901 ;------------------------------------------------------------
                                   1902 ;Allocation info for local variables in function 'i2c_start'
                                   1903 ;------------------------------------------------------------
                           000351  1904 	G$i2c_start$0$0 ==.
                           000351  1905 	C$i2c.h$200$1$94 ==.
                                   1906 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:200: void i2c_start(void)
                                   1907 ;	-----------------------------------------
                                   1908 ;	 function i2c_start
                                   1909 ;	-----------------------------------------
      000422                       1910 _i2c_start:
                           000351  1911 	C$i2c.h$202$1$96 ==.
                                   1912 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:202: while(BUSY);                //Wait until SMBus0 is free
      000422                       1913 00101$:
      000422 20 C7 FD         [24] 1914 	jb	_BUSY,00101$
                           000354  1915 	C$i2c.h$203$1$96 ==.
                                   1916 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:203: STA = 1;                    //Set Start Bit
      000425 D2 C5            [12] 1917 	setb	_STA
                           000356  1918 	C$i2c.h$204$1$96 ==.
                                   1919 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:204: while(!SI);                 //Wait until start sent
      000427                       1920 00104$:
      000427 30 C3 FD         [24] 1921 	jnb	_SI,00104$
                           000359  1922 	C$i2c.h$205$1$96 ==.
                                   1923 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:205: STA = 0;                    //Clear start bit
      00042A C2 C5            [12] 1924 	clr	_STA
                           00035B  1925 	C$i2c.h$206$1$96 ==.
                                   1926 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:206: SI = 0;                     //Clear SI
      00042C C2 C3            [12] 1927 	clr	_SI
                           00035D  1928 	C$i2c.h$207$1$96 ==.
                           00035D  1929 	XG$i2c_start$0$0 ==.
      00042E 22               [24] 1930 	ret
                                   1931 ;------------------------------------------------------------
                                   1932 ;Allocation info for local variables in function 'i2c_write'
                                   1933 ;------------------------------------------------------------
                                   1934 ;output_data               Allocated to registers 
                                   1935 ;------------------------------------------------------------
                           00035E  1936 	G$i2c_write$0$0 ==.
                           00035E  1937 	C$i2c.h$210$1$96 ==.
                                   1938 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:210: void i2c_write(unsigned char output_data)
                                   1939 ;	-----------------------------------------
                                   1940 ;	 function i2c_write
                                   1941 ;	-----------------------------------------
      00042F                       1942 _i2c_write:
      00042F 85 82 C2         [24] 1943 	mov	_SMB0DAT,dpl
                           000361  1944 	C$i2c.h$213$1$98 ==.
                                   1945 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:213: while(!SI);                 //Wait until send is complete
      000432                       1946 00101$:
                           000361  1947 	C$i2c.h$214$1$98 ==.
                                   1948 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:214: SI = 0;                     //Clear SI
      000432 10 C3 02         [24] 1949 	jbc	_SI,00112$
      000435 80 FB            [24] 1950 	sjmp	00101$
      000437                       1951 00112$:
                           000366  1952 	C$i2c.h$215$1$98 ==.
                           000366  1953 	XG$i2c_write$0$0 ==.
      000437 22               [24] 1954 	ret
                                   1955 ;------------------------------------------------------------
                                   1956 ;Allocation info for local variables in function 'i2c_write_and_stop'
                                   1957 ;------------------------------------------------------------
                                   1958 ;output_data               Allocated to registers 
                                   1959 ;------------------------------------------------------------
                           000367  1960 	G$i2c_write_and_stop$0$0 ==.
                           000367  1961 	C$i2c.h$218$1$98 ==.
                                   1962 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:218: void i2c_write_and_stop(unsigned char output_data)
                                   1963 ;	-----------------------------------------
                                   1964 ;	 function i2c_write_and_stop
                                   1965 ;	-----------------------------------------
      000438                       1966 _i2c_write_and_stop:
      000438 85 82 C2         [24] 1967 	mov	_SMB0DAT,dpl
                           00036A  1968 	C$i2c.h$221$1$100 ==.
                                   1969 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:221: STO = 1;                    //Set stop bit
      00043B D2 C4            [12] 1970 	setb	_STO
                           00036C  1971 	C$i2c.h$222$1$100 ==.
                                   1972 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:222: while(!SI);                 //Wait until send is complete
      00043D                       1973 00101$:
                           00036C  1974 	C$i2c.h$223$1$100 ==.
                                   1975 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:223: SI = 0;                     //Clear SI
      00043D 10 C3 02         [24] 1976 	jbc	_SI,00112$
      000440 80 FB            [24] 1977 	sjmp	00101$
      000442                       1978 00112$:
                           000371  1979 	C$i2c.h$224$1$100 ==.
                           000371  1980 	XG$i2c_write_and_stop$0$0 ==.
      000442 22               [24] 1981 	ret
                                   1982 ;------------------------------------------------------------
                                   1983 ;Allocation info for local variables in function 'i2c_read'
                                   1984 ;------------------------------------------------------------
                                   1985 ;input_data                Allocated to registers 
                                   1986 ;------------------------------------------------------------
                           000372  1987 	G$i2c_read$0$0 ==.
                           000372  1988 	C$i2c.h$227$1$100 ==.
                                   1989 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:227: unsigned char i2c_read(void)
                                   1990 ;	-----------------------------------------
                                   1991 ;	 function i2c_read
                                   1992 ;	-----------------------------------------
      000443                       1993 _i2c_read:
                           000372  1994 	C$i2c.h$231$1$102 ==.
                                   1995 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:231: while(!SI);                 //Wait until we have data to read
      000443                       1996 00101$:
      000443 30 C3 FD         [24] 1997 	jnb	_SI,00101$
                           000375  1998 	C$i2c.h$232$1$102 ==.
                                   1999 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:232: input_data = SMB0DAT;       //Read the data
      000446 85 C2 82         [24] 2000 	mov	dpl,_SMB0DAT
                           000378  2001 	C$i2c.h$233$1$102 ==.
                                   2002 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:233: SI = 0;                     //Clear SI
      000449 C2 C3            [12] 2003 	clr	_SI
                           00037A  2004 	C$i2c.h$234$1$102 ==.
                                   2005 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:234: return input_data;          //Return the read data
                           00037A  2006 	C$i2c.h$235$1$102 ==.
                           00037A  2007 	XG$i2c_read$0$0 ==.
      00044B 22               [24] 2008 	ret
                                   2009 ;------------------------------------------------------------
                                   2010 ;Allocation info for local variables in function 'i2c_read_and_stop'
                                   2011 ;------------------------------------------------------------
                                   2012 ;input_data                Allocated to registers r7 
                                   2013 ;------------------------------------------------------------
                           00037B  2014 	G$i2c_read_and_stop$0$0 ==.
                           00037B  2015 	C$i2c.h$238$1$102 ==.
                                   2016 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:238: unsigned char i2c_read_and_stop(void)
                                   2017 ;	-----------------------------------------
                                   2018 ;	 function i2c_read_and_stop
                                   2019 ;	-----------------------------------------
      00044C                       2020 _i2c_read_and_stop:
                           00037B  2021 	C$i2c.h$242$1$104 ==.
                                   2022 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:242: while(!SI);                 //Wait until we have data to read
      00044C                       2023 00101$:
      00044C 30 C3 FD         [24] 2024 	jnb	_SI,00101$
                           00037E  2025 	C$i2c.h$243$1$104 ==.
                                   2026 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:243: input_data = SMB0DAT;       //Read the data
      00044F AF C2            [24] 2027 	mov	r7,_SMB0DAT
                           000380  2028 	C$i2c.h$244$1$104 ==.
                                   2029 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:244: SI = 0;                     //Clear SI
      000451 C2 C3            [12] 2030 	clr	_SI
                           000382  2031 	C$i2c.h$245$1$104 ==.
                                   2032 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:245: STO = 1;                    //Set stop bit
      000453 D2 C4            [12] 2033 	setb	_STO
                           000384  2034 	C$i2c.h$246$1$104 ==.
                                   2035 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:246: while(!SI);                 //Wait for stop
      000455                       2036 00104$:
                           000384  2037 	C$i2c.h$247$1$104 ==.
                                   2038 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:247: SI = 0;
      000455 10 C3 02         [24] 2039 	jbc	_SI,00122$
      000458 80 FB            [24] 2040 	sjmp	00104$
      00045A                       2041 00122$:
                           000389  2042 	C$i2c.h$248$1$104 ==.
                                   2043 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:248: return input_data;          //Return the read data
      00045A 8F 82            [24] 2044 	mov	dpl,r7
                           00038B  2045 	C$i2c.h$249$1$104 ==.
                           00038B  2046 	XG$i2c_read_and_stop$0$0 ==.
      00045C 22               [24] 2047 	ret
                                   2048 ;------------------------------------------------------------
                                   2049 ;Allocation info for local variables in function 'i2c_write_data'
                                   2050 ;------------------------------------------------------------
                                   2051 ;start_reg                 Allocated with name '_i2c_write_data_PARM_2'
                                   2052 ;buffer                    Allocated with name '_i2c_write_data_PARM_3'
                                   2053 ;num_bytes                 Allocated with name '_i2c_write_data_PARM_4'
                                   2054 ;addr                      Allocated to registers r7 
                                   2055 ;i                         Allocated to registers 
                                   2056 ;------------------------------------------------------------
                           00038C  2057 	G$i2c_write_data$0$0 ==.
                           00038C  2058 	C$i2c.h$252$1$104 ==.
                                   2059 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:252: void i2c_write_data(unsigned char addr, unsigned char start_reg, unsigned char *buffer, unsigned char num_bytes)
                                   2060 ;	-----------------------------------------
                                   2061 ;	 function i2c_write_data
                                   2062 ;	-----------------------------------------
      00045D                       2063 _i2c_write_data:
      00045D AF 82            [24] 2064 	mov	r7,dpl
                           00038E  2065 	C$i2c.h$256$1$106 ==.
                                   2066 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:256: EA = 0;                     //Don't allow interrupts during I2C work
      00045F C2 AF            [12] 2067 	clr	_EA
                           000390  2068 	C$i2c.h$257$1$106 ==.
                                   2069 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:257: i2c_start();                //Initiate I2C transfer
      000461 C0 07            [24] 2070 	push	ar7
      000463 12 04 22         [24] 2071 	lcall	_i2c_start
      000466 D0 07            [24] 2072 	pop	ar7
                           000397  2073 	C$i2c.h$258$1$106 ==.
                                   2074 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:258: i2c_write(addr & ~0x01);    //Write the desired address to the bus
      000468 74 FE            [12] 2075 	mov	a,#0xfe
      00046A 5F               [12] 2076 	anl	a,r7
      00046B F5 82            [12] 2077 	mov	dpl,a
      00046D 12 04 2F         [24] 2078 	lcall	_i2c_write
                           00039F  2079 	C$i2c.h$259$1$106 ==.
                                   2080 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:259: i2c_write(start_reg);       //Write the start register to the bus
      000470 85 2C 82         [24] 2081 	mov	dpl,_i2c_write_data_PARM_2
      000473 12 04 2F         [24] 2082 	lcall	_i2c_write
                           0003A5  2083 	C$i2c.h$260$1$106 ==.
                                   2084 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:260: for(i=0; i<num_bytes-1; i++) //Write the data to the register(s)
      000476 7F 00            [12] 2085 	mov	r7,#0x00
      000478                       2086 00103$:
      000478 AD 30            [24] 2087 	mov	r5,_i2c_write_data_PARM_4
      00047A 7E 00            [12] 2088 	mov	r6,#0x00
      00047C 1D               [12] 2089 	dec	r5
      00047D BD FF 01         [24] 2090 	cjne	r5,#0xff,00114$
      000480 1E               [12] 2091 	dec	r6
      000481                       2092 00114$:
      000481 8F 03            [24] 2093 	mov	ar3,r7
      000483 7C 00            [12] 2094 	mov	r4,#0x00
      000485 C3               [12] 2095 	clr	c
      000486 EB               [12] 2096 	mov	a,r3
      000487 9D               [12] 2097 	subb	a,r5
      000488 EC               [12] 2098 	mov	a,r4
      000489 64 80            [12] 2099 	xrl	a,#0x80
      00048B 8E F0            [24] 2100 	mov	b,r6
      00048D 63 F0 80         [24] 2101 	xrl	b,#0x80
      000490 95 F0            [12] 2102 	subb	a,b
      000492 50 1F            [24] 2103 	jnc	00101$
                           0003C3  2104 	C$i2c.h$261$1$106 ==.
                                   2105 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:261: i2c_write(buffer[i]);
      000494 EF               [12] 2106 	mov	a,r7
      000495 25 2D            [12] 2107 	add	a,_i2c_write_data_PARM_3
      000497 FC               [12] 2108 	mov	r4,a
      000498 E4               [12] 2109 	clr	a
      000499 35 2E            [12] 2110 	addc	a,(_i2c_write_data_PARM_3 + 1)
      00049B FD               [12] 2111 	mov	r5,a
      00049C AE 2F            [24] 2112 	mov	r6,(_i2c_write_data_PARM_3 + 2)
      00049E 8C 82            [24] 2113 	mov	dpl,r4
      0004A0 8D 83            [24] 2114 	mov	dph,r5
      0004A2 8E F0            [24] 2115 	mov	b,r6
      0004A4 12 0E 8E         [24] 2116 	lcall	__gptrget
      0004A7 F5 82            [12] 2117 	mov	dpl,a
      0004A9 C0 07            [24] 2118 	push	ar7
      0004AB 12 04 2F         [24] 2119 	lcall	_i2c_write
      0004AE D0 07            [24] 2120 	pop	ar7
                           0003DF  2121 	C$i2c.h$260$1$106 ==.
                                   2122 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:260: for(i=0; i<num_bytes-1; i++) //Write the data to the register(s)
      0004B0 0F               [12] 2123 	inc	r7
      0004B1 80 C5            [24] 2124 	sjmp	00103$
      0004B3                       2125 00101$:
                           0003E2  2126 	C$i2c.h$262$1$106 ==.
                                   2127 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:262: i2c_write_and_stop(buffer[num_bytes-1]); //Stop transfer
      0004B3 AE 30            [24] 2128 	mov	r6,_i2c_write_data_PARM_4
      0004B5 7F 00            [12] 2129 	mov	r7,#0x00
      0004B7 1E               [12] 2130 	dec	r6
      0004B8 BE FF 01         [24] 2131 	cjne	r6,#0xff,00116$
      0004BB 1F               [12] 2132 	dec	r7
      0004BC                       2133 00116$:
      0004BC EE               [12] 2134 	mov	a,r6
      0004BD 25 2D            [12] 2135 	add	a,_i2c_write_data_PARM_3
      0004BF FE               [12] 2136 	mov	r6,a
      0004C0 EF               [12] 2137 	mov	a,r7
      0004C1 35 2E            [12] 2138 	addc	a,(_i2c_write_data_PARM_3 + 1)
      0004C3 FF               [12] 2139 	mov	r7,a
      0004C4 AD 2F            [24] 2140 	mov	r5,(_i2c_write_data_PARM_3 + 2)
      0004C6 8E 82            [24] 2141 	mov	dpl,r6
      0004C8 8F 83            [24] 2142 	mov	dph,r7
      0004CA 8D F0            [24] 2143 	mov	b,r5
      0004CC 12 0E 8E         [24] 2144 	lcall	__gptrget
      0004CF F5 82            [12] 2145 	mov	dpl,a
      0004D1 12 04 38         [24] 2146 	lcall	_i2c_write_and_stop
                           000403  2147 	C$i2c.h$263$1$106 ==.
                                   2148 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:263: EA = 1;                     //Re-Enable interrupts
      0004D4 D2 AF            [12] 2149 	setb	_EA
                           000405  2150 	C$i2c.h$264$1$106 ==.
                           000405  2151 	XG$i2c_write_data$0$0 ==.
      0004D6 22               [24] 2152 	ret
                                   2153 ;------------------------------------------------------------
                                   2154 ;Allocation info for local variables in function 'i2c_read_data'
                                   2155 ;------------------------------------------------------------
                                   2156 ;start_reg                 Allocated with name '_i2c_read_data_PARM_2'
                                   2157 ;buffer                    Allocated with name '_i2c_read_data_PARM_3'
                                   2158 ;num_bytes                 Allocated with name '_i2c_read_data_PARM_4'
                                   2159 ;addr                      Allocated to registers r7 
                                   2160 ;j                         Allocated to registers 
                                   2161 ;------------------------------------------------------------
                           000406  2162 	G$i2c_read_data$0$0 ==.
                           000406  2163 	C$i2c.h$267$1$106 ==.
                                   2164 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:267: void i2c_read_data(unsigned char addr, unsigned char start_reg, unsigned char *buffer, unsigned char num_bytes)
                                   2165 ;	-----------------------------------------
                                   2166 ;	 function i2c_read_data
                                   2167 ;	-----------------------------------------
      0004D7                       2168 _i2c_read_data:
      0004D7 AF 82            [24] 2169 	mov	r7,dpl
                           000408  2170 	C$i2c.h$271$1$108 ==.
                                   2171 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:271: EA = 0;                     //Don't allow interrupts during I2C work
      0004D9 C2 AF            [12] 2172 	clr	_EA
                           00040A  2173 	C$i2c.h$272$1$108 ==.
                                   2174 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:272: i2c_start();                //Start I2C transfer
      0004DB C0 07            [24] 2175 	push	ar7
      0004DD 12 04 22         [24] 2176 	lcall	_i2c_start
      0004E0 D0 07            [24] 2177 	pop	ar7
                           000411  2178 	C$i2c.h$273$1$108 ==.
                                   2179 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:273: i2c_write(addr & ~0x01);    //Write address of device that will be written to, send 0
      0004E2 74 FE            [12] 2180 	mov	a,#0xfe
      0004E4 5F               [12] 2181 	anl	a,r7
      0004E5 F5 82            [12] 2182 	mov	dpl,a
      0004E7 C0 07            [24] 2183 	push	ar7
      0004E9 12 04 2F         [24] 2184 	lcall	_i2c_write
                           00041B  2185 	C$i2c.h$274$1$108 ==.
                                   2186 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:274: i2c_write_and_stop(start_reg); //Write & stop the 1st register to be read
      0004EC 85 31 82         [24] 2187 	mov	dpl,_i2c_read_data_PARM_2
      0004EF 12 04 38         [24] 2188 	lcall	_i2c_write_and_stop
                           000421  2189 	C$i2c.h$275$1$108 ==.
                                   2190 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:275: i2c_start();                //Start I2C transfer
      0004F2 12 04 22         [24] 2191 	lcall	_i2c_start
      0004F5 D0 07            [24] 2192 	pop	ar7
                           000426  2193 	C$i2c.h$276$1$108 ==.
                                   2194 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:276: i2c_write(addr | 0x01);     //Write address again, this time indicating a read operation
      0004F7 74 01            [12] 2195 	mov	a,#0x01
      0004F9 4F               [12] 2196 	orl	a,r7
      0004FA F5 82            [12] 2197 	mov	dpl,a
      0004FC 12 04 2F         [24] 2198 	lcall	_i2c_write
                           00042E  2199 	C$i2c.h$277$1$108 ==.
                                   2200 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:277: for(j = 0; j < num_bytes - 1; j++)
      0004FF 7F 00            [12] 2201 	mov	r7,#0x00
      000501                       2202 00103$:
      000501 AD 35            [24] 2203 	mov	r5,_i2c_read_data_PARM_4
      000503 7E 00            [12] 2204 	mov	r6,#0x00
      000505 1D               [12] 2205 	dec	r5
      000506 BD FF 01         [24] 2206 	cjne	r5,#0xff,00114$
      000509 1E               [12] 2207 	dec	r6
      00050A                       2208 00114$:
      00050A 8F 03            [24] 2209 	mov	ar3,r7
      00050C 7C 00            [12] 2210 	mov	r4,#0x00
      00050E C3               [12] 2211 	clr	c
      00050F EB               [12] 2212 	mov	a,r3
      000510 9D               [12] 2213 	subb	a,r5
      000511 EC               [12] 2214 	mov	a,r4
      000512 64 80            [12] 2215 	xrl	a,#0x80
      000514 8E F0            [24] 2216 	mov	b,r6
      000516 63 F0 80         [24] 2217 	xrl	b,#0x80
      000519 95 F0            [12] 2218 	subb	a,b
      00051B 50 2E            [24] 2219 	jnc	00101$
                           00044C  2220 	C$i2c.h$279$2$109 ==.
                                   2221 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:279: AA = 1;                 //Set acknowledge bit
      00051D D2 C2            [12] 2222 	setb	_AA
                           00044E  2223 	C$i2c.h$280$2$109 ==.
                                   2224 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:280: buffer[j] = i2c_read(); //Read data, save it in buffer
      00051F EF               [12] 2225 	mov	a,r7
      000520 25 32            [12] 2226 	add	a,_i2c_read_data_PARM_3
      000522 FC               [12] 2227 	mov	r4,a
      000523 E4               [12] 2228 	clr	a
      000524 35 33            [12] 2229 	addc	a,(_i2c_read_data_PARM_3 + 1)
      000526 FD               [12] 2230 	mov	r5,a
      000527 AE 34            [24] 2231 	mov	r6,(_i2c_read_data_PARM_3 + 2)
      000529 C0 07            [24] 2232 	push	ar7
      00052B C0 06            [24] 2233 	push	ar6
      00052D C0 05            [24] 2234 	push	ar5
      00052F C0 04            [24] 2235 	push	ar4
      000531 12 04 43         [24] 2236 	lcall	_i2c_read
      000534 AB 82            [24] 2237 	mov	r3,dpl
      000536 D0 04            [24] 2238 	pop	ar4
      000538 D0 05            [24] 2239 	pop	ar5
      00053A D0 06            [24] 2240 	pop	ar6
      00053C D0 07            [24] 2241 	pop	ar7
      00053E 8C 82            [24] 2242 	mov	dpl,r4
      000540 8D 83            [24] 2243 	mov	dph,r5
      000542 8E F0            [24] 2244 	mov	b,r6
      000544 EB               [12] 2245 	mov	a,r3
      000545 12 07 3C         [24] 2246 	lcall	__gptrput
                           000477  2247 	C$i2c.h$277$1$108 ==.
                                   2248 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:277: for(j = 0; j < num_bytes - 1; j++)
      000548 0F               [12] 2249 	inc	r7
      000549 80 B6            [24] 2250 	sjmp	00103$
      00054B                       2251 00101$:
                           00047A  2252 	C$i2c.h$282$1$108 ==.
                                   2253 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:282: AA = 0;
      00054B C2 C2            [12] 2254 	clr	_AA
                           00047C  2255 	C$i2c.h$283$1$108 ==.
                                   2256 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:283: buffer[num_bytes - 1] = i2c_read_and_stop(); //Read the last byte and stop, save it in the buffer
      00054D AE 35            [24] 2257 	mov	r6,_i2c_read_data_PARM_4
      00054F 7F 00            [12] 2258 	mov	r7,#0x00
      000551 1E               [12] 2259 	dec	r6
      000552 BE FF 01         [24] 2260 	cjne	r6,#0xff,00116$
      000555 1F               [12] 2261 	dec	r7
      000556                       2262 00116$:
      000556 EE               [12] 2263 	mov	a,r6
      000557 25 32            [12] 2264 	add	a,_i2c_read_data_PARM_3
      000559 FE               [12] 2265 	mov	r6,a
      00055A EF               [12] 2266 	mov	a,r7
      00055B 35 33            [12] 2267 	addc	a,(_i2c_read_data_PARM_3 + 1)
      00055D FF               [12] 2268 	mov	r7,a
      00055E AD 34            [24] 2269 	mov	r5,(_i2c_read_data_PARM_3 + 2)
      000560 C0 07            [24] 2270 	push	ar7
      000562 C0 06            [24] 2271 	push	ar6
      000564 C0 05            [24] 2272 	push	ar5
      000566 12 04 4C         [24] 2273 	lcall	_i2c_read_and_stop
      000569 AC 82            [24] 2274 	mov	r4,dpl
      00056B D0 05            [24] 2275 	pop	ar5
      00056D D0 06            [24] 2276 	pop	ar6
      00056F D0 07            [24] 2277 	pop	ar7
      000571 8E 82            [24] 2278 	mov	dpl,r6
      000573 8F 83            [24] 2279 	mov	dph,r7
      000575 8D F0            [24] 2280 	mov	b,r5
      000577 EC               [12] 2281 	mov	a,r4
      000578 12 07 3C         [24] 2282 	lcall	__gptrput
                           0004AA  2283 	C$i2c.h$284$1$108 ==.
                                   2284 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:284: EA = 1;                     //Re-Enable interrupts
      00057B D2 AF            [12] 2285 	setb	_EA
                           0004AC  2286 	C$i2c.h$285$1$108 ==.
                           0004AC  2287 	XG$i2c_read_data$0$0 ==.
      00057D 22               [24] 2288 	ret
                                   2289 ;------------------------------------------------------------
                                   2290 ;Allocation info for local variables in function 'Accel_Init'
                                   2291 ;------------------------------------------------------------
                           0004AD  2292 	G$Accel_Init$0$0 ==.
                           0004AD  2293 	C$i2c.h$294$1$108 ==.
                                   2294 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:294: void Accel_Init(void)
                                   2295 ;	-----------------------------------------
                                   2296 ;	 function Accel_Init
                                   2297 ;	-----------------------------------------
      00057E                       2298 _Accel_Init:
                           0004AD  2299 	C$i2c.h$298$1$111 ==.
                                   2300 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:298: Data2[0]=0x23;  //normal power mode, 50Hz ODR, y & x axes enabled
      00057E 75 22 23         [24] 2301 	mov	_Data2,#0x23
                           0004B0  2302 	C$i2c.h$300$1$111 ==.
                                   2303 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:300: Data2[1]=0x00;  //default - no filtering
      000581 75 23 00         [24] 2304 	mov	(_Data2 + 0x0001),#0x00
                           0004B3  2305 	C$i2c.h$301$1$111 ==.
                                   2306 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:301: Data2[1]=0x10;  //filtered data selected, HPF = 1.0->0.125Hz
      000584 75 23 10         [24] 2307 	mov	(_Data2 + 0x0001),#0x10
                           0004B6  2308 	C$i2c.h$302$1$111 ==.
                                   2309 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:302: Data2[2]=0x00;  //default - no interrupts enabled
      000587 75 24 00         [24] 2310 	mov	(_Data2 + 0x0002),#0x00
                           0004B9  2311 	C$i2c.h$304$1$111 ==.
                                   2312 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:304: i2c_write_data(addr_accel, 0x20, Data2, 1);
      00058A 75 2D 22         [24] 2313 	mov	_i2c_write_data_PARM_3,#_Data2
      00058D 75 2E 00         [24] 2314 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      000590 75 2F 40         [24] 2315 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      000593 75 2C 20         [24] 2316 	mov	_i2c_write_data_PARM_2,#0x20
      000596 75 30 01         [24] 2317 	mov	_i2c_write_data_PARM_4,#0x01
      000599 75 82 30         [24] 2318 	mov	dpl,#0x30
      00059C 12 04 5D         [24] 2319 	lcall	_i2c_write_data
                           0004CE  2320 	C$i2c.h$310$1$111 ==.
                           0004CE  2321 	XG$Accel_Init$0$0 ==.
      00059F 22               [24] 2322 	ret
                                   2323 ;------------------------------------------------------------
                                   2324 ;Allocation info for local variables in function 'Accel_Init_C'
                                   2325 ;------------------------------------------------------------
                           0004CF  2326 	G$Accel_Init_C$0$0 ==.
                           0004CF  2327 	C$i2c.h$313$1$111 ==.
                                   2328 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:313: void Accel_Init_C(void)
                                   2329 ;	-----------------------------------------
                                   2330 ;	 function Accel_Init_C
                                   2331 ;	-----------------------------------------
      0005A0                       2332 _Accel_Init_C:
                           0004CF  2333 	C$i2c.h$318$1$113 ==.
                                   2334 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:318: Data2[0]=0x04;  //set register address auto increment bit
      0005A0 75 22 04         [24] 2335 	mov	_Data2,#0x04
                           0004D2  2336 	C$i2c.h$319$1$113 ==.
                                   2337 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:319: i2c_write_data(addr_accelC, 0x23, Data2, 1);
      0005A3 75 2D 22         [24] 2338 	mov	_i2c_write_data_PARM_3,#_Data2
      0005A6 75 2E 00         [24] 2339 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0005A9 75 2F 40         [24] 2340 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0005AC 75 2C 23         [24] 2341 	mov	_i2c_write_data_PARM_2,#0x23
      0005AF 75 30 01         [24] 2342 	mov	_i2c_write_data_PARM_4,#0x01
      0005B2 75 82 3A         [24] 2343 	mov	dpl,#0x3a
      0005B5 12 04 5D         [24] 2344 	lcall	_i2c_write_data
                           0004E7  2345 	C$i2c.h$321$1$113 ==.
                                   2346 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:321: Data2[0]=0x6B;  //R20 normal power mode, 800Hz ODR, y & x axes enabled
      0005B8 75 22 6B         [24] 2347 	mov	_Data2,#0x6b
                           0004EA  2348 	C$i2c.h$323$1$113 ==.
                                   2349 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:323: Data2[1]=0x00;  //R21 Default - no HP filtering
      0005BB 75 23 00         [24] 2350 	mov	(_Data2 + 0x0001),#0x00
                           0004ED  2351 	C$i2c.h$325$1$113 ==.
                                   2352 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:325: Data2[2]=0x00;  //R22 Default - no interrupts enabled
      0005BE 75 24 00         [24] 2353 	mov	(_Data2 + 0x0002),#0x00
                           0004F0  2354 	C$i2c.h$326$1$113 ==.
                                   2355 ;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:326: i2c_write_data(addr_accelC, 0x20, Data2, 1);
      0005C1 75 2D 22         [24] 2356 	mov	_i2c_write_data_PARM_3,#_Data2
      0005C4 75 2E 00         [24] 2357 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      0005C7 75 2F 40         [24] 2358 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      0005CA 75 2C 20         [24] 2359 	mov	_i2c_write_data_PARM_2,#0x20
      0005CD 75 30 01         [24] 2360 	mov	_i2c_write_data_PARM_4,#0x01
      0005D0 75 82 3A         [24] 2361 	mov	dpl,#0x3a
      0005D3 12 04 5D         [24] 2362 	lcall	_i2c_write_data
                           000505  2363 	C$i2c.h$328$1$113 ==.
                           000505  2364 	XG$Accel_Init_C$0$0 ==.
      0005D6 22               [24] 2365 	ret
                                   2366 ;------------------------------------------------------------
                                   2367 ;Allocation info for local variables in function 'main'
                                   2368 ;------------------------------------------------------------
                           000506  2369 	G$main$0$0 ==.
                           000506  2370 	C$lab3_1.c$51$1$113 ==.
                                   2371 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:51: void main(void)
                                   2372 ;	-----------------------------------------
                                   2373 ;	 function main
                                   2374 ;	-----------------------------------------
      0005D7                       2375 _main:
                           000506  2376 	C$lab3_1.c$54$1$119 ==.
                                   2377 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:54: Sys_Init();
      0005D7 12 01 08         [24] 2378 	lcall	_Sys_Init
                           000509  2379 	C$lab3_1.c$55$1$119 ==.
                                   2380 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:55: putchar(' '); //the quotes in this line may not format correctly
      0005DA 75 82 20         [24] 2381 	mov	dpl,#0x20
      0005DD 12 01 1B         [24] 2382 	lcall	_putchar
                           00050F  2383 	C$lab3_1.c$56$1$119 ==.
                                   2384 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:56: Port_Init();
      0005E0 12 06 4E         [24] 2385 	lcall	_Port_Init
                           000512  2386 	C$lab3_1.c$57$1$119 ==.
                                   2387 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:57: XBR0_Init();
      0005E3 12 06 52         [24] 2388 	lcall	_XBR0_Init
                           000515  2389 	C$lab3_1.c$58$1$119 ==.
                                   2390 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:58: PCA_Init();
      0005E6 12 06 56         [24] 2391 	lcall	_PCA_Init
                           000518  2392 	C$lab3_1.c$59$1$119 ==.
                                   2393 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:59: SMB_Init();
      0005E9 12 06 65         [24] 2394 	lcall	_SMB_Init
                           00051B  2395 	C$lab3_1.c$62$1$119 ==.
                                   2396 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:62: printf("Embedded Control Pulsewidth Calibration\n");
      0005EC 74 D7            [12] 2397 	mov	a,#___str_3
      0005EE C0 E0            [24] 2398 	push	acc
      0005F0 74 0E            [12] 2399 	mov	a,#(___str_3 >> 8)
      0005F2 C0 E0            [24] 2400 	push	acc
      0005F4 74 80            [12] 2401 	mov	a,#0x80
      0005F6 C0 E0            [24] 2402 	push	acc
      0005F8 12 08 93         [24] 2403 	lcall	_printf
      0005FB 15 81            [12] 2404 	dec	sp
      0005FD 15 81            [12] 2405 	dec	sp
      0005FF 15 81            [12] 2406 	dec	sp
                           000530  2407 	C$lab3_1.c$66$1$119 ==.
                                   2408 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:66: PW = PW_CENTER;
      000601 85 36 3C         [24] 2409 	mov	_PW,_PW_CENTER
      000604 85 37 3D         [24] 2410 	mov	(_PW + 1),(_PW_CENTER + 1)
                           000536  2411 	C$lab3_1.c$73$1$119 ==.
                                   2412 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:73: while (1)
      000607                       2413 00104$:
                           000536  2414 	C$lab3_1.c$74$2$120 ==.
                                   2415 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:74: { if (new_light)
      000607 E5 42            [12] 2416 	mov	a,_new_light
      000609 60 FC            [24] 2417 	jz	00104$
                           00053A  2418 	C$lab3_1.c$76$3$121 ==.
                                   2419 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:76: read = ReadRanger();//read the ranger
      00060B 12 07 1E         [24] 2420 	lcall	_ReadRanger
      00060E 85 82 43         [24] 2421 	mov	_read,dpl
      000611 85 83 44         [24] 2422 	mov	(_read + 1),dph
                           000543  2423 	C$lab3_1.c$79$3$121 ==.
                                   2424 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:79: Data[0] = 0x51; // write 0x51 to reg 0 of the ranger:
      000614 75 45 51         [24] 2425 	mov	(_Data + 0),#0x51
      000617 75 46 00         [24] 2426 	mov	(_Data + 1),#0x00
                           000549  2427 	C$lab3_1.c$80$3$121 ==.
                                   2428 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:80: i2c_write_data(addr, 0, Data, 1); // write one byte of data to reg 0 at addr
      00061A 75 2D 45         [24] 2429 	mov	_i2c_write_data_PARM_3,#_Data
      00061D 75 2E 00         [24] 2430 	mov	(_i2c_write_data_PARM_3 + 1),#0x00
      000620 75 2F 40         [24] 2431 	mov	(_i2c_write_data_PARM_3 + 2),#0x40
      000623 75 2C 00         [24] 2432 	mov	_i2c_write_data_PARM_2,#0x00
      000626 75 30 01         [24] 2433 	mov	_i2c_write_data_PARM_4,#0x01
      000629 85 40 82         [24] 2434 	mov	dpl,_addr
      00062C 12 04 5D         [24] 2435 	lcall	_i2c_write_data
                           00055E  2436 	C$lab3_1.c$82$3$121 ==.
                                   2437 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:82: new_light = 0; //reset the 80ms flag
      00062F 75 42 00         [24] 2438 	mov	_new_light,#0x00
                           000561  2439 	C$lab3_1.c$83$3$121 ==.
                                   2440 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:83: printf("\r%d\n", read); //print the light
      000632 C0 43            [24] 2441 	push	_read
      000634 C0 44            [24] 2442 	push	(_read + 1)
      000636 74 00            [12] 2443 	mov	a,#___str_4
      000638 C0 E0            [24] 2444 	push	acc
      00063A 74 0F            [12] 2445 	mov	a,#(___str_4 >> 8)
      00063C C0 E0            [24] 2446 	push	acc
      00063E 74 80            [12] 2447 	mov	a,#0x80
      000640 C0 E0            [24] 2448 	push	acc
      000642 12 08 93         [24] 2449 	lcall	_printf
      000645 E5 81            [12] 2450 	mov	a,sp
      000647 24 FB            [12] 2451 	add	a,#0xfb
      000649 F5 81            [12] 2452 	mov	sp,a
      00064B 80 BA            [24] 2453 	sjmp	00104$
                           00057C  2454 	C$lab3_1.c$87$1$119 ==.
                           00057C  2455 	XG$main$0$0 ==.
      00064D 22               [24] 2456 	ret
                                   2457 ;------------------------------------------------------------
                                   2458 ;Allocation info for local variables in function 'Port_Init'
                                   2459 ;------------------------------------------------------------
                           00057D  2460 	G$Port_Init$0$0 ==.
                           00057D  2461 	C$lab3_1.c$95$1$119 ==.
                                   2462 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:95: void Port_Init()
                                   2463 ;	-----------------------------------------
                                   2464 ;	 function Port_Init
                                   2465 ;	-----------------------------------------
      00064E                       2466 _Port_Init:
                           00057D  2467 	C$lab3_1.c$97$1$122 ==.
                                   2468 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:97: P1MDOUT |= 0x08;  //set output pin for CEX0, CEX2, CEX3
      00064E 43 A5 08         [24] 2469 	orl	_P1MDOUT,#0x08
                           000580  2470 	C$lab3_1.c$98$1$122 ==.
                           000580  2471 	XG$Port_Init$0$0 ==.
      000651 22               [24] 2472 	ret
                                   2473 ;------------------------------------------------------------
                                   2474 ;Allocation info for local variables in function 'XBR0_Init'
                                   2475 ;------------------------------------------------------------
                           000581  2476 	G$XBR0_Init$0$0 ==.
                           000581  2477 	C$lab3_1.c$106$1$122 ==.
                                   2478 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:106: void XBR0_Init()
                                   2479 ;	-----------------------------------------
                                   2480 ;	 function XBR0_Init
                                   2481 ;	-----------------------------------------
      000652                       2482 _XBR0_Init:
                           000581  2483 	C$lab3_1.c$108$1$123 ==.
                                   2484 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:108: XBR0 = 0x27;  //configure crossbar as directed in the laboratory
      000652 75 E1 27         [24] 2485 	mov	_XBR0,#0x27
                           000584  2486 	C$lab3_1.c$109$1$123 ==.
                           000584  2487 	XG$XBR0_Init$0$0 ==.
      000655 22               [24] 2488 	ret
                                   2489 ;------------------------------------------------------------
                                   2490 ;Allocation info for local variables in function 'PCA_Init'
                                   2491 ;------------------------------------------------------------
                           000585  2492 	G$PCA_Init$0$0 ==.
                           000585  2493 	C$lab3_1.c$117$1$123 ==.
                                   2494 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:117: void PCA_Init(void)
                                   2495 ;	-----------------------------------------
                                   2496 ;	 function PCA_Init
                                   2497 ;	-----------------------------------------
      000656                       2498 _PCA_Init:
                           000585  2499 	C$lab3_1.c$121$1$125 ==.
                                   2500 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:121: PCA0MD = 0x81; // SYSCLK/12
      000656 75 D9 81         [24] 2501 	mov	_PCA0MD,#0x81
                           000588  2502 	C$lab3_1.c$122$1$125 ==.
                                   2503 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:122: PCA0CN = 0x40; //enable PCA0 counter
      000659 75 D8 40         [24] 2504 	mov	_PCA0CN,#0x40
                           00058B  2505 	C$lab3_1.c$123$1$125 ==.
                                   2506 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:123: EIE1 |= 0x08;  //enable PCA interrupt
      00065C 43 E6 08         [24] 2507 	orl	_EIE1,#0x08
                           00058E  2508 	C$lab3_1.c$124$1$125 ==.
                                   2509 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:124: EA = 1;        //enable GLobal Interrupt
      00065F D2 AF            [12] 2510 	setb	_EA
                           000590  2511 	C$lab3_1.c$126$1$125 ==.
                                   2512 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:126: PCA0CPM3 = 0xC2;
      000661 75 DD C2         [24] 2513 	mov	_PCA0CPM3,#0xc2
                           000593  2514 	C$lab3_1.c$128$1$125 ==.
                           000593  2515 	XG$PCA_Init$0$0 ==.
      000664 22               [24] 2516 	ret
                                   2517 ;------------------------------------------------------------
                                   2518 ;Allocation info for local variables in function 'SMB_Init'
                                   2519 ;------------------------------------------------------------
                           000594  2520 	G$SMB_Init$0$0 ==.
                           000594  2521 	C$lab3_1.c$136$1$125 ==.
                                   2522 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:136: void SMB_Init(void)
                                   2523 ;	-----------------------------------------
                                   2524 ;	 function SMB_Init
                                   2525 ;	-----------------------------------------
      000665                       2526 _SMB_Init:
                           000594  2527 	C$lab3_1.c$138$1$127 ==.
                                   2528 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:138: ENSMB = 1; //enable SMB
      000665 D2 C6            [12] 2529 	setb	_ENSMB
                           000596  2530 	C$lab3_1.c$139$1$127 ==.
                                   2531 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:139: SMB0CR = 0x93; //Set clock
      000667 75 CF 93         [24] 2532 	mov	_SMB0CR,#0x93
                           000599  2533 	C$lab3_1.c$140$1$127 ==.
                           000599  2534 	XG$SMB_Init$0$0 ==.
      00066A 22               [24] 2535 	ret
                                   2536 ;------------------------------------------------------------
                                   2537 ;Allocation info for local variables in function 'PCA_ISR'
                                   2538 ;------------------------------------------------------------
                           00059A  2539 	G$PCA_ISR$0$0 ==.
                           00059A  2540 	C$lab3_1.c$148$1$127 ==.
                                   2541 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:148: void PCA_ISR ( void ) __interrupt 9
                                   2542 ;	-----------------------------------------
                                   2543 ;	 function PCA_ISR
                                   2544 ;	-----------------------------------------
      00066B                       2545 _PCA_ISR:
      00066B C0 E0            [24] 2546 	push	acc
      00066D C0 07            [24] 2547 	push	ar7
      00066F C0 06            [24] 2548 	push	ar6
      000671 C0 05            [24] 2549 	push	ar5
      000673 C0 04            [24] 2550 	push	ar4
      000675 C0 D0            [24] 2551 	push	psw
      000677 75 D0 00         [24] 2552 	mov	psw,#0x00
                           0005A9  2553 	C$lab3_1.c$153$1$129 ==.
                                   2554 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:153: PCA0 = 65535 - PCA_start;       // start count for 20ms
      00067A AC 3E            [24] 2555 	mov	r4,_PCA_start
      00067C AD 3F            [24] 2556 	mov	r5,(_PCA_start + 1)
      00067E E4               [12] 2557 	clr	a
      00067F FE               [12] 2558 	mov	r6,a
      000680 FF               [12] 2559 	mov	r7,a
      000681 74 FF            [12] 2560 	mov	a,#0xff
      000683 C3               [12] 2561 	clr	c
      000684 9C               [12] 2562 	subb	a,r4
      000685 FC               [12] 2563 	mov	r4,a
      000686 74 FF            [12] 2564 	mov	a,#0xff
      000688 9D               [12] 2565 	subb	a,r5
      000689 FD               [12] 2566 	mov	r5,a
      00068A E4               [12] 2567 	clr	a
      00068B 9E               [12] 2568 	subb	a,r6
      00068C FE               [12] 2569 	mov	r6,a
      00068D E4               [12] 2570 	clr	a
      00068E 9F               [12] 2571 	subb	a,r7
      00068F FF               [12] 2572 	mov	r7,a
      000690 8C E9            [24] 2573 	mov	((_PCA0 >> 0) & 0xFF),r4
      000692 8D F9            [24] 2574 	mov	((_PCA0 >> 8) & 0xFF),r5
                           0005C3  2575 	C$lab3_1.c$156$1$129 ==.
                                   2576 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:156: CF = 0;                 // Very important - clear interrupt flag
      000694 C2 DF            [12] 2577 	clr	_CF
                           0005C5  2578 	C$lab3_1.c$159$1$129 ==.
                                   2579 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:159: l_count++;
      000696 05 41            [12] 2580 	inc	_l_count
                           0005C7  2581 	C$lab3_1.c$161$1$129 ==.
                                   2582 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:161: if(l_count>4)
      000698 E5 41            [12] 2583 	mov	a,_l_count
      00069A 24 FB            [12] 2584 	add	a,#0xff - 0x04
      00069C 50 06            [24] 2585 	jnc	00103$
                           0005CD  2586 	C$lab3_1.c$163$2$130 ==.
                                   2587 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:163: new_light = 1; // at least 4 overflows is about 80 ms
      00069E 75 42 01         [24] 2588 	mov	_new_light,#0x01
                           0005D0  2589 	C$lab3_1.c$164$2$130 ==.
                                   2590 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:164: l_count = 0;
      0006A1 75 41 00         [24] 2591 	mov	_l_count,#0x00
      0006A4                       2592 00103$:
      0006A4 D0 D0            [24] 2593 	pop	psw
      0006A6 D0 04            [24] 2594 	pop	ar4
      0006A8 D0 05            [24] 2595 	pop	ar5
      0006AA D0 06            [24] 2596 	pop	ar6
      0006AC D0 07            [24] 2597 	pop	ar7
      0006AE D0 E0            [24] 2598 	pop	acc
                           0005DF  2599 	C$lab3_1.c$167$1$129 ==.
                           0005DF  2600 	XG$PCA_ISR$0$0 ==.
      0006B0 32               [24] 2601 	reti
                                   2602 ;	eliminated unneeded push/pop dpl
                                   2603 ;	eliminated unneeded push/pop dph
                                   2604 ;	eliminated unneeded push/pop b
                                   2605 ;------------------------------------------------------------
                                   2606 ;Allocation info for local variables in function 'Set_Pulsewidth'
                                   2607 ;------------------------------------------------------------
                                   2608 ;input                     Allocated to registers r7 
                                   2609 ;------------------------------------------------------------
                           0005E0  2610 	G$Set_Pulsewidth$0$0 ==.
                           0005E0  2611 	C$lab3_1.c$169$1$129 ==.
                                   2612 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:169: void Set_Pulsewidth()
                                   2613 ;	-----------------------------------------
                                   2614 ;	 function Set_Pulsewidth
                                   2615 ;	-----------------------------------------
      0006B1                       2616 _Set_Pulsewidth:
                           0005E0  2617 	C$lab3_1.c$173$1$131 ==.
                                   2618 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:173: input = getchar();
      0006B1 12 01 25         [24] 2619 	lcall	_getchar
      0006B4 AF 82            [24] 2620 	mov	r7,dpl
                           0005E5  2621 	C$lab3_1.c$174$1$131 ==.
                                   2622 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:174: if(input == 'd')  // single character input to increase the pulsewidth
      0006B6 BF 64 1E         [24] 2623 	cjne	r7,#0x64,00108$
                           0005E8  2624 	C$lab3_1.c$176$2$132 ==.
                                   2625 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:176: PW += 200;
      0006B9 74 C8            [12] 2626 	mov	a,#0xc8
      0006BB 25 3C            [12] 2627 	add	a,_PW
      0006BD F5 3C            [12] 2628 	mov	_PW,a
      0006BF E4               [12] 2629 	clr	a
      0006C0 35 3D            [12] 2630 	addc	a,(_PW + 1)
      0006C2 F5 3D            [12] 2631 	mov	(_PW + 1),a
                           0005F3  2632 	C$lab3_1.c$178$2$132 ==.
                                   2633 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:178: if(PW > PW_MAX)  // check if greater than pulsewidth maximum
      0006C4 C3               [12] 2634 	clr	c
      0006C5 E5 3A            [12] 2635 	mov	a,_PW_MAX
      0006C7 95 3C            [12] 2636 	subb	a,_PW
      0006C9 E5 3B            [12] 2637 	mov	a,(_PW_MAX + 1)
      0006CB 95 3D            [12] 2638 	subb	a,(_PW + 1)
      0006CD 50 28            [24] 2639 	jnc	00109$
                           0005FE  2640 	C$lab3_1.c$180$3$133 ==.
                                   2641 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:180: PW = PW_MAX;    // set PW to the maximum value
      0006CF 85 3A 3C         [24] 2642 	mov	_PW,_PW_MAX
      0006D2 85 3B 3D         [24] 2643 	mov	(_PW + 1),(_PW_MAX + 1)
      0006D5 80 20            [24] 2644 	sjmp	00109$
      0006D7                       2645 00108$:
                           000606  2646 	C$lab3_1.c$183$1$131 ==.
                                   2647 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:183: else if(input == 'b')  // single character input to decrease the pulsewidth
      0006D7 BF 62 1D         [24] 2648 	cjne	r7,#0x62,00109$
                           000609  2649 	C$lab3_1.c$185$2$134 ==.
                                   2650 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:185: PW -= 200;
      0006DA E5 3C            [12] 2651 	mov	a,_PW
      0006DC 24 38            [12] 2652 	add	a,#0x38
      0006DE F5 3C            [12] 2653 	mov	_PW,a
      0006E0 E5 3D            [12] 2654 	mov	a,(_PW + 1)
      0006E2 34 FF            [12] 2655 	addc	a,#0xff
      0006E4 F5 3D            [12] 2656 	mov	(_PW + 1),a
                           000615  2657 	C$lab3_1.c$187$2$134 ==.
                                   2658 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:187: if(PW < PW_MIN)
      0006E6 C3               [12] 2659 	clr	c
      0006E7 E5 3C            [12] 2660 	mov	a,_PW
      0006E9 95 38            [12] 2661 	subb	a,_PW_MIN
      0006EB E5 3D            [12] 2662 	mov	a,(_PW + 1)
      0006ED 95 39            [12] 2663 	subb	a,(_PW_MIN + 1)
      0006EF 50 06            [24] 2664 	jnc	00109$
                           000620  2665 	C$lab3_1.c$189$3$135 ==.
                                   2666 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:189: PW = PW_MIN;     // set PW to the minimum value
      0006F1 85 38 3C         [24] 2667 	mov	_PW,_PW_MIN
      0006F4 85 39 3D         [24] 2668 	mov	(_PW + 1),(_PW_MIN + 1)
      0006F7                       2669 00109$:
                           000626  2670 	C$lab3_1.c$193$1$131 ==.
                                   2671 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:193: printf("\rPW: %u\n", PW);
      0006F7 C0 3C            [24] 2672 	push	_PW
      0006F9 C0 3D            [24] 2673 	push	(_PW + 1)
      0006FB 74 05            [12] 2674 	mov	a,#___str_5
      0006FD C0 E0            [24] 2675 	push	acc
      0006FF 74 0F            [12] 2676 	mov	a,#(___str_5 >> 8)
      000701 C0 E0            [24] 2677 	push	acc
      000703 74 80            [12] 2678 	mov	a,#0x80
      000705 C0 E0            [24] 2679 	push	acc
      000707 12 08 93         [24] 2680 	lcall	_printf
      00070A E5 81            [12] 2681 	mov	a,sp
      00070C 24 FB            [12] 2682 	add	a,#0xfb
      00070E F5 81            [12] 2683 	mov	sp,a
                           00063F  2684 	C$lab3_1.c$194$1$131 ==.
                                   2685 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:194: PCA0CP3 = 0xFFFF - PW;
      000710 74 FF            [12] 2686 	mov	a,#0xff
      000712 C3               [12] 2687 	clr	c
      000713 95 3C            [12] 2688 	subb	a,_PW
      000715 F5 ED            [12] 2689 	mov	((_PCA0CP3 >> 0) & 0xFF),a
      000717 74 FF            [12] 2690 	mov	a,#0xff
      000719 95 3D            [12] 2691 	subb	a,(_PW + 1)
      00071B F5 FD            [12] 2692 	mov	((_PCA0CP3 >> 8) & 0xFF),a
                           00064C  2693 	C$lab3_1.c$196$1$131 ==.
                           00064C  2694 	XG$Set_Pulsewidth$0$0 ==.
      00071D 22               [24] 2695 	ret
                                   2696 ;------------------------------------------------------------
                                   2697 ;Allocation info for local variables in function 'ReadRanger'
                                   2698 ;------------------------------------------------------------
                                   2699 ;Data                      Allocated with name '_ReadRanger_Data_1_136'
                                   2700 ;light                     Allocated to registers r6 r7 
                                   2701 ;------------------------------------------------------------
                           00064D  2702 	G$ReadRanger$0$0 ==.
                           00064D  2703 	C$lab3_1.c$198$1$131 ==.
                                   2704 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:198: unsigned int ReadRanger()
                                   2705 ;	-----------------------------------------
                                   2706 ;	 function ReadRanger
                                   2707 ;	-----------------------------------------
      00071E                       2708 _ReadRanger:
                           00064D  2709 	C$lab3_1.c$202$1$136 ==.
                                   2710 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:202: i2c_read_data(addr, 1, Data, 1); // read one byte, starting at reg 1
      00071E 75 32 4B         [24] 2711 	mov	_i2c_read_data_PARM_3,#_ReadRanger_Data_1_136
      000721 75 33 00         [24] 2712 	mov	(_i2c_read_data_PARM_3 + 1),#0x00
      000724 75 34 40         [24] 2713 	mov	(_i2c_read_data_PARM_3 + 2),#0x40
      000727 75 31 01         [24] 2714 	mov	_i2c_read_data_PARM_2,#0x01
      00072A 75 35 01         [24] 2715 	mov	_i2c_read_data_PARM_4,#0x01
      00072D 85 40 82         [24] 2716 	mov	dpl,_addr
      000730 12 04 D7         [24] 2717 	lcall	_i2c_read_data
                           000662  2718 	C$lab3_1.c$203$1$136 ==.
                                   2719 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:203: light = Data[0];
      000733 AE 4B            [24] 2720 	mov	r6,_ReadRanger_Data_1_136
      000735 7F 00            [12] 2721 	mov	r7,#0x00
                           000666  2722 	C$lab3_1.c$204$1$136 ==.
                                   2723 ;	C:\Users\Tim\Documents\LITEC\Lab3-1\lab3-1.c:204: return light;
      000737 8E 82            [24] 2724 	mov	dpl,r6
      000739 8F 83            [24] 2725 	mov	dph,r7
                           00066A  2726 	C$lab3_1.c$205$1$136 ==.
                           00066A  2727 	XG$ReadRanger$0$0 ==.
      00073B 22               [24] 2728 	ret
                                   2729 	.area CSEG    (CODE)
                                   2730 	.area CONST   (CODE)
                           000000  2731 Flab3_1$__str_0$0$0 == .
      000EAE                       2732 ___str_0:
      000EAE 0A                    2733 	.db 0x0a
      000EAF 54 79 70 65 20 64 69  2734 	.ascii "Type digits; end w/#"
             67 69 74 73 3B 20 65
             6E 64 20 77 2F 23
      000EC3 00                    2735 	.db 0x00
                           000016  2736 Flab3_1$__str_1$0$0 == .
      000EC4                       2737 ___str_1:
      000EC4 20 20 20 20 20 25 63  2738 	.ascii "     %c%c%c%c%c"
             25 63 25 63 25 63 25
             63
      000ED3 00                    2739 	.db 0x00
                           000026  2740 Flab3_1$__str_2$0$0 == .
      000ED4                       2741 ___str_2:
      000ED4 25 63                 2742 	.ascii "%c"
      000ED6 00                    2743 	.db 0x00
                           000029  2744 Flab3_1$__str_3$0$0 == .
      000ED7                       2745 ___str_3:
      000ED7 45 6D 62 65 64 64 65  2746 	.ascii "Embedded Control Pulsewidth Calibration"
             64 20 43 6F 6E 74 72
             6F 6C 20 50 75 6C 73
             65 77 69 64 74 68 20
             43 61 6C 69 62 72 61
             74 69 6F 6E
      000EFE 0A                    2747 	.db 0x0a
      000EFF 00                    2748 	.db 0x00
                           000052  2749 Flab3_1$__str_4$0$0 == .
      000F00                       2750 ___str_4:
      000F00 0D                    2751 	.db 0x0d
      000F01 25 64                 2752 	.ascii "%d"
      000F03 0A                    2753 	.db 0x0a
      000F04 00                    2754 	.db 0x00
                           000057  2755 Flab3_1$__str_5$0$0 == .
      000F05                       2756 ___str_5:
      000F05 0D                    2757 	.db 0x0d
      000F06 50 57 3A 20 25 75     2758 	.ascii "PW: %u"
      000F0C 0A                    2759 	.db 0x0a
      000F0D 00                    2760 	.db 0x00
                                   2761 	.area XINIT   (CODE)
                                   2762 	.area CABS    (ABS,CODE)
