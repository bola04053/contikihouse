;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8804 (Aug  6 2013) (Linux)
; This file was generated Mon Aug 25 13:28:50 2014
;--------------------------------------------------------
	.module client
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _autostart_processes
	.globl _tcpip_handler
	.globl _send_state
	.globl _DelayMS
	.globl _turn_on
	.globl _turn_off
	.globl _set_temp
	.globl _login
	.globl _InitUart
	.globl _leds_toggle
	.globl _uip_ds6_set_addr_iid
	.globl _uip_ds6_addr_add
	.globl _uip_udp_packet_sendto
	.globl _udp_new
	.globl _etimer_expired
	.globl _etimer_set
	.globl _memset
	.globl _ACTIVE
	.globl _TX_BYTE
	.globl _RX_BYTE
	.globl _ERR
	.globl _FE
	.globl _SLAVE
	.globl _RE
	.globl _MODE
	.globl _T3OVFIF
	.globl _T3CH0IF
	.globl _T3CH1IF
	.globl _T4OVFIF
	.globl _T4CH0IF
	.globl _T4CH1IF
	.globl _OVFIM
	.globl _B_0
	.globl _B_1
	.globl _B_2
	.globl _B_3
	.globl _B_4
	.globl _B_5
	.globl _B_6
	.globl _B_7
	.globl _P2IF
	.globl _UTX0IF
	.globl _UTX1IF
	.globl _P1IF
	.globl _WDTIF
	.globl _ACC_0
	.globl _ACC_1
	.globl _ACC_2
	.globl _ACC_3
	.globl _ACC_4
	.globl _ACC_5
	.globl _ACC_6
	.globl _ACC_7
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _DMAIF
	.globl _T1IF
	.globl _T2IF
	.globl _T3IF
	.globl _T4IF
	.globl _P0IF
	.globl _STIF
	.globl _DMAIE
	.globl _T1IE
	.globl _T2IE
	.globl _T3IE
	.globl _T4IE
	.globl _P0IE
	.globl _RFERRIE
	.globl _ADCIE
	.globl _URX0IE
	.globl _URX1IE
	.globl _ENCIE
	.globl _STIE
	.globl _EA
	.globl _P2_0
	.globl _P2_1
	.globl _P2_2
	.globl _P2_3
	.globl _P2_4
	.globl _P2_5
	.globl _P2_6
	.globl _P2_7
	.globl _ENCIF_0
	.globl _ENCIF_1
	.globl _P1_0
	.globl _P1_1
	.globl _P1_2
	.globl _P1_3
	.globl _P1_4
	.globl _P1_5
	.globl _P1_6
	.globl _P1_7
	.globl _IT0
	.globl _RFERRIF
	.globl _IT1
	.globl _URX0IF
	.globl _ADCIF
	.globl _URX1IF
	.globl _P0_0
	.globl _P0_1
	.globl _P0_2
	.globl _P0_3
	.globl _P0_4
	.globl _P0_5
	.globl _P0_6
	.globl _P0_7
	.globl _WDCTL
	.globl _U1GCR
	.globl _U1UCR
	.globl _U1BAUD
	.globl _U1DBUF
	.globl _U1CSR
	.globl _U0GCR
	.globl _U0UCR
	.globl _U0BAUD
	.globl _U0DBUF
	.globl _U0CSR
	.globl _TIMIF
	.globl _T4CC1
	.globl _T4CCTL1
	.globl _T4CC0
	.globl _T4CCTL0
	.globl _T4CTL
	.globl _T4CNT
	.globl _T3CC1
	.globl _T3CCTL1
	.globl _T3CC0
	.globl _T3CCTL0
	.globl _T3CTL
	.globl _T3CNT
	.globl _T2MSEL
	.globl _T2IRQM
	.globl _T2MOVF2
	.globl _T2MOVF1
	.globl _T2MOVF0
	.globl _T2M1
	.globl _T2M0
	.globl _T2IRQF
	.globl _T2EVTCFG
	.globl _T2CTRL
	.globl _T1STAT
	.globl _T1CCTL2
	.globl _T1CCTL1
	.globl _T1CCTL0
	.globl _T1CTL
	.globl _T1CNTH
	.globl _T1CNTL
	.globl _T1CC2H
	.globl _T1CC2L
	.globl _T1CC1H
	.globl _T1CC1L
	.globl _T1CC0H
	.globl _T1CC0L
	.globl _CLKCONSTA
	.globl _CLKCONCMD
	.globl _SLEEPSTA
	.globl _SLEEPCMD
	.globl _STLOAD
	.globl _ST2
	.globl _ST1
	.globl _ST0
	.globl _RFERRF
	.globl _RFIRQF0
	.globl _RFST
	.globl _RFD
	.globl _RFIRQF1
	.globl _PSBANK
	.globl _FMAP
	.globl _MEMCTR
	.globl __XPAGE
	.globl _MPAGE
	.globl _PMUX
	.globl _P2DIR
	.globl _P1DIR
	.globl _P0DIR
	.globl _P2INP
	.globl _P1INP
	.globl _P2SEL
	.globl _P1SEL
	.globl _P0SEL
	.globl _APCFG
	.globl _PERCFG
	.globl _P0INP
	.globl _P2IEN
	.globl _P1IEN
	.globl _P0IEN
	.globl _PICTL
	.globl _P2IFG
	.globl _P1IFG
	.globl _P0IFG
	.globl _DMAREQ
	.globl _DMAARM
	.globl _DMA0CFGH
	.globl _DMA0CFGL
	.globl _DMA1CFGH
	.globl _DMA1CFGL
	.globl _DMAIRQ
	.globl _ENCCS
	.globl _ENCDO
	.globl _ENCDI
	.globl _RNDH
	.globl _RNDL
	.globl _ADCH
	.globl _ADCL
	.globl _ADCCON3
	.globl _ADCCON2
	.globl _ADCCON1
	.globl _B
	.globl _IRCON2
	.globl _ACC
	.globl _PSW
	.globl _IRCON
	.globl _IP1
	.globl _IEN1
	.globl _IP0
	.globl _IEN0
	.globl _P2
	.globl _S1CON
	.globl _IEN2
	.globl _S0CON
	.globl _DPS
	.globl _P1
	.globl _TCON
	.globl _PCON
	.globl _DPH1
	.globl _DPL1
	.globl _DPH0
	.globl _DPL0
	.globl _SP
	.globl _P0
	.globl _udp_client_process
	.globl _onoff_now
	.globl _oshi_now
	.globl _temperature_now
	.globl _sended_flag
	.globl _light_state
	.globl _server_ipaddr
	.globl _X_IEEE_ADDR
	.globl _X_INFOPAGE
	.globl _X_P2DIR
	.globl _X_P1DIR
	.globl _X_P0DIR
	.globl _X_U1GCR
	.globl _X_U1UCR
	.globl _X_U1BAUD
	.globl _X_U1DBUF
	.globl _X_U1CSR
	.globl _X_P2INP
	.globl _X_P1INP
	.globl _X_P2SEL
	.globl _X_P1SEL
	.globl _X_P0SEL
	.globl _X_APCFG
	.globl _X_PERCFG
	.globl _X_T4CC1
	.globl _X_T4CCTL1
	.globl _X_T4CC0
	.globl _X_T4CCTL0
	.globl _X_T4CTL
	.globl _X_T4CNT
	.globl _X_RFIRQF0
	.globl _X_T1CCTL2
	.globl _X_T1CCTL1
	.globl _X_T1CCTL0
	.globl _X_T1CTL
	.globl _X_T1CNTH
	.globl _X_T1CNTL
	.globl _X_RFST
	.globl _X_T1CC2H
	.globl _X_T1CC2L
	.globl _X_T1CC1H
	.globl _X_T1CC1L
	.globl _X_T1CC0H
	.globl _X_T1CC0L
	.globl _X_RFD
	.globl _X_TIMIF
	.globl _X_DMAREQ
	.globl _X_DMAARM
	.globl _X_DMA0CFGH
	.globl _X_DMA0CFGL
	.globl _X_DMA1CFGH
	.globl _X_DMA1CFGL
	.globl _X_DMAIRQ
	.globl _X_T3CC1
	.globl _X_T3CCTL1
	.globl _X_T3CC0
	.globl _X_T3CCTL0
	.globl _X_T3CTL
	.globl _X_T3CNT
	.globl _X_WDCTL
	.globl _X_MEMCTR
	.globl _X_CLKCONCMD
	.globl _X_U0GCR
	.globl _X_U0UCR
	.globl _X_T2MSEL
	.globl _X_U0BAUD
	.globl _X_U0DBUF
	.globl _X_RFERRF
	.globl _X_SLEEPCMD
	.globl _X_RNDH
	.globl _X_RNDL
	.globl _X_ADCH
	.globl _X_ADCL
	.globl _X_ADCCON3
	.globl _X_ADCCON2
	.globl _X_ADCCON1
	.globl _X_ENCCS
	.globl _X_ENCDO
	.globl _X_ENCDI
	.globl _X_T1STAT
	.globl _X_PMUX
	.globl _X_STLOAD
	.globl _X_P2IEN
	.globl _X_P0IEN
	.globl _X_T2IRQM
	.globl _X_T2MOVF2
	.globl _X_T2MOVF1
	.globl _X_T2MOVF0
	.globl _X_T2M1
	.globl _X_T2M0
	.globl _X_T2IRQF
	.globl _X_P2
	.globl _X_PSBANK
	.globl _X_FMAP
	.globl _X_CLKCONSTA
	.globl _X_SLEEPSTA
	.globl _X_T2EVTCFG
	.globl _X_ST2
	.globl _X_ST1
	.globl _X_ST0
	.globl _X_T2CTRL
	.globl _X__XPAGE
	.globl _X_MPAGE
	.globl _X_RFIRQF1
	.globl _X_P1
	.globl _X_P0INP
	.globl _X_P1IEN
	.globl _X_PICTL
	.globl _X_P2IFG
	.globl _X_P1IFG
	.globl _X_P0IFG
	.globl _X_U0CSR
	.globl _X_P0
	.globl _USBF5
	.globl _USBF4
	.globl _USBF3
	.globl _USBF2
	.globl _USBF1
	.globl _USBF0
	.globl _USBCNTH
	.globl _USBCNTL
	.globl _USBCNT0
	.globl _USBCSOH
	.globl _USBCSOL
	.globl _USBMAXO
	.globl _USBCSIH
	.globl _USBCSIL
	.globl _USBCS0
	.globl _USBMAXI
	.globl _USBCTRL
	.globl _USBINDEX
	.globl _USBFRMH
	.globl _USBFRML
	.globl _USBCIE
	.globl _USBOIE
	.globl _USBIIE
	.globl _USBCIF
	.globl _USBOIF
	.globl _USBIIF
	.globl _USBPOW
	.globl _USBADDR
	.globl _CSPT
	.globl _CSPZ
	.globl _CSPY
	.globl _CSPX
	.globl _CSPSTAT
	.globl _CSPCTRL
	.globl _CSPPROG23
	.globl _CSPPROG22
	.globl _CSPPROG21
	.globl _CSPPROG20
	.globl _CSPPROG19
	.globl _CSPPROG18
	.globl _CSPPROG17
	.globl _CSPPROG16
	.globl _CSPPROG15
	.globl _CSPPROG14
	.globl _CSPPROG13
	.globl _CSPPROG12
	.globl _CSPPROG11
	.globl _CSPPROG10
	.globl _CSPPROG9
	.globl _CSPPROG8
	.globl _CSPPROG7
	.globl _CSPPROG6
	.globl _CSPPROG5
	.globl _CSPPROG4
	.globl _CSPPROG3
	.globl _CSPPROG2
	.globl _CSPPROG1
	.globl _CSPPROG0
	.globl _RFC_OBS_CTRL2
	.globl _RFC_OBS_CTRL1
	.globl _RFC_OBS_CTRL0
	.globl _TXFILTCFG
	.globl _PTEST1
	.globl _PTEST0
	.globl _ATEST
	.globl _DACTEST2
	.globl _DACTEST1
	.globl _DACTEST0
	.globl _MDMTEST1
	.globl _MDMTEST0
	.globl _ADCTEST2
	.globl _ADCTEST1
	.globl _ADCTEST0
	.globl _AGCCTRL3
	.globl _AGCCTRL2
	.globl _AGCCTRL1
	.globl _AGCCTRL0
	.globl _FSCAL3
	.globl _FSCAL2
	.globl _FSCAL1
	.globl _FSCAL0
	.globl _FSCTRL
	.globl _RXCTRL
	.globl _FREQEST
	.globl _MDMCTRL1
	.globl _MDMCTRL0
	.globl _RFRND
	.globl _RFERRM
	.globl _RFIRQM1
	.globl _RFIRQM0
	.globl _TXLAST_PTR
	.globl _TXFIRST_PTR
	.globl _RXP1_PTR
	.globl _RXLAST_PTR
	.globl _RXFIRST_PTR
	.globl _TXFIFOCNT
	.globl _RXFIFOCNT
	.globl _RXFIRST
	.globl _RSSISTAT
	.globl _RSSI
	.globl _CCACTRL1
	.globl _CCACTRL0
	.globl _FSMCTRL
	.globl _FIFOPCTRL
	.globl _FSMSTAT1
	.globl _FSMSTAT0
	.globl _TXCTRL
	.globl _TXPOWER
	.globl _FREQCTRL
	.globl _FREQTUNE
	.globl _RXMASKCLR
	.globl _RXMASKSET
	.globl _RXENABLE
	.globl _FRMCTRL1
	.globl _FRMCTRL0
	.globl _SRCEXTEN2
	.globl _SRCEXTEN1
	.globl _SRCEXTEN0
	.globl _SRCSHORTEN2
	.globl _SRCSHORTEN1
	.globl _SRCSHORTEN0
	.globl _SRCMATCH
	.globl _FRMFILT1
	.globl _FRMFILT0
	.globl _SHORT_ADDR1
	.globl _SHORT_ADDR0
	.globl _PAN_ID1
	.globl _PAN_ID0
	.globl _EXT_ADDR7
	.globl _EXT_ADDR6
	.globl _EXT_ADDR5
	.globl _EXT_ADDR4
	.globl _EXT_ADDR3
	.globl _EXT_ADDR2
	.globl _EXT_ADDR1
	.globl _EXT_ADDR0
	.globl _SRCSHORTPENDEN2
	.globl _SRCSHORTPENDEN1
	.globl _SRCSHORTPENDEN0
	.globl _SRCEXTPENDEN2
	.globl _SRCEXTPENDEN1
	.globl _SRCEXTPENDEN0
	.globl _SRCRESINDEX
	.globl _SRCRESMASK2
	.globl _SRCRESMASK1
	.globl _SRCRESMASK0
	.globl _SRC_ADDR_TABLE
	.globl _TXFIFO
	.globl _RXFIFO
	.globl _RFCORE_RAM
	.globl _CMPCTL
	.globl _OPAMPS
	.globl _OPAMPC
	.globl _STCV2
	.globl _STCV1
	.globl _STCV0
	.globl _STCS
	.globl _STCC
	.globl _T1CC4H
	.globl _T1CC4L
	.globl _T1CC3H
	.globl _T1CC3L
	.globl _XX_T1CC2H
	.globl _XX_T1CC2L
	.globl _XX_T1CC1H
	.globl _XX_T1CC1L
	.globl _XX_T1CC0H
	.globl _XX_T1CC0L
	.globl _T1CCTL4
	.globl _T1CCTL3
	.globl _XX_T1CCTL2
	.globl _XX_T1CCTL1
	.globl _XX_T1CCTL0
	.globl _CLD
	.globl _IRCTL
	.globl _CHIPINFO1
	.globl _CHIPINFO0
	.globl _FWDATA
	.globl _FADDRH
	.globl _FADDRL
	.globl _FCTL
	.globl _IVCTRL
	.globl _BATTMON
	.globl _SRCRC
	.globl _DBGDATA
	.globl _TESTREG0
	.globl _CHIPID
	.globl _CHVER
	.globl _OBSSEL5
	.globl _OBSSEL4
	.globl _OBSSEL3
	.globl _OBSSEL2
	.globl _OBSSEL1
	.globl _OBSSEL0
	.globl _I2CIO
	.globl _I2CWC
	.globl _I2CADDR
	.globl _I2CDATA
	.globl _I2CSTAT
	.globl _I2CCFG
	.globl _OPAMPMC
	.globl _MONMUX
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL0	=	0x0082
_DPH0	=	0x0083
_DPL1	=	0x0084
_DPH1	=	0x0085
_PCON	=	0x0087
_TCON	=	0x0088
_P1	=	0x0090
_DPS	=	0x0092
_S0CON	=	0x0098
_IEN2	=	0x009a
_S1CON	=	0x009b
_P2	=	0x00a0
_IEN0	=	0x00a8
_IP0	=	0x00a9
_IEN1	=	0x00b8
_IP1	=	0x00b9
_IRCON	=	0x00c0
_PSW	=	0x00d0
_ACC	=	0x00e0
_IRCON2	=	0x00e8
_B	=	0x00f0
_ADCCON1	=	0x00b4
_ADCCON2	=	0x00b5
_ADCCON3	=	0x00b6
_ADCL	=	0x00ba
_ADCH	=	0x00bb
_RNDL	=	0x00bc
_RNDH	=	0x00bd
_ENCDI	=	0x00b1
_ENCDO	=	0x00b2
_ENCCS	=	0x00b3
_DMAIRQ	=	0x00d1
_DMA1CFGL	=	0x00d2
_DMA1CFGH	=	0x00d3
_DMA0CFGL	=	0x00d4
_DMA0CFGH	=	0x00d5
_DMAARM	=	0x00d6
_DMAREQ	=	0x00d7
_P0IFG	=	0x0089
_P1IFG	=	0x008a
_P2IFG	=	0x008b
_PICTL	=	0x008c
_P0IEN	=	0x00ab
_P1IEN	=	0x008d
_P2IEN	=	0x00ac
_P0INP	=	0x008f
_PERCFG	=	0x00f1
_APCFG	=	0x00f2
_P0SEL	=	0x00f3
_P1SEL	=	0x00f4
_P2SEL	=	0x00f5
_P1INP	=	0x00f6
_P2INP	=	0x00f7
_P0DIR	=	0x00fd
_P1DIR	=	0x00fe
_P2DIR	=	0x00ff
_PMUX	=	0x00ae
_MPAGE	=	0x0093
__XPAGE	=	0x0093
_MEMCTR	=	0x00c7
_FMAP	=	0x009f
_PSBANK	=	0x009f
_RFIRQF1	=	0x0091
_RFD	=	0x00d9
_RFST	=	0x00e1
_RFIRQF0	=	0x00e9
_RFERRF	=	0x00bf
_ST0	=	0x0095
_ST1	=	0x0096
_ST2	=	0x0097
_STLOAD	=	0x00ad
_SLEEPCMD	=	0x00be
_SLEEPSTA	=	0x009d
_CLKCONCMD	=	0x00c6
_CLKCONSTA	=	0x009e
_T1CC0L	=	0x00da
_T1CC0H	=	0x00db
_T1CC1L	=	0x00dc
_T1CC1H	=	0x00dd
_T1CC2L	=	0x00de
_T1CC2H	=	0x00df
_T1CNTL	=	0x00e2
_T1CNTH	=	0x00e3
_T1CTL	=	0x00e4
_T1CCTL0	=	0x00e5
_T1CCTL1	=	0x00e6
_T1CCTL2	=	0x00e7
_T1STAT	=	0x00af
_T2CTRL	=	0x0094
_T2EVTCFG	=	0x009c
_T2IRQF	=	0x00a1
_T2M0	=	0x00a2
_T2M1	=	0x00a3
_T2MOVF0	=	0x00a4
_T2MOVF1	=	0x00a5
_T2MOVF2	=	0x00a6
_T2IRQM	=	0x00a7
_T2MSEL	=	0x00c3
_T3CNT	=	0x00ca
_T3CTL	=	0x00cb
_T3CCTL0	=	0x00cc
_T3CC0	=	0x00cd
_T3CCTL1	=	0x00ce
_T3CC1	=	0x00cf
_T4CNT	=	0x00ea
_T4CTL	=	0x00eb
_T4CCTL0	=	0x00ec
_T4CC0	=	0x00ed
_T4CCTL1	=	0x00ee
_T4CC1	=	0x00ef
_TIMIF	=	0x00d8
_U0CSR	=	0x0086
_U0DBUF	=	0x00c1
_U0BAUD	=	0x00c2
_U0UCR	=	0x00c4
_U0GCR	=	0x00c5
_U1CSR	=	0x00f8
_U1DBUF	=	0x00f9
_U1BAUD	=	0x00fa
_U1UCR	=	0x00fb
_U1GCR	=	0x00fc
_WDCTL	=	0x00c9
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_7	=	0x0087
_P0_6	=	0x0086
_P0_5	=	0x0085
_P0_4	=	0x0084
_P0_3	=	0x0083
_P0_2	=	0x0082
_P0_1	=	0x0081
_P0_0	=	0x0080
_URX1IF	=	0x008f
_ADCIF	=	0x008d
_URX0IF	=	0x008b
_IT1	=	0x008a
_RFERRIF	=	0x0089
_IT0	=	0x0088
_P1_7	=	0x0097
_P1_6	=	0x0096
_P1_5	=	0x0095
_P1_4	=	0x0094
_P1_3	=	0x0093
_P1_2	=	0x0092
_P1_1	=	0x0091
_P1_0	=	0x0090
_ENCIF_1	=	0x0099
_ENCIF_0	=	0x0098
_P2_7	=	0x00a7
_P2_6	=	0x00a6
_P2_5	=	0x00a5
_P2_4	=	0x00a4
_P2_3	=	0x00a3
_P2_2	=	0x00a2
_P2_1	=	0x00a1
_P2_0	=	0x00a0
_EA	=	0x00af
_STIE	=	0x00ad
_ENCIE	=	0x00ac
_URX1IE	=	0x00ab
_URX0IE	=	0x00aa
_ADCIE	=	0x00a9
_RFERRIE	=	0x00a8
_P0IE	=	0x00bd
_T4IE	=	0x00bc
_T3IE	=	0x00bb
_T2IE	=	0x00ba
_T1IE	=	0x00b9
_DMAIE	=	0x00b8
_STIF	=	0x00c7
_P0IF	=	0x00c5
_T4IF	=	0x00c4
_T3IF	=	0x00c3
_T2IF	=	0x00c2
_T1IF	=	0x00c1
_DMAIF	=	0x00c0
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_ACC_7	=	0x00e7
_ACC_6	=	0x00e6
_ACC_5	=	0x00e5
_ACC_4	=	0x00e4
_ACC_3	=	0x00e3
_ACC_2	=	0x00e2
_ACC_1	=	0x00e1
_ACC_0	=	0x00e0
_WDTIF	=	0x00ec
_P1IF	=	0x00eb
_UTX1IF	=	0x00ea
_UTX0IF	=	0x00e9
_P2IF	=	0x00e8
_B_7	=	0x00f7
_B_6	=	0x00f6
_B_5	=	0x00f5
_B_4	=	0x00f4
_B_3	=	0x00f3
_B_2	=	0x00f2
_B_1	=	0x00f1
_B_0	=	0x00f0
_OVFIM	=	0x00de
_T4CH1IF	=	0x00dd
_T4CH0IF	=	0x00dc
_T4OVFIF	=	0x00db
_T3CH1IF	=	0x00da
_T3CH0IF	=	0x00d9
_T3OVFIF	=	0x00d8
_MODE	=	0x00ff
_RE	=	0x00fe
_SLAVE	=	0x00fd
_FE	=	0x00fc
_ERR	=	0x00fb
_RX_BYTE	=	0x00fa
_TX_BYTE	=	0x00f9
_ACTIVE	=	0x00f8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
_MONMUX	=	0x61a6
_OPAMPMC	=	0x61a6
_I2CCFG	=	0x6230
_I2CSTAT	=	0x6231
_I2CDATA	=	0x6232
_I2CADDR	=	0x6233
_I2CWC	=	0x6234
_I2CIO	=	0x6235
_OBSSEL0	=	0x6243
_OBSSEL1	=	0x6244
_OBSSEL2	=	0x6245
_OBSSEL3	=	0x6246
_OBSSEL4	=	0x6247
_OBSSEL5	=	0x6248
_CHVER	=	0x6249
_CHIPID	=	0x624a
_TESTREG0	=	0x624b
_DBGDATA	=	0x6260
_SRCRC	=	0x6262
_BATTMON	=	0x6264
_IVCTRL	=	0x6265
_FCTL	=	0x6270
_FADDRL	=	0x6271
_FADDRH	=	0x6272
_FWDATA	=	0x6273
_CHIPINFO0	=	0x6276
_CHIPINFO1	=	0x6277
_IRCTL	=	0x6281
_CLD	=	0x6290
_XX_T1CCTL0	=	0x62a0
_XX_T1CCTL1	=	0x62a1
_XX_T1CCTL2	=	0x62a2
_T1CCTL3	=	0x62a3
_T1CCTL4	=	0x62a4
_XX_T1CC0L	=	0x62a6
_XX_T1CC0H	=	0x62a7
_XX_T1CC1L	=	0x62a8
_XX_T1CC1H	=	0x62a9
_XX_T1CC2L	=	0x62aa
_XX_T1CC2H	=	0x62ab
_T1CC3L	=	0x62ac
_T1CC3H	=	0x62ad
_T1CC4L	=	0x62ae
_T1CC4H	=	0x62af
_STCC	=	0x62b0
_STCS	=	0x62b1
_STCV0	=	0x62b2
_STCV1	=	0x62b3
_STCV2	=	0x62b4
_OPAMPC	=	0x62c0
_OPAMPS	=	0x62c1
_CMPCTL	=	0x62d0
_RFCORE_RAM	=	0x6000
_RXFIFO	=	0x6000
_TXFIFO	=	0x6080
_SRC_ADDR_TABLE	=	0x6100
_SRCRESMASK0	=	0x6160
_SRCRESMASK1	=	0x6161
_SRCRESMASK2	=	0x6162
_SRCRESINDEX	=	0x6163
_SRCEXTPENDEN0	=	0x6164
_SRCEXTPENDEN1	=	0x6165
_SRCEXTPENDEN2	=	0x6166
_SRCSHORTPENDEN0	=	0x6167
_SRCSHORTPENDEN1	=	0x6168
_SRCSHORTPENDEN2	=	0x6169
_EXT_ADDR0	=	0x616a
_EXT_ADDR1	=	0x616b
_EXT_ADDR2	=	0x616c
_EXT_ADDR3	=	0x616d
_EXT_ADDR4	=	0x616e
_EXT_ADDR5	=	0x616f
_EXT_ADDR6	=	0x6170
_EXT_ADDR7	=	0x6171
_PAN_ID0	=	0x6172
_PAN_ID1	=	0x6173
_SHORT_ADDR0	=	0x6174
_SHORT_ADDR1	=	0x6175
_FRMFILT0	=	0x6180
_FRMFILT1	=	0x6181
_SRCMATCH	=	0x6182
_SRCSHORTEN0	=	0x6183
_SRCSHORTEN1	=	0x6184
_SRCSHORTEN2	=	0x6185
_SRCEXTEN0	=	0x6186
_SRCEXTEN1	=	0x6187
_SRCEXTEN2	=	0x6188
_FRMCTRL0	=	0x6189
_FRMCTRL1	=	0x618a
_RXENABLE	=	0x618b
_RXMASKSET	=	0x618c
_RXMASKCLR	=	0x618d
_FREQTUNE	=	0x618e
_FREQCTRL	=	0x618f
_TXPOWER	=	0x6190
_TXCTRL	=	0x6191
_FSMSTAT0	=	0x6192
_FSMSTAT1	=	0x6193
_FIFOPCTRL	=	0x6194
_FSMCTRL	=	0x6195
_CCACTRL0	=	0x6196
_CCACTRL1	=	0x6197
_RSSI	=	0x6198
_RSSISTAT	=	0x6199
_RXFIRST	=	0x619a
_RXFIFOCNT	=	0x619b
_TXFIFOCNT	=	0x619c
_RXFIRST_PTR	=	0x619d
_RXLAST_PTR	=	0x619e
_RXP1_PTR	=	0x619f
_TXFIRST_PTR	=	0x61a1
_TXLAST_PTR	=	0x61a2
_RFIRQM0	=	0x61a3
_RFIRQM1	=	0x61a4
_RFERRM	=	0x61a5
_RFRND	=	0x61a7
_MDMCTRL0	=	0x61a8
_MDMCTRL1	=	0x61a9
_FREQEST	=	0x61aa
_RXCTRL	=	0x61ab
_FSCTRL	=	0x61ac
_FSCAL0	=	0x61ad
_FSCAL1	=	0x61ae
_FSCAL2	=	0x61af
_FSCAL3	=	0x61b0
_AGCCTRL0	=	0x61b1
_AGCCTRL1	=	0x61b2
_AGCCTRL2	=	0x61b3
_AGCCTRL3	=	0x61b4
_ADCTEST0	=	0x61b5
_ADCTEST1	=	0x61b6
_ADCTEST2	=	0x61b7
_MDMTEST0	=	0x61b8
_MDMTEST1	=	0x61b9
_DACTEST0	=	0x61ba
_DACTEST1	=	0x61bb
_DACTEST2	=	0x61bc
_ATEST	=	0x61bd
_PTEST0	=	0x61be
_PTEST1	=	0x61bf
_TXFILTCFG	=	0x61fa
_RFC_OBS_CTRL0	=	0x61eb
_RFC_OBS_CTRL1	=	0x61ec
_RFC_OBS_CTRL2	=	0x61ed
_CSPPROG0	=	0x61c0
_CSPPROG1	=	0x61c1
_CSPPROG2	=	0x61c2
_CSPPROG3	=	0x61c3
_CSPPROG4	=	0x61c4
_CSPPROG5	=	0x61c5
_CSPPROG6	=	0x61c6
_CSPPROG7	=	0x61c7
_CSPPROG8	=	0x61c8
_CSPPROG9	=	0x61c9
_CSPPROG10	=	0x61ca
_CSPPROG11	=	0x61cb
_CSPPROG12	=	0x61cc
_CSPPROG13	=	0x61cd
_CSPPROG14	=	0x61ce
_CSPPROG15	=	0x61cf
_CSPPROG16	=	0x61d0
_CSPPROG17	=	0x61d1
_CSPPROG18	=	0x61d2
_CSPPROG19	=	0x61d3
_CSPPROG20	=	0x61d4
_CSPPROG21	=	0x61d5
_CSPPROG22	=	0x61d6
_CSPPROG23	=	0x61d7
_CSPCTRL	=	0x61e0
_CSPSTAT	=	0x61e1
_CSPX	=	0x61e2
_CSPY	=	0x61e3
_CSPZ	=	0x61e4
_CSPT	=	0x61e5
_USBADDR	=	0x6200
_USBPOW	=	0x6201
_USBIIF	=	0x6202
_USBOIF	=	0x6204
_USBCIF	=	0x6206
_USBIIE	=	0x6207
_USBOIE	=	0x6209
_USBCIE	=	0x620b
_USBFRML	=	0x620c
_USBFRMH	=	0x620d
_USBINDEX	=	0x620e
_USBCTRL	=	0x620f
_USBMAXI	=	0x6210
_USBCS0	=	0x6211
_USBCSIL	=	0x6211
_USBCSIH	=	0x6212
_USBMAXO	=	0x6213
_USBCSOL	=	0x6214
_USBCSOH	=	0x6215
_USBCNT0	=	0x6216
_USBCNTL	=	0x6216
_USBCNTH	=	0x6217
_USBF0	=	0x6220
_USBF1	=	0x6222
_USBF2	=	0x6224
_USBF3	=	0x6226
_USBF4	=	0x6228
_USBF5	=	0x622a
_X_P0	=	0x7080
_X_U0CSR	=	0x7086
_X_P0IFG	=	0x7089
_X_P1IFG	=	0x708a
_X_P2IFG	=	0x708b
_X_PICTL	=	0x708c
_X_P1IEN	=	0x708d
_X_P0INP	=	0x708f
_X_P1	=	0x7090
_X_RFIRQF1	=	0x7091
_X_MPAGE	=	0x7093
_X__XPAGE	=	0x7093
_X_T2CTRL	=	0x7094
_X_ST0	=	0x7095
_X_ST1	=	0x7096
_X_ST2	=	0x7097
_X_T2EVTCFG	=	0x709c
_X_SLEEPSTA	=	0x709d
_X_CLKCONSTA	=	0x709e
_X_FMAP	=	0x709f
_X_PSBANK	=	0x709f
_X_P2	=	0x70a0
_X_T2IRQF	=	0x70a1
_X_T2M0	=	0x70a2
_X_T2M1	=	0x70a3
_X_T2MOVF0	=	0x70a4
_X_T2MOVF1	=	0x70a5
_X_T2MOVF2	=	0x70a6
_X_T2IRQM	=	0x70a7
_X_P0IEN	=	0x70ab
_X_P2IEN	=	0x70ac
_X_STLOAD	=	0x70ad
_X_PMUX	=	0x70ae
_X_T1STAT	=	0x70af
_X_ENCDI	=	0x70b1
_X_ENCDO	=	0x70b2
_X_ENCCS	=	0x70b3
_X_ADCCON1	=	0x70b4
_X_ADCCON2	=	0x70b5
_X_ADCCON3	=	0x70b6
_X_ADCL	=	0x70ba
_X_ADCH	=	0x70bb
_X_RNDL	=	0x70bc
_X_RNDH	=	0x70bd
_X_SLEEPCMD	=	0x70be
_X_RFERRF	=	0x70bf
_X_U0DBUF	=	0x70c1
_X_U0BAUD	=	0x70c2
_X_T2MSEL	=	0x70c3
_X_U0UCR	=	0x70c4
_X_U0GCR	=	0x70c5
_X_CLKCONCMD	=	0x70c6
_X_MEMCTR	=	0x70c7
_X_WDCTL	=	0x70c9
_X_T3CNT	=	0x70ca
_X_T3CTL	=	0x70cb
_X_T3CCTL0	=	0x70cc
_X_T3CC0	=	0x70cd
_X_T3CCTL1	=	0x70ce
_X_T3CC1	=	0x70cf
_X_DMAIRQ	=	0x70d1
_X_DMA1CFGL	=	0x70d2
_X_DMA1CFGH	=	0x70d3
_X_DMA0CFGL	=	0x70d4
_X_DMA0CFGH	=	0x70d5
_X_DMAARM	=	0x70d6
_X_DMAREQ	=	0x70d7
_X_TIMIF	=	0x70d8
_X_RFD	=	0x70d9
_X_T1CC0L	=	0x70da
_X_T1CC0H	=	0x70db
_X_T1CC1L	=	0x70dc
_X_T1CC1H	=	0x70dd
_X_T1CC2L	=	0x70de
_X_T1CC2H	=	0x70df
_X_RFST	=	0x70e1
_X_T1CNTL	=	0x70e2
_X_T1CNTH	=	0x70e3
_X_T1CTL	=	0x70e4
_X_T1CCTL0	=	0x70e5
_X_T1CCTL1	=	0x70e6
_X_T1CCTL2	=	0x70e7
_X_RFIRQF0	=	0x70e9
_X_T4CNT	=	0x70ea
_X_T4CTL	=	0x70eb
_X_T4CCTL0	=	0x70ec
_X_T4CC0	=	0x70ed
_X_T4CCTL1	=	0x70ee
_X_T4CC1	=	0x70ef
_X_PERCFG	=	0x70f1
_X_APCFG	=	0x70f2
_X_P0SEL	=	0x70f3
_X_P1SEL	=	0x70f4
_X_P2SEL	=	0x70f5
_X_P1INP	=	0x70f6
_X_P2INP	=	0x70f7
_X_U1CSR	=	0x70f8
_X_U1DBUF	=	0x70f9
_X_U1BAUD	=	0x70fa
_X_U1UCR	=	0x70fb
_X_U1GCR	=	0x70fc
_X_P0DIR	=	0x70fd
_X_P1DIR	=	0x70fe
_X_P2DIR	=	0x70ff
_X_INFOPAGE	=	0x7800
_X_IEEE_ADDR	=	0x780c
_server_ipaddr::
	.ds 16
