                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.3.1 #8804 (Aug  6 2013) (Linux)
                                      4 ; This file was generated Mon Aug 25 13:28:50 2014
                                      5 ;--------------------------------------------------------
                                      6 	.module client
                                      7 	.optsdcc -mmcs51 --model-huge
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _autostart_processes
                                     13 	.globl _tcpip_handler
                                     14 	.globl _send_state
                                     15 	.globl _DelayMS
                                     16 	.globl _turn_on
                                     17 	.globl _turn_off
                                     18 	.globl _set_temp
                                     19 	.globl _login
                                     20 	.globl _InitUart
                                     21 	.globl _leds_toggle
                                     22 	.globl _uip_ds6_set_addr_iid
                                     23 	.globl _uip_ds6_addr_add
                                     24 	.globl _uip_udp_packet_sendto
                                     25 	.globl _udp_new
                                     26 	.globl _etimer_expired
                                     27 	.globl _etimer_set
                                     28 	.globl _memset
                                     29 	.globl _ACTIVE
                                     30 	.globl _TX_BYTE
                                     31 	.globl _RX_BYTE
                                     32 	.globl _ERR
                                     33 	.globl _FE
                                     34 	.globl _SLAVE
                                     35 	.globl _RE
                                     36 	.globl _MODE
                                     37 	.globl _T3OVFIF
                                     38 	.globl _T3CH0IF
                                     39 	.globl _T3CH1IF
                                     40 	.globl _T4OVFIF
                                     41 	.globl _T4CH0IF
                                     42 	.globl _T4CH1IF
                                     43 	.globl _OVFIM
                                     44 	.globl _B_0
                                     45 	.globl _B_1
                                     46 	.globl _B_2
                                     47 	.globl _B_3
                                     48 	.globl _B_4
                                     49 	.globl _B_5
                                     50 	.globl _B_6
                                     51 	.globl _B_7
                                     52 	.globl _P2IF
                                     53 	.globl _UTX0IF
                                     54 	.globl _UTX1IF
                                     55 	.globl _P1IF
                                     56 	.globl _WDTIF
                                     57 	.globl _ACC_0
                                     58 	.globl _ACC_1
                                     59 	.globl _ACC_2
                                     60 	.globl _ACC_3
                                     61 	.globl _ACC_4
                                     62 	.globl _ACC_5
                                     63 	.globl _ACC_6
                                     64 	.globl _ACC_7
                                     65 	.globl _P
                                     66 	.globl _F1
                                     67 	.globl _OV
                                     68 	.globl _RS0
                                     69 	.globl _RS1
                                     70 	.globl _F0
                                     71 	.globl _AC
                                     72 	.globl _CY
                                     73 	.globl _DMAIF
                                     74 	.globl _T1IF
                                     75 	.globl _T2IF
                                     76 	.globl _T3IF
                                     77 	.globl _T4IF
                                     78 	.globl _P0IF
                                     79 	.globl _STIF
                                     80 	.globl _DMAIE
                                     81 	.globl _T1IE
                                     82 	.globl _T2IE
                                     83 	.globl _T3IE
                                     84 	.globl _T4IE
                                     85 	.globl _P0IE
                                     86 	.globl _RFERRIE
                                     87 	.globl _ADCIE
                                     88 	.globl _URX0IE
                                     89 	.globl _URX1IE
                                     90 	.globl _ENCIE
                                     91 	.globl _STIE
                                     92 	.globl _EA
                                     93 	.globl _P2_0
                                     94 	.globl _P2_1
                                     95 	.globl _P2_2
                                     96 	.globl _P2_3
                                     97 	.globl _P2_4
                                     98 	.globl _P2_5
                                     99 	.globl _P2_6
                                    100 	.globl _P2_7
                                    101 	.globl _ENCIF_0
                                    102 	.globl _ENCIF_1
                                    103 	.globl _P1_0
                                    104 	.globl _P1_1
                                    105 	.globl _P1_2
                                    106 	.globl _P1_3
                                    107 	.globl _P1_4
                                    108 	.globl _P1_5
                                    109 	.globl _P1_6
                                    110 	.globl _P1_7
                                    111 	.globl _IT0
                                    112 	.globl _RFERRIF
                                    113 	.globl _IT1
                                    114 	.globl _URX0IF
                                    115 	.globl _ADCIF
                                    116 	.globl _URX1IF
                                    117 	.globl _P0_0
                                    118 	.globl _P0_1
                                    119 	.globl _P0_2
                                    120 	.globl _P0_3
                                    121 	.globl _P0_4
                                    122 	.globl _P0_5
                                    123 	.globl _P0_6
                                    124 	.globl _P0_7
                                    125 	.globl _WDCTL
                                    126 	.globl _U1GCR
                                    127 	.globl _U1UCR
                                    128 	.globl _U1BAUD
                                    129 	.globl _U1DBUF
                                    130 	.globl _U1CSR
                                    131 	.globl _U0GCR
                                    132 	.globl _U0UCR
                                    133 	.globl _U0BAUD
                                    134 	.globl _U0DBUF
                                    135 	.globl _U0CSR
                                    136 	.globl _TIMIF
                                    137 	.globl _T4CC1
                                    138 	.globl _T4CCTL1
                                    139 	.globl _T4CC0
                                    140 	.globl _T4CCTL0
                                    141 	.globl _T4CTL
                                    142 	.globl _T4CNT
                                    143 	.globl _T3CC1
                                    144 	.globl _T3CCTL1
                                    145 	.globl _T3CC0
                                    146 	.globl _T3CCTL0
                                    147 	.globl _T3CTL
                                    148 	.globl _T3CNT
                                    149 	.globl _T2MSEL
                                    150 	.globl _T2IRQM
                                    151 	.globl _T2MOVF2
                                    152 	.globl _T2MOVF1
                                    153 	.globl _T2MOVF0
                                    154 	.globl _T2M1
                                    155 	.globl _T2M0
                                    156 	.globl _T2IRQF
                                    157 	.globl _T2EVTCFG
                                    158 	.globl _T2CTRL
                                    159 	.globl _T1STAT
                                    160 	.globl _T1CCTL2
                                    161 	.globl _T1CCTL1
                                    162 	.globl _T1CCTL0
                                    163 	.globl _T1CTL
                                    164 	.globl _T1CNTH
                                    165 	.globl _T1CNTL
                                    166 	.globl _T1CC2H
                                    167 	.globl _T1CC2L
                                    168 	.globl _T1CC1H
                                    169 	.globl _T1CC1L
                                    170 	.globl _T1CC0H
                                    171 	.globl _T1CC0L
                                    172 	.globl _CLKCONSTA
                                    173 	.globl _CLKCONCMD
                                    174 	.globl _SLEEPSTA
                                    175 	.globl _SLEEPCMD
                                    176 	.globl _STLOAD
                                    177 	.globl _ST2
                                    178 	.globl _ST1
                                    179 	.globl _ST0
                                    180 	.globl _RFERRF
                                    181 	.globl _RFIRQF0
                                    182 	.globl _RFST
                                    183 	.globl _RFD
                                    184 	.globl _RFIRQF1
                                    185 	.globl _PSBANK
                                    186 	.globl _FMAP
                                    187 	.globl _MEMCTR
                                    188 	.globl __XPAGE
                                    189 	.globl _MPAGE
                                    190 	.globl _PMUX
                                    191 	.globl _P2DIR
                                    192 	.globl _P1DIR
                                    193 	.globl _P0DIR
                                    194 	.globl _P2INP
                                    195 	.globl _P1INP
                                    196 	.globl _P2SEL
                                    197 	.globl _P1SEL
                                    198 	.globl _P0SEL
                                    199 	.globl _APCFG
                                    200 	.globl _PERCFG
                                    201 	.globl _P0INP
                                    202 	.globl _P2IEN
                                    203 	.globl _P1IEN
                                    204 	.globl _P0IEN
                                    205 	.globl _PICTL
                                    206 	.globl _P2IFG
                                    207 	.globl _P1IFG
                                    208 	.globl _P0IFG
                                    209 	.globl _DMAREQ
                                    210 	.globl _DMAARM
                                    211 	.globl _DMA0CFGH
                                    212 	.globl _DMA0CFGL
                                    213 	.globl _DMA1CFGH
                                    214 	.globl _DMA1CFGL
                                    215 	.globl _DMAIRQ
                                    216 	.globl _ENCCS
                                    217 	.globl _ENCDO
                                    218 	.globl _ENCDI
                                    219 	.globl _RNDH
                                    220 	.globl _RNDL
                                    221 	.globl _ADCH
                                    222 	.globl _ADCL
                                    223 	.globl _ADCCON3
                                    224 	.globl _ADCCON2
                                    225 	.globl _ADCCON1
                                    226 	.globl _B
                                    227 	.globl _IRCON2
                                    228 	.globl _ACC
                                    229 	.globl _PSW
                                    230 	.globl _IRCON
                                    231 	.globl _IP1
                                    232 	.globl _IEN1
                                    233 	.globl _IP0
                                    234 	.globl _IEN0
                                    235 	.globl _P2
                                    236 	.globl _S1CON
                                    237 	.globl _IEN2
                                    238 	.globl _S0CON
                                    239 	.globl _DPS
                                    240 	.globl _P1
                                    241 	.globl _TCON
                                    242 	.globl _PCON
                                    243 	.globl _DPH1
                                    244 	.globl _DPL1
                                    245 	.globl _DPH0
                                    246 	.globl _DPL0
                                    247 	.globl _SP
                                    248 	.globl _P0
                                    249 	.globl _udp_client_process
                                    250 	.globl _onoff_now
                                    251 	.globl _oshi_now
                                    252 	.globl _temperature_now
                                    253 	.globl _sended_flag
                                    254 	.globl _light_state
                                    255 	.globl _server_ipaddr
                                    256 	.globl _X_IEEE_ADDR
                                    257 	.globl _X_INFOPAGE
                                    258 	.globl _X_P2DIR
                                    259 	.globl _X_P1DIR
                                    260 	.globl _X_P0DIR
                                    261 	.globl _X_U1GCR
                                    262 	.globl _X_U1UCR
                                    263 	.globl _X_U1BAUD
                                    264 	.globl _X_U1DBUF
                                    265 	.globl _X_U1CSR
                                    266 	.globl _X_P2INP
                                    267 	.globl _X_P1INP
                                    268 	.globl _X_P2SEL
                                    269 	.globl _X_P1SEL
                                    270 	.globl _X_P0SEL
                                    271 	.globl _X_APCFG
                                    272 	.globl _X_PERCFG
                                    273 	.globl _X_T4CC1
                                    274 	.globl _X_T4CCTL1
                                    275 	.globl _X_T4CC0
                                    276 	.globl _X_T4CCTL0
                                    277 	.globl _X_T4CTL
                                    278 	.globl _X_T4CNT
                                    279 	.globl _X_RFIRQF0
                                    280 	.globl _X_T1CCTL2
                                    281 	.globl _X_T1CCTL1
                                    282 	.globl _X_T1CCTL0
                                    283 	.globl _X_T1CTL
                                    284 	.globl _X_T1CNTH
                                    285 	.globl _X_T1CNTL
                                    286 	.globl _X_RFST
                                    287 	.globl _X_T1CC2H
                                    288 	.globl _X_T1CC2L
                                    289 	.globl _X_T1CC1H
                                    290 	.globl _X_T1CC1L
                                    291 	.globl _X_T1CC0H
                                    292 	.globl _X_T1CC0L
                                    293 	.globl _X_RFD
                                    294 	.globl _X_TIMIF
                                    295 	.globl _X_DMAREQ
                                    296 	.globl _X_DMAARM
                                    297 	.globl _X_DMA0CFGH
                                    298 	.globl _X_DMA0CFGL
                                    299 	.globl _X_DMA1CFGH
                                    300 	.globl _X_DMA1CFGL
                                    301 	.globl _X_DMAIRQ
                                    302 	.globl _X_T3CC1
                                    303 	.globl _X_T3CCTL1
                                    304 	.globl _X_T3CC0
                                    305 	.globl _X_T3CCTL0
                                    306 	.globl _X_T3CTL
                                    307 	.globl _X_T3CNT
                                    308 	.globl _X_WDCTL
                                    309 	.globl _X_MEMCTR
                                    310 	.globl _X_CLKCONCMD
                                    311 	.globl _X_U0GCR
                                    312 	.globl _X_U0UCR
                                    313 	.globl _X_T2MSEL
                                    314 	.globl _X_U0BAUD
                                    315 	.globl _X_U0DBUF
                                    316 	.globl _X_RFERRF
                                    317 	.globl _X_SLEEPCMD
                                    318 	.globl _X_RNDH
                                    319 	.globl _X_RNDL
                                    320 	.globl _X_ADCH
                                    321 	.globl _X_ADCL
                                    322 	.globl _X_ADCCON3
                                    323 	.globl _X_ADCCON2
                                    324 	.globl _X_ADCCON1
                                    325 	.globl _X_ENCCS
                                    326 	.globl _X_ENCDO
                                    327 	.globl _X_ENCDI
                                    328 	.globl _X_T1STAT
                                    329 	.globl _X_PMUX
                                    330 	.globl _X_STLOAD
                                    331 	.globl _X_P2IEN
                                    332 	.globl _X_P0IEN
                                    333 	.globl _X_T2IRQM
                                    334 	.globl _X_T2MOVF2
                                    335 	.globl _X_T2MOVF1
                                    336 	.globl _X_T2MOVF0
                                    337 	.globl _X_T2M1
                                    338 	.globl _X_T2M0
                                    339 	.globl _X_T2IRQF
                                    340 	.globl _X_P2
                                    341 	.globl _X_PSBANK
                                    342 	.globl _X_FMAP
                                    343 	.globl _X_CLKCONSTA
                                    344 	.globl _X_SLEEPSTA
                                    345 	.globl _X_T2EVTCFG
                                    346 	.globl _X_ST2
                                    347 	.globl _X_ST1
                                    348 	.globl _X_ST0
                                    349 	.globl _X_T2CTRL
                                    350 	.globl _X__XPAGE
                                    351 	.globl _X_MPAGE
                                    352 	.globl _X_RFIRQF1
                                    353 	.globl _X_P1
                                    354 	.globl _X_P0INP
                                    355 	.globl _X_P1IEN
                                    356 	.globl _X_PICTL
                                    357 	.globl _X_P2IFG
                                    358 	.globl _X_P1IFG
                                    359 	.globl _X_P0IFG
                                    360 	.globl _X_U0CSR
                                    361 	.globl _X_P0
                                    362 	.globl _USBF5
                                    363 	.globl _USBF4
                                    364 	.globl _USBF3
                                    365 	.globl _USBF2
                                    366 	.globl _USBF1
                                    367 	.globl _USBF0
                                    368 	.globl _USBCNTH
                                    369 	.globl _USBCNTL
                                    370 	.globl _USBCNT0
                                    371 	.globl _USBCSOH
                                    372 	.globl _USBCSOL
                                    373 	.globl _USBMAXO
                                    374 	.globl _USBCSIH
                                    375 	.globl _USBCSIL
                                    376 	.globl _USBCS0
                                    377 	.globl _USBMAXI
                                    378 	.globl _USBCTRL
                                    379 	.globl _USBINDEX
                                    380 	.globl _USBFRMH
                                    381 	.globl _USBFRML
                                    382 	.globl _USBCIE
                                    383 	.globl _USBOIE
                                    384 	.globl _USBIIE
                                    385 	.globl _USBCIF
                                    386 	.globl _USBOIF
                                    387 	.globl _USBIIF
                                    388 	.globl _USBPOW
                                    389 	.globl _USBADDR
                                    390 	.globl _CSPT
                                    391 	.globl _CSPZ
                                    392 	.globl _CSPY
                                    393 	.globl _CSPX
                                    394 	.globl _CSPSTAT
                                    395 	.globl _CSPCTRL
                                    396 	.globl _CSPPROG23
                                    397 	.globl _CSPPROG22
                                    398 	.globl _CSPPROG21
                                    399 	.globl _CSPPROG20
                                    400 	.globl _CSPPROG19
                                    401 	.globl _CSPPROG18
                                    402 	.globl _CSPPROG17
                                    403 	.globl _CSPPROG16
                                    404 	.globl _CSPPROG15
                                    405 	.globl _CSPPROG14
                                    406 	.globl _CSPPROG13
                                    407 	.globl _CSPPROG12
                                    408 	.globl _CSPPROG11
                                    409 	.globl _CSPPROG10
                                    410 	.globl _CSPPROG9
                                    411 	.globl _CSPPROG8
                                    412 	.globl _CSPPROG7
                                    413 	.globl _CSPPROG6
                                    414 	.globl _CSPPROG5
                                    415 	.globl _CSPPROG4
                                    416 	.globl _CSPPROG3
                                    417 	.globl _CSPPROG2
                                    418 	.globl _CSPPROG1
                                    419 	.globl _CSPPROG0
                                    420 	.globl _RFC_OBS_CTRL2
                                    421 	.globl _RFC_OBS_CTRL1
                                    422 	.globl _RFC_OBS_CTRL0
                                    423 	.globl _TXFILTCFG
                                    424 	.globl _PTEST1
                                    425 	.globl _PTEST0
                                    426 	.globl _ATEST
                                    427 	.globl _DACTEST2
                                    428 	.globl _DACTEST1
                                    429 	.globl _DACTEST0
                                    430 	.globl _MDMTEST1
                                    431 	.globl _MDMTEST0
                                    432 	.globl _ADCTEST2
                                    433 	.globl _ADCTEST1
                                    434 	.globl _ADCTEST0
                                    435 	.globl _AGCCTRL3
                                    436 	.globl _AGCCTRL2
                                    437 	.globl _AGCCTRL1
                                    438 	.globl _AGCCTRL0
                                    439 	.globl _FSCAL3
                                    440 	.globl _FSCAL2
                                    441 	.globl _FSCAL1
                                    442 	.globl _FSCAL0
                                    443 	.globl _FSCTRL
                                    444 	.globl _RXCTRL
                                    445 	.globl _FREQEST
                                    446 	.globl _MDMCTRL1
                                    447 	.globl _MDMCTRL0
                                    448 	.globl _RFRND
                                    449 	.globl _RFERRM
                                    450 	.globl _RFIRQM1
                                    451 	.globl _RFIRQM0
                                    452 	.globl _TXLAST_PTR
                                    453 	.globl _TXFIRST_PTR
                                    454 	.globl _RXP1_PTR
                                    455 	.globl _RXLAST_PTR
                                    456 	.globl _RXFIRST_PTR
                                    457 	.globl _TXFIFOCNT
                                    458 	.globl _RXFIFOCNT
                                    459 	.globl _RXFIRST
                                    460 	.globl _RSSISTAT
                                    461 	.globl _RSSI
                                    462 	.globl _CCACTRL1
                                    463 	.globl _CCACTRL0
                                    464 	.globl _FSMCTRL
                                    465 	.globl _FIFOPCTRL
                                    466 	.globl _FSMSTAT1
                                    467 	.globl _FSMSTAT0
                                    468 	.globl _TXCTRL
                                    469 	.globl _TXPOWER
                                    470 	.globl _FREQCTRL
                                    471 	.globl _FREQTUNE
                                    472 	.globl _RXMASKCLR
                                    473 	.globl _RXMASKSET
                                    474 	.globl _RXENABLE
                                    475 	.globl _FRMCTRL1
                                    476 	.globl _FRMCTRL0
                                    477 	.globl _SRCEXTEN2
                                    478 	.globl _SRCEXTEN1
                                    479 	.globl _SRCEXTEN0
                                    480 	.globl _SRCSHORTEN2
                                    481 	.globl _SRCSHORTEN1
                                    482 	.globl _SRCSHORTEN0
                                    483 	.globl _SRCMATCH
                                    484 	.globl _FRMFILT1
                                    485 	.globl _FRMFILT0
                                    486 	.globl _SHORT_ADDR1
                                    487 	.globl _SHORT_ADDR0
                                    488 	.globl _PAN_ID1
                                    489 	.globl _PAN_ID0
                                    490 	.globl _EXT_ADDR7
                                    491 	.globl _EXT_ADDR6
                                    492 	.globl _EXT_ADDR5
                                    493 	.globl _EXT_ADDR4
                                    494 	.globl _EXT_ADDR3
                                    495 	.globl _EXT_ADDR2
                                    496 	.globl _EXT_ADDR1
                                    497 	.globl _EXT_ADDR0
                                    498 	.globl _SRCSHORTPENDEN2
                                    499 	.globl _SRCSHORTPENDEN1
                                    500 	.globl _SRCSHORTPENDEN0
                                    501 	.globl _SRCEXTPENDEN2
                                    502 	.globl _SRCEXTPENDEN1
                                    503 	.globl _SRCEXTPENDEN0
                                    504 	.globl _SRCRESINDEX
                                    505 	.globl _SRCRESMASK2
                                    506 	.globl _SRCRESMASK1
                                    507 	.globl _SRCRESMASK0
                                    508 	.globl _SRC_ADDR_TABLE
                                    509 	.globl _TXFIFO
                                    510 	.globl _RXFIFO
                                    511 	.globl _RFCORE_RAM
                                    512 	.globl _CMPCTL
                                    513 	.globl _OPAMPS
                                    514 	.globl _OPAMPC
                                    515 	.globl _STCV2
                                    516 	.globl _STCV1
                                    517 	.globl _STCV0
                                    518 	.globl _STCS
                                    519 	.globl _STCC
                                    520 	.globl _T1CC4H
                                    521 	.globl _T1CC4L
                                    522 	.globl _T1CC3H
                                    523 	.globl _T1CC3L
                                    524 	.globl _XX_T1CC2H
                                    525 	.globl _XX_T1CC2L
                                    526 	.globl _XX_T1CC1H
                                    527 	.globl _XX_T1CC1L
                                    528 	.globl _XX_T1CC0H
                                    529 	.globl _XX_T1CC0L
                                    530 	.globl _T1CCTL4
                                    531 	.globl _T1CCTL3
                                    532 	.globl _XX_T1CCTL2
                                    533 	.globl _XX_T1CCTL1
                                    534 	.globl _XX_T1CCTL0
                                    535 	.globl _CLD
                                    536 	.globl _IRCTL
                                    537 	.globl _CHIPINFO1
                                    538 	.globl _CHIPINFO0
                                    539 	.globl _FWDATA
                                    540 	.globl _FADDRH
                                    541 	.globl _FADDRL
                                    542 	.globl _FCTL
                                    543 	.globl _IVCTRL
                                    544 	.globl _BATTMON
                                    545 	.globl _SRCRC
                                    546 	.globl _DBGDATA
                                    547 	.globl _TESTREG0
                                    548 	.globl _CHIPID
                                    549 	.globl _CHVER
                                    550 	.globl _OBSSEL5
                                    551 	.globl _OBSSEL4
                                    552 	.globl _OBSSEL3
                                    553 	.globl _OBSSEL2
                                    554 	.globl _OBSSEL1
                                    555 	.globl _OBSSEL0
                                    556 	.globl _I2CIO
                                    557 	.globl _I2CWC
                                    558 	.globl _I2CADDR
                                    559 	.globl _I2CDATA
                                    560 	.globl _I2CSTAT
                                    561 	.globl _I2CCFG
                                    562 	.globl _OPAMPMC
                                    563 	.globl _MONMUX
                                    564 ;--------------------------------------------------------
                                    565 ; special function registers
                                    566 ;--------------------------------------------------------
                                    567 	.area RSEG    (ABS,DATA)
      000000                        568 	.org 0x0000
                           000080   569 _P0	=	0x0080
                           000081   570 _SP	=	0x0081
                           000082   571 _DPL0	=	0x0082
                           000083   572 _DPH0	=	0x0083
                           000084   573 _DPL1	=	0x0084
                           000085   574 _DPH1	=	0x0085
                           000087   575 _PCON	=	0x0087
                           000088   576 _TCON	=	0x0088
                           000090   577 _P1	=	0x0090
                           000092   578 _DPS	=	0x0092
                           000098   579 _S0CON	=	0x0098
                           00009A   580 _IEN2	=	0x009a
                           00009B   581 _S1CON	=	0x009b
                           0000A0   582 _P2	=	0x00a0
                           0000A8   583 _IEN0	=	0x00a8
                           0000A9   584 _IP0	=	0x00a9
                           0000B8   585 _IEN1	=	0x00b8
                           0000B9   586 _IP1	=	0x00b9
                           0000C0   587 _IRCON	=	0x00c0
                           0000D0   588 _PSW	=	0x00d0
                           0000E0   589 _ACC	=	0x00e0
                           0000E8   590 _IRCON2	=	0x00e8
                           0000F0   591 _B	=	0x00f0
                           0000B4   592 _ADCCON1	=	0x00b4
                           0000B5   593 _ADCCON2	=	0x00b5
                           0000B6   594 _ADCCON3	=	0x00b6
                           0000BA   595 _ADCL	=	0x00ba
                           0000BB   596 _ADCH	=	0x00bb
                           0000BC   597 _RNDL	=	0x00bc
                           0000BD   598 _RNDH	=	0x00bd
                           0000B1   599 _ENCDI	=	0x00b1
                           0000B2   600 _ENCDO	=	0x00b2
                           0000B3   601 _ENCCS	=	0x00b3
                           0000D1   602 _DMAIRQ	=	0x00d1
                           0000D2   603 _DMA1CFGL	=	0x00d2
                           0000D3   604 _DMA1CFGH	=	0x00d3
                           0000D4   605 _DMA0CFGL	=	0x00d4
                           0000D5   606 _DMA0CFGH	=	0x00d5
                           0000D6   607 _DMAARM	=	0x00d6
                           0000D7   608 _DMAREQ	=	0x00d7
                           000089   609 _P0IFG	=	0x0089
                           00008A   610 _P1IFG	=	0x008a
                           00008B   611 _P2IFG	=	0x008b
                           00008C   612 _PICTL	=	0x008c
                           0000AB   613 _P0IEN	=	0x00ab
                           00008D   614 _P1IEN	=	0x008d
                           0000AC   615 _P2IEN	=	0x00ac
                           00008F   616 _P0INP	=	0x008f
                           0000F1   617 _PERCFG	=	0x00f1
                           0000F2   618 _APCFG	=	0x00f2
                           0000F3   619 _P0SEL	=	0x00f3
                           0000F4   620 _P1SEL	=	0x00f4
                           0000F5   621 _P2SEL	=	0x00f5
                           0000F6   622 _P1INP	=	0x00f6
                           0000F7   623 _P2INP	=	0x00f7
                           0000FD   624 _P0DIR	=	0x00fd
                           0000FE   625 _P1DIR	=	0x00fe
                           0000FF   626 _P2DIR	=	0x00ff
                           0000AE   627 _PMUX	=	0x00ae
                           000093   628 _MPAGE	=	0x0093
                           000093   629 __XPAGE	=	0x0093
                           0000C7   630 _MEMCTR	=	0x00c7
                           00009F   631 _FMAP	=	0x009f
                           00009F   632 _PSBANK	=	0x009f
                           000091   633 _RFIRQF1	=	0x0091
                           0000D9   634 _RFD	=	0x00d9
                           0000E1   635 _RFST	=	0x00e1
                           0000E9   636 _RFIRQF0	=	0x00e9
                           0000BF   637 _RFERRF	=	0x00bf
                           000095   638 _ST0	=	0x0095
                           000096   639 _ST1	=	0x0096
                           000097   640 _ST2	=	0x0097
                           0000AD   641 _STLOAD	=	0x00ad
                           0000BE   642 _SLEEPCMD	=	0x00be
                           00009D   643 _SLEEPSTA	=	0x009d
                           0000C6   644 _CLKCONCMD	=	0x00c6
                           00009E   645 _CLKCONSTA	=	0x009e
                           0000DA   646 _T1CC0L	=	0x00da
                           0000DB   647 _T1CC0H	=	0x00db
                           0000DC   648 _T1CC1L	=	0x00dc
                           0000DD   649 _T1CC1H	=	0x00dd
                           0000DE   650 _T1CC2L	=	0x00de
                           0000DF   651 _T1CC2H	=	0x00df
                           0000E2   652 _T1CNTL	=	0x00e2
                           0000E3   653 _T1CNTH	=	0x00e3
                           0000E4   654 _T1CTL	=	0x00e4
                           0000E5   655 _T1CCTL0	=	0x00e5
                           0000E6   656 _T1CCTL1	=	0x00e6
                           0000E7   657 _T1CCTL2	=	0x00e7
                           0000AF   658 _T1STAT	=	0x00af
                           000094   659 _T2CTRL	=	0x0094
                           00009C   660 _T2EVTCFG	=	0x009c
                           0000A1   661 _T2IRQF	=	0x00a1
                           0000A2   662 _T2M0	=	0x00a2
                           0000A3   663 _T2M1	=	0x00a3
                           0000A4   664 _T2MOVF0	=	0x00a4
                           0000A5   665 _T2MOVF1	=	0x00a5
                           0000A6   666 _T2MOVF2	=	0x00a6
                           0000A7   667 _T2IRQM	=	0x00a7
                           0000C3   668 _T2MSEL	=	0x00c3
                           0000CA   669 _T3CNT	=	0x00ca
                           0000CB   670 _T3CTL	=	0x00cb
                           0000CC   671 _T3CCTL0	=	0x00cc
                           0000CD   672 _T3CC0	=	0x00cd
                           0000CE   673 _T3CCTL1	=	0x00ce
                           0000CF   674 _T3CC1	=	0x00cf
                           0000EA   675 _T4CNT	=	0x00ea
                           0000EB   676 _T4CTL	=	0x00eb
                           0000EC   677 _T4CCTL0	=	0x00ec
                           0000ED   678 _T4CC0	=	0x00ed
                           0000EE   679 _T4CCTL1	=	0x00ee
                           0000EF   680 _T4CC1	=	0x00ef
                           0000D8   681 _TIMIF	=	0x00d8
                           000086   682 _U0CSR	=	0x0086
                           0000C1   683 _U0DBUF	=	0x00c1
                           0000C2   684 _U0BAUD	=	0x00c2
                           0000C4   685 _U0UCR	=	0x00c4
                           0000C5   686 _U0GCR	=	0x00c5
                           0000F8   687 _U1CSR	=	0x00f8
                           0000F9   688 _U1DBUF	=	0x00f9
                           0000FA   689 _U1BAUD	=	0x00fa
                           0000FB   690 _U1UCR	=	0x00fb
                           0000FC   691 _U1GCR	=	0x00fc
                           0000C9   692 _WDCTL	=	0x00c9
                                    693 ;--------------------------------------------------------
                                    694 ; special function bits
                                    695 ;--------------------------------------------------------
                                    696 	.area RSEG    (ABS,DATA)
      000000                        697 	.org 0x0000
                           000087   698 _P0_7	=	0x0087
                           000086   699 _P0_6	=	0x0086
                           000085   700 _P0_5	=	0x0085
                           000084   701 _P0_4	=	0x0084
                           000083   702 _P0_3	=	0x0083
                           000082   703 _P0_2	=	0x0082
                           000081   704 _P0_1	=	0x0081
                           000080   705 _P0_0	=	0x0080
                           00008F   706 _URX1IF	=	0x008f
                           00008D   707 _ADCIF	=	0x008d
                           00008B   708 _URX0IF	=	0x008b
                           00008A   709 _IT1	=	0x008a
                           000089   710 _RFERRIF	=	0x0089
                           000088   711 _IT0	=	0x0088
                           000097   712 _P1_7	=	0x0097
                           000096   713 _P1_6	=	0x0096
                           000095   714 _P1_5	=	0x0095
                           000094   715 _P1_4	=	0x0094
                           000093   716 _P1_3	=	0x0093
                           000092   717 _P1_2	=	0x0092
                           000091   718 _P1_1	=	0x0091
                           000090   719 _P1_0	=	0x0090
                           000099   720 _ENCIF_1	=	0x0099
                           000098   721 _ENCIF_0	=	0x0098
                           0000A7   722 _P2_7	=	0x00a7
                           0000A6   723 _P2_6	=	0x00a6
                           0000A5   724 _P2_5	=	0x00a5
                           0000A4   725 _P2_4	=	0x00a4
                           0000A3   726 _P2_3	=	0x00a3
                           0000A2   727 _P2_2	=	0x00a2
                           0000A1   728 _P2_1	=	0x00a1
                           0000A0   729 _P2_0	=	0x00a0
                           0000AF   730 _EA	=	0x00af
                           0000AD   731 _STIE	=	0x00ad
                           0000AC   732 _ENCIE	=	0x00ac
                           0000AB   733 _URX1IE	=	0x00ab
                           0000AA   734 _URX0IE	=	0x00aa
                           0000A9   735 _ADCIE	=	0x00a9
                           0000A8   736 _RFERRIE	=	0x00a8
                           0000BD   737 _P0IE	=	0x00bd
                           0000BC   738 _T4IE	=	0x00bc
                           0000BB   739 _T3IE	=	0x00bb
                           0000BA   740 _T2IE	=	0x00ba
                           0000B9   741 _T1IE	=	0x00b9
                           0000B8   742 _DMAIE	=	0x00b8
                           0000C7   743 _STIF	=	0x00c7
                           0000C5   744 _P0IF	=	0x00c5
                           0000C4   745 _T4IF	=	0x00c4
                           0000C3   746 _T3IF	=	0x00c3
                           0000C2   747 _T2IF	=	0x00c2
                           0000C1   748 _T1IF	=	0x00c1
                           0000C0   749 _DMAIF	=	0x00c0
                           0000D7   750 _CY	=	0x00d7
                           0000D6   751 _AC	=	0x00d6
                           0000D5   752 _F0	=	0x00d5
                           0000D4   753 _RS1	=	0x00d4
                           0000D3   754 _RS0	=	0x00d3
                           0000D2   755 _OV	=	0x00d2
                           0000D1   756 _F1	=	0x00d1
                           0000D0   757 _P	=	0x00d0
                           0000E7   758 _ACC_7	=	0x00e7
                           0000E6   759 _ACC_6	=	0x00e6
                           0000E5   760 _ACC_5	=	0x00e5
                           0000E4   761 _ACC_4	=	0x00e4
                           0000E3   762 _ACC_3	=	0x00e3
                           0000E2   763 _ACC_2	=	0x00e2
                           0000E1   764 _ACC_1	=	0x00e1
                           0000E0   765 _ACC_0	=	0x00e0
                           0000EC   766 _WDTIF	=	0x00ec
                           0000EB   767 _P1IF	=	0x00eb
                           0000EA   768 _UTX1IF	=	0x00ea
                           0000E9   769 _UTX0IF	=	0x00e9
                           0000E8   770 _P2IF	=	0x00e8
                           0000F7   771 _B_7	=	0x00f7
                           0000F6   772 _B_6	=	0x00f6
                           0000F5   773 _B_5	=	0x00f5
                           0000F4   774 _B_4	=	0x00f4
                           0000F3   775 _B_3	=	0x00f3
                           0000F2   776 _B_2	=	0x00f2
                           0000F1   777 _B_1	=	0x00f1
                           0000F0   778 _B_0	=	0x00f0
                           0000DE   779 _OVFIM	=	0x00de
                           0000DD   780 _T4CH1IF	=	0x00dd
                           0000DC   781 _T4CH0IF	=	0x00dc
                           0000DB   782 _T4OVFIF	=	0x00db
                           0000DA   783 _T3CH1IF	=	0x00da
                           0000D9   784 _T3CH0IF	=	0x00d9
                           0000D8   785 _T3OVFIF	=	0x00d8
                           0000FF   786 _MODE	=	0x00ff
                           0000FE   787 _RE	=	0x00fe
                           0000FD   788 _SLAVE	=	0x00fd
                           0000FC   789 _FE	=	0x00fc
                           0000FB   790 _ERR	=	0x00fb
                           0000FA   791 _RX_BYTE	=	0x00fa
                           0000F9   792 _TX_BYTE	=	0x00f9
                           0000F8   793 _ACTIVE	=	0x00f8
                                    794 ;--------------------------------------------------------
                                    795 ; overlayable register banks
                                    796 ;--------------------------------------------------------
                                    797 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        798 	.ds 8
                                    799 ;--------------------------------------------------------
                                    800 ; internal ram data
                                    801 ;--------------------------------------------------------
                                    802 	.area DSEG    (DATA)
                                    803 ;--------------------------------------------------------
                                    804 ; overlayable items in internal ram 
                                    805 ;--------------------------------------------------------
                                    806 ;--------------------------------------------------------
                                    807 ; indirectly addressable internal ram data
                                    808 ;--------------------------------------------------------
                                    809 	.area ISEG    (DATA)
                                    810 ;--------------------------------------------------------
                                    811 ; absolute internal ram data
                                    812 ;--------------------------------------------------------
                                    813 	.area IABS    (ABS,DATA)
                                    814 	.area IABS    (ABS,DATA)
                                    815 ;--------------------------------------------------------
                                    816 ; bit data
                                    817 ;--------------------------------------------------------
                                    818 	.area BSEG    (BIT)
                                    819 ;--------------------------------------------------------
                                    820 ; paged external ram data
                                    821 ;--------------------------------------------------------
                                    822 	.area PSEG    (PAG,XDATA)
                                    823 ;--------------------------------------------------------
                                    824 ; external ram data
                                    825 ;--------------------------------------------------------
                                    826 	.area XSEG    (XDATA)
                           0061A6   827 _MONMUX	=	0x61a6
                           0061A6   828 _OPAMPMC	=	0x61a6
                           006230   829 _I2CCFG	=	0x6230
                           006231   830 _I2CSTAT	=	0x6231
                           006232   831 _I2CDATA	=	0x6232
                           006233   832 _I2CADDR	=	0x6233
                           006234   833 _I2CWC	=	0x6234
                           006235   834 _I2CIO	=	0x6235
                           006243   835 _OBSSEL0	=	0x6243
                           006244   836 _OBSSEL1	=	0x6244
                           006245   837 _OBSSEL2	=	0x6245
                           006246   838 _OBSSEL3	=	0x6246
                           006247   839 _OBSSEL4	=	0x6247
                           006248   840 _OBSSEL5	=	0x6248
                           006249   841 _CHVER	=	0x6249
                           00624A   842 _CHIPID	=	0x624a
                           00624B   843 _TESTREG0	=	0x624b
                           006260   844 _DBGDATA	=	0x6260
                           006262   845 _SRCRC	=	0x6262
                           006264   846 _BATTMON	=	0x6264
                           006265   847 _IVCTRL	=	0x6265
                           006270   848 _FCTL	=	0x6270
                           006271   849 _FADDRL	=	0x6271
                           006272   850 _FADDRH	=	0x6272
                           006273   851 _FWDATA	=	0x6273
                           006276   852 _CHIPINFO0	=	0x6276
                           006277   853 _CHIPINFO1	=	0x6277
                           006281   854 _IRCTL	=	0x6281
                           006290   855 _CLD	=	0x6290
                           0062A0   856 _XX_T1CCTL0	=	0x62a0
                           0062A1   857 _XX_T1CCTL1	=	0x62a1
                           0062A2   858 _XX_T1CCTL2	=	0x62a2
                           0062A3   859 _T1CCTL3	=	0x62a3
                           0062A4   860 _T1CCTL4	=	0x62a4
                           0062A6   861 _XX_T1CC0L	=	0x62a6
                           0062A7   862 _XX_T1CC0H	=	0x62a7
                           0062A8   863 _XX_T1CC1L	=	0x62a8
                           0062A9   864 _XX_T1CC1H	=	0x62a9
                           0062AA   865 _XX_T1CC2L	=	0x62aa
                           0062AB   866 _XX_T1CC2H	=	0x62ab
                           0062AC   867 _T1CC3L	=	0x62ac
                           0062AD   868 _T1CC3H	=	0x62ad
                           0062AE   869 _T1CC4L	=	0x62ae
                           0062AF   870 _T1CC4H	=	0x62af
                           0062B0   871 _STCC	=	0x62b0
                           0062B1   872 _STCS	=	0x62b1
                           0062B2   873 _STCV0	=	0x62b2
                           0062B3   874 _STCV1	=	0x62b3
                           0062B4   875 _STCV2	=	0x62b4
                           0062C0   876 _OPAMPC	=	0x62c0
                           0062C1   877 _OPAMPS	=	0x62c1
                           0062D0   878 _CMPCTL	=	0x62d0
                           006000   879 _RFCORE_RAM	=	0x6000
                           006000   880 _RXFIFO	=	0x6000
                           006080   881 _TXFIFO	=	0x6080
                           006100   882 _SRC_ADDR_TABLE	=	0x6100
                           006160   883 _SRCRESMASK0	=	0x6160
                           006161   884 _SRCRESMASK1	=	0x6161
                           006162   885 _SRCRESMASK2	=	0x6162
                           006163   886 _SRCRESINDEX	=	0x6163
                           006164   887 _SRCEXTPENDEN0	=	0x6164
                           006165   888 _SRCEXTPENDEN1	=	0x6165
                           006166   889 _SRCEXTPENDEN2	=	0x6166
                           006167   890 _SRCSHORTPENDEN0	=	0x6167
                           006168   891 _SRCSHORTPENDEN1	=	0x6168
                           006169   892 _SRCSHORTPENDEN2	=	0x6169
                           00616A   893 _EXT_ADDR0	=	0x616a
                           00616B   894 _EXT_ADDR1	=	0x616b
                           00616C   895 _EXT_ADDR2	=	0x616c
                           00616D   896 _EXT_ADDR3	=	0x616d
                           00616E   897 _EXT_ADDR4	=	0x616e
                           00616F   898 _EXT_ADDR5	=	0x616f
                           006170   899 _EXT_ADDR6	=	0x6170
                           006171   900 _EXT_ADDR7	=	0x6171
                           006172   901 _PAN_ID0	=	0x6172
                           006173   902 _PAN_ID1	=	0x6173
                           006174   903 _SHORT_ADDR0	=	0x6174
                           006175   904 _SHORT_ADDR1	=	0x6175
                           006180   905 _FRMFILT0	=	0x6180
                           006181   906 _FRMFILT1	=	0x6181
                           006182   907 _SRCMATCH	=	0x6182
                           006183   908 _SRCSHORTEN0	=	0x6183
                           006184   909 _SRCSHORTEN1	=	0x6184
                           006185   910 _SRCSHORTEN2	=	0x6185
                           006186   911 _SRCEXTEN0	=	0x6186
                           006187   912 _SRCEXTEN1	=	0x6187
                           006188   913 _SRCEXTEN2	=	0x6188
                           006189   914 _FRMCTRL0	=	0x6189
                           00618A   915 _FRMCTRL1	=	0x618a
                           00618B   916 _RXENABLE	=	0x618b
                           00618C   917 _RXMASKSET	=	0x618c
                           00618D   918 _RXMASKCLR	=	0x618d
                           00618E   919 _FREQTUNE	=	0x618e
                           00618F   920 _FREQCTRL	=	0x618f
                           006190   921 _TXPOWER	=	0x6190
                           006191   922 _TXCTRL	=	0x6191
                           006192   923 _FSMSTAT0	=	0x6192
                           006193   924 _FSMSTAT1	=	0x6193
                           006194   925 _FIFOPCTRL	=	0x6194
                           006195   926 _FSMCTRL	=	0x6195
                           006196   927 _CCACTRL0	=	0x6196
                           006197   928 _CCACTRL1	=	0x6197
                           006198   929 _RSSI	=	0x6198
                           006199   930 _RSSISTAT	=	0x6199
                           00619A   931 _RXFIRST	=	0x619a
                           00619B   932 _RXFIFOCNT	=	0x619b
                           00619C   933 _TXFIFOCNT	=	0x619c
                           00619D   934 _RXFIRST_PTR	=	0x619d
                           00619E   935 _RXLAST_PTR	=	0x619e
                           00619F   936 _RXP1_PTR	=	0x619f
                           0061A1   937 _TXFIRST_PTR	=	0x61a1
                           0061A2   938 _TXLAST_PTR	=	0x61a2
                           0061A3   939 _RFIRQM0	=	0x61a3
                           0061A4   940 _RFIRQM1	=	0x61a4
                           0061A5   941 _RFERRM	=	0x61a5
                           0061A7   942 _RFRND	=	0x61a7
                           0061A8   943 _MDMCTRL0	=	0x61a8
                           0061A9   944 _MDMCTRL1	=	0x61a9
                           0061AA   945 _FREQEST	=	0x61aa
                           0061AB   946 _RXCTRL	=	0x61ab
                           0061AC   947 _FSCTRL	=	0x61ac
                           0061AD   948 _FSCAL0	=	0x61ad
                           0061AE   949 _FSCAL1	=	0x61ae
                           0061AF   950 _FSCAL2	=	0x61af
                           0061B0   951 _FSCAL3	=	0x61b0
                           0061B1   952 _AGCCTRL0	=	0x61b1
                           0061B2   953 _AGCCTRL1	=	0x61b2
                           0061B3   954 _AGCCTRL2	=	0x61b3
                           0061B4   955 _AGCCTRL3	=	0x61b4
                           0061B5   956 _ADCTEST0	=	0x61b5
                           0061B6   957 _ADCTEST1	=	0x61b6
                           0061B7   958 _ADCTEST2	=	0x61b7
                           0061B8   959 _MDMTEST0	=	0x61b8
                           0061B9   960 _MDMTEST1	=	0x61b9
                           0061BA   961 _DACTEST0	=	0x61ba
                           0061BB   962 _DACTEST1	=	0x61bb
                           0061BC   963 _DACTEST2	=	0x61bc
                           0061BD   964 _ATEST	=	0x61bd
                           0061BE   965 _PTEST0	=	0x61be
                           0061BF   966 _PTEST1	=	0x61bf
                           0061FA   967 _TXFILTCFG	=	0x61fa
                           0061EB   968 _RFC_OBS_CTRL0	=	0x61eb
                           0061EC   969 _RFC_OBS_CTRL1	=	0x61ec
                           0061ED   970 _RFC_OBS_CTRL2	=	0x61ed
                           0061C0   971 _CSPPROG0	=	0x61c0
                           0061C1   972 _CSPPROG1	=	0x61c1
                           0061C2   973 _CSPPROG2	=	0x61c2
                           0061C3   974 _CSPPROG3	=	0x61c3
                           0061C4   975 _CSPPROG4	=	0x61c4
                           0061C5   976 _CSPPROG5	=	0x61c5
                           0061C6   977 _CSPPROG6	=	0x61c6
                           0061C7   978 _CSPPROG7	=	0x61c7
                           0061C8   979 _CSPPROG8	=	0x61c8
                           0061C9   980 _CSPPROG9	=	0x61c9
                           0061CA   981 _CSPPROG10	=	0x61ca
                           0061CB   982 _CSPPROG11	=	0x61cb
                           0061CC   983 _CSPPROG12	=	0x61cc
                           0061CD   984 _CSPPROG13	=	0x61cd
                           0061CE   985 _CSPPROG14	=	0x61ce
                           0061CF   986 _CSPPROG15	=	0x61cf
                           0061D0   987 _CSPPROG16	=	0x61d0
                           0061D1   988 _CSPPROG17	=	0x61d1
                           0061D2   989 _CSPPROG18	=	0x61d2
                           0061D3   990 _CSPPROG19	=	0x61d3
                           0061D4   991 _CSPPROG20	=	0x61d4
                           0061D5   992 _CSPPROG21	=	0x61d5
                           0061D6   993 _CSPPROG22	=	0x61d6
                           0061D7   994 _CSPPROG23	=	0x61d7
                           0061E0   995 _CSPCTRL	=	0x61e0
                           0061E1   996 _CSPSTAT	=	0x61e1
                           0061E2   997 _CSPX	=	0x61e2
                           0061E3   998 _CSPY	=	0x61e3
                           0061E4   999 _CSPZ	=	0x61e4
                           0061E5  1000 _CSPT	=	0x61e5
                           006200  1001 _USBADDR	=	0x6200
                           006201  1002 _USBPOW	=	0x6201
                           006202  1003 _USBIIF	=	0x6202
                           006204  1004 _USBOIF	=	0x6204
                           006206  1005 _USBCIF	=	0x6206
                           006207  1006 _USBIIE	=	0x6207
                           006209  1007 _USBOIE	=	0x6209
                           00620B  1008 _USBCIE	=	0x620b
                           00620C  1009 _USBFRML	=	0x620c
                           00620D  1010 _USBFRMH	=	0x620d
                           00620E  1011 _USBINDEX	=	0x620e
                           00620F  1012 _USBCTRL	=	0x620f
                           006210  1013 _USBMAXI	=	0x6210
                           006211  1014 _USBCS0	=	0x6211
                           006211  1015 _USBCSIL	=	0x6211
                           006212  1016 _USBCSIH	=	0x6212
                           006213  1017 _USBMAXO	=	0x6213
                           006214  1018 _USBCSOL	=	0x6214
                           006215  1019 _USBCSOH	=	0x6215
                           006216  1020 _USBCNT0	=	0x6216
                           006216  1021 _USBCNTL	=	0x6216
                           006217  1022 _USBCNTH	=	0x6217
                           006220  1023 _USBF0	=	0x6220
                           006222  1024 _USBF1	=	0x6222
                           006224  1025 _USBF2	=	0x6224
                           006226  1026 _USBF3	=	0x6226
                           006228  1027 _USBF4	=	0x6228
                           00622A  1028 _USBF5	=	0x622a
                           007080  1029 _X_P0	=	0x7080
                           007086  1030 _X_U0CSR	=	0x7086
                           007089  1031 _X_P0IFG	=	0x7089
                           00708A  1032 _X_P1IFG	=	0x708a
                           00708B  1033 _X_P2IFG	=	0x708b
                           00708C  1034 _X_PICTL	=	0x708c
                           00708D  1035 _X_P1IEN	=	0x708d
                           00708F  1036 _X_P0INP	=	0x708f
                           007090  1037 _X_P1	=	0x7090
                           007091  1038 _X_RFIRQF1	=	0x7091
                           007093  1039 _X_MPAGE	=	0x7093
                           007093  1040 _X__XPAGE	=	0x7093
                           007094  1041 _X_T2CTRL	=	0x7094
                           007095  1042 _X_ST0	=	0x7095
                           007096  1043 _X_ST1	=	0x7096
                           007097  1044 _X_ST2	=	0x7097
                           00709C  1045 _X_T2EVTCFG	=	0x709c
                           00709D  1046 _X_SLEEPSTA	=	0x709d
                           00709E  1047 _X_CLKCONSTA	=	0x709e
                           00709F  1048 _X_FMAP	=	0x709f
                           00709F  1049 _X_PSBANK	=	0x709f
                           0070A0  1050 _X_P2	=	0x70a0
                           0070A1  1051 _X_T2IRQF	=	0x70a1
                           0070A2  1052 _X_T2M0	=	0x70a2
                           0070A3  1053 _X_T2M1	=	0x70a3
                           0070A4  1054 _X_T2MOVF0	=	0x70a4
                           0070A5  1055 _X_T2MOVF1	=	0x70a5
                           0070A6  1056 _X_T2MOVF2	=	0x70a6
                           0070A7  1057 _X_T2IRQM	=	0x70a7
                           0070AB  1058 _X_P0IEN	=	0x70ab
                           0070AC  1059 _X_P2IEN	=	0x70ac
                           0070AD  1060 _X_STLOAD	=	0x70ad
                           0070AE  1061 _X_PMUX	=	0x70ae
                           0070AF  1062 _X_T1STAT	=	0x70af
                           0070B1  1063 _X_ENCDI	=	0x70b1
                           0070B2  1064 _X_ENCDO	=	0x70b2
                           0070B3  1065 _X_ENCCS	=	0x70b3
                           0070B4  1066 _X_ADCCON1	=	0x70b4
                           0070B5  1067 _X_ADCCON2	=	0x70b5
                           0070B6  1068 _X_ADCCON3	=	0x70b6
                           0070BA  1069 _X_ADCL	=	0x70ba
                           0070BB  1070 _X_ADCH	=	0x70bb
                           0070BC  1071 _X_RNDL	=	0x70bc
                           0070BD  1072 _X_RNDH	=	0x70bd
                           0070BE  1073 _X_SLEEPCMD	=	0x70be
                           0070BF  1074 _X_RFERRF	=	0x70bf
                           0070C1  1075 _X_U0DBUF	=	0x70c1
                           0070C2  1076 _X_U0BAUD	=	0x70c2
                           0070C3  1077 _X_T2MSEL	=	0x70c3
                           0070C4  1078 _X_U0UCR	=	0x70c4
                           0070C5  1079 _X_U0GCR	=	0x70c5
                           0070C6  1080 _X_CLKCONCMD	=	0x70c6
                           0070C7  1081 _X_MEMCTR	=	0x70c7
                           0070C9  1082 _X_WDCTL	=	0x70c9
                           0070CA  1083 _X_T3CNT	=	0x70ca
                           0070CB  1084 _X_T3CTL	=	0x70cb
                           0070CC  1085 _X_T3CCTL0	=	0x70cc
                           0070CD  1086 _X_T3CC0	=	0x70cd
                           0070CE  1087 _X_T3CCTL1	=	0x70ce
                           0070CF  1088 _X_T3CC1	=	0x70cf
                           0070D1  1089 _X_DMAIRQ	=	0x70d1
                           0070D2  1090 _X_DMA1CFGL	=	0x70d2
                           0070D3  1091 _X_DMA1CFGH	=	0x70d3
                           0070D4  1092 _X_DMA0CFGL	=	0x70d4
                           0070D5  1093 _X_DMA0CFGH	=	0x70d5
                           0070D6  1094 _X_DMAARM	=	0x70d6
                           0070D7  1095 _X_DMAREQ	=	0x70d7
                           0070D8  1096 _X_TIMIF	=	0x70d8
                           0070D9  1097 _X_RFD	=	0x70d9
                           0070DA  1098 _X_T1CC0L	=	0x70da
                           0070DB  1099 _X_T1CC0H	=	0x70db
                           0070DC  1100 _X_T1CC1L	=	0x70dc
                           0070DD  1101 _X_T1CC1H	=	0x70dd
                           0070DE  1102 _X_T1CC2L	=	0x70de
                           0070DF  1103 _X_T1CC2H	=	0x70df
                           0070E1  1104 _X_RFST	=	0x70e1
                           0070E2  1105 _X_T1CNTL	=	0x70e2
                           0070E3  1106 _X_T1CNTH	=	0x70e3
                           0070E4  1107 _X_T1CTL	=	0x70e4
                           0070E5  1108 _X_T1CCTL0	=	0x70e5
                           0070E6  1109 _X_T1CCTL1	=	0x70e6
                           0070E7  1110 _X_T1CCTL2	=	0x70e7
                           0070E9  1111 _X_RFIRQF0	=	0x70e9
                           0070EA  1112 _X_T4CNT	=	0x70ea
                           0070EB  1113 _X_T4CTL	=	0x70eb
                           0070EC  1114 _X_T4CCTL0	=	0x70ec
                           0070ED  1115 _X_T4CC0	=	0x70ed
                           0070EE  1116 _X_T4CCTL1	=	0x70ee
                           0070EF  1117 _X_T4CC1	=	0x70ef
                           0070F1  1118 _X_PERCFG	=	0x70f1
                           0070F2  1119 _X_APCFG	=	0x70f2
                           0070F3  1120 _X_P0SEL	=	0x70f3
                           0070F4  1121 _X_P1SEL	=	0x70f4
                           0070F5  1122 _X_P2SEL	=	0x70f5
                           0070F6  1123 _X_P1INP	=	0x70f6
                           0070F7  1124 _X_P2INP	=	0x70f7
                           0070F8  1125 _X_U1CSR	=	0x70f8
                           0070F9  1126 _X_U1DBUF	=	0x70f9
                           0070FA  1127 _X_U1BAUD	=	0x70fa
                           0070FB  1128 _X_U1UCR	=	0x70fb
                           0070FC  1129 _X_U1GCR	=	0x70fc
                           0070FD  1130 _X_P0DIR	=	0x70fd
                           0070FE  1131 _X_P1DIR	=	0x70fe
                           0070FF  1132 _X_P2DIR	=	0x70ff
                           007800  1133 _X_INFOPAGE	=	0x7800
                           00780C  1134 _X_IEEE_ADDR	=	0x780c
      000004                       1135 _server_ipaddr::
      000004                       1136 	.ds 16
      000014                       1137 _client_conn:
      000014                       1138 	.ds 3
      000017                       1139 _server_conn:
      000017                       1140 	.ds 3
      00001A                       1141 _process_thread_udp_client_process_et_1_545:
      00001A                       1142 	.ds 10
                                   1143 ;--------------------------------------------------------
                                   1144 ; absolute external ram data
                                   1145 ;--------------------------------------------------------
                                   1146 	.area XABS    (ABS,XDATA)
                                   1147 ;--------------------------------------------------------
                                   1148 ; external initialized ram data
                                   1149 ;--------------------------------------------------------
                                   1150 	.area XISEG   (XDATA)
      00186F                       1151 _light_state::
      00186F                       1152 	.ds 1
      001870                       1153 _buf:
      001870                       1154 	.ds 5
      001875                       1155 _sended_flag::
      001875                       1156 	.ds 1
      001876                       1157 _temperature_now::
      001876                       1158 	.ds 1
      001877                       1159 _oshi_now::
      001877                       1160 	.ds 1
      001878                       1161 _onoff_now::
      001878                       1162 	.ds 1
      001879                       1163 _cmd:
      001879                       1164 	.ds 54
      0018AF                       1165 _udp_client_process::
      0018AF                       1166 	.ds 10
                                   1167 	.area HOME    (CODE)
                                   1168 	.area GSINIT0 (CODE)
                                   1169 	.area GSINIT1 (CODE)
                                   1170 	.area GSINIT2 (CODE)
                                   1171 	.area GSINIT3 (CODE)
                                   1172 	.area GSINIT4 (CODE)
                                   1173 	.area GSINIT5 (CODE)
                                   1174 	.area GSINIT  (CODE)
                                   1175 	.area GSFINAL (CODE)
                                   1176 	.area CSEG    (CODE)
                                   1177 ;--------------------------------------------------------
                                   1178 ; global & static initialisations
                                   1179 ;--------------------------------------------------------
                                   1180 	.area HOME    (CODE)
                                   1181 	.area GSINIT  (CODE)
                                   1182 	.area GSFINAL (CODE)
                                   1183 	.area GSINIT  (CODE)
                                   1184 ;--------------------------------------------------------
                                   1185 ; Home
                                   1186 ;--------------------------------------------------------
                                   1187 	.area HOME    (CODE)
                                   1188 	.area HOME    (CODE)
                                   1189 ;--------------------------------------------------------
                                   1190 ; code
                                   1191 ;--------------------------------------------------------
                                   1192 	.area BANK1   (CODE)
                                   1193 ;------------------------------------------------------------
                                   1194 ;Allocation info for local variables in function 'InitUart'
                                   1195 ;------------------------------------------------------------
                                   1196 ;	client.c:74: void InitUart(void)
                                   1197 ;	-----------------------------------------
                                   1198 ;	 function InitUart
                                   1199 ;	-----------------------------------------
      018000                       1200 _InitUart:
                           000007  1201 	ar7 = 0x07
                           000006  1202 	ar6 = 0x06
                           000005  1203 	ar5 = 0x05
                           000004  1204 	ar4 = 0x04
                           000003  1205 	ar3 = 0x03
                           000002  1206 	ar2 = 0x02
                           000001  1207 	ar1 = 0x01
                           000000  1208 	ar0 = 0x00
                                   1209 ;	client.c:76: PERCFG = 0x00;           //外设控制寄存器 USART 0的IO位置:0为P0口位置1 
      018000 75 F1 00         [24] 1210 	mov	_PERCFG,#0x00
                                   1211 ;	client.c:77: P0SEL = 0x0c;            //P0_2,P0_3用作串口（外设功能）
      018003 75 F3 0C         [24] 1212 	mov	_P0SEL,#0x0C
                                   1213 ;	client.c:78: P2DIR &= ~0xC0;          //P0优先作为UART0
      018006 AF FF            [24] 1214 	mov	r7,_P2DIR
      018008 74 3F            [12] 1215 	mov	a,#0x3F
      01800A 5F               [12] 1216 	anl	a,r7
      01800B F5 FF            [12] 1217 	mov	_P2DIR,a
                                   1218 ;	client.c:80: U0CSR |= 0x80;           //设置为UART方式
      01800D 43 86 80         [24] 1219 	orl	_U0CSR,#0x80
                                   1220 ;	client.c:81: U0GCR |= 11;				       
      018010 43 C5 0B         [24] 1221 	orl	_U0GCR,#0x0B
                                   1222 ;	client.c:82: U0BAUD |= 216;           //波特率设为115200
      018013 43 C2 D8         [24] 1223 	orl	_U0BAUD,#0xD8
                                   1224 ;	client.c:83: UTX0IF = 0;              //UART0 TX中断标志初始置位0
      018016 C2 E9            [12] 1225 	clr	_UTX0IF
                                   1226 ;	client.c:85: IEN0 |= 0x80;            //开总中断允许接收中断 
      018018 43 A8 80         [24] 1227 	orl	_IEN0,#0x80
                                   1228 ;	client.c:86: P1DIR |= 0x01;
      01801B 43 FE 01         [24] 1229 	orl	_P1DIR,#0x01
      01801E 02 07 37         [24] 1230 	ljmp	__sdcc_banked_ret
                                   1231 ;------------------------------------------------------------
                                   1232 ;Allocation info for local variables in function 'login'
                                   1233 ;------------------------------------------------------------
                                   1234 ;	client.c:90: void login(void)
                                   1235 ;	-----------------------------------------
                                   1236 ;	 function login
                                   1237 ;	-----------------------------------------
      018021                       1238 _login:
                                   1239 ;	client.c:92: uip_ip6addr(&server_ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0x01);
      018021 90 00 04         [24] 1240 	mov	dptr,#_server_ipaddr
      018024 74 AA            [12] 1241 	mov	a,#0xAA
      018026 F0               [24] 1242 	movx	@dptr,a
      018027 74 AA            [12] 1243 	mov	a,#0xAA
      018029 A3               [24] 1244 	inc	dptr
      01802A F0               [24] 1245 	movx	@dptr,a
      01802B 90 00 06         [24] 1246 	mov	dptr,#(_server_ipaddr + 0x0002)
      01802E E4               [12] 1247 	clr	a
      01802F F0               [24] 1248 	movx	@dptr,a
      018030 E4               [12] 1249 	clr	a
      018031 A3               [24] 1250 	inc	dptr
      018032 F0               [24] 1251 	movx	@dptr,a
      018033 90 00 08         [24] 1252 	mov	dptr,#(_server_ipaddr + 0x0004)
      018036 E4               [12] 1253 	clr	a
      018037 F0               [24] 1254 	movx	@dptr,a
      018038 E4               [12] 1255 	clr	a
      018039 A3               [24] 1256 	inc	dptr
      01803A F0               [24] 1257 	movx	@dptr,a
      01803B 90 00 0A         [24] 1258 	mov	dptr,#(_server_ipaddr + 0x0006)
      01803E E4               [12] 1259 	clr	a
      01803F F0               [24] 1260 	movx	@dptr,a
      018040 E4               [12] 1261 	clr	a
      018041 A3               [24] 1262 	inc	dptr
      018042 F0               [24] 1263 	movx	@dptr,a
      018043 90 00 0C         [24] 1264 	mov	dptr,#(_server_ipaddr + 0x0008)
      018046 E4               [12] 1265 	clr	a
      018047 F0               [24] 1266 	movx	@dptr,a
      018048 E4               [12] 1267 	clr	a
      018049 A3               [24] 1268 	inc	dptr
      01804A F0               [24] 1269 	movx	@dptr,a
      01804B 90 00 0E         [24] 1270 	mov	dptr,#(_server_ipaddr + 0x000a)
      01804E E4               [12] 1271 	clr	a
      01804F F0               [24] 1272 	movx	@dptr,a
      018050 E4               [12] 1273 	clr	a
      018051 A3               [24] 1274 	inc	dptr
      018052 F0               [24] 1275 	movx	@dptr,a
      018053 90 00 10         [24] 1276 	mov	dptr,#(_server_ipaddr + 0x000c)
      018056 E4               [12] 1277 	clr	a
      018057 F0               [24] 1278 	movx	@dptr,a
      018058 E4               [12] 1279 	clr	a
      018059 A3               [24] 1280 	inc	dptr
      01805A F0               [24] 1281 	movx	@dptr,a
      01805B 90 00 12         [24] 1282 	mov	dptr,#(_server_ipaddr + 0x000e)
      01805E E4               [12] 1283 	clr	a
      01805F F0               [24] 1284 	movx	@dptr,a
      018060 74 01            [12] 1285 	mov	a,#0x01
      018062 A3               [24] 1286 	inc	dptr
      018063 F0               [24] 1287 	movx	@dptr,a
                                   1288 ;	client.c:95: buf[0] = 0xEF;// start  of cmd 
      018064 90 18 70         [24] 1289 	mov	dptr,#_buf
      018067 74 EF            [12] 1290 	mov	a,#0xEF
      018069 F0               [24] 1291 	movx	@dptr,a
                                   1292 ;	client.c:96: buf[1] = DEVICE_ID;// deviceID
      01806A 90 18 71         [24] 1293 	mov	dptr,#(_buf + 0x0001)
      01806D 74 02            [12] 1294 	mov	a,#0x02
      01806F F0               [24] 1295 	movx	@dptr,a
                                   1296 ;	client.c:97: buf[2] = 0x00;//"0x00" refer " send a address report to root "     
      018070 90 18 72         [24] 1297 	mov	dptr,#(_buf + 0x0002)
                                   1298 ;	client.c:98: buf[3] = 0x00;// data length 0
      018073 E4               [12] 1299 	clr	a
      018074 F0               [24] 1300 	movx	@dptr,a
      018075 90 18 73         [24] 1301 	mov	dptr,#(_buf + 0x0003)
      018078 F0               [24] 1302 	movx	@dptr,a
                                   1303 ;	client.c:99: buf[4] = 0xFE; //end of cmd
      018079 90 18 74         [24] 1304 	mov	dptr,#(_buf + 0x0004)
      01807C 74 FE            [12] 1305 	mov	a,#0xFE
      01807E F0               [24] 1306 	movx	@dptr,a
                                   1307 ;	client.c:100: uip_udp_packet_sendto(client_conn, buf, 5, &server_ipaddr, UIP_HTONS(5775));
      01807F 90 00 14         [24] 1308 	mov	dptr,#_client_conn
      018082 E0               [24] 1309 	movx	a,@dptr
      018083 FD               [12] 1310 	mov	r5,a
      018084 A3               [24] 1311 	inc	dptr
      018085 E0               [24] 1312 	movx	a,@dptr
      018086 FE               [12] 1313 	mov	r6,a
      018087 A3               [24] 1314 	inc	dptr
      018088 E0               [24] 1315 	movx	a,@dptr
      018089 FF               [12] 1316 	mov	r7,a
      01808A 74 16            [12] 1317 	mov	a,#0x16
      01808C C0 E0            [24] 1318 	push	acc
      01808E 74 8F            [12] 1319 	mov	a,#0x8F
      018090 C0 E0            [24] 1320 	push	acc
      018092 74 04            [12] 1321 	mov	a,#_server_ipaddr
      018094 C0 E0            [24] 1322 	push	acc
      018096 74 00            [12] 1323 	mov	a,#(_server_ipaddr >> 8)
      018098 C0 E0            [24] 1324 	push	acc
      01809A E4               [12] 1325 	clr	a
      01809B C0 E0            [24] 1326 	push	acc
      01809D 74 05            [12] 1327 	mov	a,#0x05
      01809F C0 E0            [24] 1328 	push	acc
      0180A1 E4               [12] 1329 	clr	a
      0180A2 C0 E0            [24] 1330 	push	acc
      0180A4 74 70            [12] 1331 	mov	a,#_buf
      0180A6 C0 E0            [24] 1332 	push	acc
      0180A8 74 18            [12] 1333 	mov	a,#(_buf >> 8)
      0180AA C0 E0            [24] 1334 	push	acc
      0180AC E4               [12] 1335 	clr	a
      0180AD C0 E0            [24] 1336 	push	acc
      0180AF 8D 82            [24] 1337 	mov	dpl,r5
      0180B1 8E 83            [24] 1338 	mov	dph,r6
      0180B3 8F F0            [24] 1339 	mov	b,r7
      0180B5 78 6B            [12] 1340 	mov	r0,#_uip_udp_packet_sendto
      0180B7 79 8C            [12] 1341 	mov	r1,#(_uip_udp_packet_sendto >> 8)
      0180B9 7A 04            [12] 1342 	mov	r2,#(_uip_udp_packet_sendto >> 16)
      0180BB 12 07 25         [24] 1343 	lcall	__sdcc_banked_call
      0180BE E5 81            [12] 1344 	mov	a,sp
      0180C0 24 F6            [12] 1345 	add	a,#0xf6
      0180C2 F5 81            [12] 1346 	mov	sp,a
      0180C4 02 07 37         [24] 1347 	ljmp	__sdcc_banked_ret
                                   1348 ;------------------------------------------------------------
                                   1349 ;Allocation info for local variables in function 'set_temp'
                                   1350 ;------------------------------------------------------------
                                   1351 ;temp                      Allocated to registers r7 
                                   1352 ;i                         Allocated to registers r6 
                                   1353 ;j                         Allocated to registers r2 
                                   1354 ;------------------------------------------------------------
                                   1355 ;	client.c:105: void set_temp(unsigned char temp)
                                   1356 ;	-----------------------------------------
                                   1357 ;	 function set_temp
                                   1358 ;	-----------------------------------------
      0180C7                       1359 _set_temp:
      0180C7 AF 82            [24] 1360 	mov	r7,dpl
                                   1361 ;	client.c:110: switch(temp)
      0180C9 BF 23 02         [24] 1362 	cjne	r7,#0x23,00158$
      0180CC 80 14            [24] 1363 	sjmp	00101$
      0180CE                       1364 00158$:
      0180CE BF 24 02         [24] 1365 	cjne	r7,#0x24,00159$
      0180D1 80 13            [24] 1366 	sjmp	00102$
      0180D3                       1367 00159$:
      0180D3 BF 25 02         [24] 1368 	cjne	r7,#0x25,00160$
      0180D6 80 12            [24] 1369 	sjmp	00103$
      0180D8                       1370 00160$:
      0180D8 BF 26 02         [24] 1371 	cjne	r7,#0x26,00161$
      0180DB 80 11            [24] 1372 	sjmp	00104$
      0180DD                       1373 00161$:
                                   1374 ;	client.c:112: case 0x23:i=3;break;
      0180DD BF 27 16         [24] 1375 	cjne	r7,#0x27,00106$
      0180E0 80 10            [24] 1376 	sjmp	00105$
      0180E2                       1377 00101$:
      0180E2 7E 03            [12] 1378 	mov	r6,#0x03
                                   1379 ;	client.c:113: case 0x24:i=2;break;
      0180E4 80 12            [24] 1380 	sjmp	00131$
      0180E6                       1381 00102$:
      0180E6 7E 02            [12] 1382 	mov	r6,#0x02
                                   1383 ;	client.c:114: case 0x25:i=0;break;
      0180E8 80 0E            [24] 1384 	sjmp	00131$
      0180EA                       1385 00103$:
      0180EA 7E 00            [12] 1386 	mov	r6,#0x00
                                   1387 ;	client.c:115: case 0x26:i=4;break;
      0180EC 80 0A            [24] 1388 	sjmp	00131$
      0180EE                       1389 00104$:
      0180EE 7E 04            [12] 1390 	mov	r6,#0x04
                                   1391 ;	client.c:116: case 0x27:i=5;break;
      0180F0 80 06            [24] 1392 	sjmp	00131$
      0180F2                       1393 00105$:
      0180F2 7E 05            [12] 1394 	mov	r6,#0x05
                                   1395 ;	client.c:117: default:i=0;
      0180F4 80 02            [24] 1396 	sjmp	00131$
      0180F6                       1397 00106$:
      0180F6 7E 00            [12] 1398 	mov	r6,#0x00
                                   1399 ;	client.c:119: for(j=0;j<9;j++)
      0180F8                       1400 00131$:
      0180F8 EE               [12] 1401 	mov	a,r6
      0180F9 75 F0 09         [24] 1402 	mov	b,#0x09
      0180FC A4               [48] 1403 	mul	ab
      0180FD FD               [12] 1404 	mov	r5,a
      0180FE AE F0            [24] 1405 	mov	r6,b
      018100 24 79            [12] 1406 	add	a,#_cmd
      018102 FB               [12] 1407 	mov	r3,a
      018103 EE               [12] 1408 	mov	a,r6
      018104 34 18            [12] 1409 	addc	a,#(_cmd >> 8)
      018106 FC               [12] 1410 	mov	r4,a
      018107 7A 00            [12] 1411 	mov	r2,#0x00
      018109                       1412 00117$:
                                   1413 ;	client.c:121: U0DBUF =cmd[i][j];
      018109 EA               [12] 1414 	mov	a,r2
      01810A 2B               [12] 1415 	add	a,r3
      01810B F5 82            [12] 1416 	mov	dpl,a
      01810D E4               [12] 1417 	clr	a
      01810E 3C               [12] 1418 	addc	a,r4
      01810F F5 83            [12] 1419 	mov	dph,a
      018111 E0               [24] 1420 	movx	a,@dptr
      018112 F5 C1            [12] 1421 	mov	_U0DBUF,a
                                   1422 ;	client.c:123: while(UTX0IF == 0);
      018114                       1423 00108$:
                                   1424 ;	client.c:124: UTX0IF = 0;
      018114 10 E9 02         [24] 1425 	jbc	_UTX0IF,00163$
      018117 80 FB            [24] 1426 	sjmp	00108$
      018119                       1427 00163$:
                                   1428 ;	client.c:125: if(j==22)
      018119 BA 16 20         [24] 1429 	cjne	r2,#0x16,00118$
                                   1430 ;	client.c:126: { U0DBUF =cmd[i][j];
      01811C C0 03            [24] 1431 	push	ar3
      01811E C0 04            [24] 1432 	push	ar4
      018120 ED               [12] 1433 	mov	a,r5
      018121 24 79            [12] 1434 	add	a,#_cmd
      018123 FB               [12] 1435 	mov	r3,a
      018124 EE               [12] 1436 	mov	a,r6
      018125 34 18            [12] 1437 	addc	a,#(_cmd >> 8)
      018127 FC               [12] 1438 	mov	r4,a
      018128 EA               [12] 1439 	mov	a,r2
      018129 2B               [12] 1440 	add	a,r3
      01812A F5 82            [12] 1441 	mov	dpl,a
      01812C E4               [12] 1442 	clr	a
      01812D 3C               [12] 1443 	addc	a,r4
      01812E F5 83            [12] 1444 	mov	dph,a
      018130 E0               [24] 1445 	movx	a,@dptr
      018131 F5 C1            [12] 1446 	mov	_U0DBUF,a
                                   1447 ;	client.c:131: temperature_now =temp;
      018133 D0 04            [24] 1448 	pop	ar4
      018135 D0 03            [24] 1449 	pop	ar3
                                   1450 ;	client.c:127: while(UTX0IF == 0);
      018137                       1451 00111$:
                                   1452 ;	client.c:128: UTX0IF = 0;
      018137 10 E9 02         [24] 1453 	jbc	_UTX0IF,00166$
      01813A 80 FB            [24] 1454 	sjmp	00111$
      01813C                       1455 00166$:
      01813C                       1456 00118$:
                                   1457 ;	client.c:119: for(j=0;j<9;j++)
      01813C 0A               [12] 1458 	inc	r2
      01813D BA 09 00         [24] 1459 	cjne	r2,#0x09,00167$
      018140                       1460 00167$:
      018140 40 C7            [24] 1461 	jc	00117$
                                   1462 ;	client.c:131: temperature_now =temp;
      018142 90 18 76         [24] 1463 	mov	dptr,#_temperature_now
      018145 EF               [12] 1464 	mov	a,r7
      018146 F0               [24] 1465 	movx	@dptr,a
      018147 02 07 37         [24] 1466 	ljmp	__sdcc_banked_ret
                                   1467 ;------------------------------------------------------------
                                   1468 ;Allocation info for local variables in function 'turn_off'
                                   1469 ;------------------------------------------------------------
                                   1470 ;j                         Allocated to stack - sp +1
                                   1471 ;------------------------------------------------------------
                                   1472 ;	client.c:137: void turn_off(void)
                                   1473 ;	-----------------------------------------
                                   1474 ;	 function turn_off
                                   1475 ;	-----------------------------------------
      01814A                       1476 _turn_off:
                                   1477 ;	client.c:141: U0DBUF =cmd[1][0];
      01814A 90 18 82         [24] 1478 	mov	dptr,#(_cmd + 0x0009)
      01814D E0               [24] 1479 	movx	a,@dptr
      01814E F5 C1            [12] 1480 	mov	_U0DBUF,a
                                   1481 ;	client.c:142: while(UTX0IF == 0);
      018150                       1482 00101$:
                                   1483 ;	client.c:143: UTX0IF = 0;
      018150 10 E9 02         [24] 1484 	jbc	_UTX0IF,00202$
      018153 80 FB            [24] 1485 	sjmp	00101$
      018155                       1486 00202$:
                                   1487 ;	client.c:144: U0DBUF =cmd[1][1];
      018155 90 18 83         [24] 1488 	mov	dptr,#(_cmd + 0x000a)
      018158 E0               [24] 1489 	movx	a,@dptr
      018159 F5 C1            [12] 1490 	mov	_U0DBUF,a
                                   1491 ;	client.c:145: while(UTX0IF == 0);
      01815B                       1492 00104$:
                                   1493 ;	client.c:146: UTX0IF = 0;
      01815B 10 E9 02         [24] 1494 	jbc	_UTX0IF,00203$
      01815E 80 FB            [24] 1495 	sjmp	00104$
      018160                       1496 00203$:
                                   1497 ;	client.c:147: U0DBUF =cmd[1][2];
      018160 90 18 84         [24] 1498 	mov	dptr,#(_cmd + 0x000b)
      018163 E0               [24] 1499 	movx	a,@dptr
      018164 F5 C1            [12] 1500 	mov	_U0DBUF,a
                                   1501 ;	client.c:148: while(UTX0IF == 0);
      018166                       1502 00107$:
                                   1503 ;	client.c:149: UTX0IF = 0;
      018166 10 E9 02         [24] 1504 	jbc	_UTX0IF,00204$
      018169 80 FB            [24] 1505 	sjmp	00107$
      01816B                       1506 00204$:
                                   1507 ;	client.c:150: U0DBUF =cmd[1][3];
      01816B 90 18 85         [24] 1508 	mov	dptr,#(_cmd + 0x000c)
      01816E E0               [24] 1509 	movx	a,@dptr
      01816F F5 C1            [12] 1510 	mov	_U0DBUF,a
                                   1511 ;	client.c:151: while(UTX0IF == 0);
      018171                       1512 00110$:
                                   1513 ;	client.c:152: UTX0IF = 0;
      018171 10 E9 02         [24] 1514 	jbc	_UTX0IF,00205$
      018174 80 FB            [24] 1515 	sjmp	00110$
      018176                       1516 00205$:
                                   1517 ;	client.c:153: U0DBUF =cmd[1][4];
      018176 90 18 86         [24] 1518 	mov	dptr,#(_cmd + 0x000d)
      018179 E0               [24] 1519 	movx	a,@dptr
      01817A F5 C1            [12] 1520 	mov	_U0DBUF,a
                                   1521 ;	client.c:154: while(UTX0IF == 0);
      01817C                       1522 00113$:
                                   1523 ;	client.c:155: UTX0IF = 0;
      01817C 10 E9 02         [24] 1524 	jbc	_UTX0IF,00206$
      01817F 80 FB            [24] 1525 	sjmp	00113$
      018181                       1526 00206$:
                                   1527 ;	client.c:156: U0DBUF =cmd[1][5];
      018181 90 18 87         [24] 1528 	mov	dptr,#(_cmd + 0x000e)
      018184 E0               [24] 1529 	movx	a,@dptr
      018185 F5 C1            [12] 1530 	mov	_U0DBUF,a
                                   1531 ;	client.c:157: while(UTX0IF == 0);
      018187                       1532 00116$:
                                   1533 ;	client.c:158: UTX0IF = 0;        
      018187 10 E9 02         [24] 1534 	jbc	_UTX0IF,00207$
      01818A 80 FB            [24] 1535 	sjmp	00116$
      01818C                       1536 00207$:
                                   1537 ;	client.c:159: U0DBUF =cmd[1][6];
      01818C 90 18 88         [24] 1538 	mov	dptr,#(_cmd + 0x000f)
      01818F E0               [24] 1539 	movx	a,@dptr
      018190 FF               [12] 1540 	mov	r7,a
      018191 8F C1            [24] 1541 	mov	_U0DBUF,r7
                                   1542 ;	client.c:160: while(UTX0IF == 0);
      018193                       1543 00119$:
                                   1544 ;	client.c:161: UTX0IF = 0;
      018193 10 E9 02         [24] 1545 	jbc	_UTX0IF,00208$
      018196 80 FB            [24] 1546 	sjmp	00119$
      018198                       1547 00208$:
                                   1548 ;	client.c:162: U0DBUF =cmd[1][6];
      018198 8F C1            [24] 1549 	mov	_U0DBUF,r7
                                   1550 ;	client.c:163: while(UTX0IF == 0);
      01819A                       1551 00122$:
                                   1552 ;	client.c:164: UTX0IF = 0;
      01819A 10 E9 02         [24] 1553 	jbc	_UTX0IF,00209$
      01819D 80 FB            [24] 1554 	sjmp	00122$
      01819F                       1555 00209$:
                                   1556 ;	client.c:165: U0DBUF =cmd[1][7];
      01819F 90 18 89         [24] 1557 	mov	dptr,#(_cmd + 0x0010)
      0181A2 E0               [24] 1558 	movx	a,@dptr
      0181A3 FF               [12] 1559 	mov	r7,a
      0181A4 8F C1            [24] 1560 	mov	_U0DBUF,r7
                                   1561 ;	client.c:166: while(UTX0IF == 0);
      0181A6                       1562 00125$:
                                   1563 ;	client.c:167: UTX0IF = 0;
      0181A6 10 E9 02         [24] 1564 	jbc	_UTX0IF,00210$
      0181A9 80 FB            [24] 1565 	sjmp	00125$
      0181AB                       1566 00210$:
                                   1567 ;	client.c:168: U0DBUF =cmd[1][7];
      0181AB 8F C1            [24] 1568 	mov	_U0DBUF,r7
                                   1569 ;	client.c:169: while(UTX0IF == 0);
      0181AD                       1570 00128$:
                                   1571 ;	client.c:170: UTX0IF = 0;
      0181AD 10 E9 02         [24] 1572 	jbc	_UTX0IF,00211$
      0181B0 80 FB            [24] 1573 	sjmp	00128$
      0181B2                       1574 00211$:
                                   1575 ;	client.c:171: U0DBUF =cmd[1][8];
      0181B2 90 18 8A         [24] 1576 	mov	dptr,#(_cmd + 0x0011)
      0181B5 E0               [24] 1577 	movx	a,@dptr
      0181B6 F5 C1            [12] 1578 	mov	_U0DBUF,a
                                   1579 ;	client.c:172: while(UTX0IF == 0);
      0181B8                       1580 00131$:
                                   1581 ;	client.c:173: UTX0IF = 0;
      0181B8 10 E9 02         [24] 1582 	jbc	_UTX0IF,00212$
      0181BB 80 FB            [24] 1583 	sjmp	00131$
      0181BD                       1584 00212$:
                                   1585 ;	client.c:184: onoff_now=0x00;
      0181BD 90 18 78         [24] 1586 	mov	dptr,#_onoff_now
      0181C0 E4               [12] 1587 	clr	a
      0181C1 F0               [24] 1588 	movx	@dptr,a
      0181C2 02 07 37         [24] 1589 	ljmp	__sdcc_banked_ret
                                   1590 ;------------------------------------------------------------
                                   1591 ;Allocation info for local variables in function 'turn_on'
                                   1592 ;------------------------------------------------------------
                                   1593 ;j                         Allocated to registers r7 
                                   1594 ;------------------------------------------------------------
                                   1595 ;	client.c:187: void turn_on(void)
                                   1596 ;	-----------------------------------------
                                   1597 ;	 function turn_on
                                   1598 ;	-----------------------------------------
      0181C5                       1599 _turn_on:
                                   1600 ;	client.c:191: for(j=0;j<9;j++)
      0181C5 7F 00            [12] 1601 	mov	r7,#0x00
      0181C7                       1602 00115$:
                                   1603 ;	client.c:193: U0DBUF =cmd[0][j];
      0181C7 EF               [12] 1604 	mov	a,r7
      0181C8 24 79            [12] 1605 	add	a,#_cmd
      0181CA F5 82            [12] 1606 	mov	dpl,a
      0181CC E4               [12] 1607 	clr	a
      0181CD 34 18            [12] 1608 	addc	a,#(_cmd >> 8)
      0181CF F5 83            [12] 1609 	mov	dph,a
      0181D1 E0               [24] 1610 	movx	a,@dptr
      0181D2 F5 C1            [12] 1611 	mov	_U0DBUF,a
                                   1612 ;	client.c:194: while(UTX0IF == 0);
      0181D4                       1613 00101$:
                                   1614 ;	client.c:195: UTX0IF = 0;
      0181D4 10 E9 02         [24] 1615 	jbc	_UTX0IF,00150$
      0181D7 80 FB            [24] 1616 	sjmp	00101$
      0181D9                       1617 00150$:
                                   1618 ;	client.c:196: if(j==4)
      0181D9 BF 04 12         [24] 1619 	cjne	r7,#0x04,00108$
                                   1620 ;	client.c:197: { U0DBUF =cmd[0][j];
      0181DC EF               [12] 1621 	mov	a,r7
      0181DD 24 79            [12] 1622 	add	a,#_cmd
      0181DF F5 82            [12] 1623 	mov	dpl,a
      0181E1 E4               [12] 1624 	clr	a
      0181E2 34 18            [12] 1625 	addc	a,#(_cmd >> 8)
      0181E4 F5 83            [12] 1626 	mov	dph,a
      0181E6 E0               [24] 1627 	movx	a,@dptr
      0181E7 F5 C1            [12] 1628 	mov	_U0DBUF,a
                                   1629 ;	client.c:198: while(UTX0IF == 0);
      0181E9                       1630 00104$:
                                   1631 ;	client.c:199: UTX0IF = 0;
      0181E9 10 E9 02         [24] 1632 	jbc	_UTX0IF,00153$
      0181EC 80 FB            [24] 1633 	sjmp	00104$
      0181EE                       1634 00153$:
      0181EE                       1635 00108$:
                                   1636 ;	client.c:201: if(j==6)
      0181EE BF 06 12         [24] 1637 	cjne	r7,#0x06,00116$
                                   1638 ;	client.c:202: { U0DBUF =cmd[0][j];
      0181F1 EF               [12] 1639 	mov	a,r7
      0181F2 24 79            [12] 1640 	add	a,#_cmd
      0181F4 F5 82            [12] 1641 	mov	dpl,a
      0181F6 E4               [12] 1642 	clr	a
      0181F7 34 18            [12] 1643 	addc	a,#(_cmd >> 8)
      0181F9 F5 83            [12] 1644 	mov	dph,a
      0181FB E0               [24] 1645 	movx	a,@dptr
      0181FC F5 C1            [12] 1646 	mov	_U0DBUF,a
                                   1647 ;	client.c:203: while(UTX0IF == 0);
      0181FE                       1648 00109$:
                                   1649 ;	client.c:204: UTX0IF = 0;
      0181FE 10 E9 02         [24] 1650 	jbc	_UTX0IF,00156$
      018201 80 FB            [24] 1651 	sjmp	00109$
      018203                       1652 00156$:
      018203                       1653 00116$:
                                   1654 ;	client.c:191: for(j=0;j<9;j++)
      018203 0F               [12] 1655 	inc	r7
      018204 BF 09 00         [24] 1656 	cjne	r7,#0x09,00157$
      018207                       1657 00157$:
      018207 40 BE            [24] 1658 	jc	00115$
                                   1659 ;	client.c:208: onoff_now=0x01;
      018209 90 18 78         [24] 1660 	mov	dptr,#_onoff_now
      01820C 74 01            [12] 1661 	mov	a,#0x01
      01820E F0               [24] 1662 	movx	@dptr,a
      01820F 02 07 37         [24] 1663 	ljmp	__sdcc_banked_ret
                                   1664 ;------------------------------------------------------------
                                   1665 ;Allocation info for local variables in function 'DelayMS'
                                   1666 ;------------------------------------------------------------
                                   1667 ;msec                      Allocated to stack - sp -7
                                   1668 ;i                         Allocated to stack - sp -3
                                   1669 ;j                         Allocated to registers r4 r5 r6 r7 
                                   1670 ;------------------------------------------------------------
                                   1671 ;	client.c:212: void DelayMS(uint32_t msec)//not enough 1ms
                                   1672 ;	-----------------------------------------
                                   1673 ;	 function DelayMS
                                   1674 ;	-----------------------------------------
      018212                       1675 _DelayMS:
      018212 C0 82            [24] 1676 	push	dpl
      018214 C0 83            [24] 1677 	push	dph
      018216 C0 F0            [24] 1678 	push	b
      018218 C0 E0            [24] 1679 	push	acc
      01821A E5 81            [12] 1680 	mov	a,sp
      01821C 24 04            [12] 1681 	add	a,#0x04
                                   1682 ;	client.c:216: for (i=0; i<msec; i++)
      01821E F5 81            [12] 1683 	mov	sp,a
      018220 24 FD            [12] 1684 	add	a,#0xfd
      018222 F8               [12] 1685 	mov	r0,a
      018223 E4               [12] 1686 	clr	a
      018224 F6               [12] 1687 	mov	@r0,a
      018225 08               [12] 1688 	inc	r0
      018226 F6               [12] 1689 	mov	@r0,a
      018227 08               [12] 1690 	inc	r0
      018228 F6               [12] 1691 	mov	@r0,a
      018229 08               [12] 1692 	inc	r0
      01822A F6               [12] 1693 	mov	@r0,a
      01822B                       1694 00107$:
      01822B E5 81            [12] 1695 	mov	a,sp
      01822D 24 FD            [12] 1696 	add	a,#0xfd
      01822F F8               [12] 1697 	mov	r0,a
      018230 E5 81            [12] 1698 	mov	a,sp
      018232 24 F9            [12] 1699 	add	a,#0xf9
      018234 F9               [12] 1700 	mov	r1,a
      018235 C3               [12] 1701 	clr	c
      018236 E6               [12] 1702 	mov	a,@r0
      018237 97               [12] 1703 	subb	a,@r1
      018238 08               [12] 1704 	inc	r0
      018239 E6               [12] 1705 	mov	a,@r0
      01823A 09               [12] 1706 	inc	r1
      01823B 97               [12] 1707 	subb	a,@r1
      01823C 08               [12] 1708 	inc	r0
      01823D E6               [12] 1709 	mov	a,@r0
      01823E 09               [12] 1710 	inc	r1
      01823F 97               [12] 1711 	subb	a,@r1
      018240 08               [12] 1712 	inc	r0
      018241 E6               [12] 1713 	mov	a,@r0
      018242 09               [12] 1714 	inc	r1
      018243 97               [12] 1715 	subb	a,@r1
      018244 50 32            [24] 1716 	jnc	00109$
                                   1717 ;	client.c:217: for (j=0; j<1070; j++);
      018246 7C 2E            [12] 1718 	mov	r4,#0x2E
      018248 7D 04            [12] 1719 	mov	r5,#0x04
      01824A 7E 00            [12] 1720 	mov	r6,#0x00
      01824C 7F 00            [12] 1721 	mov	r7,#0x00
      01824E                       1722 00105$:
      01824E 1C               [12] 1723 	dec	r4
      01824F BC FF 09         [24] 1724 	cjne	r4,#0xFF,00126$
      018252 1D               [12] 1725 	dec	r5
      018253 BD FF 05         [24] 1726 	cjne	r5,#0xFF,00126$
      018256 1E               [12] 1727 	dec	r6
      018257 BE FF 01         [24] 1728 	cjne	r6,#0xFF,00126$
      01825A 1F               [12] 1729 	dec	r7
      01825B                       1730 00126$:
      01825B EC               [12] 1731 	mov	a,r4
      01825C 4D               [12] 1732 	orl	a,r5
      01825D 4E               [12] 1733 	orl	a,r6
      01825E 4F               [12] 1734 	orl	a,r7
      01825F 70 ED            [24] 1735 	jnz	00105$
                                   1736 ;	client.c:216: for (i=0; i<msec; i++)
      018261 E5 81            [12] 1737 	mov	a,sp
      018263 24 FD            [12] 1738 	add	a,#0xfd
      018265 F8               [12] 1739 	mov	r0,a
      018266 06               [12] 1740 	inc	@r0
      018267 B6 00 0C         [24] 1741 	cjne	@r0,#0x00,00128$
      01826A 08               [12] 1742 	inc	r0
      01826B 06               [12] 1743 	inc	@r0
      01826C B6 00 07         [24] 1744 	cjne	@r0,#0x00,00128$
      01826F 08               [12] 1745 	inc	r0
      018270 06               [12] 1746 	inc	@r0
      018271 B6 00 02         [24] 1747 	cjne	@r0,#0x00,00128$
      018274 08               [12] 1748 	inc	r0
      018275 06               [12] 1749 	inc	@r0
      018276                       1750 00128$:
      018276 80 B3            [24] 1751 	sjmp	00107$
      018278                       1752 00109$:
      018278 E5 81            [12] 1753 	mov	a,sp
      01827A 24 F8            [12] 1754 	add	a,#0xF8
      01827C F5 81            [12] 1755 	mov	sp,a
      01827E 02 07 37         [24] 1756 	ljmp	__sdcc_banked_ret
                                   1757 ;------------------------------------------------------------
                                   1758 ;Allocation info for local variables in function 'send_state'
                                   1759 ;------------------------------------------------------------
                                   1760 ;	client.c:220: void send_state(void)
                                   1761 ;	-----------------------------------------
                                   1762 ;	 function send_state
                                   1763 ;	-----------------------------------------
      018281                       1764 _send_state:
                                   1765 ;	client.c:224: memset(buf,0,sizeof(buf));
      018281 74 05            [12] 1766 	mov	a,#0x05
      018283 C0 E0            [24] 1767 	push	acc
      018285 E4               [12] 1768 	clr	a
      018286 C0 E0            [24] 1769 	push	acc
      018288 E4               [12] 1770 	clr	a
      018289 C0 E0            [24] 1771 	push	acc
      01828B 90 18 70         [24] 1772 	mov	dptr,#_buf
      01828E 75 F0 00         [24] 1773 	mov	b,#0x00
      018291 78 86            [12] 1774 	mov	r0,#_memset
      018293 79 77            [12] 1775 	mov	r1,#(_memset >> 8)
      018295 7A 00            [12] 1776 	mov	r2,#(_memset >> 16)
      018297 12 07 25         [24] 1777 	lcall	__sdcc_banked_call
      01829A 15 81            [12] 1778 	dec	sp
      01829C 15 81            [12] 1779 	dec	sp
      01829E 15 81            [12] 1780 	dec	sp
                                   1781 ;	client.c:225: uip_ip6addr(&server_ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0x01);
      0182A0 90 00 04         [24] 1782 	mov	dptr,#_server_ipaddr
      0182A3 74 AA            [12] 1783 	mov	a,#0xAA
      0182A5 F0               [24] 1784 	movx	@dptr,a
      0182A6 74 AA            [12] 1785 	mov	a,#0xAA
      0182A8 A3               [24] 1786 	inc	dptr
      0182A9 F0               [24] 1787 	movx	@dptr,a
      0182AA 90 00 06         [24] 1788 	mov	dptr,#(_server_ipaddr + 0x0002)
      0182AD E4               [12] 1789 	clr	a
      0182AE F0               [24] 1790 	movx	@dptr,a
      0182AF E4               [12] 1791 	clr	a
      0182B0 A3               [24] 1792 	inc	dptr
      0182B1 F0               [24] 1793 	movx	@dptr,a
      0182B2 90 00 08         [24] 1794 	mov	dptr,#(_server_ipaddr + 0x0004)
      0182B5 E4               [12] 1795 	clr	a
      0182B6 F0               [24] 1796 	movx	@dptr,a
      0182B7 E4               [12] 1797 	clr	a
      0182B8 A3               [24] 1798 	inc	dptr
      0182B9 F0               [24] 1799 	movx	@dptr,a
      0182BA 90 00 0A         [24] 1800 	mov	dptr,#(_server_ipaddr + 0x0006)
      0182BD E4               [12] 1801 	clr	a
      0182BE F0               [24] 1802 	movx	@dptr,a
      0182BF E4               [12] 1803 	clr	a
      0182C0 A3               [24] 1804 	inc	dptr
      0182C1 F0               [24] 1805 	movx	@dptr,a
      0182C2 90 00 0C         [24] 1806 	mov	dptr,#(_server_ipaddr + 0x0008)
      0182C5 E4               [12] 1807 	clr	a
      0182C6 F0               [24] 1808 	movx	@dptr,a
      0182C7 E4               [12] 1809 	clr	a
      0182C8 A3               [24] 1810 	inc	dptr
      0182C9 F0               [24] 1811 	movx	@dptr,a
      0182CA 90 00 0E         [24] 1812 	mov	dptr,#(_server_ipaddr + 0x000a)
      0182CD E4               [12] 1813 	clr	a
      0182CE F0               [24] 1814 	movx	@dptr,a
      0182CF E4               [12] 1815 	clr	a
      0182D0 A3               [24] 1816 	inc	dptr
      0182D1 F0               [24] 1817 	movx	@dptr,a
      0182D2 90 00 10         [24] 1818 	mov	dptr,#(_server_ipaddr + 0x000c)
      0182D5 E4               [12] 1819 	clr	a
      0182D6 F0               [24] 1820 	movx	@dptr,a
      0182D7 E4               [12] 1821 	clr	a
      0182D8 A3               [24] 1822 	inc	dptr
      0182D9 F0               [24] 1823 	movx	@dptr,a
      0182DA 90 00 12         [24] 1824 	mov	dptr,#(_server_ipaddr + 0x000e)
      0182DD E4               [12] 1825 	clr	a
      0182DE F0               [24] 1826 	movx	@dptr,a
      0182DF 74 01            [12] 1827 	mov	a,#0x01
      0182E1 A3               [24] 1828 	inc	dptr
      0182E2 F0               [24] 1829 	movx	@dptr,a
                                   1830 ;	client.c:228: buf[0] = 0xEF;// start  of cmd 
      0182E3 90 18 70         [24] 1831 	mov	dptr,#_buf
      0182E6 74 EF            [12] 1832 	mov	a,#0xEF
      0182E8 F0               [24] 1833 	movx	@dptr,a
                                   1834 ;	client.c:229: buf[1] = DEVICE_ID;// deviceID
      0182E9 90 18 71         [24] 1835 	mov	dptr,#(_buf + 0x0001)
      0182EC 74 02            [12] 1836 	mov	a,#0x02
      0182EE F0               [24] 1837 	movx	@dptr,a
                                   1838 ;	client.c:230: buf[2] = 0xAA;// refer "this is a state report"
      0182EF 90 18 72         [24] 1839 	mov	dptr,#(_buf + 0x0002)
      0182F2 74 AA            [12] 1840 	mov	a,#0xAA
      0182F4 F0               [24] 1841 	movx	@dptr,a
                                   1842 ;	client.c:231: buf[3] =0x03;//data length
      0182F5 90 18 73         [24] 1843 	mov	dptr,#(_buf + 0x0003)
      0182F8 74 03            [12] 1844 	mov	a,#0x03
      0182FA F0               [24] 1845 	movx	@dptr,a
                                   1846 ;	client.c:232: buf[4] = 0x11;//0x01:air conditioner on  and 0x01:off
      0182FB 90 18 74         [24] 1847 	mov	dptr,#(_buf + 0x0004)
      0182FE 74 11            [12] 1848 	mov	a,#0x11
      018300 F0               [24] 1849 	movx	@dptr,a
                                   1850 ;	client.c:233: buf[5] = onoff_now;//mode of air conditioner 0x11:frozen 0x22:heat 0x33:...
      018301 90 18 78         [24] 1851 	mov	dptr,#_onoff_now
      018304 E0               [24] 1852 	movx	a,@dptr
      018305 90 18 75         [24] 1853 	mov	dptr,#(_buf + 0x0005)
      018308 F0               [24] 1854 	movx	@dptr,a
                                   1855 ;	client.c:234: buf[6] = temperature_now;// configure temperature at present
      018309 90 18 76         [24] 1856 	mov	dptr,#_temperature_now
      01830C E0               [24] 1857 	movx	a,@dptr
      01830D 90 18 76         [24] 1858 	mov	dptr,#(_buf + 0x0006)
      018310 F0               [24] 1859 	movx	@dptr,a
                                   1860 ;	client.c:235: buf[7] = 0xFE; //end of cmd
      018311 90 18 77         [24] 1861 	mov	dptr,#(_buf + 0x0007)
      018314 74 FE            [12] 1862 	mov	a,#0xFE
      018316 F0               [24] 1863 	movx	@dptr,a
                                   1864 ;	client.c:236: uip_udp_packet_sendto(client_conn, buf, 8, &server_ipaddr, UIP_HTONS(5775));
      018317 90 00 14         [24] 1865 	mov	dptr,#_client_conn
      01831A E0               [24] 1866 	movx	a,@dptr
      01831B FD               [12] 1867 	mov	r5,a
      01831C A3               [24] 1868 	inc	dptr
      01831D E0               [24] 1869 	movx	a,@dptr
      01831E FE               [12] 1870 	mov	r6,a
      01831F A3               [24] 1871 	inc	dptr
      018320 E0               [24] 1872 	movx	a,@dptr
      018321 FF               [12] 1873 	mov	r7,a
      018322 74 16            [12] 1874 	mov	a,#0x16
      018324 C0 E0            [24] 1875 	push	acc
      018326 74 8F            [12] 1876 	mov	a,#0x8F
      018328 C0 E0            [24] 1877 	push	acc
      01832A 74 04            [12] 1878 	mov	a,#_server_ipaddr
      01832C C0 E0            [24] 1879 	push	acc
      01832E 74 00            [12] 1880 	mov	a,#(_server_ipaddr >> 8)
      018330 C0 E0            [24] 1881 	push	acc
      018332 E4               [12] 1882 	clr	a
      018333 C0 E0            [24] 1883 	push	acc
      018335 74 08            [12] 1884 	mov	a,#0x08
      018337 C0 E0            [24] 1885 	push	acc
      018339 E4               [12] 1886 	clr	a
      01833A C0 E0            [24] 1887 	push	acc
      01833C 74 70            [12] 1888 	mov	a,#_buf
      01833E C0 E0            [24] 1889 	push	acc
      018340 74 18            [12] 1890 	mov	a,#(_buf >> 8)
      018342 C0 E0            [24] 1891 	push	acc
      018344 E4               [12] 1892 	clr	a
      018345 C0 E0            [24] 1893 	push	acc
      018347 8D 82            [24] 1894 	mov	dpl,r5
      018349 8E 83            [24] 1895 	mov	dph,r6
      01834B 8F F0            [24] 1896 	mov	b,r7
      01834D 78 6B            [12] 1897 	mov	r0,#_uip_udp_packet_sendto
      01834F 79 8C            [12] 1898 	mov	r1,#(_uip_udp_packet_sendto >> 8)
      018351 7A 04            [12] 1899 	mov	r2,#(_uip_udp_packet_sendto >> 16)
      018353 12 07 25         [24] 1900 	lcall	__sdcc_banked_call
      018356 E5 81            [12] 1901 	mov	a,sp
      018358 24 F6            [12] 1902 	add	a,#0xf6
      01835A F5 81            [12] 1903 	mov	sp,a
      01835C 02 07 37         [24] 1904 	ljmp	__sdcc_banked_ret
                                   1905 ;------------------------------------------------------------
                                   1906 ;Allocation info for local variables in function 'tcpip_handler'
                                   1907 ;------------------------------------------------------------
                                   1908 ;p                         Allocated to registers r5 r6 r7 
                                   1909 ;------------------------------------------------------------
                                   1910 ;	client.c:242: tcpip_handler(void)
                                   1911 ;	-----------------------------------------
                                   1912 ;	 function tcpip_handler
                                   1913 ;	-----------------------------------------
      01835F                       1914 _tcpip_handler:
                                   1915 ;	client.c:244: uint8_t * p=uip_appdata;
      01835F 90 06 FF         [24] 1916 	mov	dptr,#_uip_appdata
      018362 E0               [24] 1917 	movx	a,@dptr
      018363 FD               [12] 1918 	mov	r5,a
      018364 A3               [24] 1919 	inc	dptr
      018365 E0               [24] 1920 	movx	a,@dptr
      018366 FE               [12] 1921 	mov	r6,a
      018367 A3               [24] 1922 	inc	dptr
      018368 E0               [24] 1923 	movx	a,@dptr
      018369 FF               [12] 1924 	mov	r7,a
                                   1925 ;	client.c:246: if(p[0]==0xEF&&p[1]==DEVICE_ID&&p[2]==0xCA&&p[3]==0x00&&p[4]==0xFE)send_state();
      01836A 8D 82            [24] 1926 	mov	dpl,r5
      01836C 8E 83            [24] 1927 	mov	dph,r6
      01836E 8F F0            [24] 1928 	mov	b,r7
      018370 12 78 A1         [24] 1929 	lcall	__gptrget
      018373 FC               [12] 1930 	mov	r4,a
      018374 E4               [12] 1931 	clr	a
      018375 BC EF 01         [24] 1932 	cjne	r4,#0xEF,00187$
      018378 04               [12] 1933 	inc	a
      018379                       1934 00187$:
      018379 FC               [12] 1935 	mov	r4,a
      01837A 60 7C            [24] 1936 	jz	00122$
      01837C C0 04            [24] 1937 	push	ar4
      01837E 74 01            [12] 1938 	mov	a,#0x01
      018380 2D               [12] 1939 	add	a,r5
      018381 FA               [12] 1940 	mov	r2,a
      018382 E4               [12] 1941 	clr	a
      018383 3E               [12] 1942 	addc	a,r6
      018384 FB               [12] 1943 	mov	r3,a
      018385 8F 04            [24] 1944 	mov	ar4,r7
      018387 8A 82            [24] 1945 	mov	dpl,r2
      018389 8B 83            [24] 1946 	mov	dph,r3
      01838B 8C F0            [24] 1947 	mov	b,r4
      01838D 12 78 A1         [24] 1948 	lcall	__gptrget
      018390 FA               [12] 1949 	mov	r2,a
      018391 BA 02 02         [24] 1950 	cjne	r2,#0x02,00190$
      018394 80 04            [24] 1951 	sjmp	00191$
      018396                       1952 00190$:
      018396 D0 04            [24] 1953 	pop	ar4
      018398 80 5E            [24] 1954 	sjmp	00122$
      01839A                       1955 00191$:
      01839A 74 02            [12] 1956 	mov	a,#0x02
      01839C 2D               [12] 1957 	add	a,r5
      01839D FA               [12] 1958 	mov	r2,a
      01839E E4               [12] 1959 	clr	a
      01839F 3E               [12] 1960 	addc	a,r6
      0183A0 FB               [12] 1961 	mov	r3,a
      0183A1 8F 04            [24] 1962 	mov	ar4,r7
      0183A3 8A 82            [24] 1963 	mov	dpl,r2
      0183A5 8B 83            [24] 1964 	mov	dph,r3
      0183A7 8C F0            [24] 1965 	mov	b,r4
      0183A9 12 78 A1         [24] 1966 	lcall	__gptrget
      0183AC FA               [12] 1967 	mov	r2,a
      0183AD BA CA 02         [24] 1968 	cjne	r2,#0xCA,00192$
      0183B0 80 04            [24] 1969 	sjmp	00193$
      0183B2                       1970 00192$:
      0183B2 D0 04            [24] 1971 	pop	ar4
      0183B4 80 42            [24] 1972 	sjmp	00122$
      0183B6                       1973 00193$:
      0183B6 74 03            [12] 1974 	mov	a,#0x03
      0183B8 2D               [12] 1975 	add	a,r5
      0183B9 FA               [12] 1976 	mov	r2,a
      0183BA E4               [12] 1977 	clr	a
      0183BB 3E               [12] 1978 	addc	a,r6
      0183BC FB               [12] 1979 	mov	r3,a
      0183BD 8F 04            [24] 1980 	mov	ar4,r7
      0183BF 8A 82            [24] 1981 	mov	dpl,r2
      0183C1 8B 83            [24] 1982 	mov	dph,r3
      0183C3 8C F0            [24] 1983 	mov	b,r4
      0183C5 12 78 A1         [24] 1984 	lcall	__gptrget
      0183C8 D0 04            [24] 1985 	pop	ar4
      0183CA 70 2C            [24] 1986 	jnz	00122$
      0183CC C0 04            [24] 1987 	push	ar4
      0183CE 74 04            [12] 1988 	mov	a,#0x04
      0183D0 2D               [12] 1989 	add	a,r5
      0183D1 FA               [12] 1990 	mov	r2,a
      0183D2 E4               [12] 1991 	clr	a
      0183D3 3E               [12] 1992 	addc	a,r6
      0183D4 FB               [12] 1993 	mov	r3,a
      0183D5 8F 04            [24] 1994 	mov	ar4,r7
      0183D7 8A 82            [24] 1995 	mov	dpl,r2
      0183D9 8B 83            [24] 1996 	mov	dph,r3
      0183DB 8C F0            [24] 1997 	mov	b,r4
      0183DD 12 78 A1         [24] 1998 	lcall	__gptrget
      0183E0 FA               [12] 1999 	mov	r2,a
      0183E1 BA FE 02         [24] 2000 	cjne	r2,#0xFE,00195$
      0183E4 80 04            [24] 2001 	sjmp	00196$
      0183E6                       2002 00195$:
      0183E6 D0 04            [24] 2003 	pop	ar4
      0183E8 80 0E            [24] 2004 	sjmp	00122$
      0183EA                       2005 00196$:
      0183EA D0 04            [24] 2006 	pop	ar4
      0183EC 78 81            [12] 2007 	mov	r0,#_send_state
      0183EE 79 82            [12] 2008 	mov	r1,#(_send_state >> 8)
      0183F0 7A 01            [12] 2009 	mov	r2,#(_send_state >> 16)
      0183F2 12 07 25         [24] 2010 	lcall	__sdcc_banked_call
      0183F5 02 85 5E         [24] 2011 	ljmp	00128$
      0183F8                       2012 00122$:
                                   2013 ;	client.c:247: else if(p[0]==0xEF&&p[1]==DEVICE_ID&&p[2]==0xC1&&p[3]==0x00&&p[4]==0xFE)turn_on();
      0183F8 EC               [12] 2014 	mov	a,r4
      0183F9 60 7C            [24] 2015 	jz	00115$
      0183FB C0 04            [24] 2016 	push	ar4
      0183FD 74 01            [12] 2017 	mov	a,#0x01
      0183FF 2D               [12] 2018 	add	a,r5
      018400 FA               [12] 2019 	mov	r2,a
      018401 E4               [12] 2020 	clr	a
      018402 3E               [12] 2021 	addc	a,r6
      018403 FB               [12] 2022 	mov	r3,a
      018404 8F 04            [24] 2023 	mov	ar4,r7
      018406 8A 82            [24] 2024 	mov	dpl,r2
      018408 8B 83            [24] 2025 	mov	dph,r3
      01840A 8C F0            [24] 2026 	mov	b,r4
      01840C 12 78 A1         [24] 2027 	lcall	__gptrget
      01840F FA               [12] 2028 	mov	r2,a
      018410 BA 02 02         [24] 2029 	cjne	r2,#0x02,00198$
      018413 80 04            [24] 2030 	sjmp	00199$
      018415                       2031 00198$:
      018415 D0 04            [24] 2032 	pop	ar4
      018417 80 5E            [24] 2033 	sjmp	00115$
      018419                       2034 00199$:
      018419 74 02            [12] 2035 	mov	a,#0x02
      01841B 2D               [12] 2036 	add	a,r5
      01841C FA               [12] 2037 	mov	r2,a
      01841D E4               [12] 2038 	clr	a
      01841E 3E               [12] 2039 	addc	a,r6
      01841F FB               [12] 2040 	mov	r3,a
      018420 8F 04            [24] 2041 	mov	ar4,r7
      018422 8A 82            [24] 2042 	mov	dpl,r2
      018424 8B 83            [24] 2043 	mov	dph,r3
      018426 8C F0            [24] 2044 	mov	b,r4
      018428 12 78 A1         [24] 2045 	lcall	__gptrget
      01842B FA               [12] 2046 	mov	r2,a
      01842C BA C1 02         [24] 2047 	cjne	r2,#0xC1,00200$
      01842F 80 04            [24] 2048 	sjmp	00201$
      018431                       2049 00200$:
      018431 D0 04            [24] 2050 	pop	ar4
      018433 80 42            [24] 2051 	sjmp	00115$
      018435                       2052 00201$:
      018435 74 03            [12] 2053 	mov	a,#0x03
      018437 2D               [12] 2054 	add	a,r5
      018438 FA               [12] 2055 	mov	r2,a
      018439 E4               [12] 2056 	clr	a
      01843A 3E               [12] 2057 	addc	a,r6
      01843B FB               [12] 2058 	mov	r3,a
      01843C 8F 04            [24] 2059 	mov	ar4,r7
      01843E 8A 82            [24] 2060 	mov	dpl,r2
      018440 8B 83            [24] 2061 	mov	dph,r3
      018442 8C F0            [24] 2062 	mov	b,r4
      018444 12 78 A1         [24] 2063 	lcall	__gptrget
      018447 D0 04            [24] 2064 	pop	ar4
      018449 70 2C            [24] 2065 	jnz	00115$
      01844B C0 04            [24] 2066 	push	ar4
      01844D 74 04            [12] 2067 	mov	a,#0x04
      01844F 2D               [12] 2068 	add	a,r5
      018450 FA               [12] 2069 	mov	r2,a
      018451 E4               [12] 2070 	clr	a
      018452 3E               [12] 2071 	addc	a,r6
      018453 FB               [12] 2072 	mov	r3,a
      018454 8F 04            [24] 2073 	mov	ar4,r7
      018456 8A 82            [24] 2074 	mov	dpl,r2
      018458 8B 83            [24] 2075 	mov	dph,r3
      01845A 8C F0            [24] 2076 	mov	b,r4
      01845C 12 78 A1         [24] 2077 	lcall	__gptrget
      01845F FA               [12] 2078 	mov	r2,a
      018460 BA FE 02         [24] 2079 	cjne	r2,#0xFE,00203$
      018463 80 04            [24] 2080 	sjmp	00204$
      018465                       2081 00203$:
      018465 D0 04            [24] 2082 	pop	ar4
      018467 80 0E            [24] 2083 	sjmp	00115$
      018469                       2084 00204$:
      018469 D0 04            [24] 2085 	pop	ar4
      01846B 78 C5            [12] 2086 	mov	r0,#_turn_on
      01846D 79 81            [12] 2087 	mov	r1,#(_turn_on >> 8)
      01846F 7A 01            [12] 2088 	mov	r2,#(_turn_on >> 16)
      018471 12 07 25         [24] 2089 	lcall	__sdcc_banked_call
      018474 02 85 5E         [24] 2090 	ljmp	00128$
      018477                       2091 00115$:
                                   2092 ;	client.c:248: else if(p[0]==0xEF&&p[1]==DEVICE_ID&&p[2]==0xC0&&p[3]==0x00&&p[4]==0xFE)turn_off();
      018477 EC               [12] 2093 	mov	a,r4
      018478 60 7B            [24] 2094 	jz	00108$
      01847A C0 04            [24] 2095 	push	ar4
      01847C 74 01            [12] 2096 	mov	a,#0x01
      01847E 2D               [12] 2097 	add	a,r5
      01847F FA               [12] 2098 	mov	r2,a
      018480 E4               [12] 2099 	clr	a
      018481 3E               [12] 2100 	addc	a,r6
      018482 FB               [12] 2101 	mov	r3,a
      018483 8F 04            [24] 2102 	mov	ar4,r7
      018485 8A 82            [24] 2103 	mov	dpl,r2
      018487 8B 83            [24] 2104 	mov	dph,r3
      018489 8C F0            [24] 2105 	mov	b,r4
      01848B 12 78 A1         [24] 2106 	lcall	__gptrget
      01848E FA               [12] 2107 	mov	r2,a
      01848F BA 02 02         [24] 2108 	cjne	r2,#0x02,00206$
      018492 80 04            [24] 2109 	sjmp	00207$
      018494                       2110 00206$:
      018494 D0 04            [24] 2111 	pop	ar4
      018496 80 5D            [24] 2112 	sjmp	00108$
      018498                       2113 00207$:
      018498 74 02            [12] 2114 	mov	a,#0x02
      01849A 2D               [12] 2115 	add	a,r5
      01849B FA               [12] 2116 	mov	r2,a
      01849C E4               [12] 2117 	clr	a
      01849D 3E               [12] 2118 	addc	a,r6
      01849E FB               [12] 2119 	mov	r3,a
      01849F 8F 04            [24] 2120 	mov	ar4,r7
      0184A1 8A 82            [24] 2121 	mov	dpl,r2
      0184A3 8B 83            [24] 2122 	mov	dph,r3
      0184A5 8C F0            [24] 2123 	mov	b,r4
      0184A7 12 78 A1         [24] 2124 	lcall	__gptrget
      0184AA FA               [12] 2125 	mov	r2,a
      0184AB BA C0 02         [24] 2126 	cjne	r2,#0xC0,00208$
      0184AE 80 04            [24] 2127 	sjmp	00209$
      0184B0                       2128 00208$:
      0184B0 D0 04            [24] 2129 	pop	ar4
      0184B2 80 41            [24] 2130 	sjmp	00108$
      0184B4                       2131 00209$:
      0184B4 74 03            [12] 2132 	mov	a,#0x03
      0184B6 2D               [12] 2133 	add	a,r5
      0184B7 FA               [12] 2134 	mov	r2,a
      0184B8 E4               [12] 2135 	clr	a
      0184B9 3E               [12] 2136 	addc	a,r6
      0184BA FB               [12] 2137 	mov	r3,a
      0184BB 8F 04            [24] 2138 	mov	ar4,r7
      0184BD 8A 82            [24] 2139 	mov	dpl,r2
      0184BF 8B 83            [24] 2140 	mov	dph,r3
      0184C1 8C F0            [24] 2141 	mov	b,r4
      0184C3 12 78 A1         [24] 2142 	lcall	__gptrget
      0184C6 D0 04            [24] 2143 	pop	ar4
      0184C8 70 2B            [24] 2144 	jnz	00108$
      0184CA C0 04            [24] 2145 	push	ar4
      0184CC 74 04            [12] 2146 	mov	a,#0x04
      0184CE 2D               [12] 2147 	add	a,r5
      0184CF FA               [12] 2148 	mov	r2,a
      0184D0 E4               [12] 2149 	clr	a
      0184D1 3E               [12] 2150 	addc	a,r6
      0184D2 FB               [12] 2151 	mov	r3,a
      0184D3 8F 04            [24] 2152 	mov	ar4,r7
      0184D5 8A 82            [24] 2153 	mov	dpl,r2
      0184D7 8B 83            [24] 2154 	mov	dph,r3
      0184D9 8C F0            [24] 2155 	mov	b,r4
      0184DB 12 78 A1         [24] 2156 	lcall	__gptrget
      0184DE FA               [12] 2157 	mov	r2,a
      0184DF BA FE 02         [24] 2158 	cjne	r2,#0xFE,00211$
      0184E2 80 04            [24] 2159 	sjmp	00212$
      0184E4                       2160 00211$:
      0184E4 D0 04            [24] 2161 	pop	ar4
      0184E6 80 0D            [24] 2162 	sjmp	00108$
      0184E8                       2163 00212$:
      0184E8 D0 04            [24] 2164 	pop	ar4
      0184EA 78 4A            [12] 2165 	mov	r0,#_turn_off
      0184EC 79 81            [12] 2166 	mov	r1,#(_turn_off >> 8)
      0184EE 7A 01            [12] 2167 	mov	r2,#(_turn_off >> 16)
      0184F0 12 07 25         [24] 2168 	lcall	__sdcc_banked_call
      0184F3 80 69            [24] 2169 	sjmp	00128$
      0184F5                       2170 00108$:
                                   2171 ;	client.c:249: else if(p[0]==0xEF&&p[1]==DEVICE_ID&&p[3]==0x00&&p[4]==0xFE)set_temp(p[2]);
      0184F5 EC               [12] 2172 	mov	a,r4
      0184F6 60 5D            [24] 2173 	jz	00102$
      0184F8 74 01            [12] 2174 	mov	a,#0x01
      0184FA 2D               [12] 2175 	add	a,r5
      0184FB FA               [12] 2176 	mov	r2,a
      0184FC E4               [12] 2177 	clr	a
      0184FD 3E               [12] 2178 	addc	a,r6
      0184FE FB               [12] 2179 	mov	r3,a
      0184FF 8F 04            [24] 2180 	mov	ar4,r7
      018501 8A 82            [24] 2181 	mov	dpl,r2
      018503 8B 83            [24] 2182 	mov	dph,r3
      018505 8C F0            [24] 2183 	mov	b,r4
      018507 12 78 A1         [24] 2184 	lcall	__gptrget
      01850A FA               [12] 2185 	mov	r2,a
      01850B BA 02 47         [24] 2186 	cjne	r2,#0x02,00102$
      01850E 74 03            [12] 2187 	mov	a,#0x03
      018510 2D               [12] 2188 	add	a,r5
      018511 FA               [12] 2189 	mov	r2,a
      018512 E4               [12] 2190 	clr	a
      018513 3E               [12] 2191 	addc	a,r6
      018514 FB               [12] 2192 	mov	r3,a
      018515 8F 04            [24] 2193 	mov	ar4,r7
      018517 8A 82            [24] 2194 	mov	dpl,r2
      018519 8B 83            [24] 2195 	mov	dph,r3
      01851B 8C F0            [24] 2196 	mov	b,r4
      01851D 12 78 A1         [24] 2197 	lcall	__gptrget
      018520 70 33            [24] 2198 	jnz	00102$
      018522 74 04            [12] 2199 	mov	a,#0x04
      018524 2D               [12] 2200 	add	a,r5
      018525 FA               [12] 2201 	mov	r2,a
      018526 E4               [12] 2202 	clr	a
      018527 3E               [12] 2203 	addc	a,r6
      018528 FB               [12] 2204 	mov	r3,a
      018529 8F 04            [24] 2205 	mov	ar4,r7
      01852B 8A 82            [24] 2206 	mov	dpl,r2
      01852D 8B 83            [24] 2207 	mov	dph,r3
      01852F 8C F0            [24] 2208 	mov	b,r4
      018531 12 78 A1         [24] 2209 	lcall	__gptrget
      018534 FA               [12] 2210 	mov	r2,a
      018535 BA FE 1D         [24] 2211 	cjne	r2,#0xFE,00102$
      018538 74 02            [12] 2212 	mov	a,#0x02
      01853A 2D               [12] 2213 	add	a,r5
      01853B FD               [12] 2214 	mov	r5,a
      01853C E4               [12] 2215 	clr	a
      01853D 3E               [12] 2216 	addc	a,r6
      01853E FE               [12] 2217 	mov	r6,a
      01853F 8D 82            [24] 2218 	mov	dpl,r5
      018541 8E 83            [24] 2219 	mov	dph,r6
      018543 8F F0            [24] 2220 	mov	b,r7
      018545 12 78 A1         [24] 2221 	lcall	__gptrget
      018548 F5 82            [12] 2222 	mov	dpl,a
      01854A 78 C7            [12] 2223 	mov	r0,#_set_temp
      01854C 79 80            [12] 2224 	mov	r1,#(_set_temp >> 8)
      01854E 7A 01            [12] 2225 	mov	r2,#(_set_temp >> 16)
      018550 12 07 25         [24] 2226 	lcall	__sdcc_banked_call
      018553 80 09            [24] 2227 	sjmp	00128$
      018555                       2228 00102$:
                                   2229 ;	client.c:250: else send_state();
      018555 78 81            [12] 2230 	mov	r0,#_send_state
      018557 79 82            [12] 2231 	mov	r1,#(_send_state >> 8)
      018559 7A 01            [12] 2232 	mov	r2,#(_send_state >> 16)
      01855B 12 07 25         [24] 2233 	lcall	__sdcc_banked_call
      01855E                       2234 00128$:
      01855E 02 07 37         [24] 2235 	ljmp	__sdcc_banked_ret
                                   2236 ;------------------------------------------------------------
                                   2237 ;Allocation info for local variables in function 'set_global_address'
                                   2238 ;------------------------------------------------------------
                                   2239 ;ipaddr                    Allocated to stack - sp -15
                                   2240 ;------------------------------------------------------------
                                   2241 ;	client.c:254: set_global_address(void)
                                   2242 ;	-----------------------------------------
                                   2243 ;	 function set_global_address
                                   2244 ;	-----------------------------------------
      018561                       2245 _set_global_address:
      018561 E5 81            [12] 2246 	mov	a,sp
      018563 24 10            [12] 2247 	add	a,#0x10
                                   2248 ;	client.c:258: uip_ip6addr(&ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0);
      018565 F5 81            [12] 2249 	mov	sp,a
      018567 24 F1            [12] 2250 	add	a,#0xF1
      018569 F8               [12] 2251 	mov	r0,a
      01856A 76 AA            [12] 2252 	mov	@r0,#0xAA
      01856C 08               [12] 2253 	inc	r0
      01856D 76 AA            [12] 2254 	mov	@r0,#0xAA
      01856F E5 81            [12] 2255 	mov	a,sp
      018571 24 F1            [12] 2256 	add	a,#0xF1
      018573 FF               [12] 2257 	mov	r7,a
      018574 24 02            [12] 2258 	add	a,#0x02
      018576 F8               [12] 2259 	mov	r0,a
      018577 76 00            [12] 2260 	mov	@r0,#0x00
      018579 08               [12] 2261 	inc	r0
      01857A 76 00            [12] 2262 	mov	@r0,#0x00
      01857C 74 04            [12] 2263 	mov	a,#0x04
      01857E 2F               [12] 2264 	add	a,r7
      01857F F8               [12] 2265 	mov	r0,a
      018580 76 00            [12] 2266 	mov	@r0,#0x00
      018582 08               [12] 2267 	inc	r0
      018583 76 00            [12] 2268 	mov	@r0,#0x00
      018585 74 06            [12] 2269 	mov	a,#0x06
      018587 2F               [12] 2270 	add	a,r7
      018588 F8               [12] 2271 	mov	r0,a
      018589 76 00            [12] 2272 	mov	@r0,#0x00
      01858B 08               [12] 2273 	inc	r0
      01858C 76 00            [12] 2274 	mov	@r0,#0x00
      01858E 74 08            [12] 2275 	mov	a,#0x08
      018590 2F               [12] 2276 	add	a,r7
      018591 F8               [12] 2277 	mov	r0,a
      018592 76 00            [12] 2278 	mov	@r0,#0x00
      018594 08               [12] 2279 	inc	r0
      018595 76 00            [12] 2280 	mov	@r0,#0x00
      018597 74 0A            [12] 2281 	mov	a,#0x0A
      018599 2F               [12] 2282 	add	a,r7
      01859A F8               [12] 2283 	mov	r0,a
      01859B 76 00            [12] 2284 	mov	@r0,#0x00
      01859D 08               [12] 2285 	inc	r0
      01859E 76 00            [12] 2286 	mov	@r0,#0x00
      0185A0 74 0C            [12] 2287 	mov	a,#0x0C
      0185A2 2F               [12] 2288 	add	a,r7
      0185A3 F8               [12] 2289 	mov	r0,a
      0185A4 76 00            [12] 2290 	mov	@r0,#0x00
      0185A6 08               [12] 2291 	inc	r0
      0185A7 76 00            [12] 2292 	mov	@r0,#0x00
      0185A9 74 0E            [12] 2293 	mov	a,#0x0E
      0185AB 2F               [12] 2294 	add	a,r7
      0185AC F8               [12] 2295 	mov	r0,a
      0185AD 76 00            [12] 2296 	mov	@r0,#0x00
      0185AF 08               [12] 2297 	inc	r0
      0185B0 76 00            [12] 2298 	mov	@r0,#0x00
                                   2299 ;	client.c:259: uip_ds6_set_addr_iid(&ipaddr, &uip_lladdr);
      0185B2 E5 81            [12] 2300 	mov	a,sp
      0185B4 24 F1            [12] 2301 	add	a,#0xF1
      0185B6 FF               [12] 2302 	mov	r7,a
      0185B7 FC               [12] 2303 	mov	r4,a
      0185B8 7D 00            [12] 2304 	mov	r5,#0x00
      0185BA 7E 40            [12] 2305 	mov	r6,#0x40
      0185BC C0 07            [24] 2306 	push	ar7
      0185BE 74 04            [12] 2307 	mov	a,#_uip_lladdr
      0185C0 C0 E0            [24] 2308 	push	acc
      0185C2 74 06            [12] 2309 	mov	a,#(_uip_lladdr >> 8)
      0185C4 C0 E0            [24] 2310 	push	acc
      0185C6 E4               [12] 2311 	clr	a
      0185C7 C0 E0            [24] 2312 	push	acc
      0185C9 8C 82            [24] 2313 	mov	dpl,r4
      0185CB 8D 83            [24] 2314 	mov	dph,r5
      0185CD 8E F0            [24] 2315 	mov	b,r6
      0185CF 78 0D            [12] 2316 	mov	r0,#_uip_ds6_set_addr_iid
      0185D1 79 9B            [12] 2317 	mov	r1,#(_uip_ds6_set_addr_iid >> 8)
      0185D3 7A 02            [12] 2318 	mov	r2,#(_uip_ds6_set_addr_iid >> 16)
      0185D5 12 07 25         [24] 2319 	lcall	__sdcc_banked_call
      0185D8 15 81            [12] 2320 	dec	sp
      0185DA 15 81            [12] 2321 	dec	sp
      0185DC 15 81            [12] 2322 	dec	sp
      0185DE D0 07            [24] 2323 	pop	ar7
                                   2324 ;	client.c:260: uip_ds6_addr_add(&ipaddr, 0, ADDR_AUTOCONF);
      0185E0 7E 00            [12] 2325 	mov	r6,#0x00
      0185E2 7D 40            [12] 2326 	mov	r5,#0x40
      0185E4 74 01            [12] 2327 	mov	a,#0x01
      0185E6 C0 E0            [24] 2328 	push	acc
      0185E8 E4               [12] 2329 	clr	a
      0185E9 C0 E0            [24] 2330 	push	acc
      0185EB C0 E0            [24] 2331 	push	acc
      0185ED C0 E0            [24] 2332 	push	acc
      0185EF C0 E0            [24] 2333 	push	acc
      0185F1 8F 82            [24] 2334 	mov	dpl,r7
      0185F3 8E 83            [24] 2335 	mov	dph,r6
      0185F5 8D F0            [24] 2336 	mov	b,r5
      0185F7 78 00            [12] 2337 	mov	r0,#_uip_ds6_addr_add
      0185F9 79 91            [12] 2338 	mov	r1,#(_uip_ds6_addr_add >> 8)
      0185FB 7A 02            [12] 2339 	mov	r2,#(_uip_ds6_addr_add >> 16)
      0185FD 12 07 25         [24] 2340 	lcall	__sdcc_banked_call
      018600 E5 81            [12] 2341 	mov	a,sp
      018602 24 FB            [12] 2342 	add	a,#0xfb
      018604 F5 81            [12] 2343 	mov	sp,a
      018606 E5 81            [12] 2344 	mov	a,sp
      018608 24 F0            [12] 2345 	add	a,#0xF0
      01860A F5 81            [12] 2346 	mov	sp,a
      01860C 02 07 37         [24] 2347 	ljmp	__sdcc_banked_ret
                                   2348 ;------------------------------------------------------------
                                   2349 ;Allocation info for local variables in function 'process_thread_udp_client_process'
                                   2350 ;------------------------------------------------------------
                                   2351 ;ev                        Allocated to stack - sp -3
                                   2352 ;data                      Allocated to stack - sp -6
                                   2353 ;process_pt                Allocated to registers r5 r6 r7 
                                   2354 ;PT_YIELD_FLAG             Allocated to registers r4 
                                   2355 ;et                        Allocated with name '_process_thread_udp_client_process_et_1_545'
                                   2356 ;------------------------------------------------------------
                                   2357 ;	client.c:263: PROCESS_THREAD(udp_client_process, ev, data)
                                   2358 ;	-----------------------------------------
                                   2359 ;	 function process_thread_udp_client_process
                                   2360 ;	-----------------------------------------
      01860F                       2361 _process_thread_udp_client_process:
                                   2362 ;	client.c:267: PROCESS_BEGIN();
      01860F AD 82            [24] 2363 	mov	r5,dpl
      018611 AE 83            [24] 2364 	mov	r6,dph
      018613 AF F0            [24] 2365 	mov	r7,b
      018615 7C 01            [12] 2366 	mov	r4,#0x01
      018617 12 78 A1         [24] 2367 	lcall	__gptrget
      01861A FA               [12] 2368 	mov	r2,a
      01861B A3               [24] 2369 	inc	dptr
      01861C 12 78 A1         [24] 2370 	lcall	__gptrget
      01861F FB               [12] 2371 	mov	r3,a
      018620 BA 00 05         [24] 2372 	cjne	r2,#0x00,00147$
      018623 BB 00 02         [24] 2373 	cjne	r3,#0x00,00147$
      018626 80 0C            [24] 2374 	sjmp	00101$
      018628                       2375 00147$:
      018628 BA 23 06         [24] 2376 	cjne	r2,#0x23,00148$
      01862B BB 01 03         [24] 2377 	cjne	r3,#0x01,00148$
      01862E 02 87 3C         [24] 2378 	ljmp	00102$
      018631                       2379 00148$:
      018631 02 87 F3         [24] 2380 	ljmp	00120$
      018634                       2381 00101$:
                                   2382 ;	client.c:270: set_global_address();
      018634 C0 05            [24] 2383 	push	ar5
      018636 C0 06            [24] 2384 	push	ar6
      018638 C0 07            [24] 2385 	push	ar7
      01863A C0 07            [24] 2386 	push	ar7
      01863C C0 06            [24] 2387 	push	ar6
      01863E C0 05            [24] 2388 	push	ar5
      018640 78 61            [12] 2389 	mov	r0,#_set_global_address
      018642 79 85            [12] 2390 	mov	r1,#(_set_global_address >> 8)
      018644 7A 01            [12] 2391 	mov	r2,#(_set_global_address >> 16)
      018646 12 07 25         [24] 2392 	lcall	__sdcc_banked_call
      018649 D0 05            [24] 2393 	pop	ar5
      01864B D0 06            [24] 2394 	pop	ar6
      01864D D0 07            [24] 2395 	pop	ar7
                                   2396 ;	client.c:273: client_conn = udp_new(NULL, UIP_HTONS(5775), NULL);
      01864F C0 06            [24] 2397 	push	ar6
      018651 C0 05            [24] 2398 	push	ar5
      018653 E4               [12] 2399 	clr	a
      018654 C0 E0            [24] 2400 	push	acc
      018656 C0 E0            [24] 2401 	push	acc
      018658 C0 E0            [24] 2402 	push	acc
      01865A 74 16            [12] 2403 	mov	a,#0x16
      01865C C0 E0            [24] 2404 	push	acc
      01865E 74 8F            [12] 2405 	mov	a,#0x8F
      018660 C0 E0            [24] 2406 	push	acc
      018662 90 00 00         [24] 2407 	mov	dptr,#0x0000
      018665 75 F0 00         [24] 2408 	mov	b,#0x00
      018668 78 17            [12] 2409 	mov	r0,#_udp_new
      01866A 79 8C            [12] 2410 	mov	r1,#(_udp_new >> 8)
      01866C 7A 01            [12] 2411 	mov	r2,#(_udp_new >> 16)
      01866E 12 07 25         [24] 2412 	lcall	__sdcc_banked_call
      018671 AA 82            [24] 2413 	mov	r2,dpl
      018673 AB 83            [24] 2414 	mov	r3,dph
      018675 AF F0            [24] 2415 	mov	r7,b
      018677 E5 81            [12] 2416 	mov	a,sp
      018679 24 FB            [12] 2417 	add	a,#0xfb
      01867B F5 81            [12] 2418 	mov	sp,a
      01867D D0 05            [24] 2419 	pop	ar5
      01867F D0 06            [24] 2420 	pop	ar6
      018681 90 00 14         [24] 2421 	mov	dptr,#_client_conn
      018684 EA               [12] 2422 	mov	a,r2
      018685 F0               [24] 2423 	movx	@dptr,a
      018686 EB               [12] 2424 	mov	a,r3
      018687 A3               [24] 2425 	inc	dptr
      018688 F0               [24] 2426 	movx	@dptr,a
      018689 EF               [12] 2427 	mov	a,r7
      01868A A3               [24] 2428 	inc	dptr
      01868B F0               [24] 2429 	movx	@dptr,a
                                   2430 ;	client.c:275: udp_bind(client_conn, UIP_HTONS(5885));
      01868C 74 10            [12] 2431 	mov	a,#0x10
      01868E 2A               [12] 2432 	add	a,r2
      01868F FA               [12] 2433 	mov	r2,a
      018690 E4               [12] 2434 	clr	a
      018691 3B               [12] 2435 	addc	a,r3
      018692 FB               [12] 2436 	mov	r3,a
      018693 8A 82            [24] 2437 	mov	dpl,r2
      018695 8B 83            [24] 2438 	mov	dph,r3
      018697 8F F0            [24] 2439 	mov	b,r7
      018699 74 16            [12] 2440 	mov	a,#0x16
      01869B 12 72 05         [24] 2441 	lcall	__gptrput
      01869E A3               [24] 2442 	inc	dptr
      01869F 74 FD            [12] 2443 	mov	a,#0xFD
      0186A1 12 72 05         [24] 2444 	lcall	__gptrput
                                   2445 ;	client.c:276: server_conn = udp_new(NULL, UIP_HTONS(0), NULL);  
      0186A4 E4               [12] 2446 	clr	a
      0186A5 C0 E0            [24] 2447 	push	acc
      0186A7 C0 E0            [24] 2448 	push	acc
      0186A9 C0 E0            [24] 2449 	push	acc
      0186AB E4               [12] 2450 	clr	a
      0186AC C0 E0            [24] 2451 	push	acc
      0186AE C0 E0            [24] 2452 	push	acc
      0186B0 90 00 00         [24] 2453 	mov	dptr,#0x0000
      0186B3 75 F0 00         [24] 2454 	mov	b,#0x00
      0186B6 78 17            [12] 2455 	mov	r0,#_udp_new
      0186B8 79 8C            [12] 2456 	mov	r1,#(_udp_new >> 8)
      0186BA 7A 01            [12] 2457 	mov	r2,#(_udp_new >> 16)
      0186BC 12 07 25         [24] 2458 	lcall	__sdcc_banked_call
      0186BF AD 82            [24] 2459 	mov	r5,dpl
      0186C1 AE 83            [24] 2460 	mov	r6,dph
      0186C3 AF F0            [24] 2461 	mov	r7,b
      0186C5 E5 81            [12] 2462 	mov	a,sp
      0186C7 24 FB            [12] 2463 	add	a,#0xfb
      0186C9 F5 81            [12] 2464 	mov	sp,a
      0186CB 90 00 17         [24] 2465 	mov	dptr,#_server_conn
      0186CE ED               [12] 2466 	mov	a,r5
      0186CF F0               [24] 2467 	movx	@dptr,a
      0186D0 EE               [12] 2468 	mov	a,r6
      0186D1 A3               [24] 2469 	inc	dptr
      0186D2 F0               [24] 2470 	movx	@dptr,a
      0186D3 EF               [12] 2471 	mov	a,r7
      0186D4 A3               [24] 2472 	inc	dptr
      0186D5 F0               [24] 2473 	movx	@dptr,a
                                   2474 ;	client.c:277: udp_bind(server_conn, UIP_HTONS(5885));
      0186D6 74 10            [12] 2475 	mov	a,#0x10
      0186D8 2D               [12] 2476 	add	a,r5
      0186D9 FD               [12] 2477 	mov	r5,a
      0186DA E4               [12] 2478 	clr	a
      0186DB 3E               [12] 2479 	addc	a,r6
      0186DC FE               [12] 2480 	mov	r6,a
      0186DD 8D 82            [24] 2481 	mov	dpl,r5
      0186DF 8E 83            [24] 2482 	mov	dph,r6
      0186E1 8F F0            [24] 2483 	mov	b,r7
      0186E3 74 16            [12] 2484 	mov	a,#0x16
      0186E5 12 72 05         [24] 2485 	lcall	__gptrput
      0186E8 A3               [24] 2486 	inc	dptr
      0186E9 74 FD            [12] 2487 	mov	a,#0xFD
      0186EB 12 72 05         [24] 2488 	lcall	__gptrput
                                   2489 ;	client.c:284: DelayMS(3000);
      0186EE 90 0B B8         [24] 2490 	mov	dptr,#0x0BB8
      0186F1 E4               [12] 2491 	clr	a
      0186F2 F5 F0            [12] 2492 	mov	b,a
      0186F4 C0 07            [24] 2493 	push	ar7
      0186F6 C0 06            [24] 2494 	push	ar6
      0186F8 C0 05            [24] 2495 	push	ar5
      0186FA 78 12            [12] 2496 	mov	r0,#_DelayMS
      0186FC 79 82            [12] 2497 	mov	r1,#(_DelayMS >> 8)
      0186FE 7A 01            [12] 2498 	mov	r2,#(_DelayMS >> 16)
      018700 12 07 25         [24] 2499 	lcall	__sdcc_banked_call
                                   2500 ;	client.c:287: etimer_set(&et,10*CLOCK_SECOND);
      018703 E4               [12] 2501 	clr	a
      018704 C0 E0            [24] 2502 	push	acc
      018706 74 05            [12] 2503 	mov	a,#0x05
      018708 C0 E0            [24] 2504 	push	acc
      01870A 90 00 1A         [24] 2505 	mov	dptr,#_process_thread_udp_client_process_et_1_545
      01870D 75 F0 00         [24] 2506 	mov	b,#0x00
      018710 78 86            [12] 2507 	mov	r0,#_etimer_set
      018712 79 91            [12] 2508 	mov	r1,#(_etimer_set >> 8)
      018714 7A 03            [12] 2509 	mov	r2,#(_etimer_set >> 16)
      018716 12 07 25         [24] 2510 	lcall	__sdcc_banked_call
      018719 15 81            [12] 2511 	dec	sp
      01871B 15 81            [12] 2512 	dec	sp
      01871D D0 05            [24] 2513 	pop	ar5
      01871F D0 06            [24] 2514 	pop	ar6
      018721 D0 07            [24] 2515 	pop	ar7
                                   2516 ;	client.c:316: PROCESS_END();
      018723 D0 07            [24] 2517 	pop	ar7
      018725 D0 06            [24] 2518 	pop	ar6
      018727 D0 05            [24] 2519 	pop	ar5
                                   2520 ;	client.c:288: while(1) 
      018729                       2521 00118$:
                                   2522 ;	client.c:291: PROCESS_YIELD();
      018729 7C 00            [12] 2523 	mov	r4,#0x00
      01872B 8D 82            [24] 2524 	mov	dpl,r5
      01872D 8E 83            [24] 2525 	mov	dph,r6
      01872F 8F F0            [24] 2526 	mov	b,r7
      018731 74 23            [12] 2527 	mov	a,#0x23
      018733 12 72 05         [24] 2528 	lcall	__gptrput
      018736 A3               [24] 2529 	inc	dptr
      018737 74 01            [12] 2530 	mov	a,#0x01
      018739 12 72 05         [24] 2531 	lcall	__gptrput
      01873C                       2532 00102$:
      01873C EC               [12] 2533 	mov	a,r4
      01873D 70 06            [24] 2534 	jnz	00106$
      01873F 75 82 01         [24] 2535 	mov	dpl,#0x01
      018742 02 88 05         [24] 2536 	ljmp	00121$
      018745                       2537 00106$:
                                   2538 ;	client.c:293: if(ev == tcpip_event)
      018745 90 00 24         [24] 2539 	mov	dptr,#_tcpip_event
      018748 E0               [24] 2540 	movx	a,@dptr
      018749 FC               [12] 2541 	mov	r4,a
      01874A E5 81            [12] 2542 	mov	a,sp
      01874C 24 FD            [12] 2543 	add	a,#0xfd
      01874E F8               [12] 2544 	mov	r0,a
      01874F E6               [12] 2545 	mov	a,@r0
      018750 B5 04 17         [24] 2546 	cjne	a,ar4,00115$
                                   2547 ;	client.c:295: tcpip_handler();
      018753 C0 07            [24] 2548 	push	ar7
      018755 C0 06            [24] 2549 	push	ar6
      018757 C0 05            [24] 2550 	push	ar5
      018759 78 5F            [12] 2551 	mov	r0,#_tcpip_handler
      01875B 79 83            [12] 2552 	mov	r1,#(_tcpip_handler >> 8)
      01875D 7A 01            [12] 2553 	mov	r2,#(_tcpip_handler >> 16)
      01875F 12 07 25         [24] 2554 	lcall	__sdcc_banked_call
      018762 D0 05            [24] 2555 	pop	ar5
      018764 D0 06            [24] 2556 	pop	ar6
      018766 D0 07            [24] 2557 	pop	ar7
      018768 80 BF            [24] 2558 	sjmp	00118$
      01876A                       2559 00115$:
                                   2560 ;	client.c:298: else if((sended_flag!=1)&&etimer_expired(&et)) 
      01876A 90 18 75         [24] 2561 	mov	dptr,#_sended_flag
      01876D E0               [24] 2562 	movx	a,@dptr
      01876E FC               [12] 2563 	mov	r4,a
      01876F BC 01 02         [24] 2564 	cjne	r4,#0x01,00152$
      018772 80 B5            [24] 2565 	sjmp	00118$
      018774                       2566 00152$:
      018774 90 00 1A         [24] 2567 	mov	dptr,#_process_thread_udp_client_process_et_1_545
      018777 75 F0 00         [24] 2568 	mov	b,#0x00
      01877A C0 07            [24] 2569 	push	ar7
      01877C C0 06            [24] 2570 	push	ar6
      01877E C0 05            [24] 2571 	push	ar5
      018780 78 75            [12] 2572 	mov	r0,#_etimer_expired
      018782 79 92            [12] 2573 	mov	r1,#(_etimer_expired >> 8)
      018784 7A 03            [12] 2574 	mov	r2,#(_etimer_expired >> 16)
      018786 12 07 25         [24] 2575 	lcall	__sdcc_banked_call
      018789 E5 82            [12] 2576 	mov	a,dpl
      01878B 85 83 F0         [24] 2577 	mov	b,dph
      01878E D0 05            [24] 2578 	pop	ar5
      018790 D0 06            [24] 2579 	pop	ar6
      018792 D0 07            [24] 2580 	pop	ar7
      018794 45 F0            [12] 2581 	orl	a,b
      018796 60 91            [24] 2582 	jz	00118$
                                   2583 ;	client.c:301: if(in_net_flag==1)
      018798 90 19 3E         [24] 2584 	mov	dptr,#_in_net_flag
      01879B E0               [24] 2585 	movx	a,@dptr
      01879C FC               [12] 2586 	mov	r4,a
      01879D BC 01 2A         [24] 2587 	cjne	r4,#0x01,00109$
                                   2588 ;	client.c:303: leds_toggle(LEDS_GREEN);
      0187A0 75 82 01         [24] 2589 	mov	dpl,#0x01
      0187A3 C0 07            [24] 2590 	push	ar7
      0187A5 C0 06            [24] 2591 	push	ar6
      0187A7 C0 05            [24] 2592 	push	ar5
      0187A9 78 90            [12] 2593 	mov	r0,#_leds_toggle
      0187AB 79 83            [12] 2594 	mov	r1,#(_leds_toggle >> 8)
      0187AD 7A 04            [12] 2595 	mov	r2,#(_leds_toggle >> 16)
      0187AF 12 07 25         [24] 2596 	lcall	__sdcc_banked_call
                                   2597 ;	client.c:304: login();
      0187B2 78 21            [12] 2598 	mov	r0,#_login
      0187B4 79 80            [12] 2599 	mov	r1,#(_login >> 8)
      0187B6 7A 01            [12] 2600 	mov	r2,#(_login >> 16)
      0187B8 12 07 25         [24] 2601 	lcall	__sdcc_banked_call
      0187BB D0 05            [24] 2602 	pop	ar5
      0187BD D0 06            [24] 2603 	pop	ar6
      0187BF D0 07            [24] 2604 	pop	ar7
                                   2605 ;	client.c:305: sended_flag=1;
      0187C1 90 18 75         [24] 2606 	mov	dptr,#_sended_flag
      0187C4 74 01            [12] 2607 	mov	a,#0x01
      0187C6 F0               [24] 2608 	movx	@dptr,a
      0187C7 02 87 29         [24] 2609 	ljmp	00118$
      0187CA                       2610 00109$:
                                   2611 ;	client.c:307: else etimer_set(&et,10*CLOCK_SECOND);
      0187CA C0 07            [24] 2612 	push	ar7
      0187CC C0 06            [24] 2613 	push	ar6
      0187CE C0 05            [24] 2614 	push	ar5
      0187D0 E4               [12] 2615 	clr	a
      0187D1 C0 E0            [24] 2616 	push	acc
      0187D3 74 05            [12] 2617 	mov	a,#0x05
      0187D5 C0 E0            [24] 2618 	push	acc
      0187D7 90 00 1A         [24] 2619 	mov	dptr,#_process_thread_udp_client_process_et_1_545
      0187DA 75 F0 00         [24] 2620 	mov	b,#0x00
      0187DD 78 86            [12] 2621 	mov	r0,#_etimer_set
      0187DF 79 91            [12] 2622 	mov	r1,#(_etimer_set >> 8)
      0187E1 7A 03            [12] 2623 	mov	r2,#(_etimer_set >> 16)
      0187E3 12 07 25         [24] 2624 	lcall	__sdcc_banked_call
      0187E6 15 81            [12] 2625 	dec	sp
      0187E8 15 81            [12] 2626 	dec	sp
      0187EA D0 05            [24] 2627 	pop	ar5
      0187EC D0 06            [24] 2628 	pop	ar6
      0187EE D0 07            [24] 2629 	pop	ar7
      0187F0 02 87 29         [24] 2630 	ljmp	00118$
                                   2631 ;	client.c:316: PROCESS_END();
      0187F3                       2632 00120$:
      0187F3 8D 82            [24] 2633 	mov	dpl,r5
      0187F5 8E 83            [24] 2634 	mov	dph,r6
      0187F7 8F F0            [24] 2635 	mov	b,r7
      0187F9 E4               [12] 2636 	clr	a
      0187FA 12 72 05         [24] 2637 	lcall	__gptrput
      0187FD A3               [24] 2638 	inc	dptr
      0187FE E4               [12] 2639 	clr	a
      0187FF 12 72 05         [24] 2640 	lcall	__gptrput
      018802 75 82 03         [24] 2641 	mov	dpl,#0x03
      018805                       2642 00121$:
      018805 02 07 37         [24] 2643 	ljmp	__sdcc_banked_ret
                                   2644 	.area CSEG    (CODE)
                                   2645 	.area CONST   (CODE)
      007DD4                       2646 _autostart_processes:
      007DD4 AF 18 00              2647 	.byte _udp_client_process,(_udp_client_process >> 8),#0x00
                                   2648 ; generic printIvalPtr
      007DD7 00 00 00              2649 	.byte #0x00,#0x00,#0x00
                                   2650 	.area XINIT   (CODE)
      007EA2                       2651 __xinit__light_state:
      007EA2 00                    2652 	.db #0x00	; 0
      007EA3                       2653 __xinit__buf:
      007EA3 00                    2654 	.db #0x00	; 0
      007EA4 00                    2655 	.db 0x00
      007EA5 00                    2656 	.db 0x00
      007EA6 00                    2657 	.db 0x00
      007EA7 00                    2658 	.db 0x00
      007EA8                       2659 __xinit__sended_flag:
      007EA8 00                    2660 	.db #0x00	; 0
      007EA9                       2661 __xinit__temperature_now:
      007EA9 25                    2662 	.db #0x25	; 37
      007EAA                       2663 __xinit__oshi_now:
      007EAA 11                    2664 	.db #0x11	; 17
      007EAB                       2665 __xinit__onoff_now:
      007EAB 00                    2666 	.db #0x00	; 0
      007EAC                       2667 __xinit__cmd:
      007EAC F7                    2668 	.db #0xF7	; 247
      007EAD 7F                    2669 	.db #0x7F	; 127
      007EAE 00                    2670 	.db #0x00	; 0
      007EAF 09                    2671 	.db #0x09	; 9
      007EB0 01                    2672 	.db #0x01	; 1
      007EB1 02                    2673 	.db #0x02	; 2
      007EB2 00                    2674 	.db #0x00	; 0
      007EB3 01                    2675 	.db #0x01	; 1
      007EB4 84                    2676 	.db #0x84	; 132
      007EB5 F7                    2677 	.db #0xF7	; 247
      007EB6 7F                    2678 	.db #0x7F	; 127
      007EB7 00                    2679 	.db #0x00	; 0
      007EB8 09                    2680 	.db #0x09	; 9
      007EB9 01                    2681 	.db #0x01	; 1
      007EBA 02                    2682 	.db #0x02	; 2
      007EBB 00                    2683 	.db #0x00	; 0
      007EBC 02                    2684 	.db #0x02	; 2
      007EBD 85                    2685 	.db #0x85	; 133
      007EBE F7                    2686 	.db #0xF7	; 247
      007EBF 7F                    2687 	.db #0x7F	; 127
      007EC0 00                    2688 	.db #0x00	; 0
      007EC1 09                    2689 	.db #0x09	; 9
      007EC2 01                    2690 	.db #0x01	; 1
      007EC3 02                    2691 	.db #0x02	; 2
      007EC4 00                    2692 	.db #0x00	; 0
      007EC5 03                    2693 	.db #0x03	; 3
      007EC6 86                    2694 	.db #0x86	; 134
      007EC7 F7                    2695 	.db #0xF7	; 247
      007EC8 7F                    2696 	.db #0x7F	; 127
      007EC9 00                    2697 	.db #0x00	; 0
      007ECA 09                    2698 	.db #0x09	; 9
      007ECB 01                    2699 	.db #0x01	; 1
      007ECC 02                    2700 	.db #0x02	; 2
      007ECD 00                    2701 	.db #0x00	; 0
      007ECE 04                    2702 	.db #0x04	; 4
      007ECF 87                    2703 	.db #0x87	; 135
      007ED0 F7                    2704 	.db #0xF7	; 247
      007ED1 7F                    2705 	.db #0x7F	; 127
      007ED2 00                    2706 	.db #0x00	; 0
      007ED3 09                    2707 	.db #0x09	; 9
      007ED4 01                    2708 	.db #0x01	; 1
      007ED5 02                    2709 	.db #0x02	; 2
      007ED6 00                    2710 	.db #0x00	; 0
      007ED7 05                    2711 	.db #0x05	; 5
      007ED8 88                    2712 	.db #0x88	; 136
      007ED9 F7                    2713 	.db #0xF7	; 247
      007EDA 7F                    2714 	.db #0x7F	; 127
      007EDB 00                    2715 	.db #0x00	; 0
      007EDC 09                    2716 	.db #0x09	; 9
      007EDD 01                    2717 	.db #0x01	; 1
      007EDE 02                    2718 	.db #0x02	; 2
      007EDF 00                    2719 	.db #0x00	; 0
      007EE0 06                    2720 	.db #0x06	; 6
      007EE1 89                    2721 	.db #0x89	; 137
      007EE2                       2722 __xinit__udp_client_process:
                                   2723 ; generic printIvalPtr
      007EE2 00 00 00              2724 	.byte #0x00,#0x00,#0x00
      007EE5 0F 86 01              2725 	.byte _process_thread_udp_client_process,(_process_thread_udp_client_process >> 8),(_process_thread_udp_client_process >> 16)
      007EE8 00 00                 2726 	.byte #0x00,#0x00	; 0
      007EEA 00                    2727 	.db #0x00	; 0
      007EEB 00                    2728 	.db #0x00	; 0
                                   2729 	.area CABS    (ABS,CODE)
