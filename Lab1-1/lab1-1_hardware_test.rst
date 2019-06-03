                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module lab1_1_hardware_test
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _putchar
                                     13 	.globl _getchar
                                     14 	.globl _printf
                                     15 	.globl _getchar_nw
                                     16 	.globl _Sys_Init
                                     17 	.globl _UART0_Init
                                     18 	.globl _SYSCLK_Init
                                     19 	.globl _SPIF
                                     20 	.globl _WCOL
                                     21 	.globl _MODF
                                     22 	.globl _RXOVRN
                                     23 	.globl _TXBSY
                                     24 	.globl _SLVSEL
                                     25 	.globl _MSTEN
                                     26 	.globl _SPIEN
                                     27 	.globl _AD0EN
                                     28 	.globl _ADCEN
                                     29 	.globl _AD0TM
                                     30 	.globl _ADCTM
                                     31 	.globl _AD0INT
                                     32 	.globl _ADCINT
                                     33 	.globl _AD0BUSY
                                     34 	.globl _ADBUSY
                                     35 	.globl _AD0CM1
                                     36 	.globl _ADSTM1
                                     37 	.globl _AD0CM0
                                     38 	.globl _ADSTM0
                                     39 	.globl _AD0WINT
                                     40 	.globl _ADWINT
                                     41 	.globl _AD0LJST
                                     42 	.globl _ADLJST
                                     43 	.globl _CF
                                     44 	.globl _CR
                                     45 	.globl _CCF4
                                     46 	.globl _CCF3
                                     47 	.globl _CCF2
                                     48 	.globl _CCF1
                                     49 	.globl _CCF0
                                     50 	.globl _CY
                                     51 	.globl _AC
                                     52 	.globl _F0
                                     53 	.globl _RS1
                                     54 	.globl _RS0
                                     55 	.globl _OV
                                     56 	.globl _F1
                                     57 	.globl _P
                                     58 	.globl _TF2
                                     59 	.globl _EXF2
                                     60 	.globl _RCLK
                                     61 	.globl _TCLK
                                     62 	.globl _EXEN2
                                     63 	.globl _TR2
                                     64 	.globl _CT2
                                     65 	.globl _CPRL2
                                     66 	.globl _BUSY
                                     67 	.globl _ENSMB
                                     68 	.globl _STA
                                     69 	.globl _STO
                                     70 	.globl _SI
                                     71 	.globl _AA
                                     72 	.globl _SMBFTE
                                     73 	.globl _SMBTOE
                                     74 	.globl _PT2
                                     75 	.globl _PS
                                     76 	.globl _PS0
                                     77 	.globl _PT1
                                     78 	.globl _PX1
                                     79 	.globl _PT0
                                     80 	.globl _PX0
                                     81 	.globl _P3_7
                                     82 	.globl _P3_6
                                     83 	.globl _P3_5
                                     84 	.globl _P3_4
                                     85 	.globl _P3_3
                                     86 	.globl _P3_2
                                     87 	.globl _P3_1
                                     88 	.globl _P3_0
                                     89 	.globl _EA
                                     90 	.globl _ET2
                                     91 	.globl _ES
                                     92 	.globl _ES0
                                     93 	.globl _ET1
                                     94 	.globl _EX1
                                     95 	.globl _ET0
                                     96 	.globl _EX0
                                     97 	.globl _P2_7
                                     98 	.globl _P2_6
                                     99 	.globl _P2_5
                                    100 	.globl _P2_4
                                    101 	.globl _P2_3
                                    102 	.globl _P2_2
                                    103 	.globl _P2_1
                                    104 	.globl _P2_0
                                    105 	.globl _S0MODE
                                    106 	.globl _SM00
                                    107 	.globl _SM0
                                    108 	.globl _SM10
                                    109 	.globl _SM1
                                    110 	.globl _MCE0
                                    111 	.globl _SM20
                                    112 	.globl _SM2
                                    113 	.globl _REN0
                                    114 	.globl _REN
                                    115 	.globl _TB80
                                    116 	.globl _TB8
                                    117 	.globl _RB80
                                    118 	.globl _RB8
                                    119 	.globl _TI0
                                    120 	.globl _TI
                                    121 	.globl _RI0
                                    122 	.globl _RI
                                    123 	.globl _P1_7
                                    124 	.globl _P1_6
                                    125 	.globl _P1_5
                                    126 	.globl _P1_4
                                    127 	.globl _P1_3
                                    128 	.globl _P1_2
                                    129 	.globl _P1_1
                                    130 	.globl _P1_0
                                    131 	.globl _TF1
                                    132 	.globl _TR1
                                    133 	.globl _TF0
                                    134 	.globl _TR0
                                    135 	.globl _IE1
                                    136 	.globl _IT1
                                    137 	.globl _IE0
                                    138 	.globl _IT0
                                    139 	.globl _P0_7
                                    140 	.globl _P0_6
                                    141 	.globl _P0_5
                                    142 	.globl _P0_4
                                    143 	.globl _P0_3
                                    144 	.globl _P0_2
                                    145 	.globl _P0_1
                                    146 	.globl _P0_0
                                    147 	.globl _PCA0CP4
                                    148 	.globl _PCA0CP3
                                    149 	.globl _PCA0CP2
                                    150 	.globl _PCA0CP1
                                    151 	.globl _PCA0CP0
                                    152 	.globl _PCA0
                                    153 	.globl _DAC1
                                    154 	.globl _DAC0
                                    155 	.globl _ADC0LT
                                    156 	.globl _ADC0GT
                                    157 	.globl _ADC0
                                    158 	.globl _RCAP4
                                    159 	.globl _TMR4
                                    160 	.globl _TMR3RL
                                    161 	.globl _TMR3
                                    162 	.globl _RCAP2
                                    163 	.globl _TMR2
                                    164 	.globl _TMR1
                                    165 	.globl _TMR0
                                    166 	.globl _WDTCN
                                    167 	.globl _PCA0CPH4
                                    168 	.globl _PCA0CPH3
                                    169 	.globl _PCA0CPH2
                                    170 	.globl _PCA0CPH1
                                    171 	.globl _PCA0CPH0
                                    172 	.globl _PCA0H
                                    173 	.globl _SPI0CN
                                    174 	.globl _EIP2
                                    175 	.globl _EIP1
                                    176 	.globl _TH4
                                    177 	.globl _TL4
                                    178 	.globl _SADDR1
                                    179 	.globl _SBUF1
                                    180 	.globl _SCON1
                                    181 	.globl _B
                                    182 	.globl _RSTSRC
                                    183 	.globl _PCA0CPL4
                                    184 	.globl _PCA0CPL3
                                    185 	.globl _PCA0CPL2
                                    186 	.globl _PCA0CPL1
                                    187 	.globl _PCA0CPL0
                                    188 	.globl _PCA0L
                                    189 	.globl _ADC0CN
                                    190 	.globl _EIE2
                                    191 	.globl _EIE1
                                    192 	.globl _RCAP4H
                                    193 	.globl _RCAP4L
                                    194 	.globl _XBR2
                                    195 	.globl _XBR1
                                    196 	.globl _XBR0
                                    197 	.globl _ACC
                                    198 	.globl _PCA0CPM4
                                    199 	.globl _PCA0CPM3
                                    200 	.globl _PCA0CPM2
                                    201 	.globl _PCA0CPM1
                                    202 	.globl _PCA0CPM0
                                    203 	.globl _PCA0MD
                                    204 	.globl _PCA0CN
                                    205 	.globl _DAC1CN
                                    206 	.globl _DAC1H
                                    207 	.globl _DAC1L
                                    208 	.globl _DAC0CN
                                    209 	.globl _DAC0H
                                    210 	.globl _DAC0L
                                    211 	.globl _REF0CN
                                    212 	.globl _PSW
                                    213 	.globl _SMB0CR
                                    214 	.globl _TH2
                                    215 	.globl _TL2
                                    216 	.globl _RCAP2H
                                    217 	.globl _RCAP2L
                                    218 	.globl _T4CON
                                    219 	.globl _T2CON
                                    220 	.globl _ADC0LTH
                                    221 	.globl _ADC0LTL
                                    222 	.globl _ADC0GTH
                                    223 	.globl _ADC0GTL
                                    224 	.globl _SMB0ADR
                                    225 	.globl _SMB0DAT
                                    226 	.globl _SMB0STA
                                    227 	.globl _SMB0CN
                                    228 	.globl _ADC0H
                                    229 	.globl _ADC0L
                                    230 	.globl _P1MDIN
                                    231 	.globl _ADC0CF
                                    232 	.globl _AMX0SL
                                    233 	.globl _AMX0CF
                                    234 	.globl _SADEN0
                                    235 	.globl _IP
                                    236 	.globl _FLACL
                                    237 	.globl _FLSCL
                                    238 	.globl _P74OUT
                                    239 	.globl _OSCICN
                                    240 	.globl _OSCXCN
                                    241 	.globl _P3
                                    242 	.globl __XPAGE
                                    243 	.globl _EMI0CN
                                    244 	.globl _SADEN1
                                    245 	.globl _P3IF
                                    246 	.globl _AMX1SL
                                    247 	.globl _ADC1CF
                                    248 	.globl _ADC1CN
                                    249 	.globl _SADDR0
                                    250 	.globl _IE
                                    251 	.globl _P3MDOUT
                                    252 	.globl _PRT3CF
                                    253 	.globl _P2MDOUT
                                    254 	.globl _PRT2CF
                                    255 	.globl _P1MDOUT
                                    256 	.globl _PRT1CF
                                    257 	.globl _P0MDOUT
                                    258 	.globl _PRT0CF
                                    259 	.globl _EMI0CF
                                    260 	.globl _EMI0TC
                                    261 	.globl _P2
                                    262 	.globl _CPT1CN
                                    263 	.globl _CPT0CN
                                    264 	.globl _SPI0CKR
                                    265 	.globl _ADC1
                                    266 	.globl _SPI0DAT
                                    267 	.globl _SPI0CFG
                                    268 	.globl _SBUF0
                                    269 	.globl _SBUF
                                    270 	.globl _SCON0
                                    271 	.globl _SCON
                                    272 	.globl _P7
                                    273 	.globl _TMR3H
                                    274 	.globl _TMR3L
                                    275 	.globl _TMR3RLH
                                    276 	.globl _TMR3RLL
                                    277 	.globl _TMR3CN
                                    278 	.globl _P1
                                    279 	.globl _PSCTL
                                    280 	.globl _CKCON
                                    281 	.globl _TH1
                                    282 	.globl _TH0
                                    283 	.globl _TL1
                                    284 	.globl _TL0
                                    285 	.globl _TMOD
                                    286 	.globl _TCON
                                    287 	.globl _PCON
                                    288 	.globl _P6
                                    289 	.globl _P5
                                    290 	.globl _P4
                                    291 	.globl _DPH
                                    292 	.globl _DPL
                                    293 	.globl _SP
                                    294 	.globl _P0
                                    295 	.globl _port_byte
                                    296 	.globl _input
                                    297 	.globl _Port_Init
                                    298 	.globl _first_press
                                    299 	.globl _second_press
                                    300 ;--------------------------------------------------------
                                    301 ; special function registers
                                    302 ;--------------------------------------------------------
                                    303 	.area RSEG    (ABS,DATA)
      000000                        304 	.org 0x0000
                           000080   305 G$P0$0$0 == 0x0080
                           000080   306 _P0	=	0x0080
                           000081   307 G$SP$0$0 == 0x0081
                           000081   308 _SP	=	0x0081
                           000082   309 G$DPL$0$0 == 0x0082
                           000082   310 _DPL	=	0x0082
                           000083   311 G$DPH$0$0 == 0x0083
                           000083   312 _DPH	=	0x0083
                           000084   313 G$P4$0$0 == 0x0084
                           000084   314 _P4	=	0x0084
                           000085   315 G$P5$0$0 == 0x0085
                           000085   316 _P5	=	0x0085
                           000086   317 G$P6$0$0 == 0x0086
                           000086   318 _P6	=	0x0086
                           000087   319 G$PCON$0$0 == 0x0087
                           000087   320 _PCON	=	0x0087
                           000088   321 G$TCON$0$0 == 0x0088
                           000088   322 _TCON	=	0x0088
                           000089   323 G$TMOD$0$0 == 0x0089
                           000089   324 _TMOD	=	0x0089
                           00008A   325 G$TL0$0$0 == 0x008a
                           00008A   326 _TL0	=	0x008a
                           00008B   327 G$TL1$0$0 == 0x008b
                           00008B   328 _TL1	=	0x008b
                           00008C   329 G$TH0$0$0 == 0x008c
                           00008C   330 _TH0	=	0x008c
                           00008D   331 G$TH1$0$0 == 0x008d
                           00008D   332 _TH1	=	0x008d
                           00008E   333 G$CKCON$0$0 == 0x008e
                           00008E   334 _CKCON	=	0x008e
                           00008F   335 G$PSCTL$0$0 == 0x008f
                           00008F   336 _PSCTL	=	0x008f
                           000090   337 G$P1$0$0 == 0x0090
                           000090   338 _P1	=	0x0090
                           000091   339 G$TMR3CN$0$0 == 0x0091
                           000091   340 _TMR3CN	=	0x0091
                           000092   341 G$TMR3RLL$0$0 == 0x0092
                           000092   342 _TMR3RLL	=	0x0092
                           000093   343 G$TMR3RLH$0$0 == 0x0093
                           000093   344 _TMR3RLH	=	0x0093
                           000094   345 G$TMR3L$0$0 == 0x0094
                           000094   346 _TMR3L	=	0x0094
                           000095   347 G$TMR3H$0$0 == 0x0095
                           000095   348 _TMR3H	=	0x0095
                           000096   349 G$P7$0$0 == 0x0096
                           000096   350 _P7	=	0x0096
                           000098   351 G$SCON$0$0 == 0x0098
                           000098   352 _SCON	=	0x0098
                           000098   353 G$SCON0$0$0 == 0x0098
                           000098   354 _SCON0	=	0x0098
                           000099   355 G$SBUF$0$0 == 0x0099
                           000099   356 _SBUF	=	0x0099
                           000099   357 G$SBUF0$0$0 == 0x0099
                           000099   358 _SBUF0	=	0x0099
                           00009A   359 G$SPI0CFG$0$0 == 0x009a
                           00009A   360 _SPI0CFG	=	0x009a
                           00009B   361 G$SPI0DAT$0$0 == 0x009b
                           00009B   362 _SPI0DAT	=	0x009b
                           00009C   363 G$ADC1$0$0 == 0x009c
                           00009C   364 _ADC1	=	0x009c
                           00009D   365 G$SPI0CKR$0$0 == 0x009d
                           00009D   366 _SPI0CKR	=	0x009d
                           00009E   367 G$CPT0CN$0$0 == 0x009e
                           00009E   368 _CPT0CN	=	0x009e
                           00009F   369 G$CPT1CN$0$0 == 0x009f
                           00009F   370 _CPT1CN	=	0x009f
                           0000A0   371 G$P2$0$0 == 0x00a0
                           0000A0   372 _P2	=	0x00a0
                           0000A1   373 G$EMI0TC$0$0 == 0x00a1
                           0000A1   374 _EMI0TC	=	0x00a1
                           0000A3   375 G$EMI0CF$0$0 == 0x00a3
                           0000A3   376 _EMI0CF	=	0x00a3
                           0000A4   377 G$PRT0CF$0$0 == 0x00a4
                           0000A4   378 _PRT0CF	=	0x00a4
                           0000A4   379 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   380 _P0MDOUT	=	0x00a4
                           0000A5   381 G$PRT1CF$0$0 == 0x00a5
                           0000A5   382 _PRT1CF	=	0x00a5
                           0000A5   383 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   384 _P1MDOUT	=	0x00a5
                           0000A6   385 G$PRT2CF$0$0 == 0x00a6
                           0000A6   386 _PRT2CF	=	0x00a6
                           0000A6   387 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   388 _P2MDOUT	=	0x00a6
                           0000A7   389 G$PRT3CF$0$0 == 0x00a7
                           0000A7   390 _PRT3CF	=	0x00a7
                           0000A7   391 G$P3MDOUT$0$0 == 0x00a7
                           0000A7   392 _P3MDOUT	=	0x00a7
                           0000A8   393 G$IE$0$0 == 0x00a8
                           0000A8   394 _IE	=	0x00a8
                           0000A9   395 G$SADDR0$0$0 == 0x00a9
                           0000A9   396 _SADDR0	=	0x00a9
                           0000AA   397 G$ADC1CN$0$0 == 0x00aa
                           0000AA   398 _ADC1CN	=	0x00aa
                           0000AB   399 G$ADC1CF$0$0 == 0x00ab
                           0000AB   400 _ADC1CF	=	0x00ab
                           0000AC   401 G$AMX1SL$0$0 == 0x00ac
                           0000AC   402 _AMX1SL	=	0x00ac
                           0000AD   403 G$P3IF$0$0 == 0x00ad
                           0000AD   404 _P3IF	=	0x00ad
                           0000AE   405 G$SADEN1$0$0 == 0x00ae
                           0000AE   406 _SADEN1	=	0x00ae
                           0000AF   407 G$EMI0CN$0$0 == 0x00af
                           0000AF   408 _EMI0CN	=	0x00af
                           0000AF   409 G$_XPAGE$0$0 == 0x00af
                           0000AF   410 __XPAGE	=	0x00af
                           0000B0   411 G$P3$0$0 == 0x00b0
                           0000B0   412 _P3	=	0x00b0
                           0000B1   413 G$OSCXCN$0$0 == 0x00b1
                           0000B1   414 _OSCXCN	=	0x00b1
                           0000B2   415 G$OSCICN$0$0 == 0x00b2
                           0000B2   416 _OSCICN	=	0x00b2
                           0000B5   417 G$P74OUT$0$0 == 0x00b5
                           0000B5   418 _P74OUT	=	0x00b5
                           0000B6   419 G$FLSCL$0$0 == 0x00b6
                           0000B6   420 _FLSCL	=	0x00b6
                           0000B7   421 G$FLACL$0$0 == 0x00b7
                           0000B7   422 _FLACL	=	0x00b7
                           0000B8   423 G$IP$0$0 == 0x00b8
                           0000B8   424 _IP	=	0x00b8
                           0000B9   425 G$SADEN0$0$0 == 0x00b9
                           0000B9   426 _SADEN0	=	0x00b9
                           0000BA   427 G$AMX0CF$0$0 == 0x00ba
                           0000BA   428 _AMX0CF	=	0x00ba
                           0000BB   429 G$AMX0SL$0$0 == 0x00bb
                           0000BB   430 _AMX0SL	=	0x00bb
                           0000BC   431 G$ADC0CF$0$0 == 0x00bc
                           0000BC   432 _ADC0CF	=	0x00bc
                           0000BD   433 G$P1MDIN$0$0 == 0x00bd
                           0000BD   434 _P1MDIN	=	0x00bd
                           0000BE   435 G$ADC0L$0$0 == 0x00be
                           0000BE   436 _ADC0L	=	0x00be
                           0000BF   437 G$ADC0H$0$0 == 0x00bf
                           0000BF   438 _ADC0H	=	0x00bf
                           0000C0   439 G$SMB0CN$0$0 == 0x00c0
                           0000C0   440 _SMB0CN	=	0x00c0
                           0000C1   441 G$SMB0STA$0$0 == 0x00c1
                           0000C1   442 _SMB0STA	=	0x00c1
                           0000C2   443 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   444 _SMB0DAT	=	0x00c2
                           0000C3   445 G$SMB0ADR$0$0 == 0x00c3
                           0000C3   446 _SMB0ADR	=	0x00c3
                           0000C4   447 G$ADC0GTL$0$0 == 0x00c4
                           0000C4   448 _ADC0GTL	=	0x00c4
                           0000C5   449 G$ADC0GTH$0$0 == 0x00c5
                           0000C5   450 _ADC0GTH	=	0x00c5
                           0000C6   451 G$ADC0LTL$0$0 == 0x00c6
                           0000C6   452 _ADC0LTL	=	0x00c6
                           0000C7   453 G$ADC0LTH$0$0 == 0x00c7
                           0000C7   454 _ADC0LTH	=	0x00c7
                           0000C8   455 G$T2CON$0$0 == 0x00c8
                           0000C8   456 _T2CON	=	0x00c8
                           0000C9   457 G$T4CON$0$0 == 0x00c9
                           0000C9   458 _T4CON	=	0x00c9
                           0000CA   459 G$RCAP2L$0$0 == 0x00ca
                           0000CA   460 _RCAP2L	=	0x00ca
                           0000CB   461 G$RCAP2H$0$0 == 0x00cb
                           0000CB   462 _RCAP2H	=	0x00cb
                           0000CC   463 G$TL2$0$0 == 0x00cc
                           0000CC   464 _TL2	=	0x00cc
                           0000CD   465 G$TH2$0$0 == 0x00cd
                           0000CD   466 _TH2	=	0x00cd
                           0000CF   467 G$SMB0CR$0$0 == 0x00cf
                           0000CF   468 _SMB0CR	=	0x00cf
                           0000D0   469 G$PSW$0$0 == 0x00d0
                           0000D0   470 _PSW	=	0x00d0
                           0000D1   471 G$REF0CN$0$0 == 0x00d1
                           0000D1   472 _REF0CN	=	0x00d1
                           0000D2   473 G$DAC0L$0$0 == 0x00d2
                           0000D2   474 _DAC0L	=	0x00d2
                           0000D3   475 G$DAC0H$0$0 == 0x00d3
                           0000D3   476 _DAC0H	=	0x00d3
                           0000D4   477 G$DAC0CN$0$0 == 0x00d4
                           0000D4   478 _DAC0CN	=	0x00d4
                           0000D5   479 G$DAC1L$0$0 == 0x00d5
                           0000D5   480 _DAC1L	=	0x00d5
                           0000D6   481 G$DAC1H$0$0 == 0x00d6
                           0000D6   482 _DAC1H	=	0x00d6
                           0000D7   483 G$DAC1CN$0$0 == 0x00d7
                           0000D7   484 _DAC1CN	=	0x00d7
                           0000D8   485 G$PCA0CN$0$0 == 0x00d8
                           0000D8   486 _PCA0CN	=	0x00d8
                           0000D9   487 G$PCA0MD$0$0 == 0x00d9
                           0000D9   488 _PCA0MD	=	0x00d9
                           0000DA   489 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   490 _PCA0CPM0	=	0x00da
                           0000DB   491 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   492 _PCA0CPM1	=	0x00db
                           0000DC   493 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   494 _PCA0CPM2	=	0x00dc
                           0000DD   495 G$PCA0CPM3$0$0 == 0x00dd
                           0000DD   496 _PCA0CPM3	=	0x00dd
                           0000DE   497 G$PCA0CPM4$0$0 == 0x00de
                           0000DE   498 _PCA0CPM4	=	0x00de
                           0000E0   499 G$ACC$0$0 == 0x00e0
                           0000E0   500 _ACC	=	0x00e0
                           0000E1   501 G$XBR0$0$0 == 0x00e1
                           0000E1   502 _XBR0	=	0x00e1
                           0000E2   503 G$XBR1$0$0 == 0x00e2
                           0000E2   504 _XBR1	=	0x00e2
                           0000E3   505 G$XBR2$0$0 == 0x00e3
                           0000E3   506 _XBR2	=	0x00e3
                           0000E4   507 G$RCAP4L$0$0 == 0x00e4
                           0000E4   508 _RCAP4L	=	0x00e4
                           0000E5   509 G$RCAP4H$0$0 == 0x00e5
                           0000E5   510 _RCAP4H	=	0x00e5
                           0000E6   511 G$EIE1$0$0 == 0x00e6
                           0000E6   512 _EIE1	=	0x00e6
                           0000E7   513 G$EIE2$0$0 == 0x00e7
                           0000E7   514 _EIE2	=	0x00e7
                           0000E8   515 G$ADC0CN$0$0 == 0x00e8
                           0000E8   516 _ADC0CN	=	0x00e8
                           0000E9   517 G$PCA0L$0$0 == 0x00e9
                           0000E9   518 _PCA0L	=	0x00e9
                           0000EA   519 G$PCA0CPL0$0$0 == 0x00ea
                           0000EA   520 _PCA0CPL0	=	0x00ea
                           0000EB   521 G$PCA0CPL1$0$0 == 0x00eb
                           0000EB   522 _PCA0CPL1	=	0x00eb
                           0000EC   523 G$PCA0CPL2$0$0 == 0x00ec
                           0000EC   524 _PCA0CPL2	=	0x00ec
                           0000ED   525 G$PCA0CPL3$0$0 == 0x00ed
                           0000ED   526 _PCA0CPL3	=	0x00ed
                           0000EE   527 G$PCA0CPL4$0$0 == 0x00ee
                           0000EE   528 _PCA0CPL4	=	0x00ee
                           0000EF   529 G$RSTSRC$0$0 == 0x00ef
                           0000EF   530 _RSTSRC	=	0x00ef
                           0000F0   531 G$B$0$0 == 0x00f0
                           0000F0   532 _B	=	0x00f0
                           0000F1   533 G$SCON1$0$0 == 0x00f1
                           0000F1   534 _SCON1	=	0x00f1
                           0000F2   535 G$SBUF1$0$0 == 0x00f2
                           0000F2   536 _SBUF1	=	0x00f2
                           0000F3   537 G$SADDR1$0$0 == 0x00f3
                           0000F3   538 _SADDR1	=	0x00f3
                           0000F4   539 G$TL4$0$0 == 0x00f4
                           0000F4   540 _TL4	=	0x00f4
                           0000F5   541 G$TH4$0$0 == 0x00f5
                           0000F5   542 _TH4	=	0x00f5
                           0000F6   543 G$EIP1$0$0 == 0x00f6
                           0000F6   544 _EIP1	=	0x00f6
                           0000F7   545 G$EIP2$0$0 == 0x00f7
                           0000F7   546 _EIP2	=	0x00f7
                           0000F8   547 G$SPI0CN$0$0 == 0x00f8
                           0000F8   548 _SPI0CN	=	0x00f8
                           0000F9   549 G$PCA0H$0$0 == 0x00f9
                           0000F9   550 _PCA0H	=	0x00f9
                           0000FA   551 G$PCA0CPH0$0$0 == 0x00fa
                           0000FA   552 _PCA0CPH0	=	0x00fa
                           0000FB   553 G$PCA0CPH1$0$0 == 0x00fb
                           0000FB   554 _PCA0CPH1	=	0x00fb
                           0000FC   555 G$PCA0CPH2$0$0 == 0x00fc
                           0000FC   556 _PCA0CPH2	=	0x00fc
                           0000FD   557 G$PCA0CPH3$0$0 == 0x00fd
                           0000FD   558 _PCA0CPH3	=	0x00fd
                           0000FE   559 G$PCA0CPH4$0$0 == 0x00fe
                           0000FE   560 _PCA0CPH4	=	0x00fe
                           0000FF   561 G$WDTCN$0$0 == 0x00ff
                           0000FF   562 _WDTCN	=	0x00ff
                           008C8A   563 G$TMR0$0$0 == 0x8c8a
                           008C8A   564 _TMR0	=	0x8c8a
                           008D8B   565 G$TMR1$0$0 == 0x8d8b
                           008D8B   566 _TMR1	=	0x8d8b
                           00CDCC   567 G$TMR2$0$0 == 0xcdcc
                           00CDCC   568 _TMR2	=	0xcdcc
                           00CBCA   569 G$RCAP2$0$0 == 0xcbca
                           00CBCA   570 _RCAP2	=	0xcbca
                           009594   571 G$TMR3$0$0 == 0x9594
                           009594   572 _TMR3	=	0x9594
                           009392   573 G$TMR3RL$0$0 == 0x9392
                           009392   574 _TMR3RL	=	0x9392
                           00F5F4   575 G$TMR4$0$0 == 0xf5f4
                           00F5F4   576 _TMR4	=	0xf5f4
                           00E5E4   577 G$RCAP4$0$0 == 0xe5e4
                           00E5E4   578 _RCAP4	=	0xe5e4
                           00BFBE   579 G$ADC0$0$0 == 0xbfbe
                           00BFBE   580 _ADC0	=	0xbfbe
                           00C5C4   581 G$ADC0GT$0$0 == 0xc5c4
                           00C5C4   582 _ADC0GT	=	0xc5c4
                           00C7C6   583 G$ADC0LT$0$0 == 0xc7c6
                           00C7C6   584 _ADC0LT	=	0xc7c6
                           00D3D2   585 G$DAC0$0$0 == 0xd3d2
                           00D3D2   586 _DAC0	=	0xd3d2
                           00D6D5   587 G$DAC1$0$0 == 0xd6d5
                           00D6D5   588 _DAC1	=	0xd6d5
                           00F9E9   589 G$PCA0$0$0 == 0xf9e9
                           00F9E9   590 _PCA0	=	0xf9e9
                           00FAEA   591 G$PCA0CP0$0$0 == 0xfaea
                           00FAEA   592 _PCA0CP0	=	0xfaea
                           00FBEB   593 G$PCA0CP1$0$0 == 0xfbeb
                           00FBEB   594 _PCA0CP1	=	0xfbeb
                           00FCEC   595 G$PCA0CP2$0$0 == 0xfcec
                           00FCEC   596 _PCA0CP2	=	0xfcec
                           00FDED   597 G$PCA0CP3$0$0 == 0xfded
                           00FDED   598 _PCA0CP3	=	0xfded
                           00FEEE   599 G$PCA0CP4$0$0 == 0xfeee
                           00FEEE   600 _PCA0CP4	=	0xfeee
                                    601 ;--------------------------------------------------------
                                    602 ; special function bits
                                    603 ;--------------------------------------------------------
                                    604 	.area RSEG    (ABS,DATA)
      000000                        605 	.org 0x0000
                           000080   606 G$P0_0$0$0 == 0x0080
                           000080   607 _P0_0	=	0x0080
                           000081   608 G$P0_1$0$0 == 0x0081
                           000081   609 _P0_1	=	0x0081
                           000082   610 G$P0_2$0$0 == 0x0082
                           000082   611 _P0_2	=	0x0082
                           000083   612 G$P0_3$0$0 == 0x0083
                           000083   613 _P0_3	=	0x0083
                           000084   614 G$P0_4$0$0 == 0x0084
                           000084   615 _P0_4	=	0x0084
                           000085   616 G$P0_5$0$0 == 0x0085
                           000085   617 _P0_5	=	0x0085
                           000086   618 G$P0_6$0$0 == 0x0086
                           000086   619 _P0_6	=	0x0086
                           000087   620 G$P0_7$0$0 == 0x0087
                           000087   621 _P0_7	=	0x0087
                           000088   622 G$IT0$0$0 == 0x0088
                           000088   623 _IT0	=	0x0088
                           000089   624 G$IE0$0$0 == 0x0089
                           000089   625 _IE0	=	0x0089
                           00008A   626 G$IT1$0$0 == 0x008a
                           00008A   627 _IT1	=	0x008a
                           00008B   628 G$IE1$0$0 == 0x008b
                           00008B   629 _IE1	=	0x008b
                           00008C   630 G$TR0$0$0 == 0x008c
                           00008C   631 _TR0	=	0x008c
                           00008D   632 G$TF0$0$0 == 0x008d
                           00008D   633 _TF0	=	0x008d
                           00008E   634 G$TR1$0$0 == 0x008e
                           00008E   635 _TR1	=	0x008e
                           00008F   636 G$TF1$0$0 == 0x008f
                           00008F   637 _TF1	=	0x008f
                           000090   638 G$P1_0$0$0 == 0x0090
                           000090   639 _P1_0	=	0x0090
                           000091   640 G$P1_1$0$0 == 0x0091
                           000091   641 _P1_1	=	0x0091
                           000092   642 G$P1_2$0$0 == 0x0092
                           000092   643 _P1_2	=	0x0092
                           000093   644 G$P1_3$0$0 == 0x0093
                           000093   645 _P1_3	=	0x0093
                           000094   646 G$P1_4$0$0 == 0x0094
                           000094   647 _P1_4	=	0x0094
                           000095   648 G$P1_5$0$0 == 0x0095
                           000095   649 _P1_5	=	0x0095
                           000096   650 G$P1_6$0$0 == 0x0096
                           000096   651 _P1_6	=	0x0096
                           000097   652 G$P1_7$0$0 == 0x0097
                           000097   653 _P1_7	=	0x0097
                           000098   654 G$RI$0$0 == 0x0098
                           000098   655 _RI	=	0x0098
                           000098   656 G$RI0$0$0 == 0x0098
                           000098   657 _RI0	=	0x0098
                           000099   658 G$TI$0$0 == 0x0099
                           000099   659 _TI	=	0x0099
                           000099   660 G$TI0$0$0 == 0x0099
                           000099   661 _TI0	=	0x0099
                           00009A   662 G$RB8$0$0 == 0x009a
                           00009A   663 _RB8	=	0x009a
                           00009A   664 G$RB80$0$0 == 0x009a
                           00009A   665 _RB80	=	0x009a
                           00009B   666 G$TB8$0$0 == 0x009b
                           00009B   667 _TB8	=	0x009b
                           00009B   668 G$TB80$0$0 == 0x009b
                           00009B   669 _TB80	=	0x009b
                           00009C   670 G$REN$0$0 == 0x009c
                           00009C   671 _REN	=	0x009c
                           00009C   672 G$REN0$0$0 == 0x009c
                           00009C   673 _REN0	=	0x009c
                           00009D   674 G$SM2$0$0 == 0x009d
                           00009D   675 _SM2	=	0x009d
                           00009D   676 G$SM20$0$0 == 0x009d
                           00009D   677 _SM20	=	0x009d
                           00009D   678 G$MCE0$0$0 == 0x009d
                           00009D   679 _MCE0	=	0x009d
                           00009E   680 G$SM1$0$0 == 0x009e
                           00009E   681 _SM1	=	0x009e
                           00009E   682 G$SM10$0$0 == 0x009e
                           00009E   683 _SM10	=	0x009e
                           00009F   684 G$SM0$0$0 == 0x009f
                           00009F   685 _SM0	=	0x009f
                           00009F   686 G$SM00$0$0 == 0x009f
                           00009F   687 _SM00	=	0x009f
                           00009F   688 G$S0MODE$0$0 == 0x009f
                           00009F   689 _S0MODE	=	0x009f
                           0000A0   690 G$P2_0$0$0 == 0x00a0
                           0000A0   691 _P2_0	=	0x00a0
                           0000A1   692 G$P2_1$0$0 == 0x00a1
                           0000A1   693 _P2_1	=	0x00a1
                           0000A2   694 G$P2_2$0$0 == 0x00a2
                           0000A2   695 _P2_2	=	0x00a2
                           0000A3   696 G$P2_3$0$0 == 0x00a3
                           0000A3   697 _P2_3	=	0x00a3
                           0000A4   698 G$P2_4$0$0 == 0x00a4
                           0000A4   699 _P2_4	=	0x00a4
                           0000A5   700 G$P2_5$0$0 == 0x00a5
                           0000A5   701 _P2_5	=	0x00a5
                           0000A6   702 G$P2_6$0$0 == 0x00a6
                           0000A6   703 _P2_6	=	0x00a6
                           0000A7   704 G$P2_7$0$0 == 0x00a7
                           0000A7   705 _P2_7	=	0x00a7
                           0000A8   706 G$EX0$0$0 == 0x00a8
                           0000A8   707 _EX0	=	0x00a8
                           0000A9   708 G$ET0$0$0 == 0x00a9
                           0000A9   709 _ET0	=	0x00a9
                           0000AA   710 G$EX1$0$0 == 0x00aa
                           0000AA   711 _EX1	=	0x00aa
                           0000AB   712 G$ET1$0$0 == 0x00ab
                           0000AB   713 _ET1	=	0x00ab
                           0000AC   714 G$ES0$0$0 == 0x00ac
                           0000AC   715 _ES0	=	0x00ac
                           0000AC   716 G$ES$0$0 == 0x00ac
                           0000AC   717 _ES	=	0x00ac
                           0000AD   718 G$ET2$0$0 == 0x00ad
                           0000AD   719 _ET2	=	0x00ad
                           0000AF   720 G$EA$0$0 == 0x00af
                           0000AF   721 _EA	=	0x00af
                           0000B0   722 G$P3_0$0$0 == 0x00b0
                           0000B0   723 _P3_0	=	0x00b0
                           0000B1   724 G$P3_1$0$0 == 0x00b1
                           0000B1   725 _P3_1	=	0x00b1
                           0000B2   726 G$P3_2$0$0 == 0x00b2
                           0000B2   727 _P3_2	=	0x00b2
                           0000B3   728 G$P3_3$0$0 == 0x00b3
                           0000B3   729 _P3_3	=	0x00b3
                           0000B4   730 G$P3_4$0$0 == 0x00b4
                           0000B4   731 _P3_4	=	0x00b4
                           0000B5   732 G$P3_5$0$0 == 0x00b5
                           0000B5   733 _P3_5	=	0x00b5
                           0000B6   734 G$P3_6$0$0 == 0x00b6
                           0000B6   735 _P3_6	=	0x00b6
                           0000B7   736 G$P3_7$0$0 == 0x00b7
                           0000B7   737 _P3_7	=	0x00b7
                           0000B8   738 G$PX0$0$0 == 0x00b8
                           0000B8   739 _PX0	=	0x00b8
                           0000B9   740 G$PT0$0$0 == 0x00b9
                           0000B9   741 _PT0	=	0x00b9
                           0000BA   742 G$PX1$0$0 == 0x00ba
                           0000BA   743 _PX1	=	0x00ba
                           0000BB   744 G$PT1$0$0 == 0x00bb
                           0000BB   745 _PT1	=	0x00bb
                           0000BC   746 G$PS0$0$0 == 0x00bc
                           0000BC   747 _PS0	=	0x00bc
                           0000BC   748 G$PS$0$0 == 0x00bc
                           0000BC   749 _PS	=	0x00bc
                           0000BD   750 G$PT2$0$0 == 0x00bd
                           0000BD   751 _PT2	=	0x00bd
                           0000C0   752 G$SMBTOE$0$0 == 0x00c0
                           0000C0   753 _SMBTOE	=	0x00c0
                           0000C1   754 G$SMBFTE$0$0 == 0x00c1
                           0000C1   755 _SMBFTE	=	0x00c1
                           0000C2   756 G$AA$0$0 == 0x00c2
                           0000C2   757 _AA	=	0x00c2
                           0000C3   758 G$SI$0$0 == 0x00c3
                           0000C3   759 _SI	=	0x00c3
                           0000C4   760 G$STO$0$0 == 0x00c4
                           0000C4   761 _STO	=	0x00c4
                           0000C5   762 G$STA$0$0 == 0x00c5
                           0000C5   763 _STA	=	0x00c5
                           0000C6   764 G$ENSMB$0$0 == 0x00c6
                           0000C6   765 _ENSMB	=	0x00c6
                           0000C7   766 G$BUSY$0$0 == 0x00c7
                           0000C7   767 _BUSY	=	0x00c7
                           0000C8   768 G$CPRL2$0$0 == 0x00c8
                           0000C8   769 _CPRL2	=	0x00c8
                           0000C9   770 G$CT2$0$0 == 0x00c9
                           0000C9   771 _CT2	=	0x00c9
                           0000CA   772 G$TR2$0$0 == 0x00ca
                           0000CA   773 _TR2	=	0x00ca
                           0000CB   774 G$EXEN2$0$0 == 0x00cb
                           0000CB   775 _EXEN2	=	0x00cb
                           0000CC   776 G$TCLK$0$0 == 0x00cc
                           0000CC   777 _TCLK	=	0x00cc
                           0000CD   778 G$RCLK$0$0 == 0x00cd
                           0000CD   779 _RCLK	=	0x00cd
                           0000CE   780 G$EXF2$0$0 == 0x00ce
                           0000CE   781 _EXF2	=	0x00ce
                           0000CF   782 G$TF2$0$0 == 0x00cf
                           0000CF   783 _TF2	=	0x00cf
                           0000D0   784 G$P$0$0 == 0x00d0
                           0000D0   785 _P	=	0x00d0
                           0000D1   786 G$F1$0$0 == 0x00d1
                           0000D1   787 _F1	=	0x00d1
                           0000D2   788 G$OV$0$0 == 0x00d2
                           0000D2   789 _OV	=	0x00d2
                           0000D3   790 G$RS0$0$0 == 0x00d3
                           0000D3   791 _RS0	=	0x00d3
                           0000D4   792 G$RS1$0$0 == 0x00d4
                           0000D4   793 _RS1	=	0x00d4
                           0000D5   794 G$F0$0$0 == 0x00d5
                           0000D5   795 _F0	=	0x00d5
                           0000D6   796 G$AC$0$0 == 0x00d6
                           0000D6   797 _AC	=	0x00d6
                           0000D7   798 G$CY$0$0 == 0x00d7
                           0000D7   799 _CY	=	0x00d7
                           0000D8   800 G$CCF0$0$0 == 0x00d8
                           0000D8   801 _CCF0	=	0x00d8
                           0000D9   802 G$CCF1$0$0 == 0x00d9
                           0000D9   803 _CCF1	=	0x00d9
                           0000DA   804 G$CCF2$0$0 == 0x00da
                           0000DA   805 _CCF2	=	0x00da
                           0000DB   806 G$CCF3$0$0 == 0x00db
                           0000DB   807 _CCF3	=	0x00db
                           0000DC   808 G$CCF4$0$0 == 0x00dc
                           0000DC   809 _CCF4	=	0x00dc
                           0000DE   810 G$CR$0$0 == 0x00de
                           0000DE   811 _CR	=	0x00de
                           0000DF   812 G$CF$0$0 == 0x00df
                           0000DF   813 _CF	=	0x00df
                           0000E8   814 G$ADLJST$0$0 == 0x00e8
                           0000E8   815 _ADLJST	=	0x00e8
                           0000E8   816 G$AD0LJST$0$0 == 0x00e8
                           0000E8   817 _AD0LJST	=	0x00e8
                           0000E9   818 G$ADWINT$0$0 == 0x00e9
                           0000E9   819 _ADWINT	=	0x00e9
                           0000E9   820 G$AD0WINT$0$0 == 0x00e9
                           0000E9   821 _AD0WINT	=	0x00e9
                           0000EA   822 G$ADSTM0$0$0 == 0x00ea
                           0000EA   823 _ADSTM0	=	0x00ea
                           0000EA   824 G$AD0CM0$0$0 == 0x00ea
                           0000EA   825 _AD0CM0	=	0x00ea
                           0000EB   826 G$ADSTM1$0$0 == 0x00eb
                           0000EB   827 _ADSTM1	=	0x00eb
                           0000EB   828 G$AD0CM1$0$0 == 0x00eb
                           0000EB   829 _AD0CM1	=	0x00eb
                           0000EC   830 G$ADBUSY$0$0 == 0x00ec
                           0000EC   831 _ADBUSY	=	0x00ec
                           0000EC   832 G$AD0BUSY$0$0 == 0x00ec
                           0000EC   833 _AD0BUSY	=	0x00ec
                           0000ED   834 G$ADCINT$0$0 == 0x00ed
                           0000ED   835 _ADCINT	=	0x00ed
                           0000ED   836 G$AD0INT$0$0 == 0x00ed
                           0000ED   837 _AD0INT	=	0x00ed
                           0000EE   838 G$ADCTM$0$0 == 0x00ee
                           0000EE   839 _ADCTM	=	0x00ee
                           0000EE   840 G$AD0TM$0$0 == 0x00ee
                           0000EE   841 _AD0TM	=	0x00ee
                           0000EF   842 G$ADCEN$0$0 == 0x00ef
                           0000EF   843 _ADCEN	=	0x00ef
                           0000EF   844 G$AD0EN$0$0 == 0x00ef
                           0000EF   845 _AD0EN	=	0x00ef
                           0000F8   846 G$SPIEN$0$0 == 0x00f8
                           0000F8   847 _SPIEN	=	0x00f8
                           0000F9   848 G$MSTEN$0$0 == 0x00f9
                           0000F9   849 _MSTEN	=	0x00f9
                           0000FA   850 G$SLVSEL$0$0 == 0x00fa
                           0000FA   851 _SLVSEL	=	0x00fa
                           0000FB   852 G$TXBSY$0$0 == 0x00fb
                           0000FB   853 _TXBSY	=	0x00fb
                           0000FC   854 G$RXOVRN$0$0 == 0x00fc
                           0000FC   855 _RXOVRN	=	0x00fc
                           0000FD   856 G$MODF$0$0 == 0x00fd
                           0000FD   857 _MODF	=	0x00fd
                           0000FE   858 G$WCOL$0$0 == 0x00fe
                           0000FE   859 _WCOL	=	0x00fe
                           0000FF   860 G$SPIF$0$0 == 0x00ff
                           0000FF   861 _SPIF	=	0x00ff
                                    862 ;--------------------------------------------------------
                                    863 ; overlayable register banks
                                    864 ;--------------------------------------------------------
                                    865 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        866 	.ds 8
                                    867 ;--------------------------------------------------------
                                    868 ; internal ram data
                                    869 ;--------------------------------------------------------
                                    870 	.area DSEG    (DATA)
                           000000   871 G$input$0$0==.
      000008                        872 _input::
      000008                        873 	.ds 1
                           000001   874 G$port_byte$0$0==.
      000009                        875 _port_byte::
      000009                        876 	.ds 1
                                    877 ;--------------------------------------------------------
                                    878 ; overlayable items in internal ram 
                                    879 ;--------------------------------------------------------
                                    880 	.area	OSEG    (OVR,DATA)
                                    881 	.area	OSEG    (OVR,DATA)
                                    882 ;--------------------------------------------------------
                                    883 ; Stack segment in internal ram 
                                    884 ;--------------------------------------------------------
                                    885 	.area	SSEG
      00003C                        886 __start__stack:
      00003C                        887 	.ds	1
                                    888 
                                    889 ;--------------------------------------------------------
                                    890 ; indirectly addressable internal ram data
                                    891 ;--------------------------------------------------------
                                    892 	.area ISEG    (DATA)
                                    893 ;--------------------------------------------------------
                                    894 ; absolute internal ram data
                                    895 ;--------------------------------------------------------
                                    896 	.area IABS    (ABS,DATA)
                                    897 	.area IABS    (ABS,DATA)
                                    898 ;--------------------------------------------------------
                                    899 ; bit data
                                    900 ;--------------------------------------------------------
                                    901 	.area BSEG    (BIT)
                                    902 ;--------------------------------------------------------
                                    903 ; paged external ram data
                                    904 ;--------------------------------------------------------
                                    905 	.area PSEG    (PAG,XDATA)
                                    906 ;--------------------------------------------------------
                                    907 ; external ram data
                                    908 ;--------------------------------------------------------
                                    909 	.area XSEG    (XDATA)
                                    910 ;--------------------------------------------------------
                                    911 ; absolute external ram data
                                    912 ;--------------------------------------------------------
                                    913 	.area XABS    (ABS,XDATA)
                                    914 ;--------------------------------------------------------
                                    915 ; external initialized ram data
                                    916 ;--------------------------------------------------------
                                    917 	.area XISEG   (XDATA)
                                    918 	.area HOME    (CODE)
                                    919 	.area GSINIT0 (CODE)
                                    920 	.area GSINIT1 (CODE)
                                    921 	.area GSINIT2 (CODE)
                                    922 	.area GSINIT3 (CODE)
                                    923 	.area GSINIT4 (CODE)
                                    924 	.area GSINIT5 (CODE)
                                    925 	.area GSINIT  (CODE)
                                    926 	.area GSFINAL (CODE)
                                    927 	.area CSEG    (CODE)
                                    928 ;--------------------------------------------------------
                                    929 ; interrupt vector 
                                    930 ;--------------------------------------------------------
                                    931 	.area HOME    (CODE)
      000000                        932 __interrupt_vect:
      000000 02 00 06         [24]  933 	ljmp	__sdcc_gsinit_startup
                                    934 ;--------------------------------------------------------
                                    935 ; global & static initialisations
                                    936 ;--------------------------------------------------------
                                    937 	.area HOME    (CODE)
                                    938 	.area GSINIT  (CODE)
                                    939 	.area GSFINAL (CODE)
                                    940 	.area GSINIT  (CODE)
                                    941 	.globl __sdcc_gsinit_startup
                                    942 	.globl __sdcc_program_startup
                                    943 	.globl __start__stack
                                    944 	.globl __mcs51_genXINIT
                                    945 	.globl __mcs51_genXRAMCLEAR
                                    946 	.globl __mcs51_genRAMCLEAR
                                    947 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  948 	ljmp	__sdcc_program_startup
                                    949 ;--------------------------------------------------------
                                    950 ; Home
                                    951 ;--------------------------------------------------------
                                    952 	.area HOME    (CODE)
                                    953 	.area HOME    (CODE)
      000003                        954 __sdcc_program_startup:
      000003 02 00 DD         [24]  955 	ljmp	_main
                                    956 ;	return from main will return to caller
                                    957 ;--------------------------------------------------------
                                    958 ; code
                                    959 ;--------------------------------------------------------
                                    960 	.area CSEG    (CODE)
                                    961 ;------------------------------------------------------------
                                    962 ;Allocation info for local variables in function 'SYSCLK_Init'
                                    963 ;------------------------------------------------------------
                                    964 ;i                         Allocated to registers r6 r7 
                                    965 ;------------------------------------------------------------
                           000000   966 	G$SYSCLK_Init$0$0 ==.
                           000000   967 	C$c8051_SDCC.h$62$0$0 ==.
                                    968 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:62: void SYSCLK_Init(void)
                                    969 ;	-----------------------------------------
                                    970 ;	 function SYSCLK_Init
                                    971 ;	-----------------------------------------
      000062                        972 _SYSCLK_Init:
                           000007   973 	ar7 = 0x07
                           000006   974 	ar6 = 0x06
                           000005   975 	ar5 = 0x05
                           000004   976 	ar4 = 0x04
                           000003   977 	ar3 = 0x03
                           000002   978 	ar2 = 0x02
                           000001   979 	ar1 = 0x01
                           000000   980 	ar0 = 0x00
                           000000   981 	C$c8051_SDCC.h$66$1$2 ==.
                                    982 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:66: OSCXCN = 0x67;                      // start external oscillator with
      000062 75 B1 67         [24]  983 	mov	_OSCXCN,#0x67
                           000003   984 	C$c8051_SDCC.h$69$1$2 ==.
                                    985 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:69: for (i=0; i < 256; i++);            // wait for oscillator to start
      000065 7E 00            [12]  986 	mov	r6,#0x00
      000067 7F 01            [12]  987 	mov	r7,#0x01
      000069                        988 00107$:
      000069 EE               [12]  989 	mov	a,r6
      00006A 24 FF            [12]  990 	add	a,#0xff
      00006C FC               [12]  991 	mov	r4,a
      00006D EF               [12]  992 	mov	a,r7
      00006E 34 FF            [12]  993 	addc	a,#0xff
      000070 FD               [12]  994 	mov	r5,a
      000071 8C 06            [24]  995 	mov	ar6,r4
      000073 8D 07            [24]  996 	mov	ar7,r5
      000075 EC               [12]  997 	mov	a,r4
      000076 4D               [12]  998 	orl	a,r5
      000077 70 F0            [24]  999 	jnz	00107$
                           000017  1000 	C$c8051_SDCC.h$71$1$2 ==.
                                   1001 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:71: while (!(OSCXCN & 0x80));           // Wait for crystal osc. to settle
      000079                       1002 00102$:
      000079 E5 B1            [12] 1003 	mov	a,_OSCXCN
      00007B 30 E7 FB         [24] 1004 	jnb	acc.7,00102$
                           00001C  1005 	C$c8051_SDCC.h$73$1$2 ==.
                                   1006 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:73: OSCICN = 0x88;                      // select external oscillator as SYSCLK
      00007E 75 B2 88         [24] 1007 	mov	_OSCICN,#0x88
                           00001F  1008 	C$c8051_SDCC.h$76$1$2 ==.
                           00001F  1009 	XG$SYSCLK_Init$0$0 ==.
      000081 22               [24] 1010 	ret
                                   1011 ;------------------------------------------------------------
                                   1012 ;Allocation info for local variables in function 'UART0_Init'
                                   1013 ;------------------------------------------------------------
                           000020  1014 	G$UART0_Init$0$0 ==.
                           000020  1015 	C$c8051_SDCC.h$84$1$2 ==.
                                   1016 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:84: void UART0_Init(void)
                                   1017 ;	-----------------------------------------
                                   1018 ;	 function UART0_Init
                                   1019 ;	-----------------------------------------
      000082                       1020 _UART0_Init:
                           000020  1021 	C$c8051_SDCC.h$86$1$4 ==.
                                   1022 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:86: SCON0  = 0x50;                      // SCON0: mode 1, 8-bit UART, enable RX
      000082 75 98 50         [24] 1023 	mov	_SCON0,#0x50
                           000023  1024 	C$c8051_SDCC.h$87$1$4 ==.
                                   1025 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:87: TMOD   = 0x20;                      // TMOD: timer 1, mode 2, 8-bit reload
      000085 75 89 20         [24] 1026 	mov	_TMOD,#0x20
                           000026  1027 	C$c8051_SDCC.h$88$1$4 ==.
                                   1028 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:88: TH1    = 0xFF&-(SYSCLK/BAUDRATE/16);     // set Timer1 reload value for baudrate
      000088 75 8D DC         [24] 1029 	mov	_TH1,#0xdc
                           000029  1030 	C$c8051_SDCC.h$89$1$4 ==.
                                   1031 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:89: TR1    = 1;                         // start Timer1
      00008B D2 8E            [12] 1032 	setb	_TR1
                           00002B  1033 	C$c8051_SDCC.h$90$1$4 ==.
                                   1034 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:90: CKCON |= 0x10;                      // Timer1 uses SYSCLK as time base
      00008D 43 8E 10         [24] 1035 	orl	_CKCON,#0x10
                           00002E  1036 	C$c8051_SDCC.h$91$1$4 ==.
                                   1037 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:91: PCON  |= 0x80;                      // SMOD00 = 1 (disable baud rate 
      000090 43 87 80         [24] 1038 	orl	_PCON,#0x80
                           000031  1039 	C$c8051_SDCC.h$93$1$4 ==.
                                   1040 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:93: TI0    = 1;                         // Indicate TX0 ready
      000093 D2 99            [12] 1041 	setb	_TI0
                           000033  1042 	C$c8051_SDCC.h$94$1$4 ==.
                                   1043 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:94: P0MDOUT |= 0x01;                    // Set TX0 to push/pull
      000095 43 A4 01         [24] 1044 	orl	_P0MDOUT,#0x01
                           000036  1045 	C$c8051_SDCC.h$95$1$4 ==.
                           000036  1046 	XG$UART0_Init$0$0 ==.
      000098 22               [24] 1047 	ret
                                   1048 ;------------------------------------------------------------
                                   1049 ;Allocation info for local variables in function 'Sys_Init'
                                   1050 ;------------------------------------------------------------
                           000037  1051 	G$Sys_Init$0$0 ==.
                           000037  1052 	C$c8051_SDCC.h$103$1$4 ==.
                                   1053 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:103: void Sys_Init(void)
                                   1054 ;	-----------------------------------------
                                   1055 ;	 function Sys_Init
                                   1056 ;	-----------------------------------------
      000099                       1057 _Sys_Init:
                           000037  1058 	C$c8051_SDCC.h$105$1$6 ==.
                                   1059 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:105: WDTCN = 0xde;			// disable watchdog timer
      000099 75 FF DE         [24] 1060 	mov	_WDTCN,#0xde
                           00003A  1061 	C$c8051_SDCC.h$106$1$6 ==.
                                   1062 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:106: WDTCN = 0xad;
      00009C 75 FF AD         [24] 1063 	mov	_WDTCN,#0xad
                           00003D  1064 	C$c8051_SDCC.h$108$1$6 ==.
                                   1065 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:108: SYSCLK_Init();			// initialize oscillator
      00009F 12 00 62         [24] 1066 	lcall	_SYSCLK_Init
                           000040  1067 	C$c8051_SDCC.h$109$1$6 ==.
                                   1068 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:109: UART0_Init();			// initialize UART0
      0000A2 12 00 82         [24] 1069 	lcall	_UART0_Init
                           000043  1070 	C$c8051_SDCC.h$111$1$6 ==.
                                   1071 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:111: XBR0 |= 0x04;
      0000A5 43 E1 04         [24] 1072 	orl	_XBR0,#0x04
                           000046  1073 	C$c8051_SDCC.h$112$1$6 ==.
                                   1074 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:112: XBR2 |= 0x40;                    	// Enable crossbar and weak pull-ups
      0000A8 43 E3 40         [24] 1075 	orl	_XBR2,#0x40
                           000049  1076 	C$c8051_SDCC.h$113$1$6 ==.
                           000049  1077 	XG$Sys_Init$0$0 ==.
      0000AB 22               [24] 1078 	ret
                                   1079 ;------------------------------------------------------------
                                   1080 ;Allocation info for local variables in function 'putchar'
                                   1081 ;------------------------------------------------------------
                                   1082 ;c                         Allocated to registers r7 
                                   1083 ;------------------------------------------------------------
                           00004A  1084 	G$putchar$0$0 ==.
                           00004A  1085 	C$c8051_SDCC.h$129$1$6 ==.
                                   1086 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:129: void putchar(char c)
                                   1087 ;	-----------------------------------------
                                   1088 ;	 function putchar
                                   1089 ;	-----------------------------------------
      0000AC                       1090 _putchar:
      0000AC AF 82            [24] 1091 	mov	r7,dpl
                           00004C  1092 	C$c8051_SDCC.h$132$1$8 ==.
                                   1093 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:132: while (!TI0); 
      0000AE                       1094 00101$:
                           00004C  1095 	C$c8051_SDCC.h$133$1$8 ==.
                                   1096 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:133: TI0 = 0;
      0000AE 10 99 02         [24] 1097 	jbc	_TI0,00112$
      0000B1 80 FB            [24] 1098 	sjmp	00101$
      0000B3                       1099 00112$:
                           000051  1100 	C$c8051_SDCC.h$134$1$8 ==.
                                   1101 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:134: SBUF0 = c;
      0000B3 8F 99            [24] 1102 	mov	_SBUF0,r7
                           000053  1103 	C$c8051_SDCC.h$135$1$8 ==.
                           000053  1104 	XG$putchar$0$0 ==.
      0000B5 22               [24] 1105 	ret
                                   1106 ;------------------------------------------------------------
                                   1107 ;Allocation info for local variables in function 'getchar'
                                   1108 ;------------------------------------------------------------
                                   1109 ;c                         Allocated to registers r7 
                                   1110 ;------------------------------------------------------------
                           000054  1111 	G$getchar$0$0 ==.
                           000054  1112 	C$c8051_SDCC.h$154$1$8 ==.
                                   1113 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:154: char getchar(void)
                                   1114 ;	-----------------------------------------
                                   1115 ;	 function getchar
                                   1116 ;	-----------------------------------------
      0000B6                       1117 _getchar:
                           000054  1118 	C$c8051_SDCC.h$157$1$10 ==.
                                   1119 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:157: while (!RI0);
      0000B6                       1120 00101$:
                           000054  1121 	C$c8051_SDCC.h$158$1$10 ==.
                                   1122 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:158: RI0 = 0;
      0000B6 10 98 02         [24] 1123 	jbc	_RI0,00112$
      0000B9 80 FB            [24] 1124 	sjmp	00101$
      0000BB                       1125 00112$:
                           000059  1126 	C$c8051_SDCC.h$159$1$10 ==.
                                   1127 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:159: c = SBUF0;
      0000BB AF 99            [24] 1128 	mov	r7,_SBUF0
                           00005B  1129 	C$c8051_SDCC.h$160$1$10 ==.
                                   1130 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:160: putchar(c);                          // echo to terminal
      0000BD 8F 82            [24] 1131 	mov	dpl,r7
      0000BF C0 07            [24] 1132 	push	ar7
      0000C1 12 00 AC         [24] 1133 	lcall	_putchar
      0000C4 D0 07            [24] 1134 	pop	ar7
                           000064  1135 	C$c8051_SDCC.h$161$1$10 ==.
                                   1136 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:161: return c;
      0000C6 8F 82            [24] 1137 	mov	dpl,r7
                           000066  1138 	C$c8051_SDCC.h$162$1$10 ==.
                           000066  1139 	XG$getchar$0$0 ==.
      0000C8 22               [24] 1140 	ret
                                   1141 ;------------------------------------------------------------
                                   1142 ;Allocation info for local variables in function 'getchar_nw'
                                   1143 ;------------------------------------------------------------
                                   1144 ;c                         Allocated to registers 
                                   1145 ;------------------------------------------------------------
                           000067  1146 	G$getchar_nw$0$0 ==.
                           000067  1147 	C$c8051_SDCC.h$168$1$10 ==.
                                   1148 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:168: char getchar_nw(void)
                                   1149 ;	-----------------------------------------
                                   1150 ;	 function getchar_nw
                                   1151 ;	-----------------------------------------
      0000C9                       1152 _getchar_nw:
                           000067  1153 	C$c8051_SDCC.h$171$1$12 ==.
                                   1154 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:171: if (!RI0) return 0xFF;
      0000C9 20 98 05         [24] 1155 	jb	_RI0,00102$
      0000CC 75 82 FF         [24] 1156 	mov	dpl,#0xff
      0000CF 80 0B            [24] 1157 	sjmp	00104$
      0000D1                       1158 00102$:
                           00006F  1159 	C$c8051_SDCC.h$174$2$13 ==.
                                   1160 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:174: RI0 = 0;
      0000D1 C2 98            [12] 1161 	clr	_RI0
                           000071  1162 	C$c8051_SDCC.h$175$2$13 ==.
                                   1163 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:175: c = SBUF0;
      0000D3 85 99 82         [24] 1164 	mov	dpl,_SBUF0
                           000074  1165 	C$c8051_SDCC.h$176$2$13 ==.
                                   1166 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:176: putchar(c);                          // echo to terminal
      0000D6 12 00 AC         [24] 1167 	lcall	_putchar
                           000077  1168 	C$c8051_SDCC.h$177$2$13 ==.
                                   1169 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:177: return SBUF0;
      0000D9 85 99 82         [24] 1170 	mov	dpl,_SBUF0
      0000DC                       1171 00104$:
                           00007A  1172 	C$c8051_SDCC.h$179$1$12 ==.
                           00007A  1173 	XG$getchar_nw$0$0 ==.
      0000DC 22               [24] 1174 	ret
                                   1175 ;------------------------------------------------------------
                                   1176 ;Allocation info for local variables in function 'main'
                                   1177 ;------------------------------------------------------------
                           00007B  1178 	G$main$0$0 ==.
                           00007B  1179 	C$lab1_1_hardware_test.c$24$1$12 ==.
                                   1180 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:24: void main(void)
                                   1181 ;	-----------------------------------------
                                   1182 ;	 function main
                                   1183 ;	-----------------------------------------
      0000DD                       1184 _main:
                           00007B  1185 	C$lab1_1_hardware_test.c$26$1$31 ==.
                                   1186 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:26: Sys_Init();
      0000DD 12 00 99         [24] 1187 	lcall	_Sys_Init
                           00007E  1188 	C$lab1_1_hardware_test.c$27$1$31 ==.
                                   1189 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:27: putchar(' ');
      0000E0 75 82 20         [24] 1190 	mov	dpl,#0x20
      0000E3 12 00 AC         [24] 1191 	lcall	_putchar
                           000084  1192 	C$lab1_1_hardware_test.c$28$1$31 ==.
                                   1193 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:28: Port_Init();	//initialize digital I/O
      0000E6 12 00 F2         [24] 1194 	lcall	_Port_Init
                           000087  1195 	C$lab1_1_hardware_test.c$30$1$31 ==.
                                   1196 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:30: while(1)
      0000E9                       1197 00102$:
                           000087  1198 	C$lab1_1_hardware_test.c$32$2$32 ==.
                                   1199 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:32: first_press();
      0000E9 12 01 01         [24] 1200 	lcall	_first_press
                           00008A  1201 	C$lab1_1_hardware_test.c$34$2$32 ==.
                                   1202 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:34: second_press();
      0000EC 12 01 CF         [24] 1203 	lcall	_second_press
      0000EF 80 F8            [24] 1204 	sjmp	00102$
                           00008F  1205 	C$lab1_1_hardware_test.c$36$1$31 ==.
                           00008F  1206 	XG$main$0$0 ==.
      0000F1 22               [24] 1207 	ret
                                   1208 ;------------------------------------------------------------
                                   1209 ;Allocation info for local variables in function 'Port_Init'
                                   1210 ;------------------------------------------------------------
                           000090  1211 	G$Port_Init$0$0 ==.
                           000090  1212 	C$lab1_1_hardware_test.c$41$1$31 ==.
                                   1213 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:41: void Port_Init(void)
                                   1214 ;	-----------------------------------------
                                   1215 ;	 function Port_Init
                                   1216 ;	-----------------------------------------
      0000F2                       1217 _Port_Init:
                           000090  1218 	C$lab1_1_hardware_test.c$43$1$34 ==.
                                   1219 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:43: P2MDOUT = 0x00;
      0000F2 75 A6 00         [24] 1220 	mov	_P2MDOUT,#0x00
                           000093  1221 	C$lab1_1_hardware_test.c$44$1$34 ==.
                                   1222 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:44: P2 |= 0xFF;
      0000F5 E5 A0            [12] 1223 	mov	a,_P2
      0000F7 75 A0 FF         [24] 1224 	mov	_P2,#0xff
                           000098  1225 	C$lab1_1_hardware_test.c$45$1$34 ==.
                                   1226 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:45: P3MDOUT = 0xFC;
      0000FA 75 A7 FC         [24] 1227 	mov	_P3MDOUT,#0xfc
                           00009B  1228 	C$lab1_1_hardware_test.c$46$1$34 ==.
                                   1229 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:46: P3 |= 0x03;
      0000FD 43 B0 03         [24] 1230 	orl	_P3,#0x03
                           00009E  1231 	C$lab1_1_hardware_test.c$47$1$34 ==.
                           00009E  1232 	XG$Port_Init$0$0 ==.
      000100 22               [24] 1233 	ret
                                   1234 ;------------------------------------------------------------
                                   1235 ;Allocation info for local variables in function 'first_press'
                                   1236 ;------------------------------------------------------------
                           00009F  1237 	G$first_press$0$0 ==.
                           00009F  1238 	C$lab1_1_hardware_test.c$49$1$34 ==.
                                   1239 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:49: void first_press(void)
                                   1240 ;	-----------------------------------------
                                   1241 ;	 function first_press
                                   1242 ;	-----------------------------------------
      000101                       1243 _first_press:
                           00009F  1244 	C$lab1_1_hardware_test.c$51$1$36 ==.
                                   1245 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:51: printf("Push a character on the keyboard to turn on outputs and report status of inputs \r\n");
      000101 74 42            [12] 1246 	mov	a,#___str_0
      000103 C0 E0            [24] 1247 	push	acc
      000105 74 08            [12] 1248 	mov	a,#(___str_0 >> 8)
      000107 C0 E0            [24] 1249 	push	acc
      000109 74 80            [12] 1250 	mov	a,#0x80
      00010B C0 E0            [24] 1251 	push	acc
      00010D 12 02 27         [24] 1252 	lcall	_printf
      000110 15 81            [12] 1253 	dec	sp
      000112 15 81            [12] 1254 	dec	sp
      000114 15 81            [12] 1255 	dec	sp
                           0000B4  1256 	C$lab1_1_hardware_test.c$52$1$36 ==.
                                   1257 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:52: input = getchar(); // wait for character from keyboard
      000116 12 00 B6         [24] 1258 	lcall	_getchar
      000119 85 82 08         [24] 1259 	mov	_input,dpl
                           0000BA  1260 	C$lab1_1_hardware_test.c$53$1$36 ==.
                                   1261 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:53: printf(" \r\n \r\n");
      00011C 74 95            [12] 1262 	mov	a,#___str_1
      00011E C0 E0            [24] 1263 	push	acc
      000120 74 08            [12] 1264 	mov	a,#(___str_1 >> 8)
      000122 C0 E0            [24] 1265 	push	acc
      000124 74 80            [12] 1266 	mov	a,#0x80
      000126 C0 E0            [24] 1267 	push	acc
      000128 12 02 27         [24] 1268 	lcall	_printf
      00012B 15 81            [12] 1269 	dec	sp
      00012D 15 81            [12] 1270 	dec	sp
      00012F 15 81            [12] 1271 	dec	sp
                           0000CF  1272 	C$lab1_1_hardware_test.c$54$1$36 ==.
                                   1273 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:54: P3 &= 0x03;
      000131 53 B0 03         [24] 1274 	anl	_P3,#0x03
                           0000D2  1275 	C$lab1_1_hardware_test.c$55$1$36 ==.
                                   1276 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:55: P3 |= 0x08;
      000134 43 B0 08         [24] 1277 	orl	_P3,#0x08
                           0000D5  1278 	C$lab1_1_hardware_test.c$56$1$36 ==.
                                   1279 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:56: port_byte = P3;
                           0000D5  1280 	C$lab1_1_hardware_test.c$57$1$36 ==.
                                   1281 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:57: if (port_byte & 0x01)
      000137 E5 B0            [12] 1282 	mov	a,_P3
      000139 F5 09            [12] 1283 	mov	_port_byte,a
      00013B 30 E0 17         [24] 1284 	jnb	acc.0,00102$
                           0000DC  1285 	C$lab1_1_hardware_test.c$59$2$37 ==.
                                   1286 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:59: printf("Pushbutton 1 is 'up' \r\n");
      00013E 74 9C            [12] 1287 	mov	a,#___str_2
      000140 C0 E0            [24] 1288 	push	acc
      000142 74 08            [12] 1289 	mov	a,#(___str_2 >> 8)
      000144 C0 E0            [24] 1290 	push	acc
      000146 74 80            [12] 1291 	mov	a,#0x80
      000148 C0 E0            [24] 1292 	push	acc
      00014A 12 02 27         [24] 1293 	lcall	_printf
      00014D 15 81            [12] 1294 	dec	sp
      00014F 15 81            [12] 1295 	dec	sp
      000151 15 81            [12] 1296 	dec	sp
      000153 80 15            [24] 1297 	sjmp	00103$
      000155                       1298 00102$:
                           0000F3  1299 	C$lab1_1_hardware_test.c$63$2$38 ==.
                                   1300 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:63: printf("Pushbutton 1 is 'down' \r\n");
      000155 74 B4            [12] 1301 	mov	a,#___str_3
      000157 C0 E0            [24] 1302 	push	acc
      000159 74 08            [12] 1303 	mov	a,#(___str_3 >> 8)
      00015B C0 E0            [24] 1304 	push	acc
      00015D 74 80            [12] 1305 	mov	a,#0x80
      00015F C0 E0            [24] 1306 	push	acc
      000161 12 02 27         [24] 1307 	lcall	_printf
      000164 15 81            [12] 1308 	dec	sp
      000166 15 81            [12] 1309 	dec	sp
      000168 15 81            [12] 1310 	dec	sp
      00016A                       1311 00103$:
                           000108  1312 	C$lab1_1_hardware_test.c$65$1$36 ==.
                                   1313 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:65: if (port_byte & 0x02)
      00016A E5 09            [12] 1314 	mov	a,_port_byte
      00016C 30 E1 17         [24] 1315 	jnb	acc.1,00105$
                           00010D  1316 	C$lab1_1_hardware_test.c$67$2$39 ==.
                                   1317 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:67: printf("Pushbutton 2 is 'up' \r\n");
      00016F 74 CE            [12] 1318 	mov	a,#___str_4
      000171 C0 E0            [24] 1319 	push	acc
      000173 74 08            [12] 1320 	mov	a,#(___str_4 >> 8)
      000175 C0 E0            [24] 1321 	push	acc
      000177 74 80            [12] 1322 	mov	a,#0x80
      000179 C0 E0            [24] 1323 	push	acc
      00017B 12 02 27         [24] 1324 	lcall	_printf
      00017E 15 81            [12] 1325 	dec	sp
      000180 15 81            [12] 1326 	dec	sp
      000182 15 81            [12] 1327 	dec	sp
      000184 80 15            [24] 1328 	sjmp	00106$
      000186                       1329 00105$:
                           000124  1330 	C$lab1_1_hardware_test.c$71$2$40 ==.
                                   1331 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:71: printf("Pushbutton 2 is 'down' \r\n");
      000186 74 E6            [12] 1332 	mov	a,#___str_5
      000188 C0 E0            [24] 1333 	push	acc
      00018A 74 08            [12] 1334 	mov	a,#(___str_5 >> 8)
      00018C C0 E0            [24] 1335 	push	acc
      00018E 74 80            [12] 1336 	mov	a,#0x80
      000190 C0 E0            [24] 1337 	push	acc
      000192 12 02 27         [24] 1338 	lcall	_printf
      000195 15 81            [12] 1339 	dec	sp
      000197 15 81            [12] 1340 	dec	sp
      000199 15 81            [12] 1341 	dec	sp
      00019B                       1342 00106$:
                           000139  1343 	C$lab1_1_hardware_test.c$73$1$36 ==.
                                   1344 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:73: port_byte = P2;
                           000139  1345 	C$lab1_1_hardware_test.c$74$1$36 ==.
                                   1346 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:74: if (port_byte & 0x01)
      00019B E5 A0            [12] 1347 	mov	a,_P2
      00019D F5 09            [12] 1348 	mov	_port_byte,a
      00019F 30 E0 17         [24] 1349 	jnb	acc.0,00108$
                           000140  1350 	C$lab1_1_hardware_test.c$76$2$41 ==.
                                   1351 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:76: printf("Slideswitch is 'off' \r\n");
      0001A2 74 00            [12] 1352 	mov	a,#___str_6
      0001A4 C0 E0            [24] 1353 	push	acc
      0001A6 74 09            [12] 1354 	mov	a,#(___str_6 >> 8)
      0001A8 C0 E0            [24] 1355 	push	acc
      0001AA 74 80            [12] 1356 	mov	a,#0x80
      0001AC C0 E0            [24] 1357 	push	acc
      0001AE 12 02 27         [24] 1358 	lcall	_printf
      0001B1 15 81            [12] 1359 	dec	sp
      0001B3 15 81            [12] 1360 	dec	sp
      0001B5 15 81            [12] 1361 	dec	sp
      0001B7 80 15            [24] 1362 	sjmp	00110$
      0001B9                       1363 00108$:
                           000157  1364 	C$lab1_1_hardware_test.c$80$2$42 ==.
                                   1365 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:80: printf("Slideswitch is 'on' \r\n");
      0001B9 74 18            [12] 1366 	mov	a,#___str_7
      0001BB C0 E0            [24] 1367 	push	acc
      0001BD 74 09            [12] 1368 	mov	a,#(___str_7 >> 8)
      0001BF C0 E0            [24] 1369 	push	acc
      0001C1 74 80            [12] 1370 	mov	a,#0x80
      0001C3 C0 E0            [24] 1371 	push	acc
      0001C5 12 02 27         [24] 1372 	lcall	_printf
      0001C8 15 81            [12] 1373 	dec	sp
      0001CA 15 81            [12] 1374 	dec	sp
      0001CC 15 81            [12] 1375 	dec	sp
      0001CE                       1376 00110$:
                           00016C  1377 	C$lab1_1_hardware_test.c$82$1$36 ==.
                           00016C  1378 	XG$first_press$0$0 ==.
      0001CE 22               [24] 1379 	ret
                                   1380 ;------------------------------------------------------------
                                   1381 ;Allocation info for local variables in function 'second_press'
                                   1382 ;------------------------------------------------------------
                           00016D  1383 	G$second_press$0$0 ==.
                           00016D  1384 	C$lab1_1_hardware_test.c$84$1$36 ==.
                                   1385 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:84: void second_press(void)
                                   1386 ;	-----------------------------------------
                                   1387 ;	 function second_press
                                   1388 ;	-----------------------------------------
      0001CF                       1389 _second_press:
                           00016D  1390 	C$lab1_1_hardware_test.c$86$1$44 ==.
                                   1391 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:86: printf("Push a character on the keyboard to turn off all outputs \r\n");
      0001CF 74 2F            [12] 1392 	mov	a,#___str_8
      0001D1 C0 E0            [24] 1393 	push	acc
      0001D3 74 09            [12] 1394 	mov	a,#(___str_8 >> 8)
      0001D5 C0 E0            [24] 1395 	push	acc
      0001D7 74 80            [12] 1396 	mov	a,#0x80
      0001D9 C0 E0            [24] 1397 	push	acc
      0001DB 12 02 27         [24] 1398 	lcall	_printf
      0001DE 15 81            [12] 1399 	dec	sp
      0001E0 15 81            [12] 1400 	dec	sp
      0001E2 15 81            [12] 1401 	dec	sp
                           000182  1402 	C$lab1_1_hardware_test.c$87$1$44 ==.
                                   1403 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:87: input = getchar(); // wait for character from keyboard
      0001E4 12 00 B6         [24] 1404 	lcall	_getchar
      0001E7 85 82 08         [24] 1405 	mov	_input,dpl
                           000188  1406 	C$lab1_1_hardware_test.c$88$1$44 ==.
                                   1407 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:88: printf(" \r\n \r\n");
      0001EA 74 95            [12] 1408 	mov	a,#___str_1
      0001EC C0 E0            [24] 1409 	push	acc
      0001EE 74 08            [12] 1410 	mov	a,#(___str_1 >> 8)
      0001F0 C0 E0            [24] 1411 	push	acc
      0001F2 74 80            [12] 1412 	mov	a,#0x80
      0001F4 C0 E0            [24] 1413 	push	acc
      0001F6 12 02 27         [24] 1414 	lcall	_printf
      0001F9 15 81            [12] 1415 	dec	sp
      0001FB 15 81            [12] 1416 	dec	sp
      0001FD 15 81            [12] 1417 	dec	sp
                           00019D  1418 	C$lab1_1_hardware_test.c$89$1$44 ==.
                                   1419 ;	C:\Users\Tim\Documents\LITEC\Lab1\lab1-1_hardware_test.c:89: P3 |= ~0x03;
      0001FF 43 B0 FC         [24] 1420 	orl	_P3,#0xfc
                           0001A0  1421 	C$lab1_1_hardware_test.c$90$1$44 ==.
                           0001A0  1422 	XG$second_press$0$0 ==.
      000202 22               [24] 1423 	ret
                                   1424 	.area CSEG    (CODE)
                                   1425 	.area CONST   (CODE)
                           000000  1426 Flab1_1_hardware_test$__str_0$0$0 == .
      000842                       1427 ___str_0:
      000842 50 75 73 68 20 61 20  1428 	.ascii "Push a character on the keyboard to turn on outputs and repo"
             63 68 61 72 61 63 74
             65 72 20 6F 6E 20 74
             68 65 20 6B 65 79 62
             6F 61 72 64 20 74 6F
             20 74 75 72 6E 20 6F
             6E 20 6F 75 74 70 75
             74 73 20 61 6E 64 20
             72 65 70 6F
      00087E 72 74 20 73 74 61 74  1429 	.ascii "rt status of inputs "
             75 73 20 6F 66 20 69
             6E 70 75 74 73 20
      000892 0D                    1430 	.db 0x0d
      000893 0A                    1431 	.db 0x0a
      000894 00                    1432 	.db 0x00
                           000053  1433 Flab1_1_hardware_test$__str_1$0$0 == .
      000895                       1434 ___str_1:
      000895 20                    1435 	.ascii " "
      000896 0D                    1436 	.db 0x0d
      000897 0A                    1437 	.db 0x0a
      000898 20                    1438 	.ascii " "
      000899 0D                    1439 	.db 0x0d
      00089A 0A                    1440 	.db 0x0a
      00089B 00                    1441 	.db 0x00
                           00005A  1442 Flab1_1_hardware_test$__str_2$0$0 == .
      00089C                       1443 ___str_2:
      00089C 50 75 73 68 62 75 74  1444 	.ascii "Pushbutton 1 is 'up' "
             74 6F 6E 20 31 20 69
             73 20 27 75 70 27 20
      0008B1 0D                    1445 	.db 0x0d
      0008B2 0A                    1446 	.db 0x0a
      0008B3 00                    1447 	.db 0x00
                           000072  1448 Flab1_1_hardware_test$__str_3$0$0 == .
      0008B4                       1449 ___str_3:
      0008B4 50 75 73 68 62 75 74  1450 	.ascii "Pushbutton 1 is 'down' "
             74 6F 6E 20 31 20 69
             73 20 27 64 6F 77 6E
             27 20
      0008CB 0D                    1451 	.db 0x0d
      0008CC 0A                    1452 	.db 0x0a
      0008CD 00                    1453 	.db 0x00
                           00008C  1454 Flab1_1_hardware_test$__str_4$0$0 == .
      0008CE                       1455 ___str_4:
      0008CE 50 75 73 68 62 75 74  1456 	.ascii "Pushbutton 2 is 'up' "
             74 6F 6E 20 32 20 69
             73 20 27 75 70 27 20
      0008E3 0D                    1457 	.db 0x0d
      0008E4 0A                    1458 	.db 0x0a
      0008E5 00                    1459 	.db 0x00
                           0000A4  1460 Flab1_1_hardware_test$__str_5$0$0 == .
      0008E6                       1461 ___str_5:
      0008E6 50 75 73 68 62 75 74  1462 	.ascii "Pushbutton 2 is 'down' "
             74 6F 6E 20 32 20 69
             73 20 27 64 6F 77 6E
             27 20
      0008FD 0D                    1463 	.db 0x0d
      0008FE 0A                    1464 	.db 0x0a
      0008FF 00                    1465 	.db 0x00
                           0000BE  1466 Flab1_1_hardware_test$__str_6$0$0 == .
      000900                       1467 ___str_6:
      000900 53 6C 69 64 65 73 77  1468 	.ascii "Slideswitch is 'off' "
             69 74 63 68 20 69 73
             20 27 6F 66 66 27 20
      000915 0D                    1469 	.db 0x0d
      000916 0A                    1470 	.db 0x0a
      000917 00                    1471 	.db 0x00
                           0000D6  1472 Flab1_1_hardware_test$__str_7$0$0 == .
      000918                       1473 ___str_7:
      000918 53 6C 69 64 65 73 77  1474 	.ascii "Slideswitch is 'on' "
             69 74 63 68 20 69 73
             20 27 6F 6E 27 20
      00092C 0D                    1475 	.db 0x0d
      00092D 0A                    1476 	.db 0x0a
      00092E 00                    1477 	.db 0x00
                           0000ED  1478 Flab1_1_hardware_test$__str_8$0$0 == .
      00092F                       1479 ___str_8:
      00092F 50 75 73 68 20 61 20  1480 	.ascii "Push a character on the keyboard to turn off all outputs "
             63 68 61 72 61 63 74
             65 72 20 6F 6E 20 74
             68 65 20 6B 65 79 62
             6F 61 72 64 20 74 6F
             20 74 75 72 6E 20 6F
             66 66 20 61 6C 6C 20
             6F 75 74 70 75 74 73
             20
      000968 0D                    1481 	.db 0x0d
      000969 0A                    1482 	.db 0x0a
      00096A 00                    1483 	.db 0x00
                                   1484 	.area XINIT   (CODE)
                                   1485 	.area CABS    (ABS,CODE)