_client_conn:
	.ds 3
_server_conn:
	.ds 3
_process_thread_udp_client_process_et_1_545:
	.ds 10
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_light_state::
	.ds 1
_buf:
	.ds 5
_sended_flag::
	.ds 1
_temperature_now::
	.ds 1
_oshi_now::
	.ds 1
_onoff_now::
	.ds 1
_cmd:
	.ds 54
_udp_client_process::
	.ds 10
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area BANK1   (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'InitUart'
;------------------------------------------------------------
;	client.c:74: void InitUart(void)
;	-----------------------------------------
;	 function InitUart
;	-----------------------------------------
_InitUart:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	client.c:76: PERCFG = 0x00;           //外设控制寄存器 USART 0的IO位置:0为P0口位置1 
	mov	_PERCFG,#0x00
;	client.c:77: P0SEL = 0x0c;            //P0_2,P0_3用作串口（外设功能）
	mov	_P0SEL,#0x0C
;	client.c:78: P2DIR &= ~0xC0;          //P0优先作为UART0
	mov	r7,_P2DIR
	mov	a,#0x3F
	anl	a,r7
	mov	_P2DIR,a
;	client.c:80: U0CSR |= 0x80;           //设置为UART方式
	orl	_U0CSR,#0x80
;	client.c:81: U0GCR |= 11;				       
	orl	_U0GCR,#0x0B
;	client.c:82: U0BAUD |= 216;           //波特率设为115200
	orl	_U0BAUD,#0xD8
;	client.c:83: UTX0IF = 0;              //UART0 TX中断标志初始置位0
	clr	_UTX0IF
;	client.c:85: IEN0 |= 0x80;            //开总中断允许接收中断 
	orl	_IEN0,#0x80
;	client.c:86: P1DIR |= 0x01;
	orl	_P1DIR,#0x01
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'login'
;------------------------------------------------------------
;	client.c:90: void login(void)
;	-----------------------------------------
;	 function login
;	-----------------------------------------
_login:
;	client.c:92: uip_ip6addr(&server_ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0x01);
	mov	dptr,#_server_ipaddr
	mov	a,#0xAA
	movx	@dptr,a
	mov	a,#0xAA
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_server_ipaddr + 0x0002)
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_server_ipaddr + 0x0004)
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_server_ipaddr + 0x0006)
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_server_ipaddr + 0x0008)
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_server_ipaddr + 0x000a)
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_server_ipaddr + 0x000c)
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_server_ipaddr + 0x000e)
	clr	a
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
;	client.c:95: buf[0] = 0xEF;// start  of cmd 
	mov	dptr,#_buf
	mov	a,#0xEF
	movx	@dptr,a
