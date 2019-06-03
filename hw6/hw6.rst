                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module hw6
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
                                     19 	.globl _PB1
                                     20 	.globl _SPIF
                                     21 	.globl _WCOL
                                     22 	.globl _MODF
                                     23 	.globl _RXOVRN
                                     24 	.globl _TXBSY
                                     25 	.globl _SLVSEL
                                     26 	.globl _MSTEN
                                     27 	.globl _SPIEN
                                     28 	.globl _AD0EN
                                     29 	.globl _ADCEN
                                     30 	.globl _AD0TM
                                     31 	.globl _ADCTM
                                     32 	.globl _AD0INT
                                     33 	.globl _ADCINT
                                     34 	.globl _AD0BUSY
                                     35 	.globl _ADBUSY
                                     36 	.globl _AD0CM1
                                     37 	.globl _ADSTM1
                                     38 	.globl _AD0CM0
                                     39 	.globl _ADSTM0
                                     40 	.globl _AD0WINT
                                     41 	.globl _ADWINT
                                     42 	.globl _AD0LJST
                                     43 	.globl _ADLJST
                                     44 	.globl _CF
                                     45 	.globl _CR
                                     46 	.globl _CCF4
                                     47 	.globl _CCF3
                                     48 	.globl _CCF2
                                     49 	.globl _CCF1
                                     50 	.globl _CCF0
                                     51 	.globl _CY
                                     52 	.globl _AC
                                     53 	.globl _F0
                                     54 	.globl _RS1
                                     55 	.globl _RS0
                                     56 	.globl _OV
                                     57 	.globl _F1
                                     58 	.globl _P
                                     59 	.globl _TF2
                                     60 	.globl _EXF2
                                     61 	.globl _RCLK
                                     62 	.globl _TCLK
                                     63 	.globl _EXEN2
                                     64 	.globl _TR2
                                     65 	.globl _CT2
                                     66 	.globl _CPRL2
                                     67 	.globl _BUSY
                                     68 	.globl _ENSMB
                                     69 	.globl _STA
                                     70 	.globl _STO
                                     71 	.globl _SI
                                     72 	.globl _AA
                                     73 	.globl _SMBFTE
                                     74 	.globl _SMBTOE
                                     75 	.globl _PT2
                                     76 	.globl _PS
                                     77 	.globl _PS0
                                     78 	.globl _PT1
                                     79 	.globl _PX1
                                     80 	.globl _PT0
                                     81 	.globl _PX0
                                     82 	.globl _P3_7
                                     83 	.globl _P3_6
                                     84 	.globl _P3_5
                                     85 	.globl _P3_4
                                     86 	.globl _P3_3
                                     87 	.globl _P3_2
                                     88 	.globl _P3_1
                                     89 	.globl _P3_0
                                     90 	.globl _EA
                                     91 	.globl _ET2
                                     92 	.globl _ES
                                     93 	.globl _ES0
                                     94 	.globl _ET1
                                     95 	.globl _EX1
                                     96 	.globl _ET0
                                     97 	.globl _EX0
                                     98 	.globl _P2_7
                                     99 	.globl _P2_6
                                    100 	.globl _P2_5
                                    101 	.globl _P2_4
                                    102 	.globl _P2_3
                                    103 	.globl _P2_2
                                    104 	.globl _P2_1
                                    105 	.globl _P2_0
                                    106 	.globl _S0MODE
                                    107 	.globl _SM00
                                    108 	.globl _SM0
                                    109 	.globl _SM10
                                    110 	.globl _SM1
                                    111 	.globl _MCE0
                                    112 	.globl _SM20
                                    113 	.globl _SM2
                                    114 	.globl _REN0
                                    115 	.globl _REN
                                    116 	.globl _TB80
                                    117 	.globl _TB8
                                    118 	.globl _RB80
                                    119 	.globl _RB8
                                    120 	.globl _TI0
                                    121 	.globl _TI
                                    122 	.globl _RI0
                                    123 	.globl _RI
                                    124 	.globl _P1_7
                                    125 	.globl _P1_6
                                    126 	.globl _P1_5
                                    127 	.globl _P1_4
                                    128 	.globl _P1_3
                                    129 	.globl _P1_2
                                    130 	.globl _P1_1
                                    131 	.globl _P1_0
                                    132 	.globl _TF1
                                    133 	.globl _TR1
                                    134 	.globl _TF0
                                    135 	.globl _TR0
                                    136 	.globl _IE1
                                    137 	.globl _IT1
                                    138 	.globl _IE0
                                    139 	.globl _IT0
                                    140 	.globl _P0_7
                                    141 	.globl _P0_6
                                    142 	.globl _P0_5
                                    143 	.globl _P0_4
                                    144 	.globl _P0_3
                                    145 	.globl _P0_2
                                    146 	.globl _P0_1
                                    147 	.globl _P0_0
                                    148 	.globl _PCA0CP4
                                    149 	.globl _PCA0CP3
                                    150 	.globl _PCA0CP2
                                    151 	.globl _PCA0CP1
                                    152 	.globl _PCA0CP0
                                    153 	.globl _PCA0
                                    154 	.globl _DAC1
                                    155 	.globl _DAC0
                                    156 	.globl _ADC0LT
                                    157 	.globl _ADC0GT
                                    158 	.globl _ADC0
                                    159 	.globl _RCAP4
                                    160 	.globl _TMR4
                                    161 	.globl _TMR3RL
                                    162 	.globl _TMR3
                                    163 	.globl _RCAP2
                                    164 	.globl _TMR2
                                    165 	.globl _TMR1
                                    166 	.globl _TMR0
                                    167 	.globl _WDTCN
                                    168 	.globl _PCA0CPH4
                                    169 	.globl _PCA0CPH3
                                    170 	.globl _PCA0CPH2
                                    171 	.globl _PCA0CPH1
                                    172 	.globl _PCA0CPH0
                                    173 	.globl _PCA0H
                                    174 	.globl _SPI0CN
                                    175 	.globl _EIP2
                                    176 	.globl _EIP1
                                    177 	.globl _TH4
                                    178 	.globl _TL4
                                    179 	.globl _SADDR1
                                    180 	.globl _SBUF1
                                    181 	.globl _SCON1
                                    182 	.globl _B
                                    183 	.globl _RSTSRC
                                    184 	.globl _PCA0CPL4
                                    185 	.globl _PCA0CPL3
                                    186 	.globl _PCA0CPL2
                                    187 	.globl _PCA0CPL1
                                    188 	.globl _PCA0CPL0
                                    189 	.globl _PCA0L
                                    190 	.globl _ADC0CN
                                    191 	.globl _EIE2
                                    192 	.globl _EIE1
                                    193 	.globl _RCAP4H
                                    194 	.globl _RCAP4L
                                    195 	.globl _XBR2
                                    196 	.globl _XBR1
                                    197 	.globl _XBR0
                                    198 	.globl _ACC
                                    199 	.globl _PCA0CPM4
                                    200 	.globl _PCA0CPM3
                                    201 	.globl _PCA0CPM2
                                    202 	.globl _PCA0CPM1
                                    203 	.globl _PCA0CPM0
                                    204 	.globl _PCA0MD
                                    205 	.globl _PCA0CN
                                    206 	.globl _DAC1CN
                                    207 	.globl _DAC1H
                                    208 	.globl _DAC1L
                                    209 	.globl _DAC0CN
                                    210 	.globl _DAC0H
                                    211 	.globl _DAC0L
                                    212 	.globl _REF0CN
                                    213 	.globl _PSW
                                    214 	.globl _SMB0CR
                                    215 	.globl _TH2
                                    216 	.globl _TL2
                                    217 	.globl _RCAP2H
                                    218 	.globl _RCAP2L
                                    219 	.globl _T4CON
                                    220 	.globl _T2CON
                                    221 	.globl _ADC0LTH
                                    222 	.globl _ADC0LTL
                                    223 	.globl _ADC0GTH
                                    224 	.globl _ADC0GTL
                                    225 	.globl _SMB0ADR
                                    226 	.globl _SMB0DAT
                                    227 	.globl _SMB0STA
                                    228 	.globl _SMB0CN
                                    229 	.globl _ADC0H
                                    230 	.globl _ADC0L
                                    231 	.globl _P1MDIN
                                    232 	.globl _ADC0CF
                                    233 	.globl _AMX0SL
                                    234 	.globl _AMX0CF
                                    235 	.globl _SADEN0
                                    236 	.globl _IP
                                    237 	.globl _FLACL
                                    238 	.globl _FLSCL
                                    239 	.globl _P74OUT
                                    240 	.globl _OSCICN
                                    241 	.globl _OSCXCN
                                    242 	.globl _P3
                                    243 	.globl __XPAGE
                                    244 	.globl _EMI0CN
                                    245 	.globl _SADEN1
                                    246 	.globl _P3IF
                                    247 	.globl _AMX1SL
                                    248 	.globl _ADC1CF
                                    249 	.globl _ADC1CN
                                    250 	.globl _SADDR0
                                    251 	.globl _IE
                                    252 	.globl _P3MDOUT
                                    253 	.globl _PRT3CF
                                    254 	.globl _P2MDOUT
                                    255 	.globl _PRT2CF
                                    256 	.globl _P1MDOUT
                                    257 	.globl _PRT1CF
                                    258 	.globl _P0MDOUT
                                    259 	.globl _PRT0CF
                                    260 	.globl _EMI0CF
                                    261 	.globl _EMI0TC
                                    262 	.globl _P2
                                    263 	.globl _CPT1CN
                                    264 	.globl _CPT0CN
                                    265 	.globl _SPI0CKR
                                    266 	.globl _ADC1
                                    267 	.globl _SPI0DAT
                                    268 	.globl _SPI0CFG
                                    269 	.globl _SBUF0
                                    270 	.globl _SBUF
                                    271 	.globl _SCON0
                                    272 	.globl _SCON
                                    273 	.globl _P7
                                    274 	.globl _TMR3H
                                    275 	.globl _TMR3L
                                    276 	.globl _TMR3RLH
                                    277 	.globl _TMR3RLL
                                    278 	.globl _TMR3CN
                                    279 	.globl _P1
                                    280 	.globl _PSCTL
                                    281 	.globl _CKCON
                                    282 	.globl _TH1
                                    283 	.globl _TH0
                                    284 	.globl _TL1
                                    285 	.globl _TL0
                                    286 	.globl _TMOD
                                    287 	.globl _TCON
                                    288 	.globl _PCON
                                    289 	.globl _P6
                                    290 	.globl _P5
                                    291 	.globl _P4
                                    292 	.globl _DPH
                                    293 	.globl _DPL
                                    294 	.globl _SP
                                    295 	.globl _P0
                                    296 	.globl _input
                                    297 	.globl _count_after
                                    298 	.globl _count_before
                                    299 	.globl _PBonesec
                                    300 	.globl _PBcount
                                    301 	.globl _debounceCount
                                    302 	.globl _counts
                                    303 	.globl _Port_Init
                                    304 	.globl _Interrupt_Init
                                    305 	.globl _Timer_Init
                                    306 	.globl _Timer0_ISR
                                    307 	.globl _Debounce
                                    308 ;--------------------------------------------------------
                                    309 ; special function registers
                                    310 ;--------------------------------------------------------
                                    311 	.area RSEG    (ABS,DATA)
      000000                        312 	.org 0x0000
                           000080   313 G$P0$0$0 == 0x0080
                           000080   314 _P0	=	0x0080
                           000081   315 G$SP$0$0 == 0x0081
                           000081   316 _SP	=	0x0081
                           000082   317 G$DPL$0$0 == 0x0082
                           000082   318 _DPL	=	0x0082
                           000083   319 G$DPH$0$0 == 0x0083
                           000083   320 _DPH	=	0x0083
                           000084   321 G$P4$0$0 == 0x0084
                           000084   322 _P4	=	0x0084
                           000085   323 G$P5$0$0 == 0x0085
                           000085   324 _P5	=	0x0085
                           000086   325 G$P6$0$0 == 0x0086
                           000086   326 _P6	=	0x0086
                           000087   327 G$PCON$0$0 == 0x0087
                           000087   328 _PCON	=	0x0087
                           000088   329 G$TCON$0$0 == 0x0088
                           000088   330 _TCON	=	0x0088
                           000089   331 G$TMOD$0$0 == 0x0089
                           000089   332 _TMOD	=	0x0089
                           00008A   333 G$TL0$0$0 == 0x008a
                           00008A   334 _TL0	=	0x008a
                           00008B   335 G$TL1$0$0 == 0x008b
                           00008B   336 _TL1	=	0x008b
                           00008C   337 G$TH0$0$0 == 0x008c
                           00008C   338 _TH0	=	0x008c
                           00008D   339 G$TH1$0$0 == 0x008d
                           00008D   340 _TH1	=	0x008d
                           00008E   341 G$CKCON$0$0 == 0x008e
                           00008E   342 _CKCON	=	0x008e
                           00008F   343 G$PSCTL$0$0 == 0x008f
                           00008F   344 _PSCTL	=	0x008f
                           000090   345 G$P1$0$0 == 0x0090
                           000090   346 _P1	=	0x0090
                           000091   347 G$TMR3CN$0$0 == 0x0091
                           000091   348 _TMR3CN	=	0x0091
                           000092   349 G$TMR3RLL$0$0 == 0x0092
                           000092   350 _TMR3RLL	=	0x0092
                           000093   351 G$TMR3RLH$0$0 == 0x0093
                           000093   352 _TMR3RLH	=	0x0093
                           000094   353 G$TMR3L$0$0 == 0x0094
                           000094   354 _TMR3L	=	0x0094
                           000095   355 G$TMR3H$0$0 == 0x0095
                           000095   356 _TMR3H	=	0x0095
                           000096   357 G$P7$0$0 == 0x0096
                           000096   358 _P7	=	0x0096
                           000098   359 G$SCON$0$0 == 0x0098
                           000098   360 _SCON	=	0x0098
                           000098   361 G$SCON0$0$0 == 0x0098
                           000098   362 _SCON0	=	0x0098
                           000099   363 G$SBUF$0$0 == 0x0099
                           000099   364 _SBUF	=	0x0099
                           000099   365 G$SBUF0$0$0 == 0x0099
                           000099   366 _SBUF0	=	0x0099
                           00009A   367 G$SPI0CFG$0$0 == 0x009a
                           00009A   368 _SPI0CFG	=	0x009a
                           00009B   369 G$SPI0DAT$0$0 == 0x009b
                           00009B   370 _SPI0DAT	=	0x009b
                           00009C   371 G$ADC1$0$0 == 0x009c
                           00009C   372 _ADC1	=	0x009c
                           00009D   373 G$SPI0CKR$0$0 == 0x009d
                           00009D   374 _SPI0CKR	=	0x009d
                           00009E   375 G$CPT0CN$0$0 == 0x009e
                           00009E   376 _CPT0CN	=	0x009e
                           00009F   377 G$CPT1CN$0$0 == 0x009f
                           00009F   378 _CPT1CN	=	0x009f
                           0000A0   379 G$P2$0$0 == 0x00a0
                           0000A0   380 _P2	=	0x00a0
                           0000A1   381 G$EMI0TC$0$0 == 0x00a1
                           0000A1   382 _EMI0TC	=	0x00a1
                           0000A3   383 G$EMI0CF$0$0 == 0x00a3
                           0000A3   384 _EMI0CF	=	0x00a3
                           0000A4   385 G$PRT0CF$0$0 == 0x00a4
                           0000A4   386 _PRT0CF	=	0x00a4
                           0000A4   387 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   388 _P0MDOUT	=	0x00a4
                           0000A5   389 G$PRT1CF$0$0 == 0x00a5
                           0000A5   390 _PRT1CF	=	0x00a5
                           0000A5   391 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   392 _P1MDOUT	=	0x00a5
                           0000A6   393 G$PRT2CF$0$0 == 0x00a6
                           0000A6   394 _PRT2CF	=	0x00a6
                           0000A6   395 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   396 _P2MDOUT	=	0x00a6
                           0000A7   397 G$PRT3CF$0$0 == 0x00a7
                           0000A7   398 _PRT3CF	=	0x00a7
                           0000A7   399 G$P3MDOUT$0$0 == 0x00a7
                           0000A7   400 _P3MDOUT	=	0x00a7
                           0000A8   401 G$IE$0$0 == 0x00a8
                           0000A8   402 _IE	=	0x00a8
                           0000A9   403 G$SADDR0$0$0 == 0x00a9
                           0000A9   404 _SADDR0	=	0x00a9
                           0000AA   405 G$ADC1CN$0$0 == 0x00aa
                           0000AA   406 _ADC1CN	=	0x00aa
                           0000AB   407 G$ADC1CF$0$0 == 0x00ab
                           0000AB   408 _ADC1CF	=	0x00ab
                           0000AC   409 G$AMX1SL$0$0 == 0x00ac
                           0000AC   410 _AMX1SL	=	0x00ac
                           0000AD   411 G$P3IF$0$0 == 0x00ad
                           0000AD   412 _P3IF	=	0x00ad
                           0000AE   413 G$SADEN1$0$0 == 0x00ae
                           0000AE   414 _SADEN1	=	0x00ae
                           0000AF   415 G$EMI0CN$0$0 == 0x00af
                           0000AF   416 _EMI0CN	=	0x00af
                           0000AF   417 G$_XPAGE$0$0 == 0x00af
                           0000AF   418 __XPAGE	=	0x00af
                           0000B0   419 G$P3$0$0 == 0x00b0
                           0000B0   420 _P3	=	0x00b0
                           0000B1   421 G$OSCXCN$0$0 == 0x00b1
                           0000B1   422 _OSCXCN	=	0x00b1
                           0000B2   423 G$OSCICN$0$0 == 0x00b2
                           0000B2   424 _OSCICN	=	0x00b2
                           0000B5   425 G$P74OUT$0$0 == 0x00b5
                           0000B5   426 _P74OUT	=	0x00b5
                           0000B6   427 G$FLSCL$0$0 == 0x00b6
                           0000B6   428 _FLSCL	=	0x00b6
                           0000B7   429 G$FLACL$0$0 == 0x00b7
                           0000B7   430 _FLACL	=	0x00b7
                           0000B8   431 G$IP$0$0 == 0x00b8
                           0000B8   432 _IP	=	0x00b8
                           0000B9   433 G$SADEN0$0$0 == 0x00b9
                           0000B9   434 _SADEN0	=	0x00b9
                           0000BA   435 G$AMX0CF$0$0 == 0x00ba
                           0000BA   436 _AMX0CF	=	0x00ba
                           0000BB   437 G$AMX0SL$0$0 == 0x00bb
                           0000BB   438 _AMX0SL	=	0x00bb
                           0000BC   439 G$ADC0CF$0$0 == 0x00bc
                           0000BC   440 _ADC0CF	=	0x00bc
                           0000BD   441 G$P1MDIN$0$0 == 0x00bd
                           0000BD   442 _P1MDIN	=	0x00bd
                           0000BE   443 G$ADC0L$0$0 == 0x00be
                           0000BE   444 _ADC0L	=	0x00be
                           0000BF   445 G$ADC0H$0$0 == 0x00bf
                           0000BF   446 _ADC0H	=	0x00bf
                           0000C0   447 G$SMB0CN$0$0 == 0x00c0
                           0000C0   448 _SMB0CN	=	0x00c0
                           0000C1   449 G$SMB0STA$0$0 == 0x00c1
                           0000C1   450 _SMB0STA	=	0x00c1
                           0000C2   451 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   452 _SMB0DAT	=	0x00c2
                           0000C3   453 G$SMB0ADR$0$0 == 0x00c3
                           0000C3   454 _SMB0ADR	=	0x00c3
                           0000C4   455 G$ADC0GTL$0$0 == 0x00c4
                           0000C4   456 _ADC0GTL	=	0x00c4
                           0000C5   457 G$ADC0GTH$0$0 == 0x00c5
                           0000C5   458 _ADC0GTH	=	0x00c5
                           0000C6   459 G$ADC0LTL$0$0 == 0x00c6
                           0000C6   460 _ADC0LTL	=	0x00c6
                           0000C7   461 G$ADC0LTH$0$0 == 0x00c7
                           0000C7   462 _ADC0LTH	=	0x00c7
                           0000C8   463 G$T2CON$0$0 == 0x00c8
                           0000C8   464 _T2CON	=	0x00c8
                           0000C9   465 G$T4CON$0$0 == 0x00c9
                           0000C9   466 _T4CON	=	0x00c9
                           0000CA   467 G$RCAP2L$0$0 == 0x00ca
                           0000CA   468 _RCAP2L	=	0x00ca
                           0000CB   469 G$RCAP2H$0$0 == 0x00cb
                           0000CB   470 _RCAP2H	=	0x00cb
                           0000CC   471 G$TL2$0$0 == 0x00cc
                           0000CC   472 _TL2	=	0x00cc
                           0000CD   473 G$TH2$0$0 == 0x00cd
                           0000CD   474 _TH2	=	0x00cd
                           0000CF   475 G$SMB0CR$0$0 == 0x00cf
                           0000CF   476 _SMB0CR	=	0x00cf
                           0000D0   477 G$PSW$0$0 == 0x00d0
                           0000D0   478 _PSW	=	0x00d0
                           0000D1   479 G$REF0CN$0$0 == 0x00d1
                           0000D1   480 _REF0CN	=	0x00d1
                           0000D2   481 G$DAC0L$0$0 == 0x00d2
                           0000D2   482 _DAC0L	=	0x00d2
                           0000D3   483 G$DAC0H$0$0 == 0x00d3
                           0000D3   484 _DAC0H	=	0x00d3
                           0000D4   485 G$DAC0CN$0$0 == 0x00d4
                           0000D4   486 _DAC0CN	=	0x00d4
                           0000D5   487 G$DAC1L$0$0 == 0x00d5
                           0000D5   488 _DAC1L	=	0x00d5
                           0000D6   489 G$DAC1H$0$0 == 0x00d6
                           0000D6   490 _DAC1H	=	0x00d6
                           0000D7   491 G$DAC1CN$0$0 == 0x00d7
                           0000D7   492 _DAC1CN	=	0x00d7
                           0000D8   493 G$PCA0CN$0$0 == 0x00d8
                           0000D8   494 _PCA0CN	=	0x00d8
                           0000D9   495 G$PCA0MD$0$0 == 0x00d9
                           0000D9   496 _PCA0MD	=	0x00d9
                           0000DA   497 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   498 _PCA0CPM0	=	0x00da
                           0000DB   499 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   500 _PCA0CPM1	=	0x00db
                           0000DC   501 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   502 _PCA0CPM2	=	0x00dc
                           0000DD   503 G$PCA0CPM3$0$0 == 0x00dd
                           0000DD   504 _PCA0CPM3	=	0x00dd
                           0000DE   505 G$PCA0CPM4$0$0 == 0x00de
                           0000DE   506 _PCA0CPM4	=	0x00de
                           0000E0   507 G$ACC$0$0 == 0x00e0
                           0000E0   508 _ACC	=	0x00e0
                           0000E1   509 G$XBR0$0$0 == 0x00e1
                           0000E1   510 _XBR0	=	0x00e1
                           0000E2   511 G$XBR1$0$0 == 0x00e2
                           0000E2   512 _XBR1	=	0x00e2
                           0000E3   513 G$XBR2$0$0 == 0x00e3
                           0000E3   514 _XBR2	=	0x00e3
                           0000E4   515 G$RCAP4L$0$0 == 0x00e4
                           0000E4   516 _RCAP4L	=	0x00e4
                           0000E5   517 G$RCAP4H$0$0 == 0x00e5
                           0000E5   518 _RCAP4H	=	0x00e5
                           0000E6   519 G$EIE1$0$0 == 0x00e6
                           0000E6   520 _EIE1	=	0x00e6
                           0000E7   521 G$EIE2$0$0 == 0x00e7
                           0000E7   522 _EIE2	=	0x00e7
                           0000E8   523 G$ADC0CN$0$0 == 0x00e8
                           0000E8   524 _ADC0CN	=	0x00e8
                           0000E9   525 G$PCA0L$0$0 == 0x00e9
                           0000E9   526 _PCA0L	=	0x00e9
                           0000EA   527 G$PCA0CPL0$0$0 == 0x00ea
                           0000EA   528 _PCA0CPL0	=	0x00ea
                           0000EB   529 G$PCA0CPL1$0$0 == 0x00eb
                           0000EB   530 _PCA0CPL1	=	0x00eb
                           0000EC   531 G$PCA0CPL2$0$0 == 0x00ec
                           0000EC   532 _PCA0CPL2	=	0x00ec
                           0000ED   533 G$PCA0CPL3$0$0 == 0x00ed
                           0000ED   534 _PCA0CPL3	=	0x00ed
                           0000EE   535 G$PCA0CPL4$0$0 == 0x00ee
                           0000EE   536 _PCA0CPL4	=	0x00ee
                           0000EF   537 G$RSTSRC$0$0 == 0x00ef
                           0000EF   538 _RSTSRC	=	0x00ef
                           0000F0   539 G$B$0$0 == 0x00f0
                           0000F0   540 _B	=	0x00f0
                           0000F1   541 G$SCON1$0$0 == 0x00f1
                           0000F1   542 _SCON1	=	0x00f1
                           0000F2   543 G$SBUF1$0$0 == 0x00f2
                           0000F2   544 _SBUF1	=	0x00f2
                           0000F3   545 G$SADDR1$0$0 == 0x00f3
                           0000F3   546 _SADDR1	=	0x00f3
                           0000F4   547 G$TL4$0$0 == 0x00f4
                           0000F4   548 _TL4	=	0x00f4
                           0000F5   549 G$TH4$0$0 == 0x00f5
                           0000F5   550 _TH4	=	0x00f5
                           0000F6   551 G$EIP1$0$0 == 0x00f6
                           0000F6   552 _EIP1	=	0x00f6
                           0000F7   553 G$EIP2$0$0 == 0x00f7
                           0000F7   554 _EIP2	=	0x00f7
                           0000F8   555 G$SPI0CN$0$0 == 0x00f8
                           0000F8   556 _SPI0CN	=	0x00f8
                           0000F9   557 G$PCA0H$0$0 == 0x00f9
                           0000F9   558 _PCA0H	=	0x00f9
                           0000FA   559 G$PCA0CPH0$0$0 == 0x00fa
                           0000FA   560 _PCA0CPH0	=	0x00fa
                           0000FB   561 G$PCA0CPH1$0$0 == 0x00fb
                           0000FB   562 _PCA0CPH1	=	0x00fb
                           0000FC   563 G$PCA0CPH2$0$0 == 0x00fc
                           0000FC   564 _PCA0CPH2	=	0x00fc
                           0000FD   565 G$PCA0CPH3$0$0 == 0x00fd
                           0000FD   566 _PCA0CPH3	=	0x00fd
                           0000FE   567 G$PCA0CPH4$0$0 == 0x00fe
                           0000FE   568 _PCA0CPH4	=	0x00fe
                           0000FF   569 G$WDTCN$0$0 == 0x00ff
                           0000FF   570 _WDTCN	=	0x00ff
                           008C8A   571 G$TMR0$0$0 == 0x8c8a
                           008C8A   572 _TMR0	=	0x8c8a
                           008D8B   573 G$TMR1$0$0 == 0x8d8b
                           008D8B   574 _TMR1	=	0x8d8b
                           00CDCC   575 G$TMR2$0$0 == 0xcdcc
                           00CDCC   576 _TMR2	=	0xcdcc
                           00CBCA   577 G$RCAP2$0$0 == 0xcbca
                           00CBCA   578 _RCAP2	=	0xcbca
                           009594   579 G$TMR3$0$0 == 0x9594
                           009594   580 _TMR3	=	0x9594
                           009392   581 G$TMR3RL$0$0 == 0x9392
                           009392   582 _TMR3RL	=	0x9392
                           00F5F4   583 G$TMR4$0$0 == 0xf5f4
                           00F5F4   584 _TMR4	=	0xf5f4
                           00E5E4   585 G$RCAP4$0$0 == 0xe5e4
                           00E5E4   586 _RCAP4	=	0xe5e4
                           00BFBE   587 G$ADC0$0$0 == 0xbfbe
                           00BFBE   588 _ADC0	=	0xbfbe
                           00C5C4   589 G$ADC0GT$0$0 == 0xc5c4
                           00C5C4   590 _ADC0GT	=	0xc5c4
                           00C7C6   591 G$ADC0LT$0$0 == 0xc7c6
                           00C7C6   592 _ADC0LT	=	0xc7c6
                           00D3D2   593 G$DAC0$0$0 == 0xd3d2
                           00D3D2   594 _DAC0	=	0xd3d2
                           00D6D5   595 G$DAC1$0$0 == 0xd6d5
                           00D6D5   596 _DAC1	=	0xd6d5
                           00F9E9   597 G$PCA0$0$0 == 0xf9e9
                           00F9E9   598 _PCA0	=	0xf9e9
                           00FAEA   599 G$PCA0CP0$0$0 == 0xfaea
                           00FAEA   600 _PCA0CP0	=	0xfaea
                           00FBEB   601 G$PCA0CP1$0$0 == 0xfbeb
                           00FBEB   602 _PCA0CP1	=	0xfbeb
                           00FCEC   603 G$PCA0CP2$0$0 == 0xfcec
                           00FCEC   604 _PCA0CP2	=	0xfcec
                           00FDED   605 G$PCA0CP3$0$0 == 0xfded
                           00FDED   606 _PCA0CP3	=	0xfded
                           00FEEE   607 G$PCA0CP4$0$0 == 0xfeee
                           00FEEE   608 _PCA0CP4	=	0xfeee
                                    609 ;--------------------------------------------------------
                                    610 ; special function bits
                                    611 ;--------------------------------------------------------
                                    612 	.area RSEG    (ABS,DATA)
      000000                        613 	.org 0x0000
                           000080   614 G$P0_0$0$0 == 0x0080
                           000080   615 _P0_0	=	0x0080
                           000081   616 G$P0_1$0$0 == 0x0081
                           000081   617 _P0_1	=	0x0081
                           000082   618 G$P0_2$0$0 == 0x0082
                           000082   619 _P0_2	=	0x0082
                           000083   620 G$P0_3$0$0 == 0x0083
                           000083   621 _P0_3	=	0x0083
                           000084   622 G$P0_4$0$0 == 0x0084
                           000084   623 _P0_4	=	0x0084
                           000085   624 G$P0_5$0$0 == 0x0085
                           000085   625 _P0_5	=	0x0085
                           000086   626 G$P0_6$0$0 == 0x0086
                           000086   627 _P0_6	=	0x0086
                           000087   628 G$P0_7$0$0 == 0x0087
                           000087   629 _P0_7	=	0x0087
                           000088   630 G$IT0$0$0 == 0x0088
                           000088   631 _IT0	=	0x0088
                           000089   632 G$IE0$0$0 == 0x0089
                           000089   633 _IE0	=	0x0089
                           00008A   634 G$IT1$0$0 == 0x008a
                           00008A   635 _IT1	=	0x008a
                           00008B   636 G$IE1$0$0 == 0x008b
                           00008B   637 _IE1	=	0x008b
                           00008C   638 G$TR0$0$0 == 0x008c
                           00008C   639 _TR0	=	0x008c
                           00008D   640 G$TF0$0$0 == 0x008d
                           00008D   641 _TF0	=	0x008d
                           00008E   642 G$TR1$0$0 == 0x008e
                           00008E   643 _TR1	=	0x008e
                           00008F   644 G$TF1$0$0 == 0x008f
                           00008F   645 _TF1	=	0x008f
                           000090   646 G$P1_0$0$0 == 0x0090
                           000090   647 _P1_0	=	0x0090
                           000091   648 G$P1_1$0$0 == 0x0091
                           000091   649 _P1_1	=	0x0091
                           000092   650 G$P1_2$0$0 == 0x0092
                           000092   651 _P1_2	=	0x0092
                           000093   652 G$P1_3$0$0 == 0x0093
                           000093   653 _P1_3	=	0x0093
                           000094   654 G$P1_4$0$0 == 0x0094
                           000094   655 _P1_4	=	0x0094
                           000095   656 G$P1_5$0$0 == 0x0095
                           000095   657 _P1_5	=	0x0095
                           000096   658 G$P1_6$0$0 == 0x0096
                           000096   659 _P1_6	=	0x0096
                           000097   660 G$P1_7$0$0 == 0x0097
                           000097   661 _P1_7	=	0x0097
                           000098   662 G$RI$0$0 == 0x0098
                           000098   663 _RI	=	0x0098
                           000098   664 G$RI0$0$0 == 0x0098
                           000098   665 _RI0	=	0x0098
                           000099   666 G$TI$0$0 == 0x0099
                           000099   667 _TI	=	0x0099
                           000099   668 G$TI0$0$0 == 0x0099
                           000099   669 _TI0	=	0x0099
                           00009A   670 G$RB8$0$0 == 0x009a
                           00009A   671 _RB8	=	0x009a
                           00009A   672 G$RB80$0$0 == 0x009a
                           00009A   673 _RB80	=	0x009a
                           00009B   674 G$TB8$0$0 == 0x009b
                           00009B   675 _TB8	=	0x009b
                           00009B   676 G$TB80$0$0 == 0x009b
                           00009B   677 _TB80	=	0x009b
                           00009C   678 G$REN$0$0 == 0x009c
                           00009C   679 _REN	=	0x009c
                           00009C   680 G$REN0$0$0 == 0x009c
                           00009C   681 _REN0	=	0x009c
                           00009D   682 G$SM2$0$0 == 0x009d
                           00009D   683 _SM2	=	0x009d
                           00009D   684 G$SM20$0$0 == 0x009d
                           00009D   685 _SM20	=	0x009d
                           00009D   686 G$MCE0$0$0 == 0x009d
                           00009D   687 _MCE0	=	0x009d
                           00009E   688 G$SM1$0$0 == 0x009e
                           00009E   689 _SM1	=	0x009e
                           00009E   690 G$SM10$0$0 == 0x009e
                           00009E   691 _SM10	=	0x009e
                           00009F   692 G$SM0$0$0 == 0x009f
                           00009F   693 _SM0	=	0x009f
                           00009F   694 G$SM00$0$0 == 0x009f
                           00009F   695 _SM00	=	0x009f
                           00009F   696 G$S0MODE$0$0 == 0x009f
                           00009F   697 _S0MODE	=	0x009f
                           0000A0   698 G$P2_0$0$0 == 0x00a0
                           0000A0   699 _P2_0	=	0x00a0
                           0000A1   700 G$P2_1$0$0 == 0x00a1
                           0000A1   701 _P2_1	=	0x00a1
                           0000A2   702 G$P2_2$0$0 == 0x00a2
                           0000A2   703 _P2_2	=	0x00a2
                           0000A3   704 G$P2_3$0$0 == 0x00a3
                           0000A3   705 _P2_3	=	0x00a3
                           0000A4   706 G$P2_4$0$0 == 0x00a4
                           0000A4   707 _P2_4	=	0x00a4
                           0000A5   708 G$P2_5$0$0 == 0x00a5
                           0000A5   709 _P2_5	=	0x00a5
                           0000A6   710 G$P2_6$0$0 == 0x00a6
                           0000A6   711 _P2_6	=	0x00a6
                           0000A7   712 G$P2_7$0$0 == 0x00a7
                           0000A7   713 _P2_7	=	0x00a7
                           0000A8   714 G$EX0$0$0 == 0x00a8
                           0000A8   715 _EX0	=	0x00a8
                           0000A9   716 G$ET0$0$0 == 0x00a9
                           0000A9   717 _ET0	=	0x00a9
                           0000AA   718 G$EX1$0$0 == 0x00aa
                           0000AA   719 _EX1	=	0x00aa
                           0000AB   720 G$ET1$0$0 == 0x00ab
                           0000AB   721 _ET1	=	0x00ab
                           0000AC   722 G$ES0$0$0 == 0x00ac
                           0000AC   723 _ES0	=	0x00ac
                           0000AC   724 G$ES$0$0 == 0x00ac
                           0000AC   725 _ES	=	0x00ac
                           0000AD   726 G$ET2$0$0 == 0x00ad
                           0000AD   727 _ET2	=	0x00ad
                           0000AF   728 G$EA$0$0 == 0x00af
                           0000AF   729 _EA	=	0x00af
                           0000B0   730 G$P3_0$0$0 == 0x00b0
                           0000B0   731 _P3_0	=	0x00b0
                           0000B1   732 G$P3_1$0$0 == 0x00b1
                           0000B1   733 _P3_1	=	0x00b1
                           0000B2   734 G$P3_2$0$0 == 0x00b2
                           0000B2   735 _P3_2	=	0x00b2
                           0000B3   736 G$P3_3$0$0 == 0x00b3
                           0000B3   737 _P3_3	=	0x00b3
                           0000B4   738 G$P3_4$0$0 == 0x00b4
                           0000B4   739 _P3_4	=	0x00b4
                           0000B5   740 G$P3_5$0$0 == 0x00b5
                           0000B5   741 _P3_5	=	0x00b5
                           0000B6   742 G$P3_6$0$0 == 0x00b6
                           0000B6   743 _P3_6	=	0x00b6
                           0000B7   744 G$P3_7$0$0 == 0x00b7
                           0000B7   745 _P3_7	=	0x00b7
                           0000B8   746 G$PX0$0$0 == 0x00b8
                           0000B8   747 _PX0	=	0x00b8
                           0000B9   748 G$PT0$0$0 == 0x00b9
                           0000B9   749 _PT0	=	0x00b9
                           0000BA   750 G$PX1$0$0 == 0x00ba
                           0000BA   751 _PX1	=	0x00ba
                           0000BB   752 G$PT1$0$0 == 0x00bb
                           0000BB   753 _PT1	=	0x00bb
                           0000BC   754 G$PS0$0$0 == 0x00bc
                           0000BC   755 _PS0	=	0x00bc
                           0000BC   756 G$PS$0$0 == 0x00bc
                           0000BC   757 _PS	=	0x00bc
                           0000BD   758 G$PT2$0$0 == 0x00bd
                           0000BD   759 _PT2	=	0x00bd
                           0000C0   760 G$SMBTOE$0$0 == 0x00c0
                           0000C0   761 _SMBTOE	=	0x00c0
                           0000C1   762 G$SMBFTE$0$0 == 0x00c1
                           0000C1   763 _SMBFTE	=	0x00c1
                           0000C2   764 G$AA$0$0 == 0x00c2
                           0000C2   765 _AA	=	0x00c2
                           0000C3   766 G$SI$0$0 == 0x00c3
                           0000C3   767 _SI	=	0x00c3
                           0000C4   768 G$STO$0$0 == 0x00c4
                           0000C4   769 _STO	=	0x00c4
                           0000C5   770 G$STA$0$0 == 0x00c5
                           0000C5   771 _STA	=	0x00c5
                           0000C6   772 G$ENSMB$0$0 == 0x00c6
                           0000C6   773 _ENSMB	=	0x00c6
                           0000C7   774 G$BUSY$0$0 == 0x00c7
                           0000C7   775 _BUSY	=	0x00c7
                           0000C8   776 G$CPRL2$0$0 == 0x00c8
                           0000C8   777 _CPRL2	=	0x00c8
                           0000C9   778 G$CT2$0$0 == 0x00c9
                           0000C9   779 _CT2	=	0x00c9
                           0000CA   780 G$TR2$0$0 == 0x00ca
                           0000CA   781 _TR2	=	0x00ca
                           0000CB   782 G$EXEN2$0$0 == 0x00cb
                           0000CB   783 _EXEN2	=	0x00cb
                           0000CC   784 G$TCLK$0$0 == 0x00cc
                           0000CC   785 _TCLK	=	0x00cc
                           0000CD   786 G$RCLK$0$0 == 0x00cd
                           0000CD   787 _RCLK	=	0x00cd
                           0000CE   788 G$EXF2$0$0 == 0x00ce
                           0000CE   789 _EXF2	=	0x00ce
                           0000CF   790 G$TF2$0$0 == 0x00cf
                           0000CF   791 _TF2	=	0x00cf
                           0000D0   792 G$P$0$0 == 0x00d0
                           0000D0   793 _P	=	0x00d0
                           0000D1   794 G$F1$0$0 == 0x00d1
                           0000D1   795 _F1	=	0x00d1
                           0000D2   796 G$OV$0$0 == 0x00d2
                           0000D2   797 _OV	=	0x00d2
                           0000D3   798 G$RS0$0$0 == 0x00d3
                           0000D3   799 _RS0	=	0x00d3
                           0000D4   800 G$RS1$0$0 == 0x00d4
                           0000D4   801 _RS1	=	0x00d4
                           0000D5   802 G$F0$0$0 == 0x00d5
                           0000D5   803 _F0	=	0x00d5
                           0000D6   804 G$AC$0$0 == 0x00d6
                           0000D6   805 _AC	=	0x00d6
                           0000D7   806 G$CY$0$0 == 0x00d7
                           0000D7   807 _CY	=	0x00d7
                           0000D8   808 G$CCF0$0$0 == 0x00d8
                           0000D8   809 _CCF0	=	0x00d8
                           0000D9   810 G$CCF1$0$0 == 0x00d9
                           0000D9   811 _CCF1	=	0x00d9
                           0000DA   812 G$CCF2$0$0 == 0x00da
                           0000DA   813 _CCF2	=	0x00da
                           0000DB   814 G$CCF3$0$0 == 0x00db
                           0000DB   815 _CCF3	=	0x00db
                           0000DC   816 G$CCF4$0$0 == 0x00dc
                           0000DC   817 _CCF4	=	0x00dc
                           0000DE   818 G$CR$0$0 == 0x00de
                           0000DE   819 _CR	=	0x00de
                           0000DF   820 G$CF$0$0 == 0x00df
                           0000DF   821 _CF	=	0x00df
                           0000E8   822 G$ADLJST$0$0 == 0x00e8
                           0000E8   823 _ADLJST	=	0x00e8
                           0000E8   824 G$AD0LJST$0$0 == 0x00e8
                           0000E8   825 _AD0LJST	=	0x00e8
                           0000E9   826 G$ADWINT$0$0 == 0x00e9
                           0000E9   827 _ADWINT	=	0x00e9
                           0000E9   828 G$AD0WINT$0$0 == 0x00e9
                           0000E9   829 _AD0WINT	=	0x00e9
                           0000EA   830 G$ADSTM0$0$0 == 0x00ea
                           0000EA   831 _ADSTM0	=	0x00ea
                           0000EA   832 G$AD0CM0$0$0 == 0x00ea
                           0000EA   833 _AD0CM0	=	0x00ea
                           0000EB   834 G$ADSTM1$0$0 == 0x00eb
                           0000EB   835 _ADSTM1	=	0x00eb
                           0000EB   836 G$AD0CM1$0$0 == 0x00eb
                           0000EB   837 _AD0CM1	=	0x00eb
                           0000EC   838 G$ADBUSY$0$0 == 0x00ec
                           0000EC   839 _ADBUSY	=	0x00ec
                           0000EC   840 G$AD0BUSY$0$0 == 0x00ec
                           0000EC   841 _AD0BUSY	=	0x00ec
                           0000ED   842 G$ADCINT$0$0 == 0x00ed
                           0000ED   843 _ADCINT	=	0x00ed
                           0000ED   844 G$AD0INT$0$0 == 0x00ed
                           0000ED   845 _AD0INT	=	0x00ed
                           0000EE   846 G$ADCTM$0$0 == 0x00ee
                           0000EE   847 _ADCTM	=	0x00ee
                           0000EE   848 G$AD0TM$0$0 == 0x00ee
                           0000EE   849 _AD0TM	=	0x00ee
                           0000EF   850 G$ADCEN$0$0 == 0x00ef
                           0000EF   851 _ADCEN	=	0x00ef
                           0000EF   852 G$AD0EN$0$0 == 0x00ef
                           0000EF   853 _AD0EN	=	0x00ef
                           0000F8   854 G$SPIEN$0$0 == 0x00f8
                           0000F8   855 _SPIEN	=	0x00f8
                           0000F9   856 G$MSTEN$0$0 == 0x00f9
                           0000F9   857 _MSTEN	=	0x00f9
                           0000FA   858 G$SLVSEL$0$0 == 0x00fa
                           0000FA   859 _SLVSEL	=	0x00fa
                           0000FB   860 G$TXBSY$0$0 == 0x00fb
                           0000FB   861 _TXBSY	=	0x00fb
                           0000FC   862 G$RXOVRN$0$0 == 0x00fc
                           0000FC   863 _RXOVRN	=	0x00fc
                           0000FD   864 G$MODF$0$0 == 0x00fd
                           0000FD   865 _MODF	=	0x00fd
                           0000FE   866 G$WCOL$0$0 == 0x00fe
                           0000FE   867 _WCOL	=	0x00fe
                           0000FF   868 G$SPIF$0$0 == 0x00ff
                           0000FF   869 _SPIF	=	0x00ff
                           0000A2   870 G$PB1$0$0 == 0x00a2
                           0000A2   871 _PB1	=	0x00a2
                                    872 ;--------------------------------------------------------
                                    873 ; overlayable register banks
                                    874 ;--------------------------------------------------------
                                    875 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        876 	.ds 8
                                    877 ;--------------------------------------------------------
                                    878 ; internal ram data
                                    879 ;--------------------------------------------------------
                                    880 	.area DSEG    (DATA)
                           000000   881 G$counts$0$0==.
      000008                        882 _counts::
      000008                        883 	.ds 2
                           000002   884 G$debounceCount$0$0==.
      00000A                        885 _debounceCount::
      00000A                        886 	.ds 2
                           000004   887 G$PBcount$0$0==.
      00000C                        888 _PBcount::
      00000C                        889 	.ds 2
                           000006   890 G$PBonesec$0$0==.
      00000E                        891 _PBonesec::
      00000E                        892 	.ds 2
                           000008   893 G$count_before$0$0==.
      000010                        894 _count_before::
      000010                        895 	.ds 2
                           00000A   896 G$count_after$0$0==.
      000012                        897 _count_after::
      000012                        898 	.ds 2
                           00000C   899 G$input$0$0==.
      000014                        900 _input::
      000014                        901 	.ds 1
                                    902 ;--------------------------------------------------------
                                    903 ; overlayable items in internal ram 
                                    904 ;--------------------------------------------------------
                                    905 	.area	OSEG    (OVR,DATA)
                                    906 	.area	OSEG    (OVR,DATA)
                                    907 ;--------------------------------------------------------
                                    908 ; Stack segment in internal ram 
                                    909 ;--------------------------------------------------------
                                    910 	.area	SSEG
      000042                        911 __start__stack:
      000042                        912 	.ds	1
                                    913 
                                    914 ;--------------------------------------------------------
                                    915 ; indirectly addressable internal ram data
                                    916 ;--------------------------------------------------------
                                    917 	.area ISEG    (DATA)
                                    918 ;--------------------------------------------------------
                                    919 ; absolute internal ram data
                                    920 ;--------------------------------------------------------
                                    921 	.area IABS    (ABS,DATA)
                                    922 	.area IABS    (ABS,DATA)
                                    923 ;--------------------------------------------------------
                                    924 ; bit data
                                    925 ;--------------------------------------------------------
                                    926 	.area BSEG    (BIT)
                                    927 ;--------------------------------------------------------
                                    928 ; paged external ram data
                                    929 ;--------------------------------------------------------
                                    930 	.area PSEG    (PAG,XDATA)
                                    931 ;--------------------------------------------------------
                                    932 ; external ram data
                                    933 ;--------------------------------------------------------
                                    934 	.area XSEG    (XDATA)
                                    935 ;--------------------------------------------------------
                                    936 ; absolute external ram data
                                    937 ;--------------------------------------------------------
                                    938 	.area XABS    (ABS,XDATA)
                                    939 ;--------------------------------------------------------
                                    940 ; external initialized ram data
                                    941 ;--------------------------------------------------------
                                    942 	.area XISEG   (XDATA)
                                    943 	.area HOME    (CODE)
                                    944 	.area GSINIT0 (CODE)
                                    945 	.area GSINIT1 (CODE)
                                    946 	.area GSINIT2 (CODE)
                                    947 	.area GSINIT3 (CODE)
                                    948 	.area GSINIT4 (CODE)
                                    949 	.area GSINIT5 (CODE)
                                    950 	.area GSINIT  (CODE)
                                    951 	.area GSFINAL (CODE)
                                    952 	.area CSEG    (CODE)
                                    953 ;--------------------------------------------------------
                                    954 ; interrupt vector 
                                    955 ;--------------------------------------------------------
                                    956 	.area HOME    (CODE)
      000000                        957 __interrupt_vect:
      000000 02 00 11         [24]  958 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  959 	reti
      000004                        960 	.ds	7
      00000B 02 01 DC         [24]  961 	ljmp	_Timer0_ISR
                                    962 ;--------------------------------------------------------
                                    963 ; global & static initialisations
                                    964 ;--------------------------------------------------------
                                    965 	.area HOME    (CODE)
                                    966 	.area GSINIT  (CODE)
                                    967 	.area GSFINAL (CODE)
                                    968 	.area GSINIT  (CODE)
                                    969 	.globl __sdcc_gsinit_startup
                                    970 	.globl __sdcc_program_startup
                                    971 	.globl __start__stack
                                    972 	.globl __mcs51_genXINIT
                                    973 	.globl __mcs51_genXRAMCLEAR
                                    974 	.globl __mcs51_genRAMCLEAR
                                    975 	.area GSFINAL (CODE)
      00006A 02 00 0E         [24]  976 	ljmp	__sdcc_program_startup
                                    977 ;--------------------------------------------------------
                                    978 ; Home
                                    979 ;--------------------------------------------------------
                                    980 	.area HOME    (CODE)
                                    981 	.area HOME    (CODE)
      00000E                        982 __sdcc_program_startup:
      00000E 02 00 E8         [24]  983 	ljmp	_main
                                    984 ;	return from main will return to caller
                                    985 ;--------------------------------------------------------
                                    986 ; code
                                    987 ;--------------------------------------------------------
                                    988 	.area CSEG    (CODE)
                                    989 ;------------------------------------------------------------
                                    990 ;Allocation info for local variables in function 'SYSCLK_Init'
                                    991 ;------------------------------------------------------------
                                    992 ;i                         Allocated to registers r6 r7 
                                    993 ;------------------------------------------------------------
                           000000   994 	G$SYSCLK_Init$0$0 ==.
                           000000   995 	C$c8051_SDCC.h$62$0$0 ==.
                                    996 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:62: void SYSCLK_Init(void)
                                    997 ;	-----------------------------------------
                                    998 ;	 function SYSCLK_Init
                                    999 ;	-----------------------------------------
      00006D                       1000 _SYSCLK_Init:
                           000007  1001 	ar7 = 0x07
                           000006  1002 	ar6 = 0x06
                           000005  1003 	ar5 = 0x05
                           000004  1004 	ar4 = 0x04
                           000003  1005 	ar3 = 0x03
                           000002  1006 	ar2 = 0x02
                           000001  1007 	ar1 = 0x01
                           000000  1008 	ar0 = 0x00
                           000000  1009 	C$c8051_SDCC.h$66$1$2 ==.
                                   1010 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:66: OSCXCN = 0x67;                      // start external oscillator with
      00006D 75 B1 67         [24] 1011 	mov	_OSCXCN,#0x67
                           000003  1012 	C$c8051_SDCC.h$69$1$2 ==.
                                   1013 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:69: for (i=0; i < 256; i++);            // wait for oscillator to start
      000070 7E 00            [12] 1014 	mov	r6,#0x00
      000072 7F 01            [12] 1015 	mov	r7,#0x01
      000074                       1016 00107$:
      000074 EE               [12] 1017 	mov	a,r6
      000075 24 FF            [12] 1018 	add	a,#0xff
      000077 FC               [12] 1019 	mov	r4,a
      000078 EF               [12] 1020 	mov	a,r7
      000079 34 FF            [12] 1021 	addc	a,#0xff
      00007B FD               [12] 1022 	mov	r5,a
      00007C 8C 06            [24] 1023 	mov	ar6,r4
      00007E 8D 07            [24] 1024 	mov	ar7,r5
      000080 EC               [12] 1025 	mov	a,r4
      000081 4D               [12] 1026 	orl	a,r5
      000082 70 F0            [24] 1027 	jnz	00107$
                           000017  1028 	C$c8051_SDCC.h$71$1$2 ==.
                                   1029 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:71: while (!(OSCXCN & 0x80));           // Wait for crystal osc. to settle
      000084                       1030 00102$:
      000084 E5 B1            [12] 1031 	mov	a,_OSCXCN
      000086 30 E7 FB         [24] 1032 	jnb	acc.7,00102$
                           00001C  1033 	C$c8051_SDCC.h$73$1$2 ==.
                                   1034 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:73: OSCICN = 0x88;                      // select external oscillator as SYSCLK
      000089 75 B2 88         [24] 1035 	mov	_OSCICN,#0x88
                           00001F  1036 	C$c8051_SDCC.h$76$1$2 ==.
                           00001F  1037 	XG$SYSCLK_Init$0$0 ==.
      00008C 22               [24] 1038 	ret
                                   1039 ;------------------------------------------------------------
                                   1040 ;Allocation info for local variables in function 'UART0_Init'
                                   1041 ;------------------------------------------------------------
                           000020  1042 	G$UART0_Init$0$0 ==.
                           000020  1043 	C$c8051_SDCC.h$84$1$2 ==.
                                   1044 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:84: void UART0_Init(void)
                                   1045 ;	-----------------------------------------
                                   1046 ;	 function UART0_Init
                                   1047 ;	-----------------------------------------
      00008D                       1048 _UART0_Init:
                           000020  1049 	C$c8051_SDCC.h$86$1$4 ==.
                                   1050 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:86: SCON0  = 0x50;                      // SCON0: mode 1, 8-bit UART, enable RX
      00008D 75 98 50         [24] 1051 	mov	_SCON0,#0x50
                           000023  1052 	C$c8051_SDCC.h$87$1$4 ==.
                                   1053 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:87: TMOD   = 0x20;                      // TMOD: timer 1, mode 2, 8-bit reload
      000090 75 89 20         [24] 1054 	mov	_TMOD,#0x20
                           000026  1055 	C$c8051_SDCC.h$88$1$4 ==.
                                   1056 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:88: TH1    = 0xFF&-(SYSCLK/BAUDRATE/16);     // set Timer1 reload value for baudrate
      000093 75 8D DC         [24] 1057 	mov	_TH1,#0xdc
                           000029  1058 	C$c8051_SDCC.h$89$1$4 ==.
                                   1059 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:89: TR1    = 1;                         // start Timer1
      000096 D2 8E            [12] 1060 	setb	_TR1
                           00002B  1061 	C$c8051_SDCC.h$90$1$4 ==.
                                   1062 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:90: CKCON |= 0x10;                      // Timer1 uses SYSCLK as time base
      000098 43 8E 10         [24] 1063 	orl	_CKCON,#0x10
                           00002E  1064 	C$c8051_SDCC.h$91$1$4 ==.
                                   1065 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:91: PCON  |= 0x80;                      // SMOD00 = 1 (disable baud rate 
      00009B 43 87 80         [24] 1066 	orl	_PCON,#0x80
                           000031  1067 	C$c8051_SDCC.h$93$1$4 ==.
                                   1068 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:93: TI0    = 1;                         // Indicate TX0 ready
      00009E D2 99            [12] 1069 	setb	_TI0
                           000033  1070 	C$c8051_SDCC.h$94$1$4 ==.
                                   1071 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:94: P0MDOUT |= 0x01;                    // Set TX0 to push/pull
      0000A0 43 A4 01         [24] 1072 	orl	_P0MDOUT,#0x01
                           000036  1073 	C$c8051_SDCC.h$95$1$4 ==.
                           000036  1074 	XG$UART0_Init$0$0 ==.
      0000A3 22               [24] 1075 	ret
                                   1076 ;------------------------------------------------------------
                                   1077 ;Allocation info for local variables in function 'Sys_Init'
                                   1078 ;------------------------------------------------------------
                           000037  1079 	G$Sys_Init$0$0 ==.
                           000037  1080 	C$c8051_SDCC.h$103$1$4 ==.
                                   1081 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:103: void Sys_Init(void)
                                   1082 ;	-----------------------------------------
                                   1083 ;	 function Sys_Init
                                   1084 ;	-----------------------------------------
      0000A4                       1085 _Sys_Init:
                           000037  1086 	C$c8051_SDCC.h$105$1$6 ==.
                                   1087 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:105: WDTCN = 0xde;			// disable watchdog timer
      0000A4 75 FF DE         [24] 1088 	mov	_WDTCN,#0xde
                           00003A  1089 	C$c8051_SDCC.h$106$1$6 ==.
                                   1090 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:106: WDTCN = 0xad;
      0000A7 75 FF AD         [24] 1091 	mov	_WDTCN,#0xad
                           00003D  1092 	C$c8051_SDCC.h$108$1$6 ==.
                                   1093 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:108: SYSCLK_Init();			// initialize oscillator
      0000AA 12 00 6D         [24] 1094 	lcall	_SYSCLK_Init
                           000040  1095 	C$c8051_SDCC.h$109$1$6 ==.
                                   1096 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:109: UART0_Init();			// initialize UART0
      0000AD 12 00 8D         [24] 1097 	lcall	_UART0_Init
                           000043  1098 	C$c8051_SDCC.h$111$1$6 ==.
                                   1099 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:111: XBR0 |= 0x04;
      0000B0 43 E1 04         [24] 1100 	orl	_XBR0,#0x04
                           000046  1101 	C$c8051_SDCC.h$112$1$6 ==.
                                   1102 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:112: XBR2 |= 0x40;                    	// Enable crossbar and weak pull-ups
      0000B3 43 E3 40         [24] 1103 	orl	_XBR2,#0x40
                           000049  1104 	C$c8051_SDCC.h$113$1$6 ==.
                           000049  1105 	XG$Sys_Init$0$0 ==.
      0000B6 22               [24] 1106 	ret
                                   1107 ;------------------------------------------------------------
                                   1108 ;Allocation info for local variables in function 'putchar'
                                   1109 ;------------------------------------------------------------
                                   1110 ;c                         Allocated to registers r7 
                                   1111 ;------------------------------------------------------------
                           00004A  1112 	G$putchar$0$0 ==.
                           00004A  1113 	C$c8051_SDCC.h$129$1$6 ==.
                                   1114 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:129: void putchar(char c)
                                   1115 ;	-----------------------------------------
                                   1116 ;	 function putchar
                                   1117 ;	-----------------------------------------
      0000B7                       1118 _putchar:
      0000B7 AF 82            [24] 1119 	mov	r7,dpl
                           00004C  1120 	C$c8051_SDCC.h$132$1$8 ==.
                                   1121 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:132: while (!TI0); 
      0000B9                       1122 00101$:
                           00004C  1123 	C$c8051_SDCC.h$133$1$8 ==.
                                   1124 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:133: TI0 = 0;
      0000B9 10 99 02         [24] 1125 	jbc	_TI0,00112$
      0000BC 80 FB            [24] 1126 	sjmp	00101$
      0000BE                       1127 00112$:
                           000051  1128 	C$c8051_SDCC.h$134$1$8 ==.
                                   1129 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:134: SBUF0 = c;
      0000BE 8F 99            [24] 1130 	mov	_SBUF0,r7
                           000053  1131 	C$c8051_SDCC.h$135$1$8 ==.
                           000053  1132 	XG$putchar$0$0 ==.
      0000C0 22               [24] 1133 	ret
                                   1134 ;------------------------------------------------------------
                                   1135 ;Allocation info for local variables in function 'getchar'
                                   1136 ;------------------------------------------------------------
                                   1137 ;c                         Allocated to registers r7 
                                   1138 ;------------------------------------------------------------
                           000054  1139 	G$getchar$0$0 ==.
                           000054  1140 	C$c8051_SDCC.h$154$1$8 ==.
                                   1141 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:154: char getchar(void)
                                   1142 ;	-----------------------------------------
                                   1143 ;	 function getchar
                                   1144 ;	-----------------------------------------
      0000C1                       1145 _getchar:
                           000054  1146 	C$c8051_SDCC.h$157$1$10 ==.
                                   1147 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:157: while (!RI0);
      0000C1                       1148 00101$:
                           000054  1149 	C$c8051_SDCC.h$158$1$10 ==.
                                   1150 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:158: RI0 = 0;
      0000C1 10 98 02         [24] 1151 	jbc	_RI0,00112$
      0000C4 80 FB            [24] 1152 	sjmp	00101$
      0000C6                       1153 00112$:
                           000059  1154 	C$c8051_SDCC.h$159$1$10 ==.
                                   1155 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:159: c = SBUF0;
      0000C6 AF 99            [24] 1156 	mov	r7,_SBUF0
                           00005B  1157 	C$c8051_SDCC.h$160$1$10 ==.
                                   1158 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:160: putchar(c);                          // echo to terminal
      0000C8 8F 82            [24] 1159 	mov	dpl,r7
      0000CA C0 07            [24] 1160 	push	ar7
      0000CC 12 00 B7         [24] 1161 	lcall	_putchar
      0000CF D0 07            [24] 1162 	pop	ar7
                           000064  1163 	C$c8051_SDCC.h$161$1$10 ==.
                                   1164 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:161: return c;
      0000D1 8F 82            [24] 1165 	mov	dpl,r7
                           000066  1166 	C$c8051_SDCC.h$162$1$10 ==.
                           000066  1167 	XG$getchar$0$0 ==.
      0000D3 22               [24] 1168 	ret
                                   1169 ;------------------------------------------------------------
                                   1170 ;Allocation info for local variables in function 'getchar_nw'
                                   1171 ;------------------------------------------------------------
                                   1172 ;c                         Allocated to registers 
                                   1173 ;------------------------------------------------------------
                           000067  1174 	G$getchar_nw$0$0 ==.
                           000067  1175 	C$c8051_SDCC.h$168$1$10 ==.
                                   1176 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:168: char getchar_nw(void)
                                   1177 ;	-----------------------------------------
                                   1178 ;	 function getchar_nw
                                   1179 ;	-----------------------------------------
      0000D4                       1180 _getchar_nw:
                           000067  1181 	C$c8051_SDCC.h$171$1$12 ==.
                                   1182 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:171: if (!RI0) return 0xFF;
      0000D4 20 98 05         [24] 1183 	jb	_RI0,00102$
      0000D7 75 82 FF         [24] 1184 	mov	dpl,#0xff
      0000DA 80 0B            [24] 1185 	sjmp	00104$
      0000DC                       1186 00102$:
                           00006F  1187 	C$c8051_SDCC.h$174$2$13 ==.
                                   1188 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:174: RI0 = 0;
      0000DC C2 98            [12] 1189 	clr	_RI0
                           000071  1190 	C$c8051_SDCC.h$175$2$13 ==.
                                   1191 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:175: c = SBUF0;
      0000DE 85 99 82         [24] 1192 	mov	dpl,_SBUF0
                           000074  1193 	C$c8051_SDCC.h$176$2$13 ==.
                                   1194 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:176: putchar(c);                          // echo to terminal
      0000E1 12 00 B7         [24] 1195 	lcall	_putchar
                           000077  1196 	C$c8051_SDCC.h$177$2$13 ==.
                                   1197 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:177: return SBUF0;
      0000E4 85 99 82         [24] 1198 	mov	dpl,_SBUF0
      0000E7                       1199 00104$:
                           00007A  1200 	C$c8051_SDCC.h$179$1$12 ==.
                           00007A  1201 	XG$getchar_nw$0$0 ==.
      0000E7 22               [24] 1202 	ret
                                   1203 ;------------------------------------------------------------
                                   1204 ;Allocation info for local variables in function 'main'
                                   1205 ;------------------------------------------------------------
                           00007B  1206 	G$main$0$0 ==.
                           00007B  1207 	C$hw6.c$50$1$12 ==.
                                   1208 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:50: void main(void)
                                   1209 ;	-----------------------------------------
                                   1210 ;	 function main
                                   1211 ;	-----------------------------------------
      0000E8                       1212 _main:
                           00007B  1213 	C$hw6.c$52$1$33 ==.
                                   1214 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:52: Sys_Init();      // System Initialization
      0000E8 12 00 A4         [24] 1215 	lcall	_Sys_Init
                           00007E  1216 	C$hw6.c$53$1$33 ==.
                                   1217 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:53: putchar(' ');    // the quote fonts may not copy correctly into SiLabs IDE
      0000EB 75 82 20         [24] 1218 	mov	dpl,#0x20
      0000EE 12 00 B7         [24] 1219 	lcall	_putchar
                           000084  1220 	C$hw6.c$54$1$33 ==.
                                   1221 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:54: Port_Init();
      0000F1 12 01 C2         [24] 1222 	lcall	_Port_Init
                           000087  1223 	C$hw6.c$55$1$33 ==.
                                   1224 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:55: Interrupt_Init();
      0000F4 12 01 C9         [24] 1225 	lcall	_Interrupt_Init
                           00008A  1226 	C$hw6.c$56$1$33 ==.
                                   1227 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:56: Timer_Init();    // Initialize Timer 0 
      0000F7 12 01 CD         [24] 1228 	lcall	_Timer_Init
                           00008D  1229 	C$hw6.c$58$1$33 ==.
                                   1230 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:58: while (1) /* the following loop contains the button pressing/tracking code */
      0000FA                       1231 00112$:
                           00008D  1232 	C$hw6.c$60$2$34 ==.
                                   1233 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:60: printf("Enter a keyboard character to begin \r\n");
      0000FA 74 45            [12] 1234 	mov	a,#___str_0
      0000FC C0 E0            [24] 1235 	push	acc
      0000FE 74 08            [12] 1236 	mov	a,#(___str_0 >> 8)
      000100 C0 E0            [24] 1237 	push	acc
      000102 74 80            [12] 1238 	mov	a,#0x80
      000104 C0 E0            [24] 1239 	push	acc
      000106 12 02 2A         [24] 1240 	lcall	_printf
      000109 15 81            [12] 1241 	dec	sp
      00010B 15 81            [12] 1242 	dec	sp
      00010D 15 81            [12] 1243 	dec	sp
                           0000A2  1244 	C$hw6.c$61$2$34 ==.
                                   1245 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:61: input = getchar();
      00010F 12 00 C1         [24] 1246 	lcall	_getchar
      000112 85 82 14         [24] 1247 	mov	_input,dpl
                           0000A8  1248 	C$hw6.c$62$2$34 ==.
                                   1249 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:62: printf("Push the button as many times as you like in 20 seconds \r\n");
      000115 74 6C            [12] 1250 	mov	a,#___str_1
      000117 C0 E0            [24] 1251 	push	acc
      000119 74 08            [12] 1252 	mov	a,#(___str_1 >> 8)
      00011B C0 E0            [24] 1253 	push	acc
      00011D 74 80            [12] 1254 	mov	a,#0x80
      00011F C0 E0            [24] 1255 	push	acc
      000121 12 02 2A         [24] 1256 	lcall	_printf
      000124 15 81            [12] 1257 	dec	sp
      000126 15 81            [12] 1258 	dec	sp
      000128 15 81            [12] 1259 	dec	sp
                           0000BD  1260 	C$hw6.c$64$2$34 ==.
                                   1261 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:64: counts = 0; 	//reset overflow counter
      00012A E4               [12] 1262 	clr	a
      00012B F5 08            [12] 1263 	mov	_counts,a
      00012D F5 09            [12] 1264 	mov	(_counts + 1),a
                           0000C2  1265 	C$hw6.c$65$2$34 ==.
                                   1266 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:65: PBcount = 0; 	//reset button count
      00012F F5 0C            [12] 1267 	mov	_PBcount,a
      000131 F5 0D            [12] 1268 	mov	(_PBcount + 1),a
                           0000C6  1269 	C$hw6.c$66$2$34 ==.
                                   1270 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:66: PBonesec = 0;       //reset button count
      000133 F5 0E            [12] 1271 	mov	_PBonesec,a
      000135 F5 0F            [12] 1272 	mov	(_PBonesec + 1),a
                           0000CA  1273 	C$hw6.c$67$2$34 ==.
                                   1274 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:67: count_before = 0;  //reset variables
      000137 F5 10            [12] 1275 	mov	_count_before,a
      000139 F5 11            [12] 1276 	mov	(_count_before + 1),a
                           0000CE  1277 	C$hw6.c$68$2$34 ==.
                                   1278 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:68: count_after = 0; 	//reset variables
      00013B F5 12            [12] 1279 	mov	_count_after,a
      00013D F5 13            [12] 1280 	mov	(_count_after + 1),a
                           0000D2  1281 	C$hw6.c$71$2$34 ==.
                                   1282 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:71: TR0 = 1; //Turn Counter on
      00013F D2 8C            [12] 1283 	setb	_TR0
                           0000D4  1284 	C$hw6.c$72$2$34 ==.
                                   1285 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:72: while(counts < 54000)
      000141                       1286 00108$:
      000141 C3               [12] 1287 	clr	c
      000142 E5 08            [12] 1288 	mov	a,_counts
      000144 94 F0            [12] 1289 	subb	a,#0xf0
      000146 E5 09            [12] 1290 	mov	a,(_counts + 1)
      000148 94 D2            [12] 1291 	subb	a,#0xd2
      00014A 50 40            [24] 1292 	jnc	00110$
                           0000DF  1293 	C$hw6.c$75$3$35 ==.
                                   1294 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:75: if(!PB1)
      00014C 20 A2 F2         [24] 1295 	jb	_PB1,00108$
                           0000E2  1296 	C$hw6.c$77$4$36 ==.
                                   1297 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:77: count_before = counts;
      00014F 85 08 10         [24] 1298 	mov	_count_before,_counts
      000152 85 09 11         [24] 1299 	mov	(_count_before + 1),(_counts + 1)
                           0000E8  1300 	C$hw6.c$78$4$36 ==.
                                   1301 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:78: Debounce(); //wait 20 msec
      000155 12 01 F5         [24] 1302 	lcall	_Debounce
                           0000EB  1303 	C$hw6.c$79$4$36 ==.
                                   1304 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:79: while(!PB1);	//wait till it turns off
      000158                       1305 00101$:
      000158 30 A2 FD         [24] 1306 	jnb	_PB1,00101$
                           0000EE  1307 	C$hw6.c$80$4$36 ==.
                                   1308 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:80: PBcount++; 	//Increment touch counter
      00015B 05 0C            [12] 1309 	inc	_PBcount
      00015D E4               [12] 1310 	clr	a
      00015E B5 0C 02         [24] 1311 	cjne	a,_PBcount,00140$
      000161 05 0D            [12] 1312 	inc	(_PBcount + 1)
      000163                       1313 00140$:
                           0000F6  1314 	C$hw6.c$81$4$36 ==.
                                   1315 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:81: count_after = counts;
      000163 85 08 12         [24] 1316 	mov	_count_after,_counts
      000166 85 09 13         [24] 1317 	mov	(_count_after + 1),(_counts + 1)
                           0000FC  1318 	C$hw6.c$82$4$36 ==.
                                   1319 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:82: Debounce(); //wait 20 seconds
      000169 12 01 F5         [24] 1320 	lcall	_Debounce
                           0000FF  1321 	C$hw6.c$83$4$36 ==.
                                   1322 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:83: if((count_after-count_before) > 2700)
      00016C AE 12            [24] 1323 	mov	r6,_count_after
      00016E AF 13            [24] 1324 	mov	r7,(_count_after + 1)
      000170 EE               [12] 1325 	mov	a,r6
      000171 C3               [12] 1326 	clr	c
      000172 95 10            [12] 1327 	subb	a,_count_before
      000174 FE               [12] 1328 	mov	r6,a
      000175 EF               [12] 1329 	mov	a,r7
      000176 95 11            [12] 1330 	subb	a,(_count_before + 1)
      000178 FF               [12] 1331 	mov	r7,a
      000179 C3               [12] 1332 	clr	c
      00017A 74 8C            [12] 1333 	mov	a,#0x8c
      00017C 9E               [12] 1334 	subb	a,r6
      00017D 74 0A            [12] 1335 	mov	a,#0x0a
      00017F 9F               [12] 1336 	subb	a,r7
      000180 50 BF            [24] 1337 	jnc	00108$
                           000115  1338 	C$hw6.c$85$5$37 ==.
                                   1339 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:85: PBonesec++;
      000182 05 0E            [12] 1340 	inc	_PBonesec
      000184 E4               [12] 1341 	clr	a
      000185 B5 0E B9         [24] 1342 	cjne	a,_PBonesec,00108$
      000188 05 0F            [12] 1343 	inc	(_PBonesec + 1)
      00018A 80 B5            [24] 1344 	sjmp	00108$
      00018C                       1345 00110$:
                           00011F  1346 	C$hw6.c$89$2$34 ==.
                                   1347 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:89: printf("\rNumber of presses: %d \n\r", PBcount);
      00018C C0 0C            [24] 1348 	push	_PBcount
      00018E C0 0D            [24] 1349 	push	(_PBcount + 1)
      000190 74 A7            [12] 1350 	mov	a,#___str_2
      000192 C0 E0            [24] 1351 	push	acc
      000194 74 08            [12] 1352 	mov	a,#(___str_2 >> 8)
      000196 C0 E0            [24] 1353 	push	acc
      000198 74 80            [12] 1354 	mov	a,#0x80
      00019A C0 E0            [24] 1355 	push	acc
      00019C 12 02 2A         [24] 1356 	lcall	_printf
      00019F E5 81            [12] 1357 	mov	a,sp
      0001A1 24 FB            [12] 1358 	add	a,#0xfb
      0001A3 F5 81            [12] 1359 	mov	sp,a
                           000138  1360 	C$hw6.c$90$2$34 ==.
                                   1361 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:90: printf("\rNumber longer than one second: %d \n\r", PBonesec);
      0001A5 C0 0E            [24] 1362 	push	_PBonesec
      0001A7 C0 0F            [24] 1363 	push	(_PBonesec + 1)
      0001A9 74 C1            [12] 1364 	mov	a,#___str_3
      0001AB C0 E0            [24] 1365 	push	acc
      0001AD 74 08            [12] 1366 	mov	a,#(___str_3 >> 8)
      0001AF C0 E0            [24] 1367 	push	acc
      0001B1 74 80            [12] 1368 	mov	a,#0x80
      0001B3 C0 E0            [24] 1369 	push	acc
      0001B5 12 02 2A         [24] 1370 	lcall	_printf
      0001B8 E5 81            [12] 1371 	mov	a,sp
      0001BA 24 FB            [12] 1372 	add	a,#0xfb
      0001BC F5 81            [12] 1373 	mov	sp,a
      0001BE 02 00 FA         [24] 1374 	ljmp	00112$
                           000154  1375 	C$hw6.c$92$1$33 ==.
                           000154  1376 	XG$main$0$0 ==.
      0001C1 22               [24] 1377 	ret
                                   1378 ;------------------------------------------------------------
                                   1379 ;Allocation info for local variables in function 'Port_Init'
                                   1380 ;------------------------------------------------------------
                           000155  1381 	G$Port_Init$0$0 ==.
                           000155  1382 	C$hw6.c$96$1$33 ==.
                                   1383 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:96: void Port_Init(void)
                                   1384 ;	-----------------------------------------
                                   1385 ;	 function Port_Init
                                   1386 ;	-----------------------------------------
      0001C2                       1387 _Port_Init:
                           000155  1388 	C$hw6.c$98$1$39 ==.
                                   1389 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:98: P2MDOUT &= ~0x02; //Set port 2.2 as input (0)
      0001C2 53 A6 FD         [24] 1390 	anl	_P2MDOUT,#0xfd
                           000158  1391 	C$hw6.c$99$1$39 ==.
                                   1392 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:99: P2 |= 0x02; //Set Port 2.2 High Impedience
      0001C5 43 A0 02         [24] 1393 	orl	_P2,#0x02
                           00015B  1394 	C$hw6.c$100$1$39 ==.
                           00015B  1395 	XG$Port_Init$0$0 ==.
      0001C8 22               [24] 1396 	ret
                                   1397 ;------------------------------------------------------------
                                   1398 ;Allocation info for local variables in function 'Interrupt_Init'
                                   1399 ;------------------------------------------------------------
                           00015C  1400 	G$Interrupt_Init$0$0 ==.
                           00015C  1401 	C$hw6.c$104$1$39 ==.
                                   1402 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:104: void Interrupt_Init(void)
                                   1403 ;	-----------------------------------------
                                   1404 ;	 function Interrupt_Init
                                   1405 ;	-----------------------------------------
      0001C9                       1406 _Interrupt_Init:
                           00015C  1407 	C$hw6.c$106$1$41 ==.
                                   1408 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:106: IE |= 0x82;      // enable Timer0 Interrupt request & global interrupts
      0001C9 43 A8 82         [24] 1409 	orl	_IE,#0x82
                           00015F  1410 	C$hw6.c$107$1$41 ==.
                           00015F  1411 	XG$Interrupt_Init$0$0 ==.
      0001CC 22               [24] 1412 	ret
                                   1413 ;------------------------------------------------------------
                                   1414 ;Allocation info for local variables in function 'Timer_Init'
                                   1415 ;------------------------------------------------------------
                           000160  1416 	G$Timer_Init$0$0 ==.
                           000160  1417 	C$hw6.c$110$1$41 ==.
                                   1418 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:110: void Timer_Init(void)
                                   1419 ;	-----------------------------------------
                                   1420 ;	 function Timer_Init
                                   1421 ;	-----------------------------------------
      0001CD                       1422 _Timer_Init:
                           000160  1423 	C$hw6.c$113$1$43 ==.
                                   1424 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:113: CKCON |= 0x08;   // CKCON set to SYSCLK
      0001CD 43 8E 08         [24] 1425 	orl	_CKCON,#0x08
                           000163  1426 	C$hw6.c$114$1$43 ==.
                                   1427 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:114: TMOD &= 0xF0;    // TMOD clear four least signifcant bytes, TMOD 13bit(mode)
      0001D0 53 89 F0         [24] 1428 	anl	_TMOD,#0xf0
                           000166  1429 	C$hw6.c$115$1$43 ==.
                                   1430 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:115: TR0 = 0;         // Stop Timer0
      0001D3 C2 8C            [12] 1431 	clr	_TR0
                           000168  1432 	C$hw6.c$116$1$43 ==.
                                   1433 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:116: TL0 = 0;         // Clear low byte of register T0
      0001D5 75 8A 00         [24] 1434 	mov	_TL0,#0x00
                           00016B  1435 	C$hw6.c$117$1$43 ==.
                                   1436 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:117: TH0 = 0;         // Clear high byte of register T0
      0001D8 75 8C 00         [24] 1437 	mov	_TH0,#0x00
                           00016E  1438 	C$hw6.c$119$1$43 ==.
                           00016E  1439 	XG$Timer_Init$0$0 ==.
      0001DB 22               [24] 1440 	ret
                                   1441 ;------------------------------------------------------------
                                   1442 ;Allocation info for local variables in function 'Timer0_ISR'
                                   1443 ;------------------------------------------------------------
                           00016F  1444 	G$Timer0_ISR$0$0 ==.
                           00016F  1445 	C$hw6.c$123$1$43 ==.
                                   1446 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:123: void Timer0_ISR(void) __interrupt 1
                                   1447 ;	-----------------------------------------
                                   1448 ;	 function Timer0_ISR
                                   1449 ;	-----------------------------------------
      0001DC                       1450 _Timer0_ISR:
      0001DC C0 E0            [24] 1451 	push	acc
      0001DE C0 D0            [24] 1452 	push	psw
                           000173  1453 	C$hw6.c$127$1$45 ==.
                                   1454 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:127: counts++; //Overall Counter
      0001E0 05 08            [12] 1455 	inc	_counts
      0001E2 E4               [12] 1456 	clr	a
      0001E3 B5 08 02         [24] 1457 	cjne	a,_counts,00103$
      0001E6 05 09            [12] 1458 	inc	(_counts + 1)
      0001E8                       1459 00103$:
                           00017B  1460 	C$hw6.c$128$1$45 ==.
                                   1461 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:128: debounceCount++; //increment debounce
      0001E8 05 0A            [12] 1462 	inc	_debounceCount
      0001EA E4               [12] 1463 	clr	a
      0001EB B5 0A 02         [24] 1464 	cjne	a,_debounceCount,00104$
      0001EE 05 0B            [12] 1465 	inc	(_debounceCount + 1)
      0001F0                       1466 00104$:
      0001F0 D0 D0            [24] 1467 	pop	psw
      0001F2 D0 E0            [24] 1468 	pop	acc
                           000187  1469 	C$hw6.c$129$1$45 ==.
                           000187  1470 	XG$Timer0_ISR$0$0 ==.
      0001F4 32               [24] 1471 	reti
                                   1472 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1473 ;	eliminated unneeded push/pop dpl
                                   1474 ;	eliminated unneeded push/pop dph
                                   1475 ;	eliminated unneeded push/pop b
                                   1476 ;------------------------------------------------------------
                                   1477 ;Allocation info for local variables in function 'Debounce'
                                   1478 ;------------------------------------------------------------
                           000188  1479 	G$Debounce$0$0 ==.
                           000188  1480 	C$hw6.c$131$1$45 ==.
                                   1481 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:131: void Debounce(void)
                                   1482 ;	-----------------------------------------
                                   1483 ;	 function Debounce
                                   1484 ;	-----------------------------------------
      0001F5                       1485 _Debounce:
                           000188  1486 	C$hw6.c$133$1$47 ==.
                                   1487 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:133: debounceCount = 0; //reset counter
      0001F5 E4               [12] 1488 	clr	a
      0001F6 F5 0A            [12] 1489 	mov	_debounceCount,a
      0001F8 F5 0B            [12] 1490 	mov	(_debounceCount + 1),a
                           00018D  1491 	C$hw6.c$134$1$47 ==.
                                   1492 ;	C:\Users\Tim\Documents\LITEC\hw6\hw6.c:134: while(debounceCount < 54); //wait 20 msec
      0001FA                       1493 00101$:
      0001FA C3               [12] 1494 	clr	c
      0001FB E5 0A            [12] 1495 	mov	a,_debounceCount
      0001FD 94 36            [12] 1496 	subb	a,#0x36
      0001FF E5 0B            [12] 1497 	mov	a,(_debounceCount + 1)
      000201 94 00            [12] 1498 	subb	a,#0x00
      000203 40 F5            [24] 1499 	jc	00101$
                           000198  1500 	C$hw6.c$135$1$47 ==.
                           000198  1501 	XG$Debounce$0$0 ==.
      000205 22               [24] 1502 	ret
                                   1503 	.area CSEG    (CODE)
                                   1504 	.area CONST   (CODE)
                           000000  1505 Fhw6$__str_0$0$0 == .
      000845                       1506 ___str_0:
      000845 45 6E 74 65 72 20 61  1507 	.ascii "Enter a keyboard character to begin "
             20 6B 65 79 62 6F 61
             72 64 20 63 68 61 72
             61 63 74 65 72 20 74
             6F 20 62 65 67 69 6E
             20
      000869 0D                    1508 	.db 0x0d
      00086A 0A                    1509 	.db 0x0a
      00086B 00                    1510 	.db 0x00
                           000027  1511 Fhw6$__str_1$0$0 == .
      00086C                       1512 ___str_1:
      00086C 50 75 73 68 20 74 68  1513 	.ascii "Push the button as many times as you like in 20 seconds "
             65 20 62 75 74 74 6F
             6E 20 61 73 20 6D 61
             6E 79 20 74 69 6D 65
             73 20 61 73 20 79 6F
             75 20 6C 69 6B 65 20
             69 6E 20 32 30 20 73
             65 63 6F 6E 64 73 20
      0008A4 0D                    1514 	.db 0x0d
      0008A5 0A                    1515 	.db 0x0a
      0008A6 00                    1516 	.db 0x00
                           000062  1517 Fhw6$__str_2$0$0 == .
      0008A7                       1518 ___str_2:
      0008A7 0D                    1519 	.db 0x0d
      0008A8 4E 75 6D 62 65 72 20  1520 	.ascii "Number of presses: %d "
             6F 66 20 70 72 65 73
             73 65 73 3A 20 25 64
             20
      0008BE 0A                    1521 	.db 0x0a
      0008BF 0D                    1522 	.db 0x0d
      0008C0 00                    1523 	.db 0x00
                           00007C  1524 Fhw6$__str_3$0$0 == .
      0008C1                       1525 ___str_3:
      0008C1 0D                    1526 	.db 0x0d
      0008C2 4E 75 6D 62 65 72 20  1527 	.ascii "Number longer than one second: %d "
             6C 6F 6E 67 65 72 20
             74 68 61 6E 20 6F 6E
             65 20 73 65 63 6F 6E
             64 3A 20 25 64 20
      0008E4 0A                    1528 	.db 0x0a
      0008E5 0D                    1529 	.db 0x0d
      0008E6 00                    1530 	.db 0x00
                                   1531 	.area XINIT   (CODE)
                                   1532 	.area CABS    (ABS,CODE)
