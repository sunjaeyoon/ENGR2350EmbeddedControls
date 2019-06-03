                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module worksheet_11
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
                                    295 	.globl _temp_motorpw_alg6
                                    296 	.globl _temp_motorpw_alg5
                                    297 	.globl _temp_motorpw_alg4
                                    298 	.globl _temp_motorpw_alg3
                                    299 	.globl _temp_motorpw_alg2
                                    300 	.globl _temp_motorpw_alg1
                                    301 	.globl _temp_motorpw_2byte
                                    302 	.globl _error
                                    303 	.globl _previous_error
                                    304 	.globl _pw_neut
                                    305 	.globl _kd
                                    306 	.globl _kp
                                    307 	.globl _actual
                                    308 	.globl _desired
                                    309 ;--------------------------------------------------------
                                    310 ; special function registers
                                    311 ;--------------------------------------------------------
                                    312 	.area RSEG    (ABS,DATA)
      000000                        313 	.org 0x0000
                           000080   314 G$P0$0$0 == 0x0080
                           000080   315 _P0	=	0x0080
                           000081   316 G$SP$0$0 == 0x0081
                           000081   317 _SP	=	0x0081
                           000082   318 G$DPL$0$0 == 0x0082
                           000082   319 _DPL	=	0x0082
                           000083   320 G$DPH$0$0 == 0x0083
                           000083   321 _DPH	=	0x0083
                           000084   322 G$P4$0$0 == 0x0084
                           000084   323 _P4	=	0x0084
                           000085   324 G$P5$0$0 == 0x0085
                           000085   325 _P5	=	0x0085
                           000086   326 G$P6$0$0 == 0x0086
                           000086   327 _P6	=	0x0086
                           000087   328 G$PCON$0$0 == 0x0087
                           000087   329 _PCON	=	0x0087
                           000088   330 G$TCON$0$0 == 0x0088
                           000088   331 _TCON	=	0x0088
                           000089   332 G$TMOD$0$0 == 0x0089
                           000089   333 _TMOD	=	0x0089
                           00008A   334 G$TL0$0$0 == 0x008a
                           00008A   335 _TL0	=	0x008a
                           00008B   336 G$TL1$0$0 == 0x008b
                           00008B   337 _TL1	=	0x008b
                           00008C   338 G$TH0$0$0 == 0x008c
                           00008C   339 _TH0	=	0x008c
                           00008D   340 G$TH1$0$0 == 0x008d
                           00008D   341 _TH1	=	0x008d
                           00008E   342 G$CKCON$0$0 == 0x008e
                           00008E   343 _CKCON	=	0x008e
                           00008F   344 G$PSCTL$0$0 == 0x008f
                           00008F   345 _PSCTL	=	0x008f
                           000090   346 G$P1$0$0 == 0x0090
                           000090   347 _P1	=	0x0090
                           000091   348 G$TMR3CN$0$0 == 0x0091
                           000091   349 _TMR3CN	=	0x0091
                           000092   350 G$TMR3RLL$0$0 == 0x0092
                           000092   351 _TMR3RLL	=	0x0092
                           000093   352 G$TMR3RLH$0$0 == 0x0093
                           000093   353 _TMR3RLH	=	0x0093
                           000094   354 G$TMR3L$0$0 == 0x0094
                           000094   355 _TMR3L	=	0x0094
                           000095   356 G$TMR3H$0$0 == 0x0095
                           000095   357 _TMR3H	=	0x0095
                           000096   358 G$P7$0$0 == 0x0096
                           000096   359 _P7	=	0x0096
                           000098   360 G$SCON$0$0 == 0x0098
                           000098   361 _SCON	=	0x0098
                           000098   362 G$SCON0$0$0 == 0x0098
                           000098   363 _SCON0	=	0x0098
                           000099   364 G$SBUF$0$0 == 0x0099
                           000099   365 _SBUF	=	0x0099
                           000099   366 G$SBUF0$0$0 == 0x0099
                           000099   367 _SBUF0	=	0x0099
                           00009A   368 G$SPI0CFG$0$0 == 0x009a
                           00009A   369 _SPI0CFG	=	0x009a
                           00009B   370 G$SPI0DAT$0$0 == 0x009b
                           00009B   371 _SPI0DAT	=	0x009b
                           00009C   372 G$ADC1$0$0 == 0x009c
                           00009C   373 _ADC1	=	0x009c
                           00009D   374 G$SPI0CKR$0$0 == 0x009d
                           00009D   375 _SPI0CKR	=	0x009d
                           00009E   376 G$CPT0CN$0$0 == 0x009e
                           00009E   377 _CPT0CN	=	0x009e
                           00009F   378 G$CPT1CN$0$0 == 0x009f
                           00009F   379 _CPT1CN	=	0x009f
                           0000A0   380 G$P2$0$0 == 0x00a0
                           0000A0   381 _P2	=	0x00a0
                           0000A1   382 G$EMI0TC$0$0 == 0x00a1
                           0000A1   383 _EMI0TC	=	0x00a1
                           0000A3   384 G$EMI0CF$0$0 == 0x00a3
                           0000A3   385 _EMI0CF	=	0x00a3
                           0000A4   386 G$PRT0CF$0$0 == 0x00a4
                           0000A4   387 _PRT0CF	=	0x00a4
                           0000A4   388 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   389 _P0MDOUT	=	0x00a4
                           0000A5   390 G$PRT1CF$0$0 == 0x00a5
                           0000A5   391 _PRT1CF	=	0x00a5
                           0000A5   392 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   393 _P1MDOUT	=	0x00a5
                           0000A6   394 G$PRT2CF$0$0 == 0x00a6
                           0000A6   395 _PRT2CF	=	0x00a6
                           0000A6   396 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   397 _P2MDOUT	=	0x00a6
                           0000A7   398 G$PRT3CF$0$0 == 0x00a7
                           0000A7   399 _PRT3CF	=	0x00a7
                           0000A7   400 G$P3MDOUT$0$0 == 0x00a7
                           0000A7   401 _P3MDOUT	=	0x00a7
                           0000A8   402 G$IE$0$0 == 0x00a8
                           0000A8   403 _IE	=	0x00a8
                           0000A9   404 G$SADDR0$0$0 == 0x00a9
                           0000A9   405 _SADDR0	=	0x00a9
                           0000AA   406 G$ADC1CN$0$0 == 0x00aa
                           0000AA   407 _ADC1CN	=	0x00aa
                           0000AB   408 G$ADC1CF$0$0 == 0x00ab
                           0000AB   409 _ADC1CF	=	0x00ab
                           0000AC   410 G$AMX1SL$0$0 == 0x00ac
                           0000AC   411 _AMX1SL	=	0x00ac
                           0000AD   412 G$P3IF$0$0 == 0x00ad
                           0000AD   413 _P3IF	=	0x00ad
                           0000AE   414 G$SADEN1$0$0 == 0x00ae
                           0000AE   415 _SADEN1	=	0x00ae
                           0000AF   416 G$EMI0CN$0$0 == 0x00af
                           0000AF   417 _EMI0CN	=	0x00af
                           0000AF   418 G$_XPAGE$0$0 == 0x00af
                           0000AF   419 __XPAGE	=	0x00af
                           0000B0   420 G$P3$0$0 == 0x00b0
                           0000B0   421 _P3	=	0x00b0
                           0000B1   422 G$OSCXCN$0$0 == 0x00b1
                           0000B1   423 _OSCXCN	=	0x00b1
                           0000B2   424 G$OSCICN$0$0 == 0x00b2
                           0000B2   425 _OSCICN	=	0x00b2
                           0000B5   426 G$P74OUT$0$0 == 0x00b5
                           0000B5   427 _P74OUT	=	0x00b5
                           0000B6   428 G$FLSCL$0$0 == 0x00b6
                           0000B6   429 _FLSCL	=	0x00b6
                           0000B7   430 G$FLACL$0$0 == 0x00b7
                           0000B7   431 _FLACL	=	0x00b7
                           0000B8   432 G$IP$0$0 == 0x00b8
                           0000B8   433 _IP	=	0x00b8
                           0000B9   434 G$SADEN0$0$0 == 0x00b9
                           0000B9   435 _SADEN0	=	0x00b9
                           0000BA   436 G$AMX0CF$0$0 == 0x00ba
                           0000BA   437 _AMX0CF	=	0x00ba
                           0000BB   438 G$AMX0SL$0$0 == 0x00bb
                           0000BB   439 _AMX0SL	=	0x00bb
                           0000BC   440 G$ADC0CF$0$0 == 0x00bc
                           0000BC   441 _ADC0CF	=	0x00bc
                           0000BD   442 G$P1MDIN$0$0 == 0x00bd
                           0000BD   443 _P1MDIN	=	0x00bd
                           0000BE   444 G$ADC0L$0$0 == 0x00be
                           0000BE   445 _ADC0L	=	0x00be
                           0000BF   446 G$ADC0H$0$0 == 0x00bf
                           0000BF   447 _ADC0H	=	0x00bf
                           0000C0   448 G$SMB0CN$0$0 == 0x00c0
                           0000C0   449 _SMB0CN	=	0x00c0
                           0000C1   450 G$SMB0STA$0$0 == 0x00c1
                           0000C1   451 _SMB0STA	=	0x00c1
                           0000C2   452 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   453 _SMB0DAT	=	0x00c2
                           0000C3   454 G$SMB0ADR$0$0 == 0x00c3
                           0000C3   455 _SMB0ADR	=	0x00c3
                           0000C4   456 G$ADC0GTL$0$0 == 0x00c4
                           0000C4   457 _ADC0GTL	=	0x00c4
                           0000C5   458 G$ADC0GTH$0$0 == 0x00c5
                           0000C5   459 _ADC0GTH	=	0x00c5
                           0000C6   460 G$ADC0LTL$0$0 == 0x00c6
                           0000C6   461 _ADC0LTL	=	0x00c6
                           0000C7   462 G$ADC0LTH$0$0 == 0x00c7
                           0000C7   463 _ADC0LTH	=	0x00c7
                           0000C8   464 G$T2CON$0$0 == 0x00c8
                           0000C8   465 _T2CON	=	0x00c8
                           0000C9   466 G$T4CON$0$0 == 0x00c9
                           0000C9   467 _T4CON	=	0x00c9
                           0000CA   468 G$RCAP2L$0$0 == 0x00ca
                           0000CA   469 _RCAP2L	=	0x00ca
                           0000CB   470 G$RCAP2H$0$0 == 0x00cb
                           0000CB   471 _RCAP2H	=	0x00cb
                           0000CC   472 G$TL2$0$0 == 0x00cc
                           0000CC   473 _TL2	=	0x00cc
                           0000CD   474 G$TH2$0$0 == 0x00cd
                           0000CD   475 _TH2	=	0x00cd
                           0000CF   476 G$SMB0CR$0$0 == 0x00cf
                           0000CF   477 _SMB0CR	=	0x00cf
                           0000D0   478 G$PSW$0$0 == 0x00d0
                           0000D0   479 _PSW	=	0x00d0
                           0000D1   480 G$REF0CN$0$0 == 0x00d1
                           0000D1   481 _REF0CN	=	0x00d1
                           0000D2   482 G$DAC0L$0$0 == 0x00d2
                           0000D2   483 _DAC0L	=	0x00d2
                           0000D3   484 G$DAC0H$0$0 == 0x00d3
                           0000D3   485 _DAC0H	=	0x00d3
                           0000D4   486 G$DAC0CN$0$0 == 0x00d4
                           0000D4   487 _DAC0CN	=	0x00d4
                           0000D5   488 G$DAC1L$0$0 == 0x00d5
                           0000D5   489 _DAC1L	=	0x00d5
                           0000D6   490 G$DAC1H$0$0 == 0x00d6
                           0000D6   491 _DAC1H	=	0x00d6
                           0000D7   492 G$DAC1CN$0$0 == 0x00d7
                           0000D7   493 _DAC1CN	=	0x00d7
                           0000D8   494 G$PCA0CN$0$0 == 0x00d8
                           0000D8   495 _PCA0CN	=	0x00d8
                           0000D9   496 G$PCA0MD$0$0 == 0x00d9
                           0000D9   497 _PCA0MD	=	0x00d9
                           0000DA   498 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   499 _PCA0CPM0	=	0x00da
                           0000DB   500 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   501 _PCA0CPM1	=	0x00db
                           0000DC   502 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   503 _PCA0CPM2	=	0x00dc
                           0000DD   504 G$PCA0CPM3$0$0 == 0x00dd
                           0000DD   505 _PCA0CPM3	=	0x00dd
                           0000DE   506 G$PCA0CPM4$0$0 == 0x00de
                           0000DE   507 _PCA0CPM4	=	0x00de
                           0000E0   508 G$ACC$0$0 == 0x00e0
                           0000E0   509 _ACC	=	0x00e0
                           0000E1   510 G$XBR0$0$0 == 0x00e1
                           0000E1   511 _XBR0	=	0x00e1
                           0000E2   512 G$XBR1$0$0 == 0x00e2
                           0000E2   513 _XBR1	=	0x00e2
                           0000E3   514 G$XBR2$0$0 == 0x00e3
                           0000E3   515 _XBR2	=	0x00e3
                           0000E4   516 G$RCAP4L$0$0 == 0x00e4
                           0000E4   517 _RCAP4L	=	0x00e4
                           0000E5   518 G$RCAP4H$0$0 == 0x00e5
                           0000E5   519 _RCAP4H	=	0x00e5
                           0000E6   520 G$EIE1$0$0 == 0x00e6
                           0000E6   521 _EIE1	=	0x00e6
                           0000E7   522 G$EIE2$0$0 == 0x00e7
                           0000E7   523 _EIE2	=	0x00e7
                           0000E8   524 G$ADC0CN$0$0 == 0x00e8
                           0000E8   525 _ADC0CN	=	0x00e8
                           0000E9   526 G$PCA0L$0$0 == 0x00e9
                           0000E9   527 _PCA0L	=	0x00e9
                           0000EA   528 G$PCA0CPL0$0$0 == 0x00ea
                           0000EA   529 _PCA0CPL0	=	0x00ea
                           0000EB   530 G$PCA0CPL1$0$0 == 0x00eb
                           0000EB   531 _PCA0CPL1	=	0x00eb
                           0000EC   532 G$PCA0CPL2$0$0 == 0x00ec
                           0000EC   533 _PCA0CPL2	=	0x00ec
                           0000ED   534 G$PCA0CPL3$0$0 == 0x00ed
                           0000ED   535 _PCA0CPL3	=	0x00ed
                           0000EE   536 G$PCA0CPL4$0$0 == 0x00ee
                           0000EE   537 _PCA0CPL4	=	0x00ee
                           0000EF   538 G$RSTSRC$0$0 == 0x00ef
                           0000EF   539 _RSTSRC	=	0x00ef
                           0000F0   540 G$B$0$0 == 0x00f0
                           0000F0   541 _B	=	0x00f0
                           0000F1   542 G$SCON1$0$0 == 0x00f1
                           0000F1   543 _SCON1	=	0x00f1
                           0000F2   544 G$SBUF1$0$0 == 0x00f2
                           0000F2   545 _SBUF1	=	0x00f2
                           0000F3   546 G$SADDR1$0$0 == 0x00f3
                           0000F3   547 _SADDR1	=	0x00f3
                           0000F4   548 G$TL4$0$0 == 0x00f4
                           0000F4   549 _TL4	=	0x00f4
                           0000F5   550 G$TH4$0$0 == 0x00f5
                           0000F5   551 _TH4	=	0x00f5
                           0000F6   552 G$EIP1$0$0 == 0x00f6
                           0000F6   553 _EIP1	=	0x00f6
                           0000F7   554 G$EIP2$0$0 == 0x00f7
                           0000F7   555 _EIP2	=	0x00f7
                           0000F8   556 G$SPI0CN$0$0 == 0x00f8
                           0000F8   557 _SPI0CN	=	0x00f8
                           0000F9   558 G$PCA0H$0$0 == 0x00f9
                           0000F9   559 _PCA0H	=	0x00f9
                           0000FA   560 G$PCA0CPH0$0$0 == 0x00fa
                           0000FA   561 _PCA0CPH0	=	0x00fa
                           0000FB   562 G$PCA0CPH1$0$0 == 0x00fb
                           0000FB   563 _PCA0CPH1	=	0x00fb
                           0000FC   564 G$PCA0CPH2$0$0 == 0x00fc
                           0000FC   565 _PCA0CPH2	=	0x00fc
                           0000FD   566 G$PCA0CPH3$0$0 == 0x00fd
                           0000FD   567 _PCA0CPH3	=	0x00fd
                           0000FE   568 G$PCA0CPH4$0$0 == 0x00fe
                           0000FE   569 _PCA0CPH4	=	0x00fe
                           0000FF   570 G$WDTCN$0$0 == 0x00ff
                           0000FF   571 _WDTCN	=	0x00ff
                           008C8A   572 G$TMR0$0$0 == 0x8c8a
                           008C8A   573 _TMR0	=	0x8c8a
                           008D8B   574 G$TMR1$0$0 == 0x8d8b
                           008D8B   575 _TMR1	=	0x8d8b
                           00CDCC   576 G$TMR2$0$0 == 0xcdcc
                           00CDCC   577 _TMR2	=	0xcdcc
                           00CBCA   578 G$RCAP2$0$0 == 0xcbca
                           00CBCA   579 _RCAP2	=	0xcbca
                           009594   580 G$TMR3$0$0 == 0x9594
                           009594   581 _TMR3	=	0x9594
                           009392   582 G$TMR3RL$0$0 == 0x9392
                           009392   583 _TMR3RL	=	0x9392
                           00F5F4   584 G$TMR4$0$0 == 0xf5f4
                           00F5F4   585 _TMR4	=	0xf5f4
                           00E5E4   586 G$RCAP4$0$0 == 0xe5e4
                           00E5E4   587 _RCAP4	=	0xe5e4
                           00BFBE   588 G$ADC0$0$0 == 0xbfbe
                           00BFBE   589 _ADC0	=	0xbfbe
                           00C5C4   590 G$ADC0GT$0$0 == 0xc5c4
                           00C5C4   591 _ADC0GT	=	0xc5c4
                           00C7C6   592 G$ADC0LT$0$0 == 0xc7c6
                           00C7C6   593 _ADC0LT	=	0xc7c6
                           00D3D2   594 G$DAC0$0$0 == 0xd3d2
                           00D3D2   595 _DAC0	=	0xd3d2
                           00D6D5   596 G$DAC1$0$0 == 0xd6d5
                           00D6D5   597 _DAC1	=	0xd6d5
                           00F9E9   598 G$PCA0$0$0 == 0xf9e9
                           00F9E9   599 _PCA0	=	0xf9e9
                           00FAEA   600 G$PCA0CP0$0$0 == 0xfaea
                           00FAEA   601 _PCA0CP0	=	0xfaea
                           00FBEB   602 G$PCA0CP1$0$0 == 0xfbeb
                           00FBEB   603 _PCA0CP1	=	0xfbeb
                           00FCEC   604 G$PCA0CP2$0$0 == 0xfcec
                           00FCEC   605 _PCA0CP2	=	0xfcec
                           00FDED   606 G$PCA0CP3$0$0 == 0xfded
                           00FDED   607 _PCA0CP3	=	0xfded
                           00FEEE   608 G$PCA0CP4$0$0 == 0xfeee
                           00FEEE   609 _PCA0CP4	=	0xfeee
                                    610 ;--------------------------------------------------------
                                    611 ; special function bits
                                    612 ;--------------------------------------------------------
                                    613 	.area RSEG    (ABS,DATA)
      000000                        614 	.org 0x0000
                           000080   615 G$P0_0$0$0 == 0x0080
                           000080   616 _P0_0	=	0x0080
                           000081   617 G$P0_1$0$0 == 0x0081
                           000081   618 _P0_1	=	0x0081
                           000082   619 G$P0_2$0$0 == 0x0082
                           000082   620 _P0_2	=	0x0082
                           000083   621 G$P0_3$0$0 == 0x0083
                           000083   622 _P0_3	=	0x0083
                           000084   623 G$P0_4$0$0 == 0x0084
                           000084   624 _P0_4	=	0x0084
                           000085   625 G$P0_5$0$0 == 0x0085
                           000085   626 _P0_5	=	0x0085
                           000086   627 G$P0_6$0$0 == 0x0086
                           000086   628 _P0_6	=	0x0086
                           000087   629 G$P0_7$0$0 == 0x0087
                           000087   630 _P0_7	=	0x0087
                           000088   631 G$IT0$0$0 == 0x0088
                           000088   632 _IT0	=	0x0088
                           000089   633 G$IE0$0$0 == 0x0089
                           000089   634 _IE0	=	0x0089
                           00008A   635 G$IT1$0$0 == 0x008a
                           00008A   636 _IT1	=	0x008a
                           00008B   637 G$IE1$0$0 == 0x008b
                           00008B   638 _IE1	=	0x008b
                           00008C   639 G$TR0$0$0 == 0x008c
                           00008C   640 _TR0	=	0x008c
                           00008D   641 G$TF0$0$0 == 0x008d
                           00008D   642 _TF0	=	0x008d
                           00008E   643 G$TR1$0$0 == 0x008e
                           00008E   644 _TR1	=	0x008e
                           00008F   645 G$TF1$0$0 == 0x008f
                           00008F   646 _TF1	=	0x008f
                           000090   647 G$P1_0$0$0 == 0x0090
                           000090   648 _P1_0	=	0x0090
                           000091   649 G$P1_1$0$0 == 0x0091
                           000091   650 _P1_1	=	0x0091
                           000092   651 G$P1_2$0$0 == 0x0092
                           000092   652 _P1_2	=	0x0092
                           000093   653 G$P1_3$0$0 == 0x0093
                           000093   654 _P1_3	=	0x0093
                           000094   655 G$P1_4$0$0 == 0x0094
                           000094   656 _P1_4	=	0x0094
                           000095   657 G$P1_5$0$0 == 0x0095
                           000095   658 _P1_5	=	0x0095
                           000096   659 G$P1_6$0$0 == 0x0096
                           000096   660 _P1_6	=	0x0096
                           000097   661 G$P1_7$0$0 == 0x0097
                           000097   662 _P1_7	=	0x0097
                           000098   663 G$RI$0$0 == 0x0098
                           000098   664 _RI	=	0x0098
                           000098   665 G$RI0$0$0 == 0x0098
                           000098   666 _RI0	=	0x0098
                           000099   667 G$TI$0$0 == 0x0099
                           000099   668 _TI	=	0x0099
                           000099   669 G$TI0$0$0 == 0x0099
                           000099   670 _TI0	=	0x0099
                           00009A   671 G$RB8$0$0 == 0x009a
                           00009A   672 _RB8	=	0x009a
                           00009A   673 G$RB80$0$0 == 0x009a
                           00009A   674 _RB80	=	0x009a
                           00009B   675 G$TB8$0$0 == 0x009b
                           00009B   676 _TB8	=	0x009b
                           00009B   677 G$TB80$0$0 == 0x009b
                           00009B   678 _TB80	=	0x009b
                           00009C   679 G$REN$0$0 == 0x009c
                           00009C   680 _REN	=	0x009c
                           00009C   681 G$REN0$0$0 == 0x009c
                           00009C   682 _REN0	=	0x009c
                           00009D   683 G$SM2$0$0 == 0x009d
                           00009D   684 _SM2	=	0x009d
                           00009D   685 G$SM20$0$0 == 0x009d
                           00009D   686 _SM20	=	0x009d
                           00009D   687 G$MCE0$0$0 == 0x009d
                           00009D   688 _MCE0	=	0x009d
                           00009E   689 G$SM1$0$0 == 0x009e
                           00009E   690 _SM1	=	0x009e
                           00009E   691 G$SM10$0$0 == 0x009e
                           00009E   692 _SM10	=	0x009e
                           00009F   693 G$SM0$0$0 == 0x009f
                           00009F   694 _SM0	=	0x009f
                           00009F   695 G$SM00$0$0 == 0x009f
                           00009F   696 _SM00	=	0x009f
                           00009F   697 G$S0MODE$0$0 == 0x009f
                           00009F   698 _S0MODE	=	0x009f
                           0000A0   699 G$P2_0$0$0 == 0x00a0
                           0000A0   700 _P2_0	=	0x00a0
                           0000A1   701 G$P2_1$0$0 == 0x00a1
                           0000A1   702 _P2_1	=	0x00a1
                           0000A2   703 G$P2_2$0$0 == 0x00a2
                           0000A2   704 _P2_2	=	0x00a2
                           0000A3   705 G$P2_3$0$0 == 0x00a3
                           0000A3   706 _P2_3	=	0x00a3
                           0000A4   707 G$P2_4$0$0 == 0x00a4
                           0000A4   708 _P2_4	=	0x00a4
                           0000A5   709 G$P2_5$0$0 == 0x00a5
                           0000A5   710 _P2_5	=	0x00a5
                           0000A6   711 G$P2_6$0$0 == 0x00a6
                           0000A6   712 _P2_6	=	0x00a6
                           0000A7   713 G$P2_7$0$0 == 0x00a7
                           0000A7   714 _P2_7	=	0x00a7
                           0000A8   715 G$EX0$0$0 == 0x00a8
                           0000A8   716 _EX0	=	0x00a8
                           0000A9   717 G$ET0$0$0 == 0x00a9
                           0000A9   718 _ET0	=	0x00a9
                           0000AA   719 G$EX1$0$0 == 0x00aa
                           0000AA   720 _EX1	=	0x00aa
                           0000AB   721 G$ET1$0$0 == 0x00ab
                           0000AB   722 _ET1	=	0x00ab
                           0000AC   723 G$ES0$0$0 == 0x00ac
                           0000AC   724 _ES0	=	0x00ac
                           0000AC   725 G$ES$0$0 == 0x00ac
                           0000AC   726 _ES	=	0x00ac
                           0000AD   727 G$ET2$0$0 == 0x00ad
                           0000AD   728 _ET2	=	0x00ad
                           0000AF   729 G$EA$0$0 == 0x00af
                           0000AF   730 _EA	=	0x00af
                           0000B0   731 G$P3_0$0$0 == 0x00b0
                           0000B0   732 _P3_0	=	0x00b0
                           0000B1   733 G$P3_1$0$0 == 0x00b1
                           0000B1   734 _P3_1	=	0x00b1
                           0000B2   735 G$P3_2$0$0 == 0x00b2
                           0000B2   736 _P3_2	=	0x00b2
                           0000B3   737 G$P3_3$0$0 == 0x00b3
                           0000B3   738 _P3_3	=	0x00b3
                           0000B4   739 G$P3_4$0$0 == 0x00b4
                           0000B4   740 _P3_4	=	0x00b4
                           0000B5   741 G$P3_5$0$0 == 0x00b5
                           0000B5   742 _P3_5	=	0x00b5
                           0000B6   743 G$P3_6$0$0 == 0x00b6
                           0000B6   744 _P3_6	=	0x00b6
                           0000B7   745 G$P3_7$0$0 == 0x00b7
                           0000B7   746 _P3_7	=	0x00b7
                           0000B8   747 G$PX0$0$0 == 0x00b8
                           0000B8   748 _PX0	=	0x00b8
                           0000B9   749 G$PT0$0$0 == 0x00b9
                           0000B9   750 _PT0	=	0x00b9
                           0000BA   751 G$PX1$0$0 == 0x00ba
                           0000BA   752 _PX1	=	0x00ba
                           0000BB   753 G$PT1$0$0 == 0x00bb
                           0000BB   754 _PT1	=	0x00bb
                           0000BC   755 G$PS0$0$0 == 0x00bc
                           0000BC   756 _PS0	=	0x00bc
                           0000BC   757 G$PS$0$0 == 0x00bc
                           0000BC   758 _PS	=	0x00bc
                           0000BD   759 G$PT2$0$0 == 0x00bd
                           0000BD   760 _PT2	=	0x00bd
                           0000C0   761 G$SMBTOE$0$0 == 0x00c0
                           0000C0   762 _SMBTOE	=	0x00c0
                           0000C1   763 G$SMBFTE$0$0 == 0x00c1
                           0000C1   764 _SMBFTE	=	0x00c1
                           0000C2   765 G$AA$0$0 == 0x00c2
                           0000C2   766 _AA	=	0x00c2
                           0000C3   767 G$SI$0$0 == 0x00c3
                           0000C3   768 _SI	=	0x00c3
                           0000C4   769 G$STO$0$0 == 0x00c4
                           0000C4   770 _STO	=	0x00c4
                           0000C5   771 G$STA$0$0 == 0x00c5
                           0000C5   772 _STA	=	0x00c5
                           0000C6   773 G$ENSMB$0$0 == 0x00c6
                           0000C6   774 _ENSMB	=	0x00c6
                           0000C7   775 G$BUSY$0$0 == 0x00c7
                           0000C7   776 _BUSY	=	0x00c7
                           0000C8   777 G$CPRL2$0$0 == 0x00c8
                           0000C8   778 _CPRL2	=	0x00c8
                           0000C9   779 G$CT2$0$0 == 0x00c9
                           0000C9   780 _CT2	=	0x00c9
                           0000CA   781 G$TR2$0$0 == 0x00ca
                           0000CA   782 _TR2	=	0x00ca
                           0000CB   783 G$EXEN2$0$0 == 0x00cb
                           0000CB   784 _EXEN2	=	0x00cb
                           0000CC   785 G$TCLK$0$0 == 0x00cc
                           0000CC   786 _TCLK	=	0x00cc
                           0000CD   787 G$RCLK$0$0 == 0x00cd
                           0000CD   788 _RCLK	=	0x00cd
                           0000CE   789 G$EXF2$0$0 == 0x00ce
                           0000CE   790 _EXF2	=	0x00ce
                           0000CF   791 G$TF2$0$0 == 0x00cf
                           0000CF   792 _TF2	=	0x00cf
                           0000D0   793 G$P$0$0 == 0x00d0
                           0000D0   794 _P	=	0x00d0
                           0000D1   795 G$F1$0$0 == 0x00d1
                           0000D1   796 _F1	=	0x00d1
                           0000D2   797 G$OV$0$0 == 0x00d2
                           0000D2   798 _OV	=	0x00d2
                           0000D3   799 G$RS0$0$0 == 0x00d3
                           0000D3   800 _RS0	=	0x00d3
                           0000D4   801 G$RS1$0$0 == 0x00d4
                           0000D4   802 _RS1	=	0x00d4
                           0000D5   803 G$F0$0$0 == 0x00d5
                           0000D5   804 _F0	=	0x00d5
                           0000D6   805 G$AC$0$0 == 0x00d6
                           0000D6   806 _AC	=	0x00d6
                           0000D7   807 G$CY$0$0 == 0x00d7
                           0000D7   808 _CY	=	0x00d7
                           0000D8   809 G$CCF0$0$0 == 0x00d8
                           0000D8   810 _CCF0	=	0x00d8
                           0000D9   811 G$CCF1$0$0 == 0x00d9
                           0000D9   812 _CCF1	=	0x00d9
                           0000DA   813 G$CCF2$0$0 == 0x00da
                           0000DA   814 _CCF2	=	0x00da
                           0000DB   815 G$CCF3$0$0 == 0x00db
                           0000DB   816 _CCF3	=	0x00db
                           0000DC   817 G$CCF4$0$0 == 0x00dc
                           0000DC   818 _CCF4	=	0x00dc
                           0000DE   819 G$CR$0$0 == 0x00de
                           0000DE   820 _CR	=	0x00de
                           0000DF   821 G$CF$0$0 == 0x00df
                           0000DF   822 _CF	=	0x00df
                           0000E8   823 G$ADLJST$0$0 == 0x00e8
                           0000E8   824 _ADLJST	=	0x00e8
                           0000E8   825 G$AD0LJST$0$0 == 0x00e8
                           0000E8   826 _AD0LJST	=	0x00e8
                           0000E9   827 G$ADWINT$0$0 == 0x00e9
                           0000E9   828 _ADWINT	=	0x00e9
                           0000E9   829 G$AD0WINT$0$0 == 0x00e9
                           0000E9   830 _AD0WINT	=	0x00e9
                           0000EA   831 G$ADSTM0$0$0 == 0x00ea
                           0000EA   832 _ADSTM0	=	0x00ea
                           0000EA   833 G$AD0CM0$0$0 == 0x00ea
                           0000EA   834 _AD0CM0	=	0x00ea
                           0000EB   835 G$ADSTM1$0$0 == 0x00eb
                           0000EB   836 _ADSTM1	=	0x00eb
                           0000EB   837 G$AD0CM1$0$0 == 0x00eb
                           0000EB   838 _AD0CM1	=	0x00eb
                           0000EC   839 G$ADBUSY$0$0 == 0x00ec
                           0000EC   840 _ADBUSY	=	0x00ec
                           0000EC   841 G$AD0BUSY$0$0 == 0x00ec
                           0000EC   842 _AD0BUSY	=	0x00ec
                           0000ED   843 G$ADCINT$0$0 == 0x00ed
                           0000ED   844 _ADCINT	=	0x00ed
                           0000ED   845 G$AD0INT$0$0 == 0x00ed
                           0000ED   846 _AD0INT	=	0x00ed
                           0000EE   847 G$ADCTM$0$0 == 0x00ee
                           0000EE   848 _ADCTM	=	0x00ee
                           0000EE   849 G$AD0TM$0$0 == 0x00ee
                           0000EE   850 _AD0TM	=	0x00ee
                           0000EF   851 G$ADCEN$0$0 == 0x00ef
                           0000EF   852 _ADCEN	=	0x00ef
                           0000EF   853 G$AD0EN$0$0 == 0x00ef
                           0000EF   854 _AD0EN	=	0x00ef
                           0000F8   855 G$SPIEN$0$0 == 0x00f8
                           0000F8   856 _SPIEN	=	0x00f8
                           0000F9   857 G$MSTEN$0$0 == 0x00f9
                           0000F9   858 _MSTEN	=	0x00f9
                           0000FA   859 G$SLVSEL$0$0 == 0x00fa
                           0000FA   860 _SLVSEL	=	0x00fa
                           0000FB   861 G$TXBSY$0$0 == 0x00fb
                           0000FB   862 _TXBSY	=	0x00fb
                           0000FC   863 G$RXOVRN$0$0 == 0x00fc
                           0000FC   864 _RXOVRN	=	0x00fc
                           0000FD   865 G$MODF$0$0 == 0x00fd
                           0000FD   866 _MODF	=	0x00fd
                           0000FE   867 G$WCOL$0$0 == 0x00fe
                           0000FE   868 _WCOL	=	0x00fe
                           0000FF   869 G$SPIF$0$0 == 0x00ff
                           0000FF   870 _SPIF	=	0x00ff
                                    871 ;--------------------------------------------------------
                                    872 ; overlayable register banks
                                    873 ;--------------------------------------------------------
                                    874 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        875 	.ds 8
                                    876 ;--------------------------------------------------------
                                    877 ; internal ram data
                                    878 ;--------------------------------------------------------
                                    879 	.area DSEG    (DATA)
                           000000   880 G$desired$0$0==.
      000022                        881 _desired::
      000022                        882 	.ds 2
                           000002   883 G$actual$0$0==.
      000024                        884 _actual::
      000024                        885 	.ds 2
                           000004   886 G$kp$0$0==.
      000026                        887 _kp::
      000026                        888 	.ds 2
                           000006   889 G$kd$0$0==.
      000028                        890 _kd::
      000028                        891 	.ds 2
                           000008   892 G$pw_neut$0$0==.
      00002A                        893 _pw_neut::
      00002A                        894 	.ds 2
                           00000A   895 G$previous_error$0$0==.
      00002C                        896 _previous_error::
      00002C                        897 	.ds 2
                           00000C   898 G$error$0$0==.
      00002E                        899 _error::
      00002E                        900 	.ds 2
                           00000E   901 G$temp_motorpw_2byte$0$0==.
      000030                        902 _temp_motorpw_2byte::
      000030                        903 	.ds 2
                           000010   904 G$temp_motorpw_alg1$0$0==.
      000032                        905 _temp_motorpw_alg1::
      000032                        906 	.ds 4
                           000014   907 G$temp_motorpw_alg2$0$0==.
      000036                        908 _temp_motorpw_alg2::
      000036                        909 	.ds 4
                           000018   910 G$temp_motorpw_alg3$0$0==.
      00003A                        911 _temp_motorpw_alg3::
      00003A                        912 	.ds 4
                           00001C   913 G$temp_motorpw_alg4$0$0==.
      00003E                        914 _temp_motorpw_alg4::
      00003E                        915 	.ds 4
                           000020   916 G$temp_motorpw_alg5$0$0==.
      000042                        917 _temp_motorpw_alg5::
      000042                        918 	.ds 4
                           000024   919 G$temp_motorpw_alg6$0$0==.
      000046                        920 _temp_motorpw_alg6::
      000046                        921 	.ds 4
                           000028   922 Lworksheet_11.main$sloc0$1$0==.
      00004A                        923 _main_sloc0_1_0:
      00004A                        924 	.ds 4
                                    925 ;--------------------------------------------------------
                                    926 ; overlayable items in internal ram 
                                    927 ;--------------------------------------------------------
                                    928 	.area	OSEG    (OVR,DATA)
                                    929 	.area	OSEG    (OVR,DATA)
                                    930 ;--------------------------------------------------------
                                    931 ; Stack segment in internal ram 
                                    932 ;--------------------------------------------------------
                                    933 	.area	SSEG
      000068                        934 __start__stack:
      000068                        935 	.ds	1
                                    936 
                                    937 ;--------------------------------------------------------
                                    938 ; indirectly addressable internal ram data
                                    939 ;--------------------------------------------------------
                                    940 	.area ISEG    (DATA)
                                    941 ;--------------------------------------------------------
                                    942 ; absolute internal ram data
                                    943 ;--------------------------------------------------------
                                    944 	.area IABS    (ABS,DATA)
                                    945 	.area IABS    (ABS,DATA)
                                    946 ;--------------------------------------------------------
                                    947 ; bit data
                                    948 ;--------------------------------------------------------
                                    949 	.area BSEG    (BIT)
                                    950 ;--------------------------------------------------------
                                    951 ; paged external ram data
                                    952 ;--------------------------------------------------------
                                    953 	.area PSEG    (PAG,XDATA)
                                    954 ;--------------------------------------------------------
                                    955 ; external ram data
                                    956 ;--------------------------------------------------------
                                    957 	.area XSEG    (XDATA)
                                    958 ;--------------------------------------------------------
                                    959 ; absolute external ram data
                                    960 ;--------------------------------------------------------
                                    961 	.area XABS    (ABS,XDATA)
                                    962 ;--------------------------------------------------------
                                    963 ; external initialized ram data
                                    964 ;--------------------------------------------------------
                                    965 	.area XISEG   (XDATA)
                                    966 	.area HOME    (CODE)
                                    967 	.area GSINIT0 (CODE)
                                    968 	.area GSINIT1 (CODE)
                                    969 	.area GSINIT2 (CODE)
                                    970 	.area GSINIT3 (CODE)
                                    971 	.area GSINIT4 (CODE)
                                    972 	.area GSINIT5 (CODE)
                                    973 	.area GSINIT  (CODE)
                                    974 	.area GSFINAL (CODE)
                                    975 	.area CSEG    (CODE)
                                    976 ;--------------------------------------------------------
                                    977 ; interrupt vector 
                                    978 ;--------------------------------------------------------
                                    979 	.area HOME    (CODE)
      000000                        980 __interrupt_vect:
      000000 02 00 06         [24]  981 	ljmp	__sdcc_gsinit_startup
                                    982 ;--------------------------------------------------------
                                    983 ; global & static initialisations
                                    984 ;--------------------------------------------------------
                                    985 	.area HOME    (CODE)
                                    986 	.area GSINIT  (CODE)
                                    987 	.area GSFINAL (CODE)
                                    988 	.area GSINIT  (CODE)
                                    989 	.globl __sdcc_gsinit_startup
                                    990 	.globl __sdcc_program_startup
                                    991 	.globl __start__stack
                                    992 	.globl __mcs51_genXINIT
                                    993 	.globl __mcs51_genXRAMCLEAR
                                    994 	.globl __mcs51_genRAMCLEAR
                           000000   995 	C$worksheet_11.c$20$1$27 ==.
                                    996 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:20: unsigned int desired = 3500;           // set this value
      00005F 75 22 AC         [24]  997 	mov	_desired,#0xac
      000062 75 23 0D         [24]  998 	mov	(_desired + 1),#0x0d
                           000006   999 	C$worksheet_11.c$21$1$27 ==.
                                   1000 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:21: unsigned int actual = 1800;            // set this value
      000065 75 24 08         [24] 1001 	mov	_actual,#0x08
      000068 75 25 07         [24] 1002 	mov	(_actual + 1),#0x07
                           00000C  1003 	C$worksheet_11.c$22$1$27 ==.
                                   1004 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:22: unsigned int kp = 30;                // set this value
      00006B 75 26 1E         [24] 1005 	mov	_kp,#0x1e
      00006E 75 27 00         [24] 1006 	mov	(_kp + 1),#0x00
                           000012  1007 	C$worksheet_11.c$23$1$27 ==.
                                   1008 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:23: unsigned int kd = 30;                // set this value
      000071 75 28 1E         [24] 1009 	mov	_kd,#0x1e
      000074 75 29 00         [24] 1010 	mov	(_kd + 1),#0x00
                           000018  1011 	C$worksheet_11.c$24$1$27 ==.
                                   1012 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:24: signed int pw_neut = 2765;             // set this value
      000077 75 2A CD         [24] 1013 	mov	_pw_neut,#0xcd
      00007A 75 2B 0A         [24] 1014 	mov	(_pw_neut + 1),#0x0a
                           00001E  1015 	C$worksheet_11.c$25$1$27 ==.
                                   1016 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:25: signed int previous_error = 20;      // set this value
      00007D 75 2C 14         [24] 1017 	mov	_previous_error,#0x14
      000080 75 2D 00         [24] 1018 	mov	(_previous_error + 1),#0x00
                           000024  1019 	C$worksheet_11.c$26$1$27 ==.
                                   1020 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:26: signed int error = 0;               // set this value
      000083 E4               [12] 1021 	clr	a
      000084 F5 2E            [12] 1022 	mov	_error,a
      000086 F5 2F            [12] 1023 	mov	(_error + 1),a
                           000029  1024 	C$worksheet_11.c$27$1$27 ==.
                                   1025 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:27: signed int temp_motorpw_2byte = 0;
      000088 F5 30            [12] 1026 	mov	_temp_motorpw_2byte,a
      00008A F5 31            [12] 1027 	mov	(_temp_motorpw_2byte + 1),a
                           00002D  1028 	C$worksheet_11.c$28$1$27 ==.
                                   1029 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:28: signed long temp_motorpw_alg1 = 0;
      00008C F5 32            [12] 1030 	mov	_temp_motorpw_alg1,a
      00008E F5 33            [12] 1031 	mov	(_temp_motorpw_alg1 + 1),a
      000090 F5 34            [12] 1032 	mov	(_temp_motorpw_alg1 + 2),a
      000092 F5 35            [12] 1033 	mov	(_temp_motorpw_alg1 + 3),a
                           000035  1034 	C$worksheet_11.c$29$1$27 ==.
                                   1035 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:29: signed long temp_motorpw_alg2 = 0;
      000094 F5 36            [12] 1036 	mov	_temp_motorpw_alg2,a
      000096 F5 37            [12] 1037 	mov	(_temp_motorpw_alg2 + 1),a
      000098 F5 38            [12] 1038 	mov	(_temp_motorpw_alg2 + 2),a
      00009A F5 39            [12] 1039 	mov	(_temp_motorpw_alg2 + 3),a
                           00003D  1040 	C$worksheet_11.c$30$1$27 ==.
                                   1041 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:30: signed long temp_motorpw_alg3 = 0;
      00009C F5 3A            [12] 1042 	mov	_temp_motorpw_alg3,a
      00009E F5 3B            [12] 1043 	mov	(_temp_motorpw_alg3 + 1),a
      0000A0 F5 3C            [12] 1044 	mov	(_temp_motorpw_alg3 + 2),a
      0000A2 F5 3D            [12] 1045 	mov	(_temp_motorpw_alg3 + 3),a
                           000045  1046 	C$worksheet_11.c$31$1$27 ==.
                                   1047 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:31: signed long temp_motorpw_alg4 = 0;
      0000A4 F5 3E            [12] 1048 	mov	_temp_motorpw_alg4,a
      0000A6 F5 3F            [12] 1049 	mov	(_temp_motorpw_alg4 + 1),a
      0000A8 F5 40            [12] 1050 	mov	(_temp_motorpw_alg4 + 2),a
      0000AA F5 41            [12] 1051 	mov	(_temp_motorpw_alg4 + 3),a
                           00004D  1052 	C$worksheet_11.c$32$1$27 ==.
                                   1053 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:32: signed long temp_motorpw_alg5 = 0;
      0000AC F5 42            [12] 1054 	mov	_temp_motorpw_alg5,a
      0000AE F5 43            [12] 1055 	mov	(_temp_motorpw_alg5 + 1),a
      0000B0 F5 44            [12] 1056 	mov	(_temp_motorpw_alg5 + 2),a
      0000B2 F5 45            [12] 1057 	mov	(_temp_motorpw_alg5 + 3),a
                           000055  1058 	C$worksheet_11.c$33$1$27 ==.
                                   1059 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:33: signed long temp_motorpw_alg6 = 0;
      0000B4 F5 46            [12] 1060 	mov	_temp_motorpw_alg6,a
      0000B6 F5 47            [12] 1061 	mov	(_temp_motorpw_alg6 + 1),a
      0000B8 F5 48            [12] 1062 	mov	(_temp_motorpw_alg6 + 2),a
      0000BA F5 49            [12] 1063 	mov	(_temp_motorpw_alg6 + 3),a
                                   1064 	.area GSFINAL (CODE)
      0000BC 02 00 03         [24] 1065 	ljmp	__sdcc_program_startup
                                   1066 ;--------------------------------------------------------
                                   1067 ; Home
                                   1068 ;--------------------------------------------------------
                                   1069 	.area HOME    (CODE)
                                   1070 	.area HOME    (CODE)
      000003                       1071 __sdcc_program_startup:
      000003 02 01 3A         [24] 1072 	ljmp	_main
                                   1073 ;	return from main will return to caller
                                   1074 ;--------------------------------------------------------
                                   1075 ; code
                                   1076 ;--------------------------------------------------------
                                   1077 	.area CSEG    (CODE)
                                   1078 ;------------------------------------------------------------
                                   1079 ;Allocation info for local variables in function 'SYSCLK_Init'
                                   1080 ;------------------------------------------------------------
                                   1081 ;i                         Allocated to registers r6 r7 
                                   1082 ;------------------------------------------------------------
                           000000  1083 	G$SYSCLK_Init$0$0 ==.
                           000000  1084 	C$c8051_SDCC.h$62$0$0 ==.
                                   1085 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:62: void SYSCLK_Init(void)
                                   1086 ;	-----------------------------------------
                                   1087 ;	 function SYSCLK_Init
                                   1088 ;	-----------------------------------------
      0000BF                       1089 _SYSCLK_Init:
                           000007  1090 	ar7 = 0x07
                           000006  1091 	ar6 = 0x06
                           000005  1092 	ar5 = 0x05
                           000004  1093 	ar4 = 0x04
                           000003  1094 	ar3 = 0x03
                           000002  1095 	ar2 = 0x02
                           000001  1096 	ar1 = 0x01
                           000000  1097 	ar0 = 0x00
                           000000  1098 	C$c8051_SDCC.h$66$1$2 ==.
                                   1099 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:66: OSCXCN = 0x67;                      // start external oscillator with
      0000BF 75 B1 67         [24] 1100 	mov	_OSCXCN,#0x67
                           000003  1101 	C$c8051_SDCC.h$69$1$2 ==.
                                   1102 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:69: for (i=0; i < 256; i++);            // wait for oscillator to start
      0000C2 7E 00            [12] 1103 	mov	r6,#0x00
      0000C4 7F 01            [12] 1104 	mov	r7,#0x01
      0000C6                       1105 00107$:
      0000C6 EE               [12] 1106 	mov	a,r6
      0000C7 24 FF            [12] 1107 	add	a,#0xff
      0000C9 FC               [12] 1108 	mov	r4,a
      0000CA EF               [12] 1109 	mov	a,r7
      0000CB 34 FF            [12] 1110 	addc	a,#0xff
      0000CD FD               [12] 1111 	mov	r5,a
      0000CE 8C 06            [24] 1112 	mov	ar6,r4
      0000D0 8D 07            [24] 1113 	mov	ar7,r5
      0000D2 EC               [12] 1114 	mov	a,r4
      0000D3 4D               [12] 1115 	orl	a,r5
      0000D4 70 F0            [24] 1116 	jnz	00107$
                           000017  1117 	C$c8051_SDCC.h$71$1$2 ==.
                                   1118 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:71: while (!(OSCXCN & 0x80));           // Wait for crystal osc. to settle
      0000D6                       1119 00102$:
      0000D6 E5 B1            [12] 1120 	mov	a,_OSCXCN
      0000D8 30 E7 FB         [24] 1121 	jnb	acc.7,00102$
                           00001C  1122 	C$c8051_SDCC.h$73$1$2 ==.
                                   1123 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:73: OSCICN = 0x88;                      // select external oscillator as SYSCLK
      0000DB 75 B2 88         [24] 1124 	mov	_OSCICN,#0x88
                           00001F  1125 	C$c8051_SDCC.h$76$1$2 ==.
                           00001F  1126 	XG$SYSCLK_Init$0$0 ==.
      0000DE 22               [24] 1127 	ret
                                   1128 ;------------------------------------------------------------
                                   1129 ;Allocation info for local variables in function 'UART0_Init'
                                   1130 ;------------------------------------------------------------
                           000020  1131 	G$UART0_Init$0$0 ==.
                           000020  1132 	C$c8051_SDCC.h$84$1$2 ==.
                                   1133 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:84: void UART0_Init(void)
                                   1134 ;	-----------------------------------------
                                   1135 ;	 function UART0_Init
                                   1136 ;	-----------------------------------------
      0000DF                       1137 _UART0_Init:
                           000020  1138 	C$c8051_SDCC.h$86$1$4 ==.
                                   1139 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:86: SCON0  = 0x50;                      // SCON0: mode 1, 8-bit UART, enable RX
      0000DF 75 98 50         [24] 1140 	mov	_SCON0,#0x50
                           000023  1141 	C$c8051_SDCC.h$87$1$4 ==.
                                   1142 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:87: TMOD   = 0x20;                      // TMOD: timer 1, mode 2, 8-bit reload
      0000E2 75 89 20         [24] 1143 	mov	_TMOD,#0x20
                           000026  1144 	C$c8051_SDCC.h$88$1$4 ==.
                                   1145 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:88: TH1    = 0xFF&-(SYSCLK/BAUDRATE/16);     // set Timer1 reload value for baudrate
      0000E5 75 8D DC         [24] 1146 	mov	_TH1,#0xdc
                           000029  1147 	C$c8051_SDCC.h$89$1$4 ==.
                                   1148 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:89: TR1    = 1;                         // start Timer1
      0000E8 D2 8E            [12] 1149 	setb	_TR1
                           00002B  1150 	C$c8051_SDCC.h$90$1$4 ==.
                                   1151 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:90: CKCON |= 0x10;                      // Timer1 uses SYSCLK as time base
      0000EA 43 8E 10         [24] 1152 	orl	_CKCON,#0x10
                           00002E  1153 	C$c8051_SDCC.h$91$1$4 ==.
                                   1154 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:91: PCON  |= 0x80;                      // SMOD00 = 1 (disable baud rate 
      0000ED 43 87 80         [24] 1155 	orl	_PCON,#0x80
                           000031  1156 	C$c8051_SDCC.h$93$1$4 ==.
                                   1157 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:93: TI0    = 1;                         // Indicate TX0 ready
      0000F0 D2 99            [12] 1158 	setb	_TI0
                           000033  1159 	C$c8051_SDCC.h$94$1$4 ==.
                                   1160 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:94: P0MDOUT |= 0x01;                    // Set TX0 to push/pull
      0000F2 43 A4 01         [24] 1161 	orl	_P0MDOUT,#0x01
                           000036  1162 	C$c8051_SDCC.h$95$1$4 ==.
                           000036  1163 	XG$UART0_Init$0$0 ==.
      0000F5 22               [24] 1164 	ret
                                   1165 ;------------------------------------------------------------
                                   1166 ;Allocation info for local variables in function 'Sys_Init'
                                   1167 ;------------------------------------------------------------
                           000037  1168 	G$Sys_Init$0$0 ==.
                           000037  1169 	C$c8051_SDCC.h$103$1$4 ==.
                                   1170 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:103: void Sys_Init(void)
                                   1171 ;	-----------------------------------------
                                   1172 ;	 function Sys_Init
                                   1173 ;	-----------------------------------------
      0000F6                       1174 _Sys_Init:
                           000037  1175 	C$c8051_SDCC.h$105$1$6 ==.
                                   1176 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:105: WDTCN = 0xde;			// disable watchdog timer
      0000F6 75 FF DE         [24] 1177 	mov	_WDTCN,#0xde
                           00003A  1178 	C$c8051_SDCC.h$106$1$6 ==.
                                   1179 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:106: WDTCN = 0xad;
      0000F9 75 FF AD         [24] 1180 	mov	_WDTCN,#0xad
                           00003D  1181 	C$c8051_SDCC.h$108$1$6 ==.
                                   1182 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:108: SYSCLK_Init();			// initialize oscillator
      0000FC 12 00 BF         [24] 1183 	lcall	_SYSCLK_Init
                           000040  1184 	C$c8051_SDCC.h$109$1$6 ==.
                                   1185 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:109: UART0_Init();			// initialize UART0
      0000FF 12 00 DF         [24] 1186 	lcall	_UART0_Init
                           000043  1187 	C$c8051_SDCC.h$111$1$6 ==.
                                   1188 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:111: XBR0 |= 0x04;
      000102 43 E1 04         [24] 1189 	orl	_XBR0,#0x04
                           000046  1190 	C$c8051_SDCC.h$112$1$6 ==.
                                   1191 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:112: XBR2 |= 0x40;                    	// Enable crossbar and weak pull-ups
      000105 43 E3 40         [24] 1192 	orl	_XBR2,#0x40
                           000049  1193 	C$c8051_SDCC.h$113$1$6 ==.
                           000049  1194 	XG$Sys_Init$0$0 ==.
      000108 22               [24] 1195 	ret
                                   1196 ;------------------------------------------------------------
                                   1197 ;Allocation info for local variables in function 'putchar'
                                   1198 ;------------------------------------------------------------
                                   1199 ;c                         Allocated to registers r7 
                                   1200 ;------------------------------------------------------------
                           00004A  1201 	G$putchar$0$0 ==.
                           00004A  1202 	C$c8051_SDCC.h$129$1$6 ==.
                                   1203 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:129: void putchar(char c)
                                   1204 ;	-----------------------------------------
                                   1205 ;	 function putchar
                                   1206 ;	-----------------------------------------
      000109                       1207 _putchar:
      000109 AF 82            [24] 1208 	mov	r7,dpl
                           00004C  1209 	C$c8051_SDCC.h$132$1$8 ==.
                                   1210 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:132: while (!TI0); 
      00010B                       1211 00101$:
                           00004C  1212 	C$c8051_SDCC.h$133$1$8 ==.
                                   1213 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:133: TI0 = 0;
      00010B 10 99 02         [24] 1214 	jbc	_TI0,00112$
      00010E 80 FB            [24] 1215 	sjmp	00101$
      000110                       1216 00112$:
                           000051  1217 	C$c8051_SDCC.h$134$1$8 ==.
                                   1218 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:134: SBUF0 = c;
      000110 8F 99            [24] 1219 	mov	_SBUF0,r7
                           000053  1220 	C$c8051_SDCC.h$135$1$8 ==.
                           000053  1221 	XG$putchar$0$0 ==.
      000112 22               [24] 1222 	ret
                                   1223 ;------------------------------------------------------------
                                   1224 ;Allocation info for local variables in function 'getchar'
                                   1225 ;------------------------------------------------------------
                                   1226 ;c                         Allocated to registers r7 
                                   1227 ;------------------------------------------------------------
                           000054  1228 	G$getchar$0$0 ==.
                           000054  1229 	C$c8051_SDCC.h$154$1$8 ==.
                                   1230 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:154: char getchar(void)
                                   1231 ;	-----------------------------------------
                                   1232 ;	 function getchar
                                   1233 ;	-----------------------------------------
      000113                       1234 _getchar:
                           000054  1235 	C$c8051_SDCC.h$157$1$10 ==.
                                   1236 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:157: while (!RI0);
      000113                       1237 00101$:
                           000054  1238 	C$c8051_SDCC.h$158$1$10 ==.
                                   1239 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:158: RI0 = 0;
      000113 10 98 02         [24] 1240 	jbc	_RI0,00112$
      000116 80 FB            [24] 1241 	sjmp	00101$
      000118                       1242 00112$:
                           000059  1243 	C$c8051_SDCC.h$159$1$10 ==.
                                   1244 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:159: c = SBUF0;
      000118 AF 99            [24] 1245 	mov	r7,_SBUF0
                           00005B  1246 	C$c8051_SDCC.h$160$1$10 ==.
                                   1247 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:160: putchar(c);                          // echo to terminal
      00011A 8F 82            [24] 1248 	mov	dpl,r7
      00011C C0 07            [24] 1249 	push	ar7
      00011E 12 01 09         [24] 1250 	lcall	_putchar
      000121 D0 07            [24] 1251 	pop	ar7
                           000064  1252 	C$c8051_SDCC.h$161$1$10 ==.
                                   1253 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:161: return c;
      000123 8F 82            [24] 1254 	mov	dpl,r7
                           000066  1255 	C$c8051_SDCC.h$162$1$10 ==.
                           000066  1256 	XG$getchar$0$0 ==.
      000125 22               [24] 1257 	ret
                                   1258 ;------------------------------------------------------------
                                   1259 ;Allocation info for local variables in function 'getchar_nw'
                                   1260 ;------------------------------------------------------------
                                   1261 ;c                         Allocated to registers 
                                   1262 ;------------------------------------------------------------
                           000067  1263 	G$getchar_nw$0$0 ==.
                           000067  1264 	C$c8051_SDCC.h$168$1$10 ==.
                                   1265 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:168: char getchar_nw(void)
                                   1266 ;	-----------------------------------------
                                   1267 ;	 function getchar_nw
                                   1268 ;	-----------------------------------------
      000126                       1269 _getchar_nw:
                           000067  1270 	C$c8051_SDCC.h$171$1$12 ==.
                                   1271 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:171: if (!RI0) return 0xFF;
      000126 20 98 05         [24] 1272 	jb	_RI0,00102$
      000129 75 82 FF         [24] 1273 	mov	dpl,#0xff
      00012C 80 0B            [24] 1274 	sjmp	00104$
      00012E                       1275 00102$:
                           00006F  1276 	C$c8051_SDCC.h$174$2$13 ==.
                                   1277 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:174: RI0 = 0;
      00012E C2 98            [12] 1278 	clr	_RI0
                           000071  1279 	C$c8051_SDCC.h$175$2$13 ==.
                                   1280 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:175: c = SBUF0;
      000130 85 99 82         [24] 1281 	mov	dpl,_SBUF0
                           000074  1282 	C$c8051_SDCC.h$176$2$13 ==.
                                   1283 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:176: putchar(c);                          // echo to terminal
      000133 12 01 09         [24] 1284 	lcall	_putchar
                           000077  1285 	C$c8051_SDCC.h$177$2$13 ==.
                                   1286 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:177: return SBUF0;
      000136 85 99 82         [24] 1287 	mov	dpl,_SBUF0
      000139                       1288 00104$:
                           00007A  1289 	C$c8051_SDCC.h$179$1$12 ==.
                           00007A  1290 	XG$getchar_nw$0$0 ==.
      000139 22               [24] 1291 	ret
                                   1292 ;------------------------------------------------------------
                                   1293 ;Allocation info for local variables in function 'main'
                                   1294 ;------------------------------------------------------------
                                   1295 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                   1296 ;------------------------------------------------------------
                           00007B  1297 	G$main$0$0 ==.
                           00007B  1298 	C$worksheet_11.c$35$1$12 ==.
                                   1299 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:35: void main()
                                   1300 ;	-----------------------------------------
                                   1301 ;	 function main
                                   1302 ;	-----------------------------------------
      00013A                       1303 _main:
                           00007B  1304 	C$worksheet_11.c$37$1$27 ==.
                                   1305 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:37: Sys_Init();
      00013A 12 00 F6         [24] 1306 	lcall	_Sys_Init
                           00007E  1307 	C$worksheet_11.c$38$1$27 ==.
                                   1308 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:38: putchar(' ');
      00013D 75 82 20         [24] 1309 	mov	dpl,#0x20
      000140 12 01 09         [24] 1310 	lcall	_putchar
                           000084  1311 	C$worksheet_11.c$39$1$27 ==.
                                   1312 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:39: error = desired-actual;
      000143 E5 22            [12] 1313 	mov	a,_desired
      000145 C3               [12] 1314 	clr	c
      000146 95 24            [12] 1315 	subb	a,_actual
      000148 F5 2E            [12] 1316 	mov	_error,a
      00014A E5 23            [12] 1317 	mov	a,(_desired + 1)
      00014C 95 25            [12] 1318 	subb	a,(_actual + 1)
      00014E F5 2F            [12] 1319 	mov	(_error + 1),a
                           000091  1320 	C$worksheet_11.c$41$1$27 ==.
                                   1321 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:41: temp_motorpw_2byte = pw_neut+kp*error+kd*(error-previous_error);
      000150 85 2E 0A         [24] 1322 	mov	__mulint_PARM_2,_error
      000153 85 2F 0B         [24] 1323 	mov	(__mulint_PARM_2 + 1),(_error + 1)
      000156 85 26 82         [24] 1324 	mov	dpl,_kp
      000159 85 27 83         [24] 1325 	mov	dph,(_kp + 1)
      00015C 12 04 FC         [24] 1326 	lcall	__mulint
      00015F AE 82            [24] 1327 	mov	r6,dpl
      000161 AF 83            [24] 1328 	mov	r7,dph
      000163 AC 2A            [24] 1329 	mov	r4,_pw_neut
      000165 AD 2B            [24] 1330 	mov	r5,(_pw_neut + 1)
      000167 EE               [12] 1331 	mov	a,r6
      000168 2C               [12] 1332 	add	a,r4
      000169 FE               [12] 1333 	mov	r6,a
      00016A EF               [12] 1334 	mov	a,r7
      00016B 3D               [12] 1335 	addc	a,r5
      00016C FF               [12] 1336 	mov	r7,a
      00016D E5 2E            [12] 1337 	mov	a,_error
      00016F C3               [12] 1338 	clr	c
      000170 95 2C            [12] 1339 	subb	a,_previous_error
      000172 FC               [12] 1340 	mov	r4,a
      000173 E5 2F            [12] 1341 	mov	a,(_error + 1)
      000175 95 2D            [12] 1342 	subb	a,(_previous_error + 1)
      000177 FD               [12] 1343 	mov	r5,a
      000178 8C 0A            [24] 1344 	mov	__mulint_PARM_2,r4
      00017A 8D 0B            [24] 1345 	mov	(__mulint_PARM_2 + 1),r5
      00017C 85 28 82         [24] 1346 	mov	dpl,_kd
      00017F 85 29 83         [24] 1347 	mov	dph,(_kd + 1)
      000182 C0 07            [24] 1348 	push	ar7
      000184 C0 06            [24] 1349 	push	ar6
      000186 12 04 FC         [24] 1350 	lcall	__mulint
      000189 AC 82            [24] 1351 	mov	r4,dpl
      00018B AD 83            [24] 1352 	mov	r5,dph
      00018D D0 06            [24] 1353 	pop	ar6
      00018F D0 07            [24] 1354 	pop	ar7
      000191 EC               [12] 1355 	mov	a,r4
      000192 2E               [12] 1356 	add	a,r6
      000193 F5 30            [12] 1357 	mov	_temp_motorpw_2byte,a
      000195 ED               [12] 1358 	mov	a,r5
      000196 3F               [12] 1359 	addc	a,r7
      000197 F5 31            [12] 1360 	mov	(_temp_motorpw_2byte + 1),a
                           0000DA  1361 	C$worksheet_11.c$42$1$27 ==.
                                   1362 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:42: printf("The two byte calculation of motorpw is %d \r\n",temp_motorpw_2byte);
      000199 C0 30            [24] 1363 	push	_temp_motorpw_2byte
      00019B C0 31            [24] 1364 	push	(_temp_motorpw_2byte + 1)
      00019D 74 C6            [12] 1365 	mov	a,#___str_0
      00019F C0 E0            [24] 1366 	push	acc
      0001A1 74 0B            [12] 1367 	mov	a,#(___str_0 >> 8)
      0001A3 C0 E0            [24] 1368 	push	acc
      0001A5 74 80            [12] 1369 	mov	a,#0x80
      0001A7 C0 E0            [24] 1370 	push	acc
      0001A9 12 05 AB         [24] 1371 	lcall	_printf
      0001AC E5 81            [12] 1372 	mov	a,sp
      0001AE 24 FB            [12] 1373 	add	a,#0xfb
      0001B0 F5 81            [12] 1374 	mov	sp,a
                           0000F3  1375 	C$worksheet_11.c$44$1$27 ==.
                                   1376 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:44: temp_motorpw_alg1 = pw_neut+kp*error+kd*(error-previous_error);
      0001B2 85 2E 0A         [24] 1377 	mov	__mulint_PARM_2,_error
      0001B5 85 2F 0B         [24] 1378 	mov	(__mulint_PARM_2 + 1),(_error + 1)
      0001B8 85 26 82         [24] 1379 	mov	dpl,_kp
      0001BB 85 27 83         [24] 1380 	mov	dph,(_kp + 1)
      0001BE 12 04 FC         [24] 1381 	lcall	__mulint
      0001C1 AE 82            [24] 1382 	mov	r6,dpl
      0001C3 AF 83            [24] 1383 	mov	r7,dph
      0001C5 AC 2A            [24] 1384 	mov	r4,_pw_neut
      0001C7 AD 2B            [24] 1385 	mov	r5,(_pw_neut + 1)
      0001C9 EE               [12] 1386 	mov	a,r6
      0001CA 2C               [12] 1387 	add	a,r4
      0001CB FE               [12] 1388 	mov	r6,a
      0001CC EF               [12] 1389 	mov	a,r7
      0001CD 3D               [12] 1390 	addc	a,r5
      0001CE FF               [12] 1391 	mov	r7,a
      0001CF E5 2E            [12] 1392 	mov	a,_error
      0001D1 C3               [12] 1393 	clr	c
      0001D2 95 2C            [12] 1394 	subb	a,_previous_error
      0001D4 FC               [12] 1395 	mov	r4,a
      0001D5 E5 2F            [12] 1396 	mov	a,(_error + 1)
      0001D7 95 2D            [12] 1397 	subb	a,(_previous_error + 1)
      0001D9 FD               [12] 1398 	mov	r5,a
      0001DA 8C 0A            [24] 1399 	mov	__mulint_PARM_2,r4
      0001DC 8D 0B            [24] 1400 	mov	(__mulint_PARM_2 + 1),r5
      0001DE 85 28 82         [24] 1401 	mov	dpl,_kd
      0001E1 85 29 83         [24] 1402 	mov	dph,(_kd + 1)
      0001E4 C0 07            [24] 1403 	push	ar7
      0001E6 C0 06            [24] 1404 	push	ar6
      0001E8 12 04 FC         [24] 1405 	lcall	__mulint
      0001EB AC 82            [24] 1406 	mov	r4,dpl
      0001ED AD 83            [24] 1407 	mov	r5,dph
      0001EF D0 06            [24] 1408 	pop	ar6
      0001F1 D0 07            [24] 1409 	pop	ar7
      0001F3 EC               [12] 1410 	mov	a,r4
      0001F4 2E               [12] 1411 	add	a,r6
      0001F5 FE               [12] 1412 	mov	r6,a
      0001F6 ED               [12] 1413 	mov	a,r5
      0001F7 3F               [12] 1414 	addc	a,r7
      0001F8 FF               [12] 1415 	mov	r7,a
      0001F9 8E 32            [24] 1416 	mov	_temp_motorpw_alg1,r6
      0001FB 8F 33            [24] 1417 	mov	(_temp_motorpw_alg1 + 1),r7
      0001FD 75 34 00         [24] 1418 	mov	(_temp_motorpw_alg1 + 2),#0x00
      000200 75 35 00         [24] 1419 	mov	(_temp_motorpw_alg1 + 3),#0x00
                           000144  1420 	C$worksheet_11.c$45$1$27 ==.
                                   1421 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:45: printf("Algorithm 1, four byte calculation of motorpw is %ld \r\n",temp_motorpw_alg1);
      000203 C0 32            [24] 1422 	push	_temp_motorpw_alg1
      000205 C0 33            [24] 1423 	push	(_temp_motorpw_alg1 + 1)
      000207 C0 34            [24] 1424 	push	(_temp_motorpw_alg1 + 2)
      000209 C0 35            [24] 1425 	push	(_temp_motorpw_alg1 + 3)
      00020B 74 F3            [12] 1426 	mov	a,#___str_1
      00020D C0 E0            [24] 1427 	push	acc
      00020F 74 0B            [12] 1428 	mov	a,#(___str_1 >> 8)
      000211 C0 E0            [24] 1429 	push	acc
      000213 74 80            [12] 1430 	mov	a,#0x80
      000215 C0 E0            [24] 1431 	push	acc
      000217 12 05 AB         [24] 1432 	lcall	_printf
      00021A E5 81            [12] 1433 	mov	a,sp
      00021C 24 F9            [12] 1434 	add	a,#0xf9
      00021E F5 81            [12] 1435 	mov	sp,a
                           000161  1436 	C$worksheet_11.c$47$1$27 ==.
                                   1437 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:47: temp_motorpw_alg2 = pw_neut+(signed long)kp*error+kd*(error-previous_error);
      000220 AC 26            [24] 1438 	mov	r4,_kp
      000222 AD 27            [24] 1439 	mov	r5,(_kp + 1)
      000224 7E 00            [12] 1440 	mov	r6,#0x00
      000226 7F 00            [12] 1441 	mov	r7,#0x00
      000228 85 2E 0A         [24] 1442 	mov	__mullong_PARM_2,_error
      00022B E5 2F            [12] 1443 	mov	a,(_error + 1)
      00022D F5 0B            [12] 1444 	mov	(__mullong_PARM_2 + 1),a
      00022F 33               [12] 1445 	rlc	a
      000230 95 E0            [12] 1446 	subb	a,acc
      000232 F5 0C            [12] 1447 	mov	(__mullong_PARM_2 + 2),a
      000234 F5 0D            [12] 1448 	mov	(__mullong_PARM_2 + 3),a
      000236 8C 82            [24] 1449 	mov	dpl,r4
      000238 8D 83            [24] 1450 	mov	dph,r5
      00023A 8E F0            [24] 1451 	mov	b,r6
      00023C EF               [12] 1452 	mov	a,r7
      00023D 12 05 19         [24] 1453 	lcall	__mullong
      000240 AC 82            [24] 1454 	mov	r4,dpl
      000242 AD 83            [24] 1455 	mov	r5,dph
      000244 AE F0            [24] 1456 	mov	r6,b
      000246 FF               [12] 1457 	mov	r7,a
      000247 A8 2A            [24] 1458 	mov	r0,_pw_neut
      000249 E5 2B            [12] 1459 	mov	a,(_pw_neut + 1)
      00024B F9               [12] 1460 	mov	r1,a
      00024C 33               [12] 1461 	rlc	a
      00024D 95 E0            [12] 1462 	subb	a,acc
      00024F FA               [12] 1463 	mov	r2,a
      000250 FB               [12] 1464 	mov	r3,a
      000251 EC               [12] 1465 	mov	a,r4
      000252 28               [12] 1466 	add	a,r0
      000253 FC               [12] 1467 	mov	r4,a
      000254 ED               [12] 1468 	mov	a,r5
      000255 39               [12] 1469 	addc	a,r1
      000256 FD               [12] 1470 	mov	r5,a
      000257 EE               [12] 1471 	mov	a,r6
      000258 3A               [12] 1472 	addc	a,r2
      000259 FE               [12] 1473 	mov	r6,a
      00025A EF               [12] 1474 	mov	a,r7
      00025B 3B               [12] 1475 	addc	a,r3
      00025C FF               [12] 1476 	mov	r7,a
      00025D E5 2E            [12] 1477 	mov	a,_error
      00025F C3               [12] 1478 	clr	c
      000260 95 2C            [12] 1479 	subb	a,_previous_error
      000262 FA               [12] 1480 	mov	r2,a
      000263 E5 2F            [12] 1481 	mov	a,(_error + 1)
      000265 95 2D            [12] 1482 	subb	a,(_previous_error + 1)
      000267 FB               [12] 1483 	mov	r3,a
      000268 8A 0A            [24] 1484 	mov	__mulint_PARM_2,r2
      00026A 8B 0B            [24] 1485 	mov	(__mulint_PARM_2 + 1),r3
      00026C 85 28 82         [24] 1486 	mov	dpl,_kd
      00026F 85 29 83         [24] 1487 	mov	dph,(_kd + 1)
      000272 C0 07            [24] 1488 	push	ar7
      000274 C0 06            [24] 1489 	push	ar6
      000276 C0 05            [24] 1490 	push	ar5
      000278 C0 04            [24] 1491 	push	ar4
      00027A 12 04 FC         [24] 1492 	lcall	__mulint
      00027D AA 82            [24] 1493 	mov	r2,dpl
      00027F AB 83            [24] 1494 	mov	r3,dph
      000281 D0 04            [24] 1495 	pop	ar4
      000283 D0 05            [24] 1496 	pop	ar5
      000285 D0 06            [24] 1497 	pop	ar6
      000287 D0 07            [24] 1498 	pop	ar7
      000289 8A 00            [24] 1499 	mov	ar0,r2
      00028B 8B 01            [24] 1500 	mov	ar1,r3
      00028D E4               [12] 1501 	clr	a
      00028E FA               [12] 1502 	mov	r2,a
      00028F FB               [12] 1503 	mov	r3,a
      000290 E8               [12] 1504 	mov	a,r0
      000291 2C               [12] 1505 	add	a,r4
      000292 F5 36            [12] 1506 	mov	_temp_motorpw_alg2,a
      000294 E9               [12] 1507 	mov	a,r1
      000295 3D               [12] 1508 	addc	a,r5
      000296 F5 37            [12] 1509 	mov	(_temp_motorpw_alg2 + 1),a
      000298 EA               [12] 1510 	mov	a,r2
      000299 3E               [12] 1511 	addc	a,r6
      00029A F5 38            [12] 1512 	mov	(_temp_motorpw_alg2 + 2),a
      00029C EB               [12] 1513 	mov	a,r3
      00029D 3F               [12] 1514 	addc	a,r7
      00029E F5 39            [12] 1515 	mov	(_temp_motorpw_alg2 + 3),a
                           0001E1  1516 	C$worksheet_11.c$48$1$27 ==.
                                   1517 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:48: printf("Algorithm 2, four byte calculation of motorpw is %ld \r\n",temp_motorpw_alg2);
      0002A0 C0 36            [24] 1518 	push	_temp_motorpw_alg2
      0002A2 C0 37            [24] 1519 	push	(_temp_motorpw_alg2 + 1)
      0002A4 C0 38            [24] 1520 	push	(_temp_motorpw_alg2 + 2)
      0002A6 C0 39            [24] 1521 	push	(_temp_motorpw_alg2 + 3)
      0002A8 74 2B            [12] 1522 	mov	a,#___str_2
      0002AA C0 E0            [24] 1523 	push	acc
      0002AC 74 0C            [12] 1524 	mov	a,#(___str_2 >> 8)
      0002AE C0 E0            [24] 1525 	push	acc
      0002B0 74 80            [12] 1526 	mov	a,#0x80
      0002B2 C0 E0            [24] 1527 	push	acc
      0002B4 12 05 AB         [24] 1528 	lcall	_printf
      0002B7 E5 81            [12] 1529 	mov	a,sp
      0002B9 24 F9            [12] 1530 	add	a,#0xf9
      0002BB F5 81            [12] 1531 	mov	sp,a
                           0001FE  1532 	C$worksheet_11.c$50$1$27 ==.
                                   1533 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:50: temp_motorpw_alg3 = (signed long)( pw_neut + kp * (error) + kd * (error - previous_error));
      0002BD 85 2E 0A         [24] 1534 	mov	__mulint_PARM_2,_error
      0002C0 85 2F 0B         [24] 1535 	mov	(__mulint_PARM_2 + 1),(_error + 1)
      0002C3 85 26 82         [24] 1536 	mov	dpl,_kp
      0002C6 85 27 83         [24] 1537 	mov	dph,(_kp + 1)
      0002C9 12 04 FC         [24] 1538 	lcall	__mulint
      0002CC AE 82            [24] 1539 	mov	r6,dpl
      0002CE AF 83            [24] 1540 	mov	r7,dph
      0002D0 AC 2A            [24] 1541 	mov	r4,_pw_neut
      0002D2 AD 2B            [24] 1542 	mov	r5,(_pw_neut + 1)
      0002D4 EE               [12] 1543 	mov	a,r6
      0002D5 2C               [12] 1544 	add	a,r4
      0002D6 FE               [12] 1545 	mov	r6,a
      0002D7 EF               [12] 1546 	mov	a,r7
      0002D8 3D               [12] 1547 	addc	a,r5
      0002D9 FF               [12] 1548 	mov	r7,a
      0002DA E5 2E            [12] 1549 	mov	a,_error
      0002DC C3               [12] 1550 	clr	c
      0002DD 95 2C            [12] 1551 	subb	a,_previous_error
      0002DF FC               [12] 1552 	mov	r4,a
      0002E0 E5 2F            [12] 1553 	mov	a,(_error + 1)
      0002E2 95 2D            [12] 1554 	subb	a,(_previous_error + 1)
      0002E4 FD               [12] 1555 	mov	r5,a
      0002E5 8C 0A            [24] 1556 	mov	__mulint_PARM_2,r4
      0002E7 8D 0B            [24] 1557 	mov	(__mulint_PARM_2 + 1),r5
      0002E9 85 28 82         [24] 1558 	mov	dpl,_kd
      0002EC 85 29 83         [24] 1559 	mov	dph,(_kd + 1)
      0002EF C0 07            [24] 1560 	push	ar7
      0002F1 C0 06            [24] 1561 	push	ar6
      0002F3 12 04 FC         [24] 1562 	lcall	__mulint
      0002F6 AC 82            [24] 1563 	mov	r4,dpl
      0002F8 AD 83            [24] 1564 	mov	r5,dph
      0002FA D0 06            [24] 1565 	pop	ar6
      0002FC D0 07            [24] 1566 	pop	ar7
      0002FE EC               [12] 1567 	mov	a,r4
      0002FF 2E               [12] 1568 	add	a,r6
      000300 FE               [12] 1569 	mov	r6,a
      000301 ED               [12] 1570 	mov	a,r5
      000302 3F               [12] 1571 	addc	a,r7
      000303 FF               [12] 1572 	mov	r7,a
      000304 8E 3A            [24] 1573 	mov	_temp_motorpw_alg3,r6
      000306 8F 3B            [24] 1574 	mov	(_temp_motorpw_alg3 + 1),r7
      000308 75 3C 00         [24] 1575 	mov	(_temp_motorpw_alg3 + 2),#0x00
      00030B 75 3D 00         [24] 1576 	mov	(_temp_motorpw_alg3 + 3),#0x00
                           00024F  1577 	C$worksheet_11.c$51$1$27 ==.
                                   1578 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:51: printf("Algorithm 3, four byte calculation of motorpw is %ld \r\n",temp_motorpw_alg3);
      00030E C0 3A            [24] 1579 	push	_temp_motorpw_alg3
      000310 C0 3B            [24] 1580 	push	(_temp_motorpw_alg3 + 1)
      000312 C0 3C            [24] 1581 	push	(_temp_motorpw_alg3 + 2)
      000314 C0 3D            [24] 1582 	push	(_temp_motorpw_alg3 + 3)
      000316 74 63            [12] 1583 	mov	a,#___str_3
      000318 C0 E0            [24] 1584 	push	acc
      00031A 74 0C            [12] 1585 	mov	a,#(___str_3 >> 8)
      00031C C0 E0            [24] 1586 	push	acc
      00031E 74 80            [12] 1587 	mov	a,#0x80
      000320 C0 E0            [24] 1588 	push	acc
      000322 12 05 AB         [24] 1589 	lcall	_printf
      000325 E5 81            [12] 1590 	mov	a,sp
      000327 24 F9            [12] 1591 	add	a,#0xf9
      000329 F5 81            [12] 1592 	mov	sp,a
                           00026C  1593 	C$worksheet_11.c$53$1$27 ==.
                                   1594 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:53: temp_motorpw_alg4 = pw_neut+kp*(signed int)(error)+kd*(signed int)(error-previous_error);
      00032B 85 2E 0A         [24] 1595 	mov	__mulint_PARM_2,_error
      00032E 85 2F 0B         [24] 1596 	mov	(__mulint_PARM_2 + 1),(_error + 1)
      000331 85 26 82         [24] 1597 	mov	dpl,_kp
      000334 85 27 83         [24] 1598 	mov	dph,(_kp + 1)
      000337 12 04 FC         [24] 1599 	lcall	__mulint
      00033A AE 82            [24] 1600 	mov	r6,dpl
      00033C AF 83            [24] 1601 	mov	r7,dph
      00033E AC 2A            [24] 1602 	mov	r4,_pw_neut
      000340 AD 2B            [24] 1603 	mov	r5,(_pw_neut + 1)
      000342 EE               [12] 1604 	mov	a,r6
      000343 2C               [12] 1605 	add	a,r4
      000344 FE               [12] 1606 	mov	r6,a
      000345 EF               [12] 1607 	mov	a,r7
      000346 3D               [12] 1608 	addc	a,r5
      000347 FF               [12] 1609 	mov	r7,a
      000348 E5 2E            [12] 1610 	mov	a,_error
      00034A C3               [12] 1611 	clr	c
      00034B 95 2C            [12] 1612 	subb	a,_previous_error
      00034D FC               [12] 1613 	mov	r4,a
      00034E E5 2F            [12] 1614 	mov	a,(_error + 1)
      000350 95 2D            [12] 1615 	subb	a,(_previous_error + 1)
      000352 FD               [12] 1616 	mov	r5,a
      000353 8C 0A            [24] 1617 	mov	__mulint_PARM_2,r4
      000355 8D 0B            [24] 1618 	mov	(__mulint_PARM_2 + 1),r5
      000357 85 28 82         [24] 1619 	mov	dpl,_kd
      00035A 85 29 83         [24] 1620 	mov	dph,(_kd + 1)
      00035D C0 07            [24] 1621 	push	ar7
      00035F C0 06            [24] 1622 	push	ar6
      000361 12 04 FC         [24] 1623 	lcall	__mulint
      000364 AC 82            [24] 1624 	mov	r4,dpl
      000366 AD 83            [24] 1625 	mov	r5,dph
      000368 D0 06            [24] 1626 	pop	ar6
      00036A D0 07            [24] 1627 	pop	ar7
      00036C EC               [12] 1628 	mov	a,r4
      00036D 2E               [12] 1629 	add	a,r6
      00036E FE               [12] 1630 	mov	r6,a
      00036F ED               [12] 1631 	mov	a,r5
      000370 3F               [12] 1632 	addc	a,r7
      000371 FF               [12] 1633 	mov	r7,a
      000372 8E 3E            [24] 1634 	mov	_temp_motorpw_alg4,r6
      000374 8F 3F            [24] 1635 	mov	(_temp_motorpw_alg4 + 1),r7
      000376 75 40 00         [24] 1636 	mov	(_temp_motorpw_alg4 + 2),#0x00
      000379 75 41 00         [24] 1637 	mov	(_temp_motorpw_alg4 + 3),#0x00
                           0002BD  1638 	C$worksheet_11.c$54$1$27 ==.
                                   1639 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:54: printf("Algorithm 4, four byte calculation of motorpw is %ld \r\n",temp_motorpw_alg4);
      00037C C0 3E            [24] 1640 	push	_temp_motorpw_alg4
      00037E C0 3F            [24] 1641 	push	(_temp_motorpw_alg4 + 1)
      000380 C0 40            [24] 1642 	push	(_temp_motorpw_alg4 + 2)
      000382 C0 41            [24] 1643 	push	(_temp_motorpw_alg4 + 3)
      000384 74 9B            [12] 1644 	mov	a,#___str_4
      000386 C0 E0            [24] 1645 	push	acc
      000388 74 0C            [12] 1646 	mov	a,#(___str_4 >> 8)
      00038A C0 E0            [24] 1647 	push	acc
      00038C 74 80            [12] 1648 	mov	a,#0x80
      00038E C0 E0            [24] 1649 	push	acc
      000390 12 05 AB         [24] 1650 	lcall	_printf
      000393 E5 81            [12] 1651 	mov	a,sp
      000395 24 F9            [12] 1652 	add	a,#0xf9
      000397 F5 81            [12] 1653 	mov	sp,a
                           0002DA  1654 	C$worksheet_11.c$56$1$27 ==.
                                   1655 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:56: temp_motorpw_alg5 = (signed long)pw_neut+(signed long)(kp*(error))+(signed long)(kd*(error-previous_error));
      000399 AC 2A            [24] 1656 	mov	r4,_pw_neut
      00039B E5 2B            [12] 1657 	mov	a,(_pw_neut + 1)
      00039D FD               [12] 1658 	mov	r5,a
      00039E 33               [12] 1659 	rlc	a
      00039F 95 E0            [12] 1660 	subb	a,acc
      0003A1 FE               [12] 1661 	mov	r6,a
      0003A2 FF               [12] 1662 	mov	r7,a
      0003A3 85 2E 0A         [24] 1663 	mov	__mulint_PARM_2,_error
      0003A6 85 2F 0B         [24] 1664 	mov	(__mulint_PARM_2 + 1),(_error + 1)
      0003A9 85 26 82         [24] 1665 	mov	dpl,_kp
      0003AC 85 27 83         [24] 1666 	mov	dph,(_kp + 1)
      0003AF C0 07            [24] 1667 	push	ar7
      0003B1 C0 06            [24] 1668 	push	ar6
      0003B3 C0 05            [24] 1669 	push	ar5
      0003B5 C0 04            [24] 1670 	push	ar4
      0003B7 12 04 FC         [24] 1671 	lcall	__mulint
      0003BA AA 82            [24] 1672 	mov	r2,dpl
      0003BC AB 83            [24] 1673 	mov	r3,dph
      0003BE D0 04            [24] 1674 	pop	ar4
      0003C0 D0 05            [24] 1675 	pop	ar5
      0003C2 D0 06            [24] 1676 	pop	ar6
      0003C4 D0 07            [24] 1677 	pop	ar7
      0003C6 8A 00            [24] 1678 	mov	ar0,r2
      0003C8 8B 01            [24] 1679 	mov	ar1,r3
      0003CA E4               [12] 1680 	clr	a
      0003CB FA               [12] 1681 	mov	r2,a
      0003CC FB               [12] 1682 	mov	r3,a
      0003CD E8               [12] 1683 	mov	a,r0
      0003CE 2C               [12] 1684 	add	a,r4
      0003CF FC               [12] 1685 	mov	r4,a
      0003D0 E9               [12] 1686 	mov	a,r1
      0003D1 3D               [12] 1687 	addc	a,r5
      0003D2 FD               [12] 1688 	mov	r5,a
      0003D3 EA               [12] 1689 	mov	a,r2
      0003D4 3E               [12] 1690 	addc	a,r6
      0003D5 FE               [12] 1691 	mov	r6,a
      0003D6 EB               [12] 1692 	mov	a,r3
      0003D7 3F               [12] 1693 	addc	a,r7
      0003D8 FF               [12] 1694 	mov	r7,a
      0003D9 E5 2E            [12] 1695 	mov	a,_error
      0003DB C3               [12] 1696 	clr	c
      0003DC 95 2C            [12] 1697 	subb	a,_previous_error
      0003DE FA               [12] 1698 	mov	r2,a
      0003DF E5 2F            [12] 1699 	mov	a,(_error + 1)
      0003E1 95 2D            [12] 1700 	subb	a,(_previous_error + 1)
      0003E3 FB               [12] 1701 	mov	r3,a
      0003E4 8A 0A            [24] 1702 	mov	__mulint_PARM_2,r2
      0003E6 8B 0B            [24] 1703 	mov	(__mulint_PARM_2 + 1),r3
      0003E8 85 28 82         [24] 1704 	mov	dpl,_kd
      0003EB 85 29 83         [24] 1705 	mov	dph,(_kd + 1)
      0003EE C0 07            [24] 1706 	push	ar7
      0003F0 C0 06            [24] 1707 	push	ar6
      0003F2 C0 05            [24] 1708 	push	ar5
      0003F4 C0 04            [24] 1709 	push	ar4
      0003F6 12 04 FC         [24] 1710 	lcall	__mulint
      0003F9 AA 82            [24] 1711 	mov	r2,dpl
      0003FB AB 83            [24] 1712 	mov	r3,dph
      0003FD D0 04            [24] 1713 	pop	ar4
      0003FF D0 05            [24] 1714 	pop	ar5
      000401 D0 06            [24] 1715 	pop	ar6
      000403 D0 07            [24] 1716 	pop	ar7
      000405 8A 00            [24] 1717 	mov	ar0,r2
      000407 8B 01            [24] 1718 	mov	ar1,r3
      000409 E4               [12] 1719 	clr	a
      00040A FA               [12] 1720 	mov	r2,a
      00040B FB               [12] 1721 	mov	r3,a
      00040C E8               [12] 1722 	mov	a,r0
      00040D 2C               [12] 1723 	add	a,r4
      00040E F5 42            [12] 1724 	mov	_temp_motorpw_alg5,a
      000410 E9               [12] 1725 	mov	a,r1
      000411 3D               [12] 1726 	addc	a,r5
      000412 F5 43            [12] 1727 	mov	(_temp_motorpw_alg5 + 1),a
      000414 EA               [12] 1728 	mov	a,r2
      000415 3E               [12] 1729 	addc	a,r6
      000416 F5 44            [12] 1730 	mov	(_temp_motorpw_alg5 + 2),a
      000418 EB               [12] 1731 	mov	a,r3
      000419 3F               [12] 1732 	addc	a,r7
      00041A F5 45            [12] 1733 	mov	(_temp_motorpw_alg5 + 3),a
                           00035D  1734 	C$worksheet_11.c$57$1$27 ==.
                                   1735 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:57: printf("Algorithm 5, four byte calculation of motorpw is %ld \r\n",temp_motorpw_alg5);
      00041C C0 42            [24] 1736 	push	_temp_motorpw_alg5
      00041E C0 43            [24] 1737 	push	(_temp_motorpw_alg5 + 1)
      000420 C0 44            [24] 1738 	push	(_temp_motorpw_alg5 + 2)
      000422 C0 45            [24] 1739 	push	(_temp_motorpw_alg5 + 3)
      000424 74 D3            [12] 1740 	mov	a,#___str_5
      000426 C0 E0            [24] 1741 	push	acc
      000428 74 0C            [12] 1742 	mov	a,#(___str_5 >> 8)
      00042A C0 E0            [24] 1743 	push	acc
      00042C 74 80            [12] 1744 	mov	a,#0x80
      00042E C0 E0            [24] 1745 	push	acc
      000430 12 05 AB         [24] 1746 	lcall	_printf
      000433 E5 81            [12] 1747 	mov	a,sp
      000435 24 F9            [12] 1748 	add	a,#0xf9
      000437 F5 81            [12] 1749 	mov	sp,a
                           00037A  1750 	C$worksheet_11.c$59$1$27 ==.
                                   1751 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:59: temp_motorpw_alg6 = (signed long)pw_neut+(signed long)kp*(signed long)error+(signed long)kd*(signed long)(error-previous_error);
      000439 AC 2A            [24] 1752 	mov	r4,_pw_neut
      00043B E5 2B            [12] 1753 	mov	a,(_pw_neut + 1)
      00043D FD               [12] 1754 	mov	r5,a
      00043E 33               [12] 1755 	rlc	a
      00043F 95 E0            [12] 1756 	subb	a,acc
      000441 FE               [12] 1757 	mov	r6,a
      000442 FF               [12] 1758 	mov	r7,a
      000443 A8 26            [24] 1759 	mov	r0,_kp
      000445 A9 27            [24] 1760 	mov	r1,(_kp + 1)
      000447 7A 00            [12] 1761 	mov	r2,#0x00
      000449 7B 00            [12] 1762 	mov	r3,#0x00
      00044B 85 2E 0A         [24] 1763 	mov	__mullong_PARM_2,_error
      00044E E5 2F            [12] 1764 	mov	a,(_error + 1)
      000450 F5 0B            [12] 1765 	mov	(__mullong_PARM_2 + 1),a
      000452 33               [12] 1766 	rlc	a
      000453 95 E0            [12] 1767 	subb	a,acc
      000455 F5 0C            [12] 1768 	mov	(__mullong_PARM_2 + 2),a
      000457 F5 0D            [12] 1769 	mov	(__mullong_PARM_2 + 3),a
      000459 88 82            [24] 1770 	mov	dpl,r0
      00045B 89 83            [24] 1771 	mov	dph,r1
      00045D 8A F0            [24] 1772 	mov	b,r2
      00045F EB               [12] 1773 	mov	a,r3
      000460 C0 07            [24] 1774 	push	ar7
      000462 C0 06            [24] 1775 	push	ar6
      000464 C0 05            [24] 1776 	push	ar5
      000466 C0 04            [24] 1777 	push	ar4
      000468 12 05 19         [24] 1778 	lcall	__mullong
      00046B A8 82            [24] 1779 	mov	r0,dpl
      00046D A9 83            [24] 1780 	mov	r1,dph
      00046F AA F0            [24] 1781 	mov	r2,b
      000471 FB               [12] 1782 	mov	r3,a
      000472 D0 04            [24] 1783 	pop	ar4
      000474 D0 05            [24] 1784 	pop	ar5
      000476 D0 06            [24] 1785 	pop	ar6
      000478 D0 07            [24] 1786 	pop	ar7
      00047A E8               [12] 1787 	mov	a,r0
      00047B 2C               [12] 1788 	add	a,r4
      00047C FC               [12] 1789 	mov	r4,a
      00047D E9               [12] 1790 	mov	a,r1
      00047E 3D               [12] 1791 	addc	a,r5
      00047F FD               [12] 1792 	mov	r5,a
      000480 EA               [12] 1793 	mov	a,r2
      000481 3E               [12] 1794 	addc	a,r6
      000482 FE               [12] 1795 	mov	r6,a
      000483 EB               [12] 1796 	mov	a,r3
      000484 3F               [12] 1797 	addc	a,r7
      000485 FF               [12] 1798 	mov	r7,a
      000486 85 28 4A         [24] 1799 	mov	_main_sloc0_1_0,_kd
      000489 85 29 4B         [24] 1800 	mov	(_main_sloc0_1_0 + 1),(_kd + 1)
      00048C E4               [12] 1801 	clr	a
      00048D F5 4C            [12] 1802 	mov	(_main_sloc0_1_0 + 2),a
      00048F F5 4D            [12] 1803 	mov	(_main_sloc0_1_0 + 3),a
      000491 E5 2E            [12] 1804 	mov	a,_error
      000493 C3               [12] 1805 	clr	c
      000494 95 2C            [12] 1806 	subb	a,_previous_error
      000496 FA               [12] 1807 	mov	r2,a
      000497 E5 2F            [12] 1808 	mov	a,(_error + 1)
      000499 95 2D            [12] 1809 	subb	a,(_previous_error + 1)
      00049B 8A 0A            [24] 1810 	mov	__mullong_PARM_2,r2
      00049D F5 0B            [12] 1811 	mov	(__mullong_PARM_2 + 1),a
      00049F 33               [12] 1812 	rlc	a
      0004A0 95 E0            [12] 1813 	subb	a,acc
      0004A2 F5 0C            [12] 1814 	mov	(__mullong_PARM_2 + 2),a
      0004A4 F5 0D            [12] 1815 	mov	(__mullong_PARM_2 + 3),a
      0004A6 85 4A 82         [24] 1816 	mov	dpl,_main_sloc0_1_0
      0004A9 85 4B 83         [24] 1817 	mov	dph,(_main_sloc0_1_0 + 1)
      0004AC 85 4C F0         [24] 1818 	mov	b,(_main_sloc0_1_0 + 2)
      0004AF E5 4D            [12] 1819 	mov	a,(_main_sloc0_1_0 + 3)
      0004B1 C0 07            [24] 1820 	push	ar7
      0004B3 C0 06            [24] 1821 	push	ar6
      0004B5 C0 05            [24] 1822 	push	ar5
      0004B7 C0 04            [24] 1823 	push	ar4
      0004B9 12 05 19         [24] 1824 	lcall	__mullong
      0004BC A8 82            [24] 1825 	mov	r0,dpl
      0004BE A9 83            [24] 1826 	mov	r1,dph
      0004C0 AA F0            [24] 1827 	mov	r2,b
      0004C2 FB               [12] 1828 	mov	r3,a
      0004C3 D0 04            [24] 1829 	pop	ar4
      0004C5 D0 05            [24] 1830 	pop	ar5
      0004C7 D0 06            [24] 1831 	pop	ar6
      0004C9 D0 07            [24] 1832 	pop	ar7
      0004CB E8               [12] 1833 	mov	a,r0
      0004CC 2C               [12] 1834 	add	a,r4
      0004CD F5 46            [12] 1835 	mov	_temp_motorpw_alg6,a
      0004CF E9               [12] 1836 	mov	a,r1
      0004D0 3D               [12] 1837 	addc	a,r5
      0004D1 F5 47            [12] 1838 	mov	(_temp_motorpw_alg6 + 1),a
      0004D3 EA               [12] 1839 	mov	a,r2
      0004D4 3E               [12] 1840 	addc	a,r6
      0004D5 F5 48            [12] 1841 	mov	(_temp_motorpw_alg6 + 2),a
      0004D7 EB               [12] 1842 	mov	a,r3
      0004D8 3F               [12] 1843 	addc	a,r7
      0004D9 F5 49            [12] 1844 	mov	(_temp_motorpw_alg6 + 3),a
                           00041C  1845 	C$worksheet_11.c$60$1$27 ==.
                                   1846 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:60: printf("Algorithm 6, four byte calculation of motorpw is %ld \r\n",temp_motorpw_alg6);
      0004DB C0 46            [24] 1847 	push	_temp_motorpw_alg6
      0004DD C0 47            [24] 1848 	push	(_temp_motorpw_alg6 + 1)
      0004DF C0 48            [24] 1849 	push	(_temp_motorpw_alg6 + 2)
      0004E1 C0 49            [24] 1850 	push	(_temp_motorpw_alg6 + 3)
      0004E3 74 0B            [12] 1851 	mov	a,#___str_6
      0004E5 C0 E0            [24] 1852 	push	acc
      0004E7 74 0D            [12] 1853 	mov	a,#(___str_6 >> 8)
      0004E9 C0 E0            [24] 1854 	push	acc
      0004EB 74 80            [12] 1855 	mov	a,#0x80
      0004ED C0 E0            [24] 1856 	push	acc
      0004EF 12 05 AB         [24] 1857 	lcall	_printf
      0004F2 E5 81            [12] 1858 	mov	a,sp
      0004F4 24 F9            [12] 1859 	add	a,#0xf9
      0004F6 F5 81            [12] 1860 	mov	sp,a
                           000439  1861 	C$worksheet_11.c$61$1$27 ==.
                                   1862 ;	C:\Users\Tim\Documents\LITEC\Lab6\worksheet_11.c:61: getchar();
      0004F8 12 01 13         [24] 1863 	lcall	_getchar
                           00043C  1864 	C$worksheet_11.c$62$1$27 ==.
                           00043C  1865 	XG$main$0$0 ==.
      0004FB 22               [24] 1866 	ret
                                   1867 	.area CSEG    (CODE)
                                   1868 	.area CONST   (CODE)
                           000000  1869 Fworksheet_11$__str_0$0$0 == .
      000BC6                       1870 ___str_0:
      000BC6 54 68 65 20 74 77 6F  1871 	.ascii "The two byte calculation of motorpw is %d "
             20 62 79 74 65 20 63
             61 6C 63 75 6C 61 74
             69 6F 6E 20 6F 66 20
             6D 6F 74 6F 72 70 77
             20 69 73 20 25 64 20
      000BF0 0D                    1872 	.db 0x0d
      000BF1 0A                    1873 	.db 0x0a
      000BF2 00                    1874 	.db 0x00
                           00002D  1875 Fworksheet_11$__str_1$0$0 == .
      000BF3                       1876 ___str_1:
      000BF3 41 6C 67 6F 72 69 74  1877 	.ascii "Algorithm 1, four byte calculation of motorpw is %ld "
             68 6D 20 31 2C 20 66
             6F 75 72 20 62 79 74
             65 20 63 61 6C 63 75
             6C 61 74 69 6F 6E 20
             6F 66 20 6D 6F 74 6F
             72 70 77 20 69 73 20
             25 6C 64 20
      000C28 0D                    1878 	.db 0x0d
      000C29 0A                    1879 	.db 0x0a
      000C2A 00                    1880 	.db 0x00
                           000065  1881 Fworksheet_11$__str_2$0$0 == .
      000C2B                       1882 ___str_2:
      000C2B 41 6C 67 6F 72 69 74  1883 	.ascii "Algorithm 2, four byte calculation of motorpw is %ld "
             68 6D 20 32 2C 20 66
             6F 75 72 20 62 79 74
             65 20 63 61 6C 63 75
             6C 61 74 69 6F 6E 20
             6F 66 20 6D 6F 74 6F
             72 70 77 20 69 73 20
             25 6C 64 20
      000C60 0D                    1884 	.db 0x0d
      000C61 0A                    1885 	.db 0x0a
      000C62 00                    1886 	.db 0x00
                           00009D  1887 Fworksheet_11$__str_3$0$0 == .
      000C63                       1888 ___str_3:
      000C63 41 6C 67 6F 72 69 74  1889 	.ascii "Algorithm 3, four byte calculation of motorpw is %ld "
             68 6D 20 33 2C 20 66
             6F 75 72 20 62 79 74
             65 20 63 61 6C 63 75
             6C 61 74 69 6F 6E 20
             6F 66 20 6D 6F 74 6F
             72 70 77 20 69 73 20
             25 6C 64 20
      000C98 0D                    1890 	.db 0x0d
      000C99 0A                    1891 	.db 0x0a
      000C9A 00                    1892 	.db 0x00
                           0000D5  1893 Fworksheet_11$__str_4$0$0 == .
      000C9B                       1894 ___str_4:
      000C9B 41 6C 67 6F 72 69 74  1895 	.ascii "Algorithm 4, four byte calculation of motorpw is %ld "
             68 6D 20 34 2C 20 66
             6F 75 72 20 62 79 74
             65 20 63 61 6C 63 75
             6C 61 74 69 6F 6E 20
             6F 66 20 6D 6F 74 6F
             72 70 77 20 69 73 20
             25 6C 64 20
      000CD0 0D                    1896 	.db 0x0d
      000CD1 0A                    1897 	.db 0x0a
      000CD2 00                    1898 	.db 0x00
                           00010D  1899 Fworksheet_11$__str_5$0$0 == .
      000CD3                       1900 ___str_5:
      000CD3 41 6C 67 6F 72 69 74  1901 	.ascii "Algorithm 5, four byte calculation of motorpw is %ld "
             68 6D 20 35 2C 20 66
             6F 75 72 20 62 79 74
             65 20 63 61 6C 63 75
             6C 61 74 69 6F 6E 20
             6F 66 20 6D 6F 74 6F
             72 70 77 20 69 73 20
             25 6C 64 20
      000D08 0D                    1902 	.db 0x0d
      000D09 0A                    1903 	.db 0x0a
      000D0A 00                    1904 	.db 0x00
                           000145  1905 Fworksheet_11$__str_6$0$0 == .
      000D0B                       1906 ___str_6:
      000D0B 41 6C 67 6F 72 69 74  1907 	.ascii "Algorithm 6, four byte calculation of motorpw is %ld "
             68 6D 20 36 2C 20 66
             6F 75 72 20 62 79 74
             65 20 63 61 6C 63 75
             6C 61 74 69 6F 6E 20
             6F 66 20 6D 6F 74 6F
             72 70 77 20 69 73 20
             25 6C 64 20
      000D40 0D                    1908 	.db 0x0d
      000D41 0A                    1909 	.db 0x0a
      000D42 00                    1910 	.db 0x00
                                   1911 	.area XINIT   (CODE)
                                   1912 	.area CABS    (ABS,CODE)