;	client.c:96: buf[1] = DEVICE_ID;// deviceID
	mov	dptr,#(_buf + 0x0001)
	mov	a,#0x02
	movx	@dptr,a
;	client.c:97: buf[2] = 0x00;//"0x00" refer " send a address report to root "     
	mov	dptr,#(_buf + 0x0002)
;	client.c:98: buf[3] = 0x00;// data length 0
	clr	a
	movx	@dptr,a
	mov	dptr,#(_buf + 0x0003)
	movx	@dptr,a
;	client.c:99: buf[4] = 0xFE; //end of cmd
	mov	dptr,#(_buf + 0x0004)
	mov	a,#0xFE
	movx	@dptr,a
;	client.c:100: uip_udp_packet_sendto(client_conn, buf, 5, &server_ipaddr, UIP_HTONS(5775));
	mov	dptr,#_client_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x16
	push	acc
	mov	a,#0x8F
	push	acc
	mov	a,#_server_ipaddr
	push	acc
	mov	a,#(_server_ipaddr >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#0x05
	push	acc
	clr	a
	push	acc
	mov	a,#_buf
	push	acc
	mov	a,#(_buf >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_uip_udp_packet_sendto
	mov	r1,#(_uip_udp_packet_sendto >> 8)
	mov	r2,#(_uip_udp_packet_sendto >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_temp'
