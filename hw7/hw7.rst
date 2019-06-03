                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module hw7
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
                                    295 	.globl _millivolts
                                    296 	.globl _input
                                    297 	.globl _AD_value
                                    298 	.globl _ADC_Init
                                    299 	.globl _read_AD_input
                                    300 	.globl _Port_Init
                                    301 ;--------------------------------------------------------
                                    302 ; special function registers
                                    303 ;--------------------------------------------------------
                                    304 	.area RSEG    (ABS,DATA)
      000000                        305 	.org 0x0000
                           000080   306 G$P0$0$0 == 0x0080
                           000080   307 _P0	=	0x0080
                           000081   308 G$SP$0$0 == 0x0081
                           000081   309 _SP	=	0x0081
                           000082   310 G$DPL$0$0 == 0x0082
                           000082   311 _DPL	=	0x0082
                           000083   312 G$DPH$0$0 == 0x0083
                           000083   313 _DPH	=	0x0083
                           000084   314 G$P4$0$0 == 0x0084
                           000084   315 _P4	=	0x0084
                           000085   316 G$P5$0$0 == 0x0085
                           000085   317 _P5	=	0x0085
                           000086   318 G$P6$0$0 == 0x0086
                           000086   319 _P6	=	0x0086
                           000087   320 G$PCON$0$0 == 0x0087
                           000087   321 _PCON	=	0x0087
                           000088   322 G$TCON$0$0 == 0x0088
                           000088   323 _TCON	=	0x0088
                           000089   324 G$TMOD$0$0 == 0x0089
                           000089   325 _TMOD	=	0x0089
                           00008A   326 G$TL0$0$0 == 0x008a
                           00008A   327 _TL0	=	0x008a
                           00008B   328 G$TL1$0$0 == 0x008b
                           00008B   329 _TL1	=	0x008b
                           00008C   330 G$TH0$0$0 == 0x008c
                           00008C   331 _TH0	=	0x008c
                           00008D   332 G$TH1$0$0 == 0x008d
                           00008D   333 _TH1	=	0x008d
                           00008E   334 G$CKCON$0$0 == 0x008e
                           00008E   335 _CKCON	=	0x008e
                           00008F   336 G$PSCTL$0$0 == 0x008f
                           00008F   337 _PSCTL	=	0x008f
                           000090   338 G$P1$0$0 == 0x0090
                           000090   339 _P1	=	0x0090
                           000091   340 G$TMR3CN$0$0 == 0x0091
                           000091   341 _TMR3CN	=	0x0091
                           000092   342 G$TMR3RLL$0$0 == 0x0092
                           000092   343 _TMR3RLL	=	0x0092
                           000093   344 G$TMR3RLH$0$0 == 0x0093
                           000093   345 _TMR3RLH	=	0x0093
                           000094   346 G$TMR3L$0$0 == 0x0094
                           000094   347 _TMR3L	=	0x0094
                           000095   348 G$TMR3H$0$0 == 0x0095
                           000095   349 _TMR3H	=	0x0095
                           000096   350 G$P7$0$0 == 0x0096
                           000096   351 _P7	=	0x0096
                           000098   352 G$SCON$0$0 == 0x0098
                           000098   353 _SCON	=	0x0098
                           000098   354 G$SCON0$0$0 == 0x0098
                           000098   355 _SCON0	=	0x0098
                           000099   356 G$SBUF$0$0 == 0x0099
                           000099   357 _SBUF	=	0x0099
                           000099   358 G$SBUF0$0$0 == 0x0099
                           000099   359 _SBUF0	=	0x0099
                           00009A   360 G$SPI0CFG$0$0 == 0x009a
                           00009A   361 _SPI0CFG	=	0x009a
                           00009B   362 G$SPI0DAT$0$0 == 0x009b
                           00009B   363 _SPI0DAT	=	0x009b
                           00009C   364 G$ADC1$0$0 == 0x009c
                           00009C   365 _ADC1	=	0x009c
                           00009D   366 G$SPI0CKR$0$0 == 0x009d
                           00009D   367 _SPI0CKR	=	0x009d
                           00009E   368 G$CPT0CN$0$0 == 0x009e
                           00009E   369 _CPT0CN	=	0x009e
                           00009F   370 G$CPT1CN$0$0 == 0x009f
                           00009F   371 _CPT1CN	=	0x009f
                           0000A0   372 G$P2$0$0 == 0x00a0
                           0000A0   373 _P2	=	0x00a0
                           0000A1   374 G$EMI0TC$0$0 == 0x00a1
                           0000A1   375 _EMI0TC	=	0x00a1
                           0000A3   376 G$EMI0CF$0$0 == 0x00a3
                           0000A3   377 _EMI0CF	=	0x00a3
                           0000A4   378 G$PRT0CF$0$0 == 0x00a4
                           0000A4   379 _PRT0CF	=	0x00a4
                           0000A4   380 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   381 _P0MDOUT	=	0x00a4
                           0000A5   382 G$PRT1CF$0$0 == 0x00a5
                           0000A5   383 _PRT1CF	=	0x00a5
                           0000A5   384 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   385 _P1MDOUT	=	0x00a5
                           0000A6   386 G$PRT2CF$0$0 == 0x00a6
                           0000A6   387 _PRT2CF	=	0x00a6
                           0000A6   388 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   389 _P2MDOUT	=	0x00a6
                           0000A7   390 G$PRT3CF$0$0 == 0x00a7
                           0000A7   391 _PRT3CF	=	0x00a7
                           0000A7   392 G$P3MDOUT$0$0 == 0x00a7
                           0000A7   393 _P3MDOUT	=	0x00a7
                           0000A8   394 G$IE$0$0 == 0x00a8
                           0000A8   395 _IE	=	0x00a8
                           0000A9   396 G$SADDR0$0$0 == 0x00a9
                           0000A9   397 _SADDR0	=	0x00a9
                           0000AA   398 G$ADC1CN$0$0 == 0x00aa
                           0000AA   399 _ADC1CN	=	0x00aa
                           0000AB   400 G$ADC1CF$0$0 == 0x00ab
                           0000AB   401 _ADC1CF	=	0x00ab
                           0000AC   402 G$AMX1SL$0$0 == 0x00ac
                           0000AC   403 _AMX1SL	=	0x00ac
                           0000AD   404 G$P3IF$0$0 == 0x00ad
                           0000AD   405 _P3IF	=	0x00ad
                           0000AE   406 G$SADEN1$0$0 == 0x00ae
                           0000AE   407 _SADEN1	=	0x00ae
                           0000AF   408 G$EMI0CN$0$0 == 0x00af
                           0000AF   409 _EMI0CN	=	0x00af
                           0000AF   410 G$_XPAGE$0$0 == 0x00af
                           0000AF   411 __XPAGE	=	0x00af
                           0000B0   412 G$P3$0$0 == 0x00b0
                           0000B0   413 _P3	=	0x00b0
                           0000B1   414 G$OSCXCN$0$0 == 0x00b1
                           0000B1   415 _OSCXCN	=	0x00b1
                           0000B2   416 G$OSCICN$0$0 == 0x00b2
                           0000B2   417 _OSCICN	=	0x00b2
                           0000B5   418 G$P74OUT$0$0 == 0x00b5
                           0000B5   419 _P74OUT	=	0x00b5
                           0000B6   420 G$FLSCL$0$0 == 0x00b6
                           0000B6   421 _FLSCL	=	0x00b6
                           0000B7   422 G$FLACL$0$0 == 0x00b7
                           0000B7   423 _FLACL	=	0x00b7
                           0000B8   424 G$IP$0$0 == 0x00b8
                           0000B8   425 _IP	=	0x00b8
                           0000B9   426 G$SADEN0$0$0 == 0x00b9
                           0000B9   427 _SADEN0	=	0x00b9
                           0000BA   428 G$AMX0CF$0$0 == 0x00ba
                           0000BA   429 _AMX0CF	=	0x00ba
                           0000BB   430 G$AMX0SL$0$0 == 0x00bb
                           0000BB   431 _AMX0SL	=	0x00bb
                           0000BC   432 G$ADC0CF$0$0 == 0x00bc
                           0000BC   433 _ADC0CF	=	0x00bc
                           0000BD   434 G$P1MDIN$0$0 == 0x00bd
                           0000BD   435 _P1MDIN	=	0x00bd
                           0000BE   436 G$ADC0L$0$0 == 0x00be
                           0000BE   437 _ADC0L	=	0x00be
                           0000BF   438 G$ADC0H$0$0 == 0x00bf
                           0000BF   439 _ADC0H	=	0x00bf
                           0000C0   440 G$SMB0CN$0$0 == 0x00c0
                           0000C0   441 _SMB0CN	=	0x00c0
                           0000C1   442 G$SMB0STA$0$0 == 0x00c1
                           0000C1   443 _SMB0STA	=	0x00c1
                           0000C2   444 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   445 _SMB0DAT	=	0x00c2
                           0000C3   446 G$SMB0ADR$0$0 == 0x00c3
                           0000C3   447 _SMB0ADR	=	0x00c3
                           0000C4   448 G$ADC0GTL$0$0 == 0x00c4
                           0000C4   449 _ADC0GTL	=	0x00c4
                           0000C5   450 G$ADC0GTH$0$0 == 0x00c5
                           0000C5   451 _ADC0GTH	=	0x00c5
                           0000C6   452 G$ADC0LTL$0$0 == 0x00c6
                           0000C6   453 _ADC0LTL	=	0x00c6
                           0000C7   454 G$ADC0LTH$0$0 == 0x00c7
                           0000C7   455 _ADC0LTH	=	0x00c7
                           0000C8   456 G$T2CON$0$0 == 0x00c8
                           0000C8   457 _T2CON	=	0x00c8
                           0000C9   458 G$T4CON$0$0 == 0x00c9
                           0000C9   459 _T4CON	=	0x00c9
                           0000CA   460 G$RCAP2L$0$0 == 0x00ca
                           0000CA   461 _RCAP2L	=	0x00ca
                           0000CB   462 G$RCAP2H$0$0 == 0x00cb
                           0000CB   463 _RCAP2H	=	0x00cb
                           0000CC   464 G$TL2$0$0 == 0x00cc
                           0000CC   465 _TL2	=	0x00cc
                           0000CD   466 G$TH2$0$0 == 0x00cd
                           0000CD   467 _TH2	=	0x00cd
                           0000CF   468 G$SMB0CR$0$0 == 0x00cf
                           0000CF   469 _SMB0CR	=	0x00cf
                           0000D0   470 G$PSW$0$0 == 0x00d0
                           0000D0   471 _PSW	=	0x00d0
                           0000D1   472 G$REF0CN$0$0 == 0x00d1
                           0000D1   473 _REF0CN	=	0x00d1
                           0000D2   474 G$DAC0L$0$0 == 0x00d2
                           0000D2   475 _DAC0L	=	0x00d2
                           0000D3   476 G$DAC0H$0$0 == 0x00d3
                           0000D3   477 _DAC0H	=	0x00d3
                           0000D4   478 G$DAC0CN$0$0 == 0x00d4
                           0000D4   479 _DAC0CN	=	0x00d4
                           0000D5   480 G$DAC1L$0$0 == 0x00d5
                           0000D5   481 _DAC1L	=	0x00d5
                           0000D6   482 G$DAC1H$0$0 == 0x00d6
                           0000D6   483 _DAC1H	=	0x00d6
                           0000D7   484 G$DAC1CN$0$0 == 0x00d7
                           0000D7   485 _DAC1CN	=	0x00d7
                           0000D8   486 G$PCA0CN$0$0 == 0x00d8
                           0000D8   487 _PCA0CN	=	0x00d8
                           0000D9   488 G$PCA0MD$0$0 == 0x00d9
                           0000D9   489 _PCA0MD	=	0x00d9
                           0000DA   490 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   491 _PCA0CPM0	=	0x00da
                           0000DB   492 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   493 _PCA0CPM1	=	0x00db
                           0000DC   494 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   495 _PCA0CPM2	=	0x00dc
                           0000DD   496 G$PCA0CPM3$0$0 == 0x00dd
                           0000DD   497 _PCA0CPM3	=	0x00dd
                           0000DE   498 G$PCA0CPM4$0$0 == 0x00de
                           0000DE   499 _PCA0CPM4	=	0x00de
                           0000E0   500 G$ACC$0$0 == 0x00e0
                           0000E0   501 _ACC	=	0x00e0
                           0000E1   502 G$XBR0$0$0 == 0x00e1
                           0000E1   503 _XBR0	=	0x00e1
                           0000E2   504 G$XBR1$0$0 == 0x00e2
                           0000E2   505 _XBR1	=	0x00e2
                           0000E3   506 G$XBR2$0$0 == 0x00e3
                           0000E3   507 _XBR2	=	0x00e3
                           0000E4   508 G$RCAP4L$0$0 == 0x00e4
                           0000E4   509 _RCAP4L	=	0x00e4
                           0000E5   510 G$RCAP4H$0$0 == 0x00e5
                           0000E5   511 _RCAP4H	=	0x00e5
                           0000E6   512 G$EIE1$0$0 == 0x00e6
                           0000E6   513 _EIE1	=	0x00e6
                           0000E7   514 G$EIE2$0$0 == 0x00e7
                           0000E7   515 _EIE2	=	0x00e7
                           0000E8   516 G$ADC0CN$0$0 == 0x00e8
                           0000E8   517 _ADC0CN	=	0x00e8
                           0000E9   518 G$PCA0L$0$0 == 0x00e9
                           0000E9   519 _PCA0L	=	0x00e9
                           0000EA   520 G$PCA0CPL0$0$0 == 0x00ea
                           0000EA   521 _PCA0CPL0	=	0x00ea
                           0000EB   522 G$PCA0CPL1$0$0 == 0x00eb
                           0000EB   523 _PCA0CPL1	=	0x00eb
                           0000EC   524 G$PCA0CPL2$0$0 == 0x00ec
                           0000EC   525 _PCA0CPL2	=	0x00ec
                           0000ED   526 G$PCA0CPL3$0$0 == 0x00ed
                           0000ED   527 _PCA0CPL3	=	0x00ed
                           0000EE   528 G$PCA0CPL4$0$0 == 0x00ee
                           0000EE   529 _PCA0CPL4	=	0x00ee
                           0000EF   530 G$RSTSRC$0$0 == 0x00ef
                           0000EF   531 _RSTSRC	=	0x00ef
                           0000F0   532 G$B$0$0 == 0x00f0
                           0000F0   533 _B	=	0x00f0
                           0000F1   534 G$SCON1$0$0 == 0x00f1
                           0000F1   535 _SCON1	=	0x00f1
                           0000F2   536 G$SBUF1$0$0 == 0x00f2
                           0000F2   537 _SBUF1	=	0x00f2
                           0000F3   538 G$SADDR1$0$0 == 0x00f3
                           0000F3   539 _SADDR1	=	0x00f3
                           0000F4   540 G$TL4$0$0 == 0x00f4
                           0000F4   541 _TL4	=	0x00f4
                           0000F5   542 G$TH4$0$0 == 0x00f5
                           0000F5   543 _TH4	=	0x00f5
                           0000F6   544 G$EIP1$0$0 == 0x00f6
                           0000F6   545 _EIP1	=	0x00f6
                           0000F7   546 G$EIP2$0$0 == 0x00f7
                           0000F7   547 _EIP2	=	0x00f7
                           0000F8   548 G$SPI0CN$0$0 == 0x00f8
                           0000F8   549 _SPI0CN	=	0x00f8
                           0000F9   550 G$PCA0H$0$0 == 0x00f9
                           0000F9   551 _PCA0H	=	0x00f9
                           0000FA   552 G$PCA0CPH0$0$0 == 0x00fa
                           0000FA   553 _PCA0CPH0	=	0x00fa
                           0000FB   554 G$PCA0CPH1$0$0 == 0x00fb
                           0000FB   555 _PCA0CPH1	=	0x00fb
                           0000FC   556 G$PCA0CPH2$0$0 == 0x00fc
                           0000FC   557 _PCA0CPH2	=	0x00fc
                           0000FD   558 G$PCA0CPH3$0$0 == 0x00fd
                           0000FD   559 _PCA0CPH3	=	0x00fd
                           0000FE   560 G$PCA0CPH4$0$0 == 0x00fe
                           0000FE   561 _PCA0CPH4	=	0x00fe
                           0000FF   562 G$WDTCN$0$0 == 0x00ff
                           0000FF   563 _WDTCN	=	0x00ff
                           008C8A   564 G$TMR0$0$0 == 0x8c8a
                           008C8A   565 _TMR0	=	0x8c8a
                           008D8B   566 G$TMR1$0$0 == 0x8d8b
                           008D8B   567 _TMR1	=	0x8d8b
                           00CDCC   568 G$TMR2$0$0 == 0xcdcc
                           00CDCC   569 _TMR2	=	0xcdcc
                           00CBCA   570 G$RCAP2$0$0 == 0xcbca
                           00CBCA   571 _RCAP2	=	0xcbca
                           009594   572 G$TMR3$0$0 == 0x9594
                           009594   573 _TMR3	=	0x9594
                           009392   574 G$TMR3RL$0$0 == 0x9392
                           009392   575 _TMR3RL	=	0x9392
                           00F5F4   576 G$TMR4$0$0 == 0xf5f4
                           00F5F4   577 _TMR4	=	0xf5f4
                           00E5E4   578 G$RCAP4$0$0 == 0xe5e4
                           00E5E4   579 _RCAP4	=	0xe5e4
                           00BFBE   580 G$ADC0$0$0 == 0xbfbe
                           00BFBE   581 _ADC0	=	0xbfbe
                           00C5C4   582 G$ADC0GT$0$0 == 0xc5c4
                           00C5C4   583 _ADC0GT	=	0xc5c4
                           00C7C6   584 G$ADC0LT$0$0 == 0xc7c6
                           00C7C6   585 _ADC0LT	=	0xc7c6
                           00D3D2   586 G$DAC0$0$0 == 0xd3d2
                           00D3D2   587 _DAC0	=	0xd3d2
                           00D6D5   588 G$DAC1$0$0 == 0xd6d5
                           00D6D5   589 _DAC1	=	0xd6d5
                           00F9E9   590 G$PCA0$0$0 == 0xf9e9
                           00F9E9   591 _PCA0	=	0xf9e9
                           00FAEA   592 G$PCA0CP0$0$0 == 0xfaea
                           00FAEA   593 _PCA0CP0	=	0xfaea
                           00FBEB   594 G$PCA0CP1$0$0 == 0xfbeb
                           00FBEB   595 _PCA0CP1	=	0xfbeb
                           00FCEC   596 G$PCA0CP2$0$0 == 0xfcec
                           00FCEC   597 _PCA0CP2	=	0xfcec
                           00FDED   598 G$PCA0CP3$0$0 == 0xfded
                           00FDED   599 _PCA0CP3	=	0xfded
                           00FEEE   600 G$PCA0CP4$0$0 == 0xfeee
                           00FEEE   601 _PCA0CP4	=	0xfeee
                                    602 ;--------------------------------------------------------
                                    603 ; special function bits
                                    604 ;--------------------------------------------------------
                                    605 	.area RSEG    (ABS,DATA)
      000000                        606 	.org 0x0000
                           000080   607 G$P0_0$0$0 == 0x0080
                           000080   608 _P0_0	=	0x0080
                           000081   609 G$P0_1$0$0 == 0x0081
                           000081   610 _P0_1	=	0x0081
                           000082   611 G$P0_2$0$0 == 0x0082
                           000082   612 _P0_2	=	0x0082
                           000083   613 G$P0_3$0$0 == 0x0083
                           000083   614 _P0_3	=	0x0083
                           000084   615 G$P0_4$0$0 == 0x0084
                           000084   616 _P0_4	=	0x0084
                           000085   617 G$P0_5$0$0 == 0x0085
                           000085   618 _P0_5	=	0x0085
                           000086   619 G$P0_6$0$0 == 0x0086
                           000086   620 _P0_6	=	0x0086
                           000087   621 G$P0_7$0$0 == 0x0087
                           000087   622 _P0_7	=	0x0087
                           000088   623 G$IT0$0$0 == 0x0088
                           000088   624 _IT0	=	0x0088
                           000089   625 G$IE0$0$0 == 0x0089
                           000089   626 _IE0	=	0x0089
                           00008A   627 G$IT1$0$0 == 0x008a
                           00008A   628 _IT1	=	0x008a
                           00008B   629 G$IE1$0$0 == 0x008b
                           00008B   630 _IE1	=	0x008b
                           00008C   631 G$TR0$0$0 == 0x008c
                           00008C   632 _TR0	=	0x008c
                           00008D   633 G$TF0$0$0 == 0x008d
                           00008D   634 _TF0	=	0x008d
                           00008E   635 G$TR1$0$0 == 0x008e
                           00008E   636 _TR1	=	0x008e
                           00008F   637 G$TF1$0$0 == 0x008f
                           00008F   638 _TF1	=	0x008f
                           000090   639 G$P1_0$0$0 == 0x0090
                           000090   640 _P1_0	=	0x0090
                           000091   641 G$P1_1$0$0 == 0x0091
                           000091   642 _P1_1	=	0x0091
                           000092   643 G$P1_2$0$0 == 0x0092
                           000092   644 _P1_2	=	0x0092
                           000093   645 G$P1_3$0$0 == 0x0093
                           000093   646 _P1_3	=	0x0093
                           000094   647 G$P1_4$0$0 == 0x0094
                           000094   648 _P1_4	=	0x0094
                           000095   649 G$P1_5$0$0 == 0x0095
                           000095   650 _P1_5	=	0x0095
                           000096   651 G$P1_6$0$0 == 0x0096
                           000096   652 _P1_6	=	0x0096
                           000097   653 G$P1_7$0$0 == 0x0097
                           000097   654 _P1_7	=	0x0097
                           000098   655 G$RI$0$0 == 0x0098
                           000098   656 _RI	=	0x0098
                           000098   657 G$RI0$0$0 == 0x0098
                           000098   658 _RI0	=	0x0098
                           000099   659 G$TI$0$0 == 0x0099
                           000099   660 _TI	=	0x0099
                           000099   661 G$TI0$0$0 == 0x0099
                           000099   662 _TI0	=	0x0099
                           00009A   663 G$RB8$0$0 == 0x009a
                           00009A   664 _RB8	=	0x009a
                           00009A   665 G$RB80$0$0 == 0x009a
                           00009A   666 _RB80	=	0x009a
                           00009B   667 G$TB8$0$0 == 0x009b
                           00009B   668 _TB8	=	0x009b
                           00009B   669 G$TB80$0$0 == 0x009b
                           00009B   670 _TB80	=	0x009b
                           00009C   671 G$REN$0$0 == 0x009c
                           00009C   672 _REN	=	0x009c
                           00009C   673 G$REN0$0$0 == 0x009c
                           00009C   674 _REN0	=	0x009c
                           00009D   675 G$SM2$0$0 == 0x009d
                           00009D   676 _SM2	=	0x009d
                           00009D   677 G$SM20$0$0 == 0x009d
                           00009D   678 _SM20	=	0x009d
                           00009D   679 G$MCE0$0$0 == 0x009d
                           00009D   680 _MCE0	=	0x009d
                           00009E   681 G$SM1$0$0 == 0x009e
                           00009E   682 _SM1	=	0x009e
                           00009E   683 G$SM10$0$0 == 0x009e
                           00009E   684 _SM10	=	0x009e
                           00009F   685 G$SM0$0$0 == 0x009f
                           00009F   686 _SM0	=	0x009f
                           00009F   687 G$SM00$0$0 == 0x009f
                           00009F   688 _SM00	=	0x009f
                           00009F   689 G$S0MODE$0$0 == 0x009f
                           00009F   690 _S0MODE	=	0x009f
                           0000A0   691 G$P2_0$0$0 == 0x00a0
                           0000A0   692 _P2_0	=	0x00a0
                           0000A1   693 G$P2_1$0$0 == 0x00a1
                           0000A1   694 _P2_1	=	0x00a1
                           0000A2   695 G$P2_2$0$0 == 0x00a2
                           0000A2   696 _P2_2	=	0x00a2
                           0000A3   697 G$P2_3$0$0 == 0x00a3
                           0000A3   698 _P2_3	=	0x00a3
                           0000A4   699 G$P2_4$0$0 == 0x00a4
                           0000A4   700 _P2_4	=	0x00a4
                           0000A5   701 G$P2_5$0$0 == 0x00a5
                           0000A5   702 _P2_5	=	0x00a5
                           0000A6   703 G$P2_6$0$0 == 0x00a6
                           0000A6   704 _P2_6	=	0x00a6
                           0000A7   705 G$P2_7$0$0 == 0x00a7
                           0000A7   706 _P2_7	=	0x00a7
                           0000A8   707 G$EX0$0$0 == 0x00a8
                           0000A8   708 _EX0	=	0x00a8
                           0000A9   709 G$ET0$0$0 == 0x00a9
                           0000A9   710 _ET0	=	0x00a9
                           0000AA   711 G$EX1$0$0 == 0x00aa
                           0000AA   712 _EX1	=	0x00aa
                           0000AB   713 G$ET1$0$0 == 0x00ab
                           0000AB   714 _ET1	=	0x00ab
                           0000AC   715 G$ES0$0$0 == 0x00ac
                           0000AC   716 _ES0	=	0x00ac
                           0000AC   717 G$ES$0$0 == 0x00ac
                           0000AC   718 _ES	=	0x00ac
                           0000AD   719 G$ET2$0$0 == 0x00ad
                           0000AD   720 _ET2	=	0x00ad
                           0000AF   721 G$EA$0$0 == 0x00af
                           0000AF   722 _EA	=	0x00af
                           0000B0   723 G$P3_0$0$0 == 0x00b0
                           0000B0   724 _P3_0	=	0x00b0
                           0000B1   725 G$P3_1$0$0 == 0x00b1
                           0000B1   726 _P3_1	=	0x00b1
                           0000B2   727 G$P3_2$0$0 == 0x00b2
                           0000B2   728 _P3_2	=	0x00b2
                           0000B3   729 G$P3_3$0$0 == 0x00b3
                           0000B3   730 _P3_3	=	0x00b3
                           0000B4   731 G$P3_4$0$0 == 0x00b4
                           0000B4   732 _P3_4	=	0x00b4
                           0000B5   733 G$P3_5$0$0 == 0x00b5
                           0000B5   734 _P3_5	=	0x00b5
                           0000B6   735 G$P3_6$0$0 == 0x00b6
                           0000B6   736 _P3_6	=	0x00b6
                           0000B7   737 G$P3_7$0$0 == 0x00b7
                           0000B7   738 _P3_7	=	0x00b7
                           0000B8   739 G$PX0$0$0 == 0x00b8
                           0000B8   740 _PX0	=	0x00b8
                           0000B9   741 G$PT0$0$0 == 0x00b9
                           0000B9   742 _PT0	=	0x00b9
                           0000BA   743 G$PX1$0$0 == 0x00ba
                           0000BA   744 _PX1	=	0x00ba
                           0000BB   745 G$PT1$0$0 == 0x00bb
                           0000BB   746 _PT1	=	0x00bb
                           0000BC   747 G$PS0$0$0 == 0x00bc
                           0000BC   748 _PS0	=	0x00bc
                           0000BC   749 G$PS$0$0 == 0x00bc
                           0000BC   750 _PS	=	0x00bc
                           0000BD   751 G$PT2$0$0 == 0x00bd
                           0000BD   752 _PT2	=	0x00bd
                           0000C0   753 G$SMBTOE$0$0 == 0x00c0
                           0000C0   754 _SMBTOE	=	0x00c0
                           0000C1   755 G$SMBFTE$0$0 == 0x00c1
                           0000C1   756 _SMBFTE	=	0x00c1
                           0000C2   757 G$AA$0$0 == 0x00c2
                           0000C2   758 _AA	=	0x00c2
                           0000C3   759 G$SI$0$0 == 0x00c3
                           0000C3   760 _SI	=	0x00c3
                           0000C4   761 G$STO$0$0 == 0x00c4
                           0000C4   762 _STO	=	0x00c4
                           0000C5   763 G$STA$0$0 == 0x00c5
                           0000C5   764 _STA	=	0x00c5
                           0000C6   765 G$ENSMB$0$0 == 0x00c6
                           0000C6   766 _ENSMB	=	0x00c6
                           0000C7   767 G$BUSY$0$0 == 0x00c7
                           0000C7   768 _BUSY	=	0x00c7
                           0000C8   769 G$CPRL2$0$0 == 0x00c8
                           0000C8   770 _CPRL2	=	0x00c8
                           0000C9   771 G$CT2$0$0 == 0x00c9
                           0000C9   772 _CT2	=	0x00c9
                           0000CA   773 G$TR2$0$0 == 0x00ca
                           0000CA   774 _TR2	=	0x00ca
                           0000CB   775 G$EXEN2$0$0 == 0x00cb
                           0000CB   776 _EXEN2	=	0x00cb
                           0000CC   777 G$TCLK$0$0 == 0x00cc
                           0000CC   778 _TCLK	=	0x00cc
                           0000CD   779 G$RCLK$0$0 == 0x00cd
                           0000CD   780 _RCLK	=	0x00cd
                           0000CE   781 G$EXF2$0$0 == 0x00ce
                           0000CE   782 _EXF2	=	0x00ce
                           0000CF   783 G$TF2$0$0 == 0x00cf
                           0000CF   784 _TF2	=	0x00cf
                           0000D0   785 G$P$0$0 == 0x00d0
                           0000D0   786 _P	=	0x00d0
                           0000D1   787 G$F1$0$0 == 0x00d1
                           0000D1   788 _F1	=	0x00d1
                           0000D2   789 G$OV$0$0 == 0x00d2
                           0000D2   790 _OV	=	0x00d2
                           0000D3   791 G$RS0$0$0 == 0x00d3
                           0000D3   792 _RS0	=	0x00d3
                           0000D4   793 G$RS1$0$0 == 0x00d4
                           0000D4   794 _RS1	=	0x00d4
                           0000D5   795 G$F0$0$0 == 0x00d5
                           0000D5   796 _F0	=	0x00d5
                           0000D6   797 G$AC$0$0 == 0x00d6
                           0000D6   798 _AC	=	0x00d6
                           0000D7   799 G$CY$0$0 == 0x00d7
                           0000D7   800 _CY	=	0x00d7
                           0000D8   801 G$CCF0$0$0 == 0x00d8
                           0000D8   802 _CCF0	=	0x00d8
                           0000D9   803 G$CCF1$0$0 == 0x00d9
                           0000D9   804 _CCF1	=	0x00d9
                           0000DA   805 G$CCF2$0$0 == 0x00da
                           0000DA   806 _CCF2	=	0x00da
                           0000DB   807 G$CCF3$0$0 == 0x00db
                           0000DB   808 _CCF3	=	0x00db
                           0000DC   809 G$CCF4$0$0 == 0x00dc
                           0000DC   810 _CCF4	=	0x00dc
                           0000DE   811 G$CR$0$0 == 0x00de
                           0000DE   812 _CR	=	0x00de
                           0000DF   813 G$CF$0$0 == 0x00df
                           0000DF   814 _CF	=	0x00df
                           0000E8   815 G$ADLJST$0$0 == 0x00e8
                           0000E8   816 _ADLJST	=	0x00e8
                           0000E8   817 G$AD0LJST$0$0 == 0x00e8
                           0000E8   818 _AD0LJST	=	0x00e8
                           0000E9   819 G$ADWINT$0$0 == 0x00e9
                           0000E9   820 _ADWINT	=	0x00e9
                           0000E9   821 G$AD0WINT$0$0 == 0x00e9
                           0000E9   822 _AD0WINT	=	0x00e9
                           0000EA   823 G$ADSTM0$0$0 == 0x00ea
                           0000EA   824 _ADSTM0	=	0x00ea
                           0000EA   825 G$AD0CM0$0$0 == 0x00ea
                           0000EA   826 _AD0CM0	=	0x00ea
                           0000EB   827 G$ADSTM1$0$0 == 0x00eb
                           0000EB   828 _ADSTM1	=	0x00eb
                           0000EB   829 G$AD0CM1$0$0 == 0x00eb
                           0000EB   830 _AD0CM1	=	0x00eb
                           0000EC   831 G$ADBUSY$0$0 == 0x00ec
                           0000EC   832 _ADBUSY	=	0x00ec
                           0000EC   833 G$AD0BUSY$0$0 == 0x00ec
                           0000EC   834 _AD0BUSY	=	0x00ec
                           0000ED   835 G$ADCINT$0$0 == 0x00ed
                           0000ED   836 _ADCINT	=	0x00ed
                           0000ED   837 G$AD0INT$0$0 == 0x00ed
                           0000ED   838 _AD0INT	=	0x00ed
                           0000EE   839 G$ADCTM$0$0 == 0x00ee
                           0000EE   840 _ADCTM	=	0x00ee
                           0000EE   841 G$AD0TM$0$0 == 0x00ee
                           0000EE   842 _AD0TM	=	0x00ee
                           0000EF   843 G$ADCEN$0$0 == 0x00ef
                           0000EF   844 _ADCEN	=	0x00ef
                           0000EF   845 G$AD0EN$0$0 == 0x00ef
                           0000EF   846 _AD0EN	=	0x00ef
                           0000F8   847 G$SPIEN$0$0 == 0x00f8
                           0000F8   848 _SPIEN	=	0x00f8
                           0000F9   849 G$MSTEN$0$0 == 0x00f9
                           0000F9   850 _MSTEN	=	0x00f9
                           0000FA   851 G$SLVSEL$0$0 == 0x00fa
                           0000FA   852 _SLVSEL	=	0x00fa
                           0000FB   853 G$TXBSY$0$0 == 0x00fb
                           0000FB   854 _TXBSY	=	0x00fb
                           0000FC   855 G$RXOVRN$0$0 == 0x00fc
                           0000FC   856 _RXOVRN	=	0x00fc
                           0000FD   857 G$MODF$0$0 == 0x00fd
                           0000FD   858 _MODF	=	0x00fd
                           0000FE   859 G$WCOL$0$0 == 0x00fe
                           0000FE   860 _WCOL	=	0x00fe
                           0000FF   861 G$SPIF$0$0 == 0x00ff
                           0000FF   862 _SPIF	=	0x00ff
                                    863 ;--------------------------------------------------------
                                    864 ; overlayable register banks
                                    865 ;--------------------------------------------------------
                                    866 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        867 	.ds 8
                                    868 ;--------------------------------------------------------
                                    869 ; internal ram data
                                    870 ;--------------------------------------------------------
                                    871 	.area DSEG    (DATA)
                           000000   872 G$AD_value$0$0==.
      000008                        873 _AD_value::
      000008                        874 	.ds 1
                           000001   875 G$input$0$0==.
      000009                        876 _input::
      000009                        877 	.ds 1
                           000002   878 G$millivolts$0$0==.
      00000A                        879 _millivolts::
      00000A                        880 	.ds 2
                                    881 ;--------------------------------------------------------
                                    882 ; overlayable items in internal ram 
                                    883 ;--------------------------------------------------------
                                    884 	.area	OSEG    (OVR,DATA)
                                    885 	.area	OSEG    (OVR,DATA)
                                    886 	.area	OSEG    (OVR,DATA)
                                    887 ;--------------------------------------------------------
                                    888 ; Stack segment in internal ram 
                                    889 ;--------------------------------------------------------
                                    890 	.area	SSEG
      00003C                        891 __start__stack:
      00003C                        892 	.ds	1
                                    893 
                                    894 ;--------------------------------------------------------
                                    895 ; indirectly addressable internal ram data
                                    896 ;--------------------------------------------------------
                                    897 	.area ISEG    (DATA)
                                    898 ;--------------------------------------------------------
                                    899 ; absolute internal ram data
                                    900 ;--------------------------------------------------------
                                    901 	.area IABS    (ABS,DATA)
                                    902 	.area IABS    (ABS,DATA)
                                    903 ;--------------------------------------------------------
                                    904 ; bit data
                                    905 ;--------------------------------------------------------
                                    906 	.area BSEG    (BIT)
                                    907 ;--------------------------------------------------------
                                    908 ; paged external ram data
                                    909 ;--------------------------------------------------------
                                    910 	.area PSEG    (PAG,XDATA)
                                    911 ;--------------------------------------------------------
                                    912 ; external ram data
                                    913 ;--------------------------------------------------------
                                    914 	.area XSEG    (XDATA)
                                    915 ;--------------------------------------------------------
                                    916 ; absolute external ram data
                                    917 ;--------------------------------------------------------
                                    918 	.area XABS    (ABS,XDATA)
                                    919 ;--------------------------------------------------------
                                    920 ; external initialized ram data
                                    921 ;--------------------------------------------------------
                                    922 	.area XISEG   (XDATA)
                                    923 	.area HOME    (CODE)
                                    924 	.area GSINIT0 (CODE)
                                    925 	.area GSINIT1 (CODE)
                                    926 	.area GSINIT2 (CODE)
                                    927 	.area GSINIT3 (CODE)
                                    928 	.area GSINIT4 (CODE)
                                    929 	.area GSINIT5 (CODE)
                                    930 	.area GSINIT  (CODE)
                                    931 	.area GSFINAL (CODE)
                                    932 	.area CSEG    (CODE)
                                    933 ;--------------------------------------------------------
                                    934 ; interrupt vector 
                                    935 ;--------------------------------------------------------
                                    936 	.area HOME    (CODE)
      000000                        937 __interrupt_vect:
      000000 02 00 06         [24]  938 	ljmp	__sdcc_gsinit_startup
                                    939 ;--------------------------------------------------------
                                    940 ; global & static initialisations
                                    941 ;--------------------------------------------------------
                                    942 	.area HOME    (CODE)
                                    943 	.area GSINIT  (CODE)
                                    944 	.area GSFINAL (CODE)
                                    945 	.area GSINIT  (CODE)
                                    946 	.globl __sdcc_gsinit_startup
                                    947 	.globl __sdcc_program_startup
                                    948 	.globl __start__stack
                                    949 	.globl __mcs51_genXINIT
                                    950 	.globl __mcs51_genXRAMCLEAR
                                    951 	.globl __mcs51_genRAMCLEAR
                                    952 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  953 	ljmp	__sdcc_program_startup
                                    954 ;--------------------------------------------------------
                                    955 ; Home
                                    956 ;--------------------------------------------------------
                                    957 	.area HOME    (CODE)
                                    958 	.area HOME    (CODE)
      000003                        959 __sdcc_program_startup:
      000003 02 00 DD         [24]  960 	ljmp	_main
                                    961 ;	return from main will return to caller
                                    962 ;--------------------------------------------------------
                                    963 ; code
                                    964 ;--------------------------------------------------------
                                    965 	.area CSEG    (CODE)
                                    966 ;------------------------------------------------------------
                                    967 ;Allocation info for local variables in function 'SYSCLK_Init'
                                    968 ;------------------------------------------------------------
                                    969 ;i                         Allocated to registers r6 r7 
                                    970 ;------------------------------------------------------------
                           000000   971 	G$SYSCLK_Init$0$0 ==.
                           000000   972 	C$c8051_SDCC.h$62$0$0 ==.
                                    973 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:62: void SYSCLK_Init(void)
                                    974 ;	-----------------------------------------
                                    975 ;	 function SYSCLK_Init
                                    976 ;	-----------------------------------------
      000062                        977 _SYSCLK_Init:
                           000007   978 	ar7 = 0x07
                           000006   979 	ar6 = 0x06
                           000005   980 	ar5 = 0x05
                           000004   981 	ar4 = 0x04
                           000003   982 	ar3 = 0x03
                           000002   983 	ar2 = 0x02
                           000001   984 	ar1 = 0x01
                           000000   985 	ar0 = 0x00
                           000000   986 	C$c8051_SDCC.h$66$1$2 ==.
                                    987 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:66: OSCXCN = 0x67;                      // start external oscillator with
      000062 75 B1 67         [24]  988 	mov	_OSCXCN,#0x67
                           000003   989 	C$c8051_SDCC.h$69$1$2 ==.
                                    990 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:69: for (i=0; i < 256; i++);            // wait for oscillator to start
      000065 7E 00            [12]  991 	mov	r6,#0x00
      000067 7F 01            [12]  992 	mov	r7,#0x01
      000069                        993 00107$:
      000069 EE               [12]  994 	mov	a,r6
      00006A 24 FF            [12]  995 	add	a,#0xff
      00006C FC               [12]  996 	mov	r4,a
      00006D EF               [12]  997 	mov	a,r7
      00006E 34 FF            [12]  998 	addc	a,#0xff
      000070 FD               [12]  999 	mov	r5,a
      000071 8C 06            [24] 1000 	mov	ar6,r4
      000073 8D 07            [24] 1001 	mov	ar7,r5
      000075 EC               [12] 1002 	mov	a,r4
      000076 4D               [12] 1003 	orl	a,r5
      000077 70 F0            [24] 1004 	jnz	00107$
                           000017  1005 	C$c8051_SDCC.h$71$1$2 ==.
                                   1006 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:71: while (!(OSCXCN & 0x80));           // Wait for crystal osc. to settle
      000079                       1007 00102$:
      000079 E5 B1            [12] 1008 	mov	a,_OSCXCN
      00007B 30 E7 FB         [24] 1009 	jnb	acc.7,00102$
                           00001C  1010 	C$c8051_SDCC.h$73$1$2 ==.
                                   1011 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:73: OSCICN = 0x88;                      // select external oscillator as SYSCLK
      00007E 75 B2 88         [24] 1012 	mov	_OSCICN,#0x88
                           00001F  1013 	C$c8051_SDCC.h$76$1$2 ==.
                           00001F  1014 	XG$SYSCLK_Init$0$0 ==.
      000081 22               [24] 1015 	ret
                                   1016 ;------------------------------------------------------------
                                   1017 ;Allocation info for local variables in function 'UART0_Init'
                                   1018 ;------------------------------------------------------------
                           000020  1019 	G$UART0_Init$0$0 ==.
                           000020  1020 	C$c8051_SDCC.h$84$1$2 ==.
                                   1021 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:84: void UART0_Init(void)
                                   1022 ;	-----------------------------------------
                                   1023 ;	 function UART0_Init
                                   1024 ;	-----------------------------------------
      000082                       1025 _UART0_Init:
                           000020  1026 	C$c8051_SDCC.h$86$1$4 ==.
                                   1027 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:86: SCON0  = 0x50;                      // SCON0: mode 1, 8-bit UART, enable RX
      000082 75 98 50         [24] 1028 	mov	_SCON0,#0x50
                           000023  1029 	C$c8051_SDCC.h$87$1$4 ==.
                                   1030 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:87: TMOD   = 0x20;                      // TMOD: timer 1, mode 2, 8-bit reload
      000085 75 89 20         [24] 1031 	mov	_TMOD,#0x20
                           000026  1032 	C$c8051_SDCC.h$88$1$4 ==.
                                   1033 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:88: TH1    = 0xFF&-(SYSCLK/BAUDRATE/16);     // set Timer1 reload value for baudrate
      000088 75 8D DC         [24] 1034 	mov	_TH1,#0xdc
                           000029  1035 	C$c8051_SDCC.h$89$1$4 ==.
                                   1036 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:89: TR1    = 1;                         // start Timer1
      00008B D2 8E            [12] 1037 	setb	_TR1
                           00002B  1038 	C$c8051_SDCC.h$90$1$4 ==.
                                   1039 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:90: CKCON |= 0x10;                      // Timer1 uses SYSCLK as time base
      00008D 43 8E 10         [24] 1040 	orl	_CKCON,#0x10
                           00002E  1041 	C$c8051_SDCC.h$91$1$4 ==.
                                   1042 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:91: PCON  |= 0x80;                      // SMOD00 = 1 (disable baud rate 
      000090 43 87 80         [24] 1043 	orl	_PCON,#0x80
                           000031  1044 	C$c8051_SDCC.h$93$1$4 ==.
                                   1045 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:93: TI0    = 1;                         // Indicate TX0 ready
      000093 D2 99            [12] 1046 	setb	_TI0
                           000033  1047 	C$c8051_SDCC.h$94$1$4 ==.
                                   1048 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:94: P0MDOUT |= 0x01;                    // Set TX0 to push/pull
      000095 43 A4 01         [24] 1049 	orl	_P0MDOUT,#0x01
                           000036  1050 	C$c8051_SDCC.h$95$1$4 ==.
                           000036  1051 	XG$UART0_Init$0$0 ==.
      000098 22               [24] 1052 	ret
                                   1053 ;------------------------------------------------------------
                                   1054 ;Allocation info for local variables in function 'Sys_Init'
                                   1055 ;------------------------------------------------------------
                           000037  1056 	G$Sys_Init$0$0 ==.
                           000037  1057 	C$c8051_SDCC.h$103$1$4 ==.
                                   1058 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:103: void Sys_Init(void)
                                   1059 ;	-----------------------------------------
                                   1060 ;	 function Sys_Init
                                   1061 ;	-----------------------------------------
      000099                       1062 _Sys_Init:
                           000037  1063 	C$c8051_SDCC.h$105$1$6 ==.
                                   1064 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:105: WDTCN = 0xde;			// disable watchdog timer
      000099 75 FF DE         [24] 1065 	mov	_WDTCN,#0xde
                           00003A  1066 	C$c8051_SDCC.h$106$1$6 ==.
                                   1067 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:106: WDTCN = 0xad;
      00009C 75 FF AD         [24] 1068 	mov	_WDTCN,#0xad
                           00003D  1069 	C$c8051_SDCC.h$108$1$6 ==.
                                   1070 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:108: SYSCLK_Init();			// initialize oscillator
      00009F 12 00 62         [24] 1071 	lcall	_SYSCLK_Init
                           000040  1072 	C$c8051_SDCC.h$109$1$6 ==.
                                   1073 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:109: UART0_Init();			// initialize UART0
      0000A2 12 00 82         [24] 1074 	lcall	_UART0_Init
                           000043  1075 	C$c8051_SDCC.h$111$1$6 ==.
                                   1076 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:111: XBR0 |= 0x04;
      0000A5 43 E1 04         [24] 1077 	orl	_XBR0,#0x04
                           000046  1078 	C$c8051_SDCC.h$112$1$6 ==.
                                   1079 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:112: XBR2 |= 0x40;                    	// Enable crossbar and weak pull-ups
      0000A8 43 E3 40         [24] 1080 	orl	_XBR2,#0x40
                           000049  1081 	C$c8051_SDCC.h$113$1$6 ==.
                           000049  1082 	XG$Sys_Init$0$0 ==.
      0000AB 22               [24] 1083 	ret
                                   1084 ;------------------------------------------------------------
                                   1085 ;Allocation info for local variables in function 'putchar'
                                   1086 ;------------------------------------------------------------
                                   1087 ;c                         Allocated to registers r7 
                                   1088 ;------------------------------------------------------------
                           00004A  1089 	G$putchar$0$0 ==.
                           00004A  1090 	C$c8051_SDCC.h$129$1$6 ==.
                                   1091 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:129: void putchar(char c)
                                   1092 ;	-----------------------------------------
                                   1093 ;	 function putchar
                                   1094 ;	-----------------------------------------
      0000AC                       1095 _putchar:
      0000AC AF 82            [24] 1096 	mov	r7,dpl
                           00004C  1097 	C$c8051_SDCC.h$132$1$8 ==.
                                   1098 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:132: while (!TI0); 
      0000AE                       1099 00101$:
                           00004C  1100 	C$c8051_SDCC.h$133$1$8 ==.
                                   1101 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:133: TI0 = 0;
      0000AE 10 99 02         [24] 1102 	jbc	_TI0,00112$
      0000B1 80 FB            [24] 1103 	sjmp	00101$
      0000B3                       1104 00112$:
                           000051  1105 	C$c8051_SDCC.h$134$1$8 ==.
                                   1106 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:134: SBUF0 = c;
      0000B3 8F 99            [24] 1107 	mov	_SBUF0,r7
                           000053  1108 	C$c8051_SDCC.h$135$1$8 ==.
                           000053  1109 	XG$putchar$0$0 ==.
      0000B5 22               [24] 1110 	ret
                                   1111 ;------------------------------------------------------------
                                   1112 ;Allocation info for local variables in function 'getchar'
                                   1113 ;------------------------------------------------------------
                                   1114 ;c                         Allocated to registers r7 
                                   1115 ;------------------------------------------------------------
                           000054  1116 	G$getchar$0$0 ==.
                           000054  1117 	C$c8051_SDCC.h$154$1$8 ==.
                                   1118 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:154: char getchar(void)
                                   1119 ;	-----------------------------------------
                                   1120 ;	 function getchar
                                   1121 ;	-----------------------------------------
      0000B6                       1122 _getchar:
                           000054  1123 	C$c8051_SDCC.h$157$1$10 ==.
                                   1124 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:157: while (!RI0);
      0000B6                       1125 00101$:
                           000054  1126 	C$c8051_SDCC.h$158$1$10 ==.
                                   1127 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:158: RI0 = 0;
      0000B6 10 98 02         [24] 1128 	jbc	_RI0,00112$
      0000B9 80 FB            [24] 1129 	sjmp	00101$
      0000BB                       1130 00112$:
                           000059  1131 	C$c8051_SDCC.h$159$1$10 ==.
                                   1132 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:159: c = SBUF0;
      0000BB AF 99            [24] 1133 	mov	r7,_SBUF0
                           00005B  1134 	C$c8051_SDCC.h$160$1$10 ==.
                                   1135 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:160: putchar(c);                          // echo to terminal
      0000BD 8F 82            [24] 1136 	mov	dpl,r7
      0000BF C0 07            [24] 1137 	push	ar7
      0000C1 12 00 AC         [24] 1138 	lcall	_putchar
      0000C4 D0 07            [24] 1139 	pop	ar7
                           000064  1140 	C$c8051_SDCC.h$161$1$10 ==.
                                   1141 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:161: return c;
      0000C6 8F 82            [24] 1142 	mov	dpl,r7
                           000066  1143 	C$c8051_SDCC.h$162$1$10 ==.
                           000066  1144 	XG$getchar$0$0 ==.
      0000C8 22               [24] 1145 	ret
                                   1146 ;------------------------------------------------------------
                                   1147 ;Allocation info for local variables in function 'getchar_nw'
                                   1148 ;------------------------------------------------------------
                                   1149 ;c                         Allocated to registers 
                                   1150 ;------------------------------------------------------------
                           000067  1151 	G$getchar_nw$0$0 ==.
                           000067  1152 	C$c8051_SDCC.h$168$1$10 ==.
                                   1153 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:168: char getchar_nw(void)
                                   1154 ;	-----------------------------------------
                                   1155 ;	 function getchar_nw
                                   1156 ;	-----------------------------------------
      0000C9                       1157 _getchar_nw:
                           000067  1158 	C$c8051_SDCC.h$171$1$12 ==.
                                   1159 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:171: if (!RI0) return 0xFF;
      0000C9 20 98 05         [24] 1160 	jb	_RI0,00102$
      0000CC 75 82 FF         [24] 1161 	mov	dpl,#0xff
      0000CF 80 0B            [24] 1162 	sjmp	00104$
      0000D1                       1163 00102$:
                           00006F  1164 	C$c8051_SDCC.h$174$2$13 ==.
                                   1165 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:174: RI0 = 0;
      0000D1 C2 98            [12] 1166 	clr	_RI0
                           000071  1167 	C$c8051_SDCC.h$175$2$13 ==.
                                   1168 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:175: c = SBUF0;
      0000D3 85 99 82         [24] 1169 	mov	dpl,_SBUF0
                           000074  1170 	C$c8051_SDCC.h$176$2$13 ==.
                                   1171 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:176: putchar(c);                          // echo to terminal
      0000D6 12 00 AC         [24] 1172 	lcall	_putchar
                           000077  1173 	C$c8051_SDCC.h$177$2$13 ==.
                                   1174 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:177: return SBUF0;
      0000D9 85 99 82         [24] 1175 	mov	dpl,_SBUF0
      0000DC                       1176 00104$:
                           00007A  1177 	C$c8051_SDCC.h$179$1$12 ==.
                           00007A  1178 	XG$getchar_nw$0$0 ==.
      0000DC 22               [24] 1179 	ret
                                   1180 ;------------------------------------------------------------
                                   1181 ;Allocation info for local variables in function 'main'
                                   1182 ;------------------------------------------------------------
                           00007B  1183 	G$main$0$0 ==.
                           00007B  1184 	C$hw7.c$41$1$12 ==.
                                   1185 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:41: void main(void)
                                   1186 ;	-----------------------------------------
                                   1187 ;	 function main
                                   1188 ;	-----------------------------------------
      0000DD                       1189 _main:
                           00007B  1190 	C$hw7.c$43$1$31 ==.
                                   1191 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:43: Sys_Init();      // System Initialization
      0000DD 12 00 99         [24] 1192 	lcall	_Sys_Init
                           00007E  1193 	C$hw7.c$44$1$31 ==.
                                   1194 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:44: putchar(' ');    // the quote fonts may not copy correctly into SiLabs IDE
      0000E0 75 82 20         [24] 1195 	mov	dpl,#0x20
      0000E3 12 00 AC         [24] 1196 	lcall	_putchar
                           000084  1197 	C$hw7.c$45$1$31 ==.
                                   1198 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:45: Port_Init();     //set up port 1.4
      0000E6 12 01 F7         [24] 1199 	lcall	_Port_Init
                           000087  1200 	C$hw7.c$46$1$31 ==.
                                   1201 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:46: ADC_Init();		 //Set up converter and set gain to 0.5
      0000E9 12 01 DB         [24] 1202 	lcall	_ADC_Init
                           00008A  1203 	C$hw7.c$47$1$31 ==.
                                   1204 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:47: printf("Start \r\n");
      0000EC 74 FB            [12] 1205 	mov	a,#___str_0
      0000EE C0 E0            [24] 1206 	push	acc
      0000F0 74 0A            [12] 1207 	mov	a,#(___str_0 >> 8)
      0000F2 C0 E0            [24] 1208 	push	acc
      0000F4 74 80            [12] 1209 	mov	a,#0x80
      0000F6 C0 E0            [24] 1210 	push	acc
      0000F8 12 03 83         [24] 1211 	lcall	_printf
      0000FB 15 81            [12] 1212 	dec	sp
      0000FD 15 81            [12] 1213 	dec	sp
      0000FF 15 81            [12] 1214 	dec	sp
                           00009F  1215 	C$hw7.c$48$1$31 ==.
                                   1216 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:48: while (1) 
      000101                       1217 00102$:
                           00009F  1218 	C$hw7.c$50$2$32 ==.
                                   1219 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:50: printf("enter key to read A/D input \r\n");
      000101 74 04            [12] 1220 	mov	a,#___str_1
      000103 C0 E0            [24] 1221 	push	acc
      000105 74 0B            [12] 1222 	mov	a,#(___str_1 >> 8)
      000107 C0 E0            [24] 1223 	push	acc
      000109 74 80            [12] 1224 	mov	a,#0x80
      00010B C0 E0            [24] 1225 	push	acc
      00010D 12 03 83         [24] 1226 	lcall	_printf
      000110 15 81            [12] 1227 	dec	sp
      000112 15 81            [12] 1228 	dec	sp
      000114 15 81            [12] 1229 	dec	sp
                           0000B4  1230 	C$hw7.c$51$2$32 ==.
                                   1231 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:51: input = getchar();
      000116 12 00 B6         [24] 1232 	lcall	_getchar
      000119 85 82 09         [24] 1233 	mov	_input,dpl
                           0000BA  1234 	C$hw7.c$55$2$32 ==.
                                   1235 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:55: AD_value = read_AD_input(4); //read the value
      00011C 75 82 04         [24] 1236 	mov	dpl,#0x04
      00011F 12 01 E5         [24] 1237 	lcall	_read_AD_input
                           0000C0  1238 	C$hw7.c$56$1$31 ==.
                                   1239 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:56: millivolts = AD_value*2.4*1000.0/(256.0*0.5); //conversion line
      000122 85 82 08         [24] 1240 	mov  _AD_value,dpl
      000125 12 0A 5D         [24] 1241 	lcall	___uchar2fs
      000128 AC 82            [24] 1242 	mov	r4,dpl
      00012A AD 83            [24] 1243 	mov	r5,dph
      00012C AE F0            [24] 1244 	mov	r6,b
      00012E FF               [12] 1245 	mov	r7,a
      00012F C0 04            [24] 1246 	push	ar4
      000131 C0 05            [24] 1247 	push	ar5
      000133 C0 06            [24] 1248 	push	ar6
      000135 C0 07            [24] 1249 	push	ar7
      000137 90 99 9A         [24] 1250 	mov	dptr,#0x999a
      00013A 75 F0 19         [24] 1251 	mov	b,#0x19
      00013D 74 40            [12] 1252 	mov	a,#0x40
      00013F 12 02 01         [24] 1253 	lcall	___fsmul
      000142 AC 82            [24] 1254 	mov	r4,dpl
      000144 AD 83            [24] 1255 	mov	r5,dph
      000146 AE F0            [24] 1256 	mov	r6,b
      000148 FF               [12] 1257 	mov	r7,a
      000149 E5 81            [12] 1258 	mov	a,sp
      00014B 24 FC            [12] 1259 	add	a,#0xfc
      00014D F5 81            [12] 1260 	mov	sp,a
      00014F C0 04            [24] 1261 	push	ar4
      000151 C0 05            [24] 1262 	push	ar5
      000153 C0 06            [24] 1263 	push	ar6
      000155 C0 07            [24] 1264 	push	ar7
      000157 90 00 00         [24] 1265 	mov	dptr,#0x0000
      00015A 75 F0 7A         [24] 1266 	mov	b,#0x7a
      00015D 74 44            [12] 1267 	mov	a,#0x44
      00015F 12 02 01         [24] 1268 	lcall	___fsmul
      000162 AC 82            [24] 1269 	mov	r4,dpl
      000164 AD 83            [24] 1270 	mov	r5,dph
      000166 AE F0            [24] 1271 	mov	r6,b
      000168 FF               [12] 1272 	mov	r7,a
      000169 E5 81            [12] 1273 	mov	a,sp
      00016B 24 FC            [12] 1274 	add	a,#0xfc
      00016D F5 81            [12] 1275 	mov	sp,a
      00016F E4               [12] 1276 	clr	a
      000170 C0 E0            [24] 1277 	push	acc
      000172 C0 E0            [24] 1278 	push	acc
      000174 C0 E0            [24] 1279 	push	acc
      000176 74 43            [12] 1280 	mov	a,#0x43
      000178 C0 E0            [24] 1281 	push	acc
      00017A 8C 82            [24] 1282 	mov	dpl,r4
      00017C 8D 83            [24] 1283 	mov	dph,r5
      00017E 8E F0            [24] 1284 	mov	b,r6
      000180 EF               [12] 1285 	mov	a,r7
      000181 12 09 7E         [24] 1286 	lcall	___fsdiv
      000184 AC 82            [24] 1287 	mov	r4,dpl
      000186 AD 83            [24] 1288 	mov	r5,dph
      000188 AE F0            [24] 1289 	mov	r6,b
      00018A FF               [12] 1290 	mov	r7,a
      00018B E5 81            [12] 1291 	mov	a,sp
      00018D 24 FC            [12] 1292 	add	a,#0xfc
      00018F F5 81            [12] 1293 	mov	sp,a
      000191 8C 82            [24] 1294 	mov	dpl,r4
      000193 8D 83            [24] 1295 	mov	dph,r5
      000195 8E F0            [24] 1296 	mov	b,r6
      000197 EF               [12] 1297 	mov	a,r7
      000198 12 03 05         [24] 1298 	lcall	___fs2uint
      00019B 85 82 0A         [24] 1299 	mov	_millivolts,dpl
      00019E 85 83 0B         [24] 1300 	mov	(_millivolts + 1),dph
                           00013F  1301 	C$hw7.c$58$2$32 ==.
                                   1302 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:58: printf("AD_value: %d\r\n", AD_value);	// print statement as required by homework
      0001A1 AE 08            [24] 1303 	mov	r6,_AD_value
      0001A3 7F 00            [12] 1304 	mov	r7,#0x00
      0001A5 C0 06            [24] 1305 	push	ar6
      0001A7 C0 07            [24] 1306 	push	ar7
      0001A9 74 23            [12] 1307 	mov	a,#___str_2
      0001AB C0 E0            [24] 1308 	push	acc
      0001AD 74 0B            [12] 1309 	mov	a,#(___str_2 >> 8)
      0001AF C0 E0            [24] 1310 	push	acc
      0001B1 74 80            [12] 1311 	mov	a,#0x80
      0001B3 C0 E0            [24] 1312 	push	acc
      0001B5 12 03 83         [24] 1313 	lcall	_printf
      0001B8 E5 81            [12] 1314 	mov	a,sp
      0001BA 24 FB            [12] 1315 	add	a,#0xfb
      0001BC F5 81            [12] 1316 	mov	sp,a
                           00015C  1317 	C$hw7.c$59$2$32 ==.
                                   1318 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:59: printf("\rmillivolts: %d\n\r", millivolts);	// print statement as required by homework
      0001BE C0 0A            [24] 1319 	push	_millivolts
      0001C0 C0 0B            [24] 1320 	push	(_millivolts + 1)
      0001C2 74 32            [12] 1321 	mov	a,#___str_3
      0001C4 C0 E0            [24] 1322 	push	acc
      0001C6 74 0B            [12] 1323 	mov	a,#(___str_3 >> 8)
      0001C8 C0 E0            [24] 1324 	push	acc
      0001CA 74 80            [12] 1325 	mov	a,#0x80
      0001CC C0 E0            [24] 1326 	push	acc
      0001CE 12 03 83         [24] 1327 	lcall	_printf
      0001D1 E5 81            [12] 1328 	mov	a,sp
      0001D3 24 FB            [12] 1329 	add	a,#0xfb
      0001D5 F5 81            [12] 1330 	mov	sp,a
      0001D7 02 01 01         [24] 1331 	ljmp	00102$
                           000178  1332 	C$hw7.c$62$1$31 ==.
                           000178  1333 	XG$main$0$0 ==.
      0001DA 22               [24] 1334 	ret
                                   1335 ;------------------------------------------------------------
                                   1336 ;Allocation info for local variables in function 'ADC_Init'
                                   1337 ;------------------------------------------------------------
                           000179  1338 	G$ADC_Init$0$0 ==.
                           000179  1339 	C$hw7.c$68$1$31 ==.
                                   1340 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:68: void ADC_Init(void)
                                   1341 ;	-----------------------------------------
                                   1342 ;	 function ADC_Init
                                   1343 ;	-----------------------------------------
      0001DB                       1344 _ADC_Init:
                           000179  1345 	C$hw7.c$70$1$34 ==.
                                   1346 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:70: REF0CN = 0x03;  /* Set Vref to use internal reference voltage (2.4V) */
      0001DB 75 D1 03         [24] 1347 	mov	_REF0CN,#0x03
                           00017C  1348 	C$hw7.c$71$1$34 ==.
                                   1349 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:71: ADC1CN = 0x80;  /* Enable A/D converter (ADC1) */
      0001DE 75 AA 80         [24] 1350 	mov	_ADC1CN,#0x80
                           00017F  1351 	C$hw7.c$72$1$34 ==.
                                   1352 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:72: ADC1CF &= ~0x03; /* Set A/D converter gain to 0.5 */
      0001E1 53 AB FC         [24] 1353 	anl	_ADC1CF,#0xfc
                           000182  1354 	C$hw7.c$74$1$34 ==.
                           000182  1355 	XG$ADC_Init$0$0 ==.
      0001E4 22               [24] 1356 	ret
                                   1357 ;------------------------------------------------------------
                                   1358 ;Allocation info for local variables in function 'read_AD_input'
                                   1359 ;------------------------------------------------------------
                                   1360 ;pin_number                Allocated to registers 
                                   1361 ;------------------------------------------------------------
                           000183  1362 	G$read_AD_input$0$0 ==.
                           000183  1363 	C$hw7.c$78$1$34 ==.
                                   1364 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:78: unsigned char read_AD_input(unsigned char pin_number)
                                   1365 ;	-----------------------------------------
                                   1366 ;	 function read_AD_input
                                   1367 ;	-----------------------------------------
      0001E5                       1368 _read_AD_input:
      0001E5 85 82 AC         [24] 1369 	mov	_AMX1SL,dpl
                           000186  1370 	C$hw7.c$81$1$36 ==.
                                   1371 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:81: ADC1CN &= ~0x20; /* Clear the “Conversion Completed” flag */
      0001E8 53 AA DF         [24] 1372 	anl	_ADC1CN,#0xdf
                           000189  1373 	C$hw7.c$82$1$36 ==.
                                   1374 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:82: ADC1CN |= 0x10; /* Initiate A/D conversion */
      0001EB 43 AA 10         [24] 1375 	orl	_ADC1CN,#0x10
                           00018C  1376 	C$hw7.c$83$1$36 ==.
                                   1377 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:83: while ((ADC1CN & 0x20) == 0x00); /* Wait for conversion to complete */
      0001EE                       1378 00101$:
      0001EE E5 AA            [12] 1379 	mov	a,_ADC1CN
      0001F0 30 E5 FB         [24] 1380 	jnb	acc.5,00101$
                           000191  1381 	C$hw7.c$84$1$36 ==.
                                   1382 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:84: return ADC1; /* Return digital value in ADC1 register */
      0001F3 85 9C 82         [24] 1383 	mov	dpl,_ADC1
                           000194  1384 	C$hw7.c$85$1$36 ==.
                           000194  1385 	XG$read_AD_input$0$0 ==.
      0001F6 22               [24] 1386 	ret
                                   1387 ;------------------------------------------------------------
                                   1388 ;Allocation info for local variables in function 'Port_Init'
                                   1389 ;------------------------------------------------------------
                           000195  1390 	G$Port_Init$0$0 ==.
                           000195  1391 	C$hw7.c$89$1$36 ==.
                                   1392 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:89: void Port_Init(void)
                                   1393 ;	-----------------------------------------
                                   1394 ;	 function Port_Init
                                   1395 ;	-----------------------------------------
      0001F7                       1396 _Port_Init:
                           000195  1397 	C$hw7.c$92$1$38 ==.
                                   1398 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:92: P1MDIN &= ~0x10; /* Set P1.4 for analog input */
      0001F7 53 BD EF         [24] 1399 	anl	_P1MDIN,#0xef
                           000198  1400 	C$hw7.c$93$1$38 ==.
                                   1401 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:93: P1MDOUT &= ~0x10; /* Set P1.4 to open drain */
      0001FA 53 A5 EF         [24] 1402 	anl	_P1MDOUT,#0xef
                           00019B  1403 	C$hw7.c$94$1$38 ==.
                                   1404 ;	C:\Users\Tim\Documents\LITEC\hw7\hw7.c:94: P1 |= 0x10; /* Send logic 1 to input pin P1.4 for impedance */
      0001FD 43 90 10         [24] 1405 	orl	_P1,#0x10
                           00019E  1406 	C$hw7.c$95$1$38 ==.
                           00019E  1407 	XG$Port_Init$0$0 ==.
      000200 22               [24] 1408 	ret
                                   1409 	.area CSEG    (CODE)
                                   1410 	.area CONST   (CODE)
                           000000  1411 Fhw7$__str_0$0$0 == .
      000AFB                       1412 ___str_0:
      000AFB 53 74 61 72 74 20     1413 	.ascii "Start "
      000B01 0D                    1414 	.db 0x0d
      000B02 0A                    1415 	.db 0x0a
      000B03 00                    1416 	.db 0x00
                           000009  1417 Fhw7$__str_1$0$0 == .
      000B04                       1418 ___str_1:
      000B04 65 6E 74 65 72 20 6B  1419 	.ascii "enter key to read A/D input "
             65 79 20 74 6F 20 72
             65 61 64 20 41 2F 44
             20 69 6E 70 75 74 20
      000B20 0D                    1420 	.db 0x0d
      000B21 0A                    1421 	.db 0x0a
      000B22 00                    1422 	.db 0x00
                           000028  1423 Fhw7$__str_2$0$0 == .
      000B23                       1424 ___str_2:
      000B23 41 44 5F 76 61 6C 75  1425 	.ascii "AD_value: %d"
             65 3A 20 25 64
      000B2F 0D                    1426 	.db 0x0d
      000B30 0A                    1427 	.db 0x0a
      000B31 00                    1428 	.db 0x00
                           000037  1429 Fhw7$__str_3$0$0 == .
      000B32                       1430 ___str_3:
      000B32 0D                    1431 	.db 0x0d
      000B33 6D 69 6C 6C 69 76 6F  1432 	.ascii "millivolts: %d"
             6C 74 73 3A 20 25 64
      000B41 0A                    1433 	.db 0x0a
      000B42 0D                    1434 	.db 0x0d
      000B43 00                    1435 	.db 0x00
                                   1436 	.area XINIT   (CODE)
                                   1437 	.area CABS    (ABS,CODE)