;------------------------------------------------------------
;temp                      Allocated to registers r7 
;i                         Allocated to registers r6 
;j                         Allocated to registers r2 
;------------------------------------------------------------
;	client.c:105: void set_temp(unsigned char temp)
;	-----------------------------------------
;	 function set_temp
;	-----------------------------------------
_set_temp:
	mov	r7,dpl
;	client.c:110: switch(temp)
	cjne	r7,#0x23,00158$
	sjmp	00101$
00158$:
	cjne	r7,#0x24,00159$
	sjmp	00102$
00159$:
	cjne	r7,#0x25,00160$
	sjmp	00103$
00160$:
	cjne	r7,#0x26,00161$
	sjmp	00104$
00161$:
;	client.c:112: case 0x23:i=3;break;
	cjne	r7,#0x27,00106$
	sjmp	00105$
00101$:
	mov	r6,#0x03
;	client.c:113: case 0x24:i=2;break;
	sjmp	00131$
00102$:
	mov	r6,#0x02
;	client.c:114: case 0x25:i=0;break;
	sjmp	00131$
00103$:
	mov	r6,#0x00
;	client.c:115: case 0x26:i=4;break;
	sjmp	00131$
00104$:
	mov	r6,#0x04
;	client.c:116: case 0x27:i=5;break;
	sjmp	00131$
00105$:
	mov	r6,#0x05
;	client.c:117: default:i=0;
	sjmp	00131$
00106$:
	mov	r6,#0x00
;	client.c:119: for(j=0;j<9;j++)
00131$:
	mov	a,r6
	mov	b,#0x09
	mul	ab
	mov	r5,a
	mov	r6,b
	add	a,#_cmd
	mov	r3,a
	mov	a,r6
	addc	a,#(_cmd >> 8)
	mov	r4,a
	mov	r2,#0x00
00117$:
;	client.c:121: U0DBUF =cmd[i][j];
	mov	a,r2
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	_U0DBUF,a
;	client.c:123: while(UTX0IF == 0);
00108$:
;	client.c:124: UTX0IF = 0;
	jbc	_UTX0IF,00163$
	sjmp	00108$
00163$:
;	client.c:125: if(j==22)
	cjne	r2,#0x16,00118$
;	client.c:126: { U0DBUF =cmd[i][j];
	push	ar3
	push	ar4
	mov	a,r5
	add	a,#_cmd
	mov	r3,a
	mov	a,r6
	addc	a,#(_cmd >> 8)
	mov	r4,a
	mov	a,r2
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	_U0DBUF,a
;	client.c:131: temperature_now =temp;
	pop	ar4
	pop	ar3
;	client.c:127: while(UTX0IF == 0);
00111$:
;	client.c:128: UTX0IF = 0;
	jbc	_UTX0IF,00166$
	sjmp	00111$
00166$:
00118$:
;	client.c:119: for(j=0;j<9;j++)
	inc	r2
	cjne	r2,#0x09,00167$
00167$:
	jc	00117$
;	client.c:131: temperature_now =temp;
	mov	dptr,#_temperature_now
	mov	a,r7
	movx	@dptr,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'turn_off'
;------------------------------------------------------------
;j                         Allocated to stack - sp +1
;------------------------------------------------------------
;	client.c:137: void turn_off(void)
;	-----------------------------------------
;	 function turn_off
;	-----------------------------------------
_turn_off:
;	client.c:141: U0DBUF =cmd[1][0];
	mov	dptr,#(_cmd + 0x0009)
	movx	a,@dptr
	mov	_U0DBUF,a
;	client.c:142: while(UTX0IF == 0);
00101$:
;	client.c:143: UTX0IF = 0;
	jbc	_UTX0IF,00202$
	sjmp	00101$
00202$:
;	client.c:144: U0DBUF =cmd[1][1];
	mov	dptr,#(_cmd + 0x000a)
	movx	a,@dptr
	mov	_U0DBUF,a
;	client.c:145: while(UTX0IF == 0);
00104$:
;	client.c:146: UTX0IF = 0;
	jbc	_UTX0IF,00203$
	sjmp	00104$
00203$:
;	client.c:147: U0DBUF =cmd[1][2];
	mov	dptr,#(_cmd + 0x000b)
	movx	a,@dptr
	mov	_U0DBUF,a
;	client.c:148: while(UTX0IF == 0);
00107$:
;	client.c:149: UTX0IF = 0;
	jbc	_UTX0IF,00204$
	sjmp	00107$
00204$:
;	client.c:150: U0DBUF =cmd[1][3];
	mov	dptr,#(_cmd + 0x000c)
	movx	a,@dptr
	mov	_U0DBUF,a
;	client.c:151: while(UTX0IF == 0);
00110$:
;	client.c:152: UTX0IF = 0;
	jbc	_UTX0IF,00205$
	sjmp	00110$
00205$:
;	client.c:153: U0DBUF =cmd[1][4];
	mov	dptr,#(_cmd + 0x000d)
	movx	a,@dptr
	mov	_U0DBUF,a
;	client.c:154: while(UTX0IF == 0);
00113$:
;	client.c:155: UTX0IF = 0;
	jbc	_UTX0IF,00206$
	sjmp	00113$
00206$:
;	client.c:156: U0DBUF =cmd[1][5];
	mov	dptr,#(_cmd + 0x000e)
	movx	a,@dptr
	mov	_U0DBUF,a
;	client.c:157: while(UTX0IF == 0);
00116$:
;	client.c:158: UTX0IF = 0;        
	jbc	_UTX0IF,00207$
	sjmp	00116$
00207$:
;	client.c:159: U0DBUF =cmd[1][6];
	mov	dptr,#(_cmd + 0x000f)
	movx	a,@dptr
	mov	r7,a
	mov	_U0DBUF,r7
;	client.c:160: while(UTX0IF == 0);
00119$:
;	client.c:161: UTX0IF = 0;
	jbc	_UTX0IF,00208$
	sjmp	00119$
00208$:
;	client.c:162: U0DBUF =cmd[1][6];
	mov	_U0DBUF,r7
;	client.c:163: while(UTX0IF == 0);
00122$:
;	client.c:164: UTX0IF = 0;
	jbc	_UTX0IF,00209$
	sjmp	00122$
00209$:
;	client.c:165: U0DBUF =cmd[1][7];
	mov	dptr,#(_cmd + 0x0010)
	movx	a,@dptr
	mov	r7,a
	mov	_U0DBUF,r7
;	client.c:166: while(UTX0IF == 0);
00125$:
;	client.c:167: UTX0IF = 0;
	jbc	_UTX0IF,00210$
	sjmp	00125$
00210$:
;	client.c:168: U0DBUF =cmd[1][7];
	mov	_U0DBUF,r7
;	client.c:169: while(UTX0IF == 0);
00128$:
;	client.c:170: UTX0IF = 0;
	jbc	_UTX0IF,00211$
	sjmp	00128$
00211$:
;	client.c:171: U0DBUF =cmd[1][8];
	mov	dptr,#(_cmd + 0x0011)
	movx	a,@dptr
	mov	_U0DBUF,a
;	client.c:172: while(UTX0IF == 0);
00131$:
;	client.c:173: UTX0IF = 0;
	jbc	_UTX0IF,00212$
	sjmp	00131$
00212$:
;	client.c:184: onoff_now=0x00;
	mov	dptr,#_onoff_now
	clr	a
	movx	@dptr,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'turn_on'
;------------------------------------------------------------
;j                         Allocated to registers r7 
;------------------------------------------------------------
;	client.c:187: void turn_on(void)
;	-----------------------------------------
;	 function turn_on
;	-----------------------------------------
_turn_on:
;	client.c:191: for(j=0;j<9;j++)
	mov	r7,#0x00
00115$:
;	client.c:193: U0DBUF =cmd[0][j];
	mov	a,r7
	add	a,#_cmd
	mov	dpl,a
	clr	a
	addc	a,#(_cmd >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_U0DBUF,a
;	client.c:194: while(UTX0IF == 0);
00101$:
;	client.c:195: UTX0IF = 0;
	jbc	_UTX0IF,00150$
	sjmp	00101$
00150$:
;	client.c:196: if(j==4)
	cjne	r7,#0x04,00108$
;	client.c:197: { U0DBUF =cmd[0][j];
	mov	a,r7
	add	a,#_cmd
	mov	dpl,a
	clr	a
	addc	a,#(_cmd >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_U0DBUF,a
;	client.c:198: while(UTX0IF == 0);
00104$:
;	client.c:199: UTX0IF = 0;
	jbc	_UTX0IF,00153$
	sjmp	00104$
00153$:
00108$:
;	client.c:201: if(j==6)
	cjne	r7,#0x06,00116$
;	client.c:202: { U0DBUF =cmd[0][j];
	mov	a,r7
	add	a,#_cmd
	mov	dpl,a
	clr	a
	addc	a,#(_cmd >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_U0DBUF,a
;	client.c:203: while(UTX0IF == 0);
00109$:
;	client.c:204: UTX0IF = 0;
	jbc	_UTX0IF,00156$
	sjmp	00109$
00156$:
00116$:
;	client.c:191: for(j=0;j<9;j++)
	inc	r7
	cjne	r7,#0x09,00157$
00157$:
	jc	00115$
;	client.c:208: onoff_now=0x01;
	mov	dptr,#_onoff_now
	mov	a,#0x01
	movx	@dptr,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DelayMS'
;------------------------------------------------------------
;msec                      Allocated to stack - sp -7
;i                         Allocated to stack - sp -3
;j                         Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	client.c:212: void DelayMS(uint32_t msec)//not enough 1ms
;	-----------------------------------------
;	 function DelayMS
;	-----------------------------------------
_DelayMS:
	push	dpl
	push	dph
	push	b
	push	acc
	mov	a,sp
	add	a,#0x04
;	client.c:216: for (i=0; i<msec; i++)
	mov	sp,a
	add	a,#0xfd
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
00107$:
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,sp
	add	a,#0xf9
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	jnc	00109$
;	client.c:217: for (j=0; j<1070; j++);
	mov	r4,#0x2E
	mov	r5,#0x04
	mov	r6,#0x00
	mov	r7,#0x00
00105$:
	dec	r4
	cjne	r4,#0xFF,00126$
	dec	r5
	cjne	r5,#0xFF,00126$
	dec	r6
	cjne	r6,#0xFF,00126$
	dec	r7
00126$:
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00105$
;	client.c:216: for (i=0; i<msec; i++)
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00128$
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00128$
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00128$
	inc	r0
	inc	@r0
00128$:
	sjmp	00107$
00109$:
	mov	a,sp
	add	a,#0xF8
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_state'
;------------------------------------------------------------
;	client.c:220: void send_state(void)
;	-----------------------------------------
;	 function send_state
;	-----------------------------------------
_send_state:
;	client.c:224: memset(buf,0,sizeof(buf));
	mov	a,#0x05
	push	acc
	clr	a
	push	acc
	clr	a
	push	acc
	mov	dptr,#_buf
	mov	b,#0x00
	mov	r0,#_memset
	mov	r1,#(_memset >> 8)
	mov	r2,#(_memset >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	client.c:225: uip_ip6addr(&server_ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0x01);
	mov	dptr,#_server_ipaddr
	mov	a,#0xAA
	movx	@dptr,a
	mov	a,#0xAA
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_server_ipaddr + 0x0002)
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_server_ipaddr + 0x0004)
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_server_ipaddr + 0x0006)
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_server_ipaddr + 0x0008)
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_server_ipaddr + 0x000a)
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_server_ipaddr + 0x000c)
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_server_ipaddr + 0x000e)
	clr	a
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
;	client.c:228: buf[0] = 0xEF;// start  of cmd 
	mov	dptr,#_buf
	mov	a,#0xEF
	movx	@dptr,a
;	client.c:229: buf[1] = DEVICE_ID;// deviceID
	mov	dptr,#(_buf + 0x0001)
	mov	a,#0x02
	movx	@dptr,a
;	client.c:230: buf[2] = 0xAA;// refer "this is a state report"
	mov	dptr,#(_buf + 0x0002)
	mov	a,#0xAA
	movx	@dptr,a
;	client.c:231: buf[3] =0x03;//data length
	mov	dptr,#(_buf + 0x0003)
	mov	a,#0x03
	movx	@dptr,a
;	client.c:232: buf[4] = 0x11;//0x01:air conditioner on  and 0x01:off
	mov	dptr,#(_buf + 0x0004)
	mov	a,#0x11
	movx	@dptr,a
;	client.c:233: buf[5] = onoff_now;//mode of air conditioner 0x11:frozen 0x22:heat 0x33:...
	mov	dptr,#_onoff_now
	movx	a,@dptr
	mov	dptr,#(_buf + 0x0005)
	movx	@dptr,a
;	client.c:234: buf[6] = temperature_now;// configure temperature at present
	mov	dptr,#_temperature_now
	movx	a,@dptr
	mov	dptr,#(_buf + 0x0006)
	movx	@dptr,a
;	client.c:235: buf[7] = 0xFE; //end of cmd
	mov	dptr,#(_buf + 0x0007)
	mov	a,#0xFE
	movx	@dptr,a
;	client.c:236: uip_udp_packet_sendto(client_conn, buf, 8, &server_ipaddr, UIP_HTONS(5775));
	mov	dptr,#_client_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x16
	push	acc
	mov	a,#0x8F
	push	acc
	mov	a,#_server_ipaddr
	push	acc
	mov	a,#(_server_ipaddr >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	a,#_buf
	push	acc
	mov	a,#(_buf >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_uip_udp_packet_sendto
	mov	r1,#(_uip_udp_packet_sendto >> 8)
	mov	r2,#(_uip_udp_packet_sendto >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tcpip_handler'
;------------------------------------------------------------
;p                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	client.c:242: tcpip_handler(void)
;	-----------------------------------------
;	 function tcpip_handler
;	-----------------------------------------
_tcpip_handler:
;	client.c:244: uint8_t * p=uip_appdata;
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	client.c:246: if(p[0]==0xEF&&p[1]==DEVICE_ID&&p[2]==0xCA&&p[3]==0x00&&p[4]==0xFE)send_state();
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	clr	a
	cjne	r4,#0xEF,00187$
	inc	a
00187$:
	mov	r4,a
	jz	00122$
	push	ar4
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x02,00190$
	sjmp	00191$
00190$:
	pop	ar4
	sjmp	00122$
00191$:
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0xCA,00192$
	sjmp	00193$
00192$:
	pop	ar4
	sjmp	00122$
00193$:
	mov	a,#0x03
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	pop	ar4
	jnz	00122$
	push	ar4
	mov	a,#0x04
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0xFE,00195$
	sjmp	00196$
00195$:
	pop	ar4
	sjmp	00122$
00196$:
	pop	ar4
	mov	r0,#_send_state
	mov	r1,#(_send_state >> 8)
	mov	r2,#(_send_state >> 16)
	lcall	__sdcc_banked_call
	ljmp	00128$
00122$:
;	client.c:247: else if(p[0]==0xEF&&p[1]==DEVICE_ID&&p[2]==0xC1&&p[3]==0x00&&p[4]==0xFE)turn_on();
	mov	a,r4
	jz	00115$
	push	ar4
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x02,00198$
	sjmp	00199$
00198$:
	pop	ar4
	sjmp	00115$
00199$:
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0xC1,00200$
	sjmp	00201$
00200$:
	pop	ar4
	sjmp	00115$
00201$:
	mov	a,#0x03
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	pop	ar4
	jnz	00115$
	push	ar4
	mov	a,#0x04
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0xFE,00203$
	sjmp	00204$
00203$:
	pop	ar4
	sjmp	00115$
00204$:
	pop	ar4
	mov	r0,#_turn_on
	mov	r1,#(_turn_on >> 8)
	mov	r2,#(_turn_on >> 16)
	lcall	__sdcc_banked_call
	ljmp	00128$
00115$:
;	client.c:248: else if(p[0]==0xEF&&p[1]==DEVICE_ID&&p[2]==0xC0&&p[3]==0x00&&p[4]==0xFE)turn_off();
	mov	a,r4
	jz	00108$
	push	ar4
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x02,00206$
	sjmp	00207$
00206$:
	pop	ar4
	sjmp	00108$
00207$:
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0xC0,00208$
	sjmp	00209$
00208$:
	pop	ar4
	sjmp	00108$
00209$:
	mov	a,#0x03
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	pop	ar4
	jnz	00108$
	push	ar4
	mov	a,#0x04
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0xFE,00211$
	sjmp	00212$
00211$:
	pop	ar4
	sjmp	00108$
00212$:
	pop	ar4
	mov	r0,#_turn_off
	mov	r1,#(_turn_off >> 8)
	mov	r2,#(_turn_off >> 16)
	lcall	__sdcc_banked_call
	sjmp	00128$
00108$:
;	client.c:249: else if(p[0]==0xEF&&p[1]==DEVICE_ID&&p[3]==0x00&&p[4]==0xFE)set_temp(p[2]);
	mov	a,r4
	jz	00102$
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x02,00102$
	mov	a,#0x03
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00102$
	mov	a,#0x04
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0xFE,00102$
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	mov	r0,#_set_temp
	mov	r1,#(_set_temp >> 8)
	mov	r2,#(_set_temp >> 16)
	lcall	__sdcc_banked_call
	sjmp	00128$
00102$:
;	client.c:250: else send_state();
	mov	r0,#_send_state
	mov	r1,#(_send_state >> 8)
	mov	r2,#(_send_state >> 16)
	lcall	__sdcc_banked_call
00128$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_global_address'
;------------------------------------------------------------
;ipaddr                    Allocated to stack - sp -15
;------------------------------------------------------------
;	client.c:254: set_global_address(void)
;	-----------------------------------------
;	 function set_global_address
;	-----------------------------------------
_set_global_address:
	mov	a,sp
	add	a,#0x10
;	client.c:258: uip_ip6addr(&ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0);
	mov	sp,a
	add	a,#0xF1
	mov	r0,a
	mov	@r0,#0xAA
	inc	r0
	mov	@r0,#0xAA
	mov	a,sp
	add	a,#0xF1
	mov	r7,a
	add	a,#0x02
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,#0x04
	add	a,r7
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,#0x06
	add	a,r7
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,#0x08
	add	a,r7
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,#0x0A
	add	a,r7
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,#0x0C
	add	a,r7
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,#0x0E
	add	a,r7
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	client.c:259: uip_ds6_set_addr_iid(&ipaddr, &uip_lladdr);
	mov	a,sp
	add	a,#0xF1
	mov	r7,a
	mov	r4,a
	mov	r5,#0x00
	mov	r6,#0x40
	push	ar7
	mov	a,#_uip_lladdr
	push	acc
	mov	a,#(_uip_lladdr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	r0,#_uip_ds6_set_addr_iid
	mov	r1,#(_uip_ds6_set_addr_iid >> 8)
	mov	r2,#(_uip_ds6_set_addr_iid >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
;	client.c:260: uip_ds6_addr_add(&ipaddr, 0, ADDR_AUTOCONF);
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	r0,#_uip_ds6_addr_add
	mov	r1,#(_uip_ds6_addr_add >> 8)
	mov	r2,#(_uip_ds6_addr_add >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,sp
	add	a,#0xF0
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_thread_udp_client_process'
;------------------------------------------------------------
;ev                        Allocated to stack - sp -3
;data                      Allocated to stack - sp -6
;process_pt                Allocated to registers r5 r6 r7 
;PT_YIELD_FLAG             Allocated to registers r4 
;et                        Allocated with name '_process_thread_udp_client_process_et_1_545'
;------------------------------------------------------------
;	client.c:263: PROCESS_THREAD(udp_client_process, ev, data)
;	-----------------------------------------
;	 function process_thread_udp_client_process
;	-----------------------------------------
_process_thread_udp_client_process:
;	client.c:267: PROCESS_BEGIN();
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r4,#0x01
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	cjne	r2,#0x00,00147$
	cjne	r3,#0x00,00147$
	sjmp	00101$
00147$:
	cjne	r2,#0x23,00148$
	cjne	r3,#0x01,00148$
	ljmp	00102$
00148$:
	ljmp	00120$
00101$:
;	client.c:270: set_global_address();
	push	ar5
	push	ar6
	push	ar7
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_set_global_address
	mov	r1,#(_set_global_address >> 8)
	mov	r2,#(_set_global_address >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	client.c:273: client_conn = udp_new(NULL, UIP_HTONS(5775), NULL);
	push	ar6
	push	ar5
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x16
	push	acc
	mov	a,#0x8F
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x00
	mov	r0,#_udp_new
	mov	r1,#(_udp_new >> 8)
	mov	r2,#(_udp_new >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar6
	mov	dptr,#_client_conn
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	client.c:275: udp_bind(client_conn, UIP_HTONS(5885));
	mov	a,#0x10
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,#0x16
	lcall	__gptrput
	inc	dptr
	mov	a,#0xFD
	lcall	__gptrput
;	client.c:276: server_conn = udp_new(NULL, UIP_HTONS(0), NULL);  
	clr	a
	push	acc
	push	acc
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x00
	mov	r0,#_udp_new
	mov	r1,#(_udp_new >> 8)
	mov	r2,#(_udp_new >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	dptr,#_server_conn
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	client.c:277: udp_bind(server_conn, UIP_HTONS(5885));
	mov	a,#0x10
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x16
	lcall	__gptrput
	inc	dptr
	mov	a,#0xFD
	lcall	__gptrput
;	client.c:284: DelayMS(3000);
	mov	dptr,#0x0BB8
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_DelayMS
	mov	r1,#(_DelayMS >> 8)
	mov	r2,#(_DelayMS >> 16)
	lcall	__sdcc_banked_call
;	client.c:287: etimer_set(&et,10*CLOCK_SECOND);
	clr	a
	push	acc
	mov	a,#0x05
	push	acc
	mov	dptr,#_process_thread_udp_client_process_et_1_545
	mov	b,#0x00
	mov	r0,#_etimer_set
	mov	r1,#(_etimer_set >> 8)
	mov	r2,#(_etimer_set >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	client.c:316: PROCESS_END();
	pop	ar7
	pop	ar6
	pop	ar5
;	client.c:288: while(1) 
00118$:
;	client.c:291: PROCESS_YIELD();
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x23
	lcall	__gptrput
	inc	dptr
	mov	a,#0x01
	lcall	__gptrput
00102$:
	mov	a,r4
	jnz	00106$
	mov	dpl,#0x01
	ljmp	00121$
00106$:
;	client.c:293: if(ev == tcpip_event)
	mov	dptr,#_tcpip_event
	movx	a,@dptr
	mov	r4,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	cjne	a,ar4,00115$
;	client.c:295: tcpip_handler();
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_tcpip_handler
	mov	r1,#(_tcpip_handler >> 8)
	mov	r2,#(_tcpip_handler >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00118$
00115$:
;	client.c:298: else if((sended_flag!=1)&&etimer_expired(&et)) 
	mov	dptr,#_sended_flag
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x01,00152$
	sjmp	00118$
00152$:
	mov	dptr,#_process_thread_udp_client_process_et_1_545
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_etimer_expired
	mov	r1,#(_etimer_expired >> 8)
	mov	r2,#(_etimer_expired >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jz	00118$
;	client.c:301: if(in_net_flag==1)
	mov	dptr,#_in_net_flag
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x01,00109$
;	client.c:303: leds_toggle(LEDS_GREEN);
	mov	dpl,#0x01
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_leds_toggle
	mov	r1,#(_leds_toggle >> 8)
	mov	r2,#(_leds_toggle >> 16)
	lcall	__sdcc_banked_call
;	client.c:304: login();
	mov	r0,#_login
	mov	r1,#(_login >> 8)
	mov	r2,#(_login >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	client.c:305: sended_flag=1;
	mov	dptr,#_sended_flag
	mov	a,#0x01
	movx	@dptr,a
	ljmp	00118$
00109$:
;	client.c:307: else etimer_set(&et,10*CLOCK_SECOND);
	push	ar7
	push	ar6
	push	ar5
	clr	a
	push	acc
	mov	a,#0x05
	push	acc
	mov	dptr,#_process_thread_udp_client_process_et_1_545
	mov	b,#0x00
	mov	r0,#_etimer_set
	mov	r1,#(_etimer_set >> 8)
	mov	r2,#(_etimer_set >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00118$
;	client.c:316: PROCESS_END();
00120$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	mov	dpl,#0x03
00121$:
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_autostart_processes:
	.byte _udp_client_process,(_udp_client_process >> 8),#0x00
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.area XINIT   (CODE)
__xinit__light_state:
	.db #0x00	; 0
__xinit__buf:
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
__xinit__sended_flag:
	.db #0x00	; 0
__xinit__temperature_now:
	.db #0x25	; 37
__xinit__oshi_now:
	.db #0x11	; 17
__xinit__onoff_now:
	.db #0x00	; 0
__xinit__cmd:
	.db #0xF7	; 247
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x84	; 132
	.db #0xF7	; 247
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x85	; 133
	.db #0xF7	; 247
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x86	; 134
	.db #0xF7	; 247
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x87	; 135
	.db #0xF7	; 247
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x88	; 136
	.db #0xF7	; 247
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x89	; 137
__xinit__udp_client_process:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.byte _process_thread_udp_client_process,(_process_thread_udp_client_process >> 8),(_process_thread_udp_client_process >> 16)
	.byte #0x00,#0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
