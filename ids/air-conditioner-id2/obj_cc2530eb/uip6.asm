;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8804 (Aug  6 2013) (Linux)
; This file was generated Mon Aug 25 04:16:41 2014
;--------------------------------------------------------
	.module uip6
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _remove_ext_hdr
	.globl _uip_add32
	.globl _rpl_verify_header
	.globl _rpl_update_header_empty
	.globl _uip_rpl_input
	.globl _uip_ds6_select_src
	.globl _uip_ds6_maddr_lookup
	.globl _uip_ds6_addr_lookup
	.globl _uip_ds6_is_addr_onlink
	.globl _uip_ds6_init
	.globl _uip_nd6_na_input
	.globl _uip_nd6_ns_input
	.globl _uip_icmp6_error_output
	.globl _uip_icmp6_echo_request_input
	.globl _tcpip_icmp6_call
	.globl _tcpip_uipcall
	.globl _memset
	.globl _memcmp
	.globl _memmove
	.globl _memcpy
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
	.globl _uip_ext_opt_offset
	.globl _uip_ext_len
	.globl _uip_ext_bitmap
	.globl _uip_icmp6_conns
	.globl _uip_udp_conns
	.globl _uip_udp_conn
	.globl _uip_acc32
	.globl _uip_listenports
	.globl _uip_conns
	.globl _uip_conn
	.globl _uip_flags
	.globl _uip_slen
	.globl _uip_len
	.globl _uip_sappdata
	.globl _uip_appdata
	.globl _uip_aligned_buf
	.globl _uip_next_hdr
	.globl _uip_lladdr
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
	.globl _uip_chksum
	.globl _uip_ipchksum
	.globl _uip_icmp6chksum
	.globl _uip_tcpchksum
	.globl _uip_udpchksum
	.globl _uip_init
	.globl _uip_connect
	.globl _uip_udp_new
	.globl _uip_unlisten
	.globl _uip_listen
	.globl _uip_process
	.globl _uip_htons
	.globl _uip_htonl
	.globl _uip_send
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
_uip_lladdr::
	.ds 8
_uip_next_hdr::
	.ds 3
_uip_aligned_buf::
	.ds 240
_uip_appdata::
	.ds 3
_uip_sappdata::
	.ds 3
_uip_len::
	.ds 2
_uip_slen::
	.ds 2
_uip_flags::
	.ds 1
_uip_conn::
	.ds 3
_c:
	.ds 1
_lastport:
	.ds 2
_uip_conns::
	.ds 460
_uip_listenports::
	.ds 40
_iss:
	.ds 4
_uip_acc32::
	.ds 4
_opt:
	.ds 1
_tmp16:
	.ds 2
_uip_udp_conn::
	.ds 3
_uip_udp_conns::
	.ds 270
_uip_icmp6_conns::
	.ds 6
_chksum_t_1_227:
	.ds 2
_chksum_dataptr_1_227:
	.ds 3
_chksum_last_byte_1_227:
	.ds 3
_uip_ipchksum_sum_1_235:
	.ds 2
_upper_layer_chksum_upper_layer_len_1_237:
	.ds 2
_upper_layer_chksum_sum_1_237:
	.ds 2
_uip_send_copylen_1_423:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_uip_ext_bitmap::
	.ds 1
_uip_ext_len::
	.ds 1
_uip_ext_opt_offset::
	.ds 1
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
;Allocation info for local variables in function 'uip_add32'
;------------------------------------------------------------
;op16                      Allocated to stack - sp -7
;op32                      Allocated to stack - sp -2
;------------------------------------------------------------
;	../../../../core/net/uip6.c:271: uip_add32(uint8_t *op32, uint16_t op16)
;	-----------------------------------------
;	 function uip_add32
;	-----------------------------------------
_uip_add32:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	dpl
	push	dph
	push	b
;	../../../../core/net/uip6.c:273: uip_acc32[3] = op32[3] + (op16 & 0xff);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x03
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar3,@r0
	mov	a,r3
	add	a,r2
	mov	dptr,#(_uip_acc32 + 0x0003)
	movx	@dptr,a
;	../../../../core/net/uip6.c:274: uip_acc32[2] = op32[2] + (op16 >> 8);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	inc	r0
	mov	a,@r0
	add	a,r2
	mov	r2,a
	mov	dptr,#(_uip_acc32 + 0x0002)
	movx	@dptr,a
;	../../../../core/net/uip6.c:275: uip_acc32[1] = op32[1];
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x01
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#(_uip_acc32 + 0x0001)
	movx	@dptr,a
;	../../../../core/net/uip6.c:276: uip_acc32[0] = op32[0];
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	dptr,#_uip_acc32
	movx	@dptr,a
;	../../../../core/net/uip6.c:278: if(uip_acc32[2] < (op16 >> 8)) {
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	inc	r0
	mov	ar6,@r0
	mov	r7,#0x00
	mov	r5,#0x00
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00104$
;	../../../../core/net/uip6.c:279: ++uip_acc32[1];
	mov	dptr,#(_uip_acc32 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	dptr,#(_uip_acc32 + 0x0001)
	mov	a,r7
	movx	@dptr,a
;	../../../../core/net/uip6.c:280: if(uip_acc32[1] == 0) {
	mov	a,r7
	jnz	00104$
;	../../../../core/net/uip6.c:281: ++uip_acc32[0];
	mov	dptr,#_uip_acc32
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	dptr,#_uip_acc32
	mov	a,r7
	movx	@dptr,a
00104$:
;	../../../../core/net/uip6.c:286: if(uip_acc32[3] < (op16 & 0xff)) {
	mov	dptr,#(_uip_acc32 + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar5,@r0
	mov	r6,#0x00
	mov	r4,#0x00
	clr	c
	mov	a,r7
	subb	a,r5
	mov	a,r4
	subb	a,r6
	jnc	00111$
;	../../../../core/net/uip6.c:287: ++uip_acc32[2];
	mov	dptr,#(_uip_acc32 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	dptr,#(_uip_acc32 + 0x0002)
	mov	a,r7
	movx	@dptr,a
;	../../../../core/net/uip6.c:288: if(uip_acc32[2] == 0) {
	mov	a,r7
	jnz	00111$
;	../../../../core/net/uip6.c:289: ++uip_acc32[1];
	mov	dptr,#(_uip_acc32 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	dptr,#(_uip_acc32 + 0x0001)
	mov	a,r7
	movx	@dptr,a
;	../../../../core/net/uip6.c:290: if(uip_acc32[1] == 0) {
	mov	a,r7
	jnz	00111$
;	../../../../core/net/uip6.c:291: ++uip_acc32[0];
	mov	dptr,#_uip_acc32
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	dptr,#_uip_acc32
	mov	a,r7
	movx	@dptr,a
00111$:
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'chksum'
;------------------------------------------------------------
;data                      Allocated to stack - sp -13
;len                       Allocated to stack - sp -15
;sum                       Allocated to stack - sp -7
;sloc0                     Allocated to stack - sp -5
;sloc1                     Allocated to stack - sp -2
;t                         Allocated with name '_chksum_t_1_227'
;dataptr                   Allocated with name '_chksum_dataptr_1_227'
;last_byte                 Allocated with name '_chksum_last_byte_1_227'
;------------------------------------------------------------
;	../../../../core/net/uip6.c:302: chksum(uint16_t sum, const uint8_t *data, uint16_t len)
;	-----------------------------------------
;	 function chksum
;	-----------------------------------------
_chksum:
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x06
;	../../../../core/net/uip6.c:308: dataptr = data;
	mov	sp,a
	add	a,#0xf3
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	dptr,#_chksum_dataptr_1_227
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:309: last_byte = data + len - 1;
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,@r0
	add	a,r3
	mov	r3,a
	inc	r0
	mov	a,@r0
	addc	a,r4
	mov	r4,a
	dec	r3
	cjne	r3,#0xFF,00127$
	dec	r4
00127$:
	mov	dptr,#_chksum_last_byte_1_227
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:311: while(dataptr < last_byte) {   /* At least two more bytes */
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
00103$:
	mov	dptr,#_chksum_dataptr_1_227
	mov	r0,sp
	dec	r0
	dec	r0
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jc	00128$
	ljmp	00105$
00128$:
;	../../../../core/net/uip6.c:312: t = (dataptr[0] << 8) + dataptr[1];
	push	ar3
	push	ar4
	push	ar5
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	mov	r2,#0x00
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r7,#0x00
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r5
	mov	r5,a
	mov	dptr,#_chksum_t_1_227
	mov	a,r2
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:313: sum += t;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	@r0,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	../../../../core/net/uip6.c:314: if(sum < t) {
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	subb	a,r5
	pop	ar5
	pop	ar4
	pop	ar3
	jnc	00102$
;	../../../../core/net/uip6.c:315: sum++;      /* carry */
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00130$
	inc	r0
	inc	@r0
00130$:
00102$:
;	../../../../core/net/uip6.c:317: dataptr += 2;
	mov	dptr,#_chksum_dataptr_1_227
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_chksum_dataptr_1_227
	mov	a,#0x02
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00103$
00105$:
;	../../../../core/net/uip6.c:320: if(dataptr == last_byte) {
	mov	r0,sp
	dec	r0
	dec	r0
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00109$
;	../../../../core/net/uip6.c:321: t = (dataptr[0] << 8) + 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#_chksum_t_1_227
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:322: sum += t;
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,r7
	add	a,@r0
	mov	@r0,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	../../../../core/net/uip6.c:323: if(sum < t) {
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r7
	inc	r0
	mov	a,@r0
	subb	a,r6
	jnc	00109$
;	../../../../core/net/uip6.c:324: sum++;      /* carry */
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00134$
	inc	r0
	inc	@r0
00134$:
00109$:
;	../../../../core/net/uip6.c:329: return sum;
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,sp
	add	a,#0xF8
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_chksum'
;------------------------------------------------------------
;len                       Allocated to stack - sp -4
;data                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../../../core/net/uip6.c:333: uip_chksum(uint16_t *data, uint16_t len)
;	-----------------------------------------
;	 function uip_chksum
;	-----------------------------------------
_uip_chksum:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../../../core/net/uip6.c:335: return uip_htons(chksum(0, (uint8_t *)data, len));
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	r0,#_chksum
	mov	r1,#(_chksum >> 8)
	mov	r2,#(_chksum >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	dpl,r6
	mov	dph,r7
	mov	r0,#_uip_htons
	mov	r1,#(_uip_htons >> 8)
	mov	r2,#(_uip_htons >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov  r7,dph
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_ipchksum'
;------------------------------------------------------------
;sum                       Allocated with name '_uip_ipchksum_sum_1_235'
;------------------------------------------------------------
;	../../../../core/net/uip6.c:340: uip_ipchksum(void)
;	-----------------------------------------
;	 function uip_ipchksum
;	-----------------------------------------
_uip_ipchksum:
;	../../../../core/net/uip6.c:344: sum = chksum(0, &uip_buf[UIP_LLH_LEN], UIP_IPH_LEN);
	mov	a,#0x28
	push	acc
	clr	a
	push	acc
	mov	a,#_uip_aligned_buf
	push	acc
	mov	a,#(_uip_aligned_buf >> 8)
	push	acc
	clr	a
	push	acc
	mov	dptr,#0x0000
	mov	r0,#_chksum
	mov	r1,#(_chksum >> 8)
	mov	r2,#(_chksum >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	dptr,#_uip_ipchksum_sum_1_235
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:346: return (sum == 0) ? 0xffff : uip_htons(sum);
	mov	a,r6
	orl	a,r7
	cjne	a,#0x01,00108$
00108$:
	clr	a
	rlc	a
	mov	r5,a
	jz	00103$
	mov	r4,#0xFF
	mov	r5,#0xFF
	sjmp	00104$
00103$:
	mov	dpl,r6
	mov	dph,r7
	mov	r0,#_uip_htons
	mov	r1,#(_uip_htons >> 8)
	mov	r2,#(_uip_htons >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
00104$:
	mov	dpl,r4
	mov	dph,r5
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'upper_layer_chksum'
;------------------------------------------------------------
;proto                     Allocated to registers r7 
;upper_layer_len           Allocated with name '_upper_layer_chksum_upper_layer_len_1_237'
;sum                       Allocated with name '_upper_layer_chksum_sum_1_237'
;------------------------------------------------------------
;	../../../../core/net/uip6.c:351: upper_layer_chksum(uint8_t proto)
;	-----------------------------------------
;	 function upper_layer_chksum
;	-----------------------------------------
_upper_layer_chksum:
	mov	r7,dpl
;	../../../../core/net/uip6.c:365: upper_layer_len = (((uint16_t)(UIP_IP_BUF->len[0]) << 8) + UIP_IP_BUF->len[1] - uip_ext_len);
	mov	r5,#_uip_aligned_buf
	mov	r6,#(_uip_aligned_buf >> 8)
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r6,#0x00
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,#0x00
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	dptr,#_upper_layer_chksum_upper_layer_len_1_237
	mov	a,r6
	clr	c
	subb	a,r4
	movx	@dptr,a
	mov	a,r5
	subb	a,r3
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:372: sum = upper_layer_len + proto;
	mov	r6,#0x00
	mov	dptr,#_upper_layer_chksum_upper_layer_len_1_237
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r7
	add	a,r4
	mov	r4,a
	mov	a,r6
	addc	a,r5
	mov	r5,a
	mov	dptr,#_upper_layer_chksum_sum_1_237
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:374: sum = chksum(sum, (uint8_t *)&UIP_IP_BUF->srcipaddr, 2 * sizeof(uip_ipaddr_t));
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r3,#0x00
	mov	a,#0x20
	push	acc
	clr	a
	push	acc
	push	ar6
	push	ar7
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	mov	r0,#_chksum
	mov	r1,#(_chksum >> 8)
	mov	r2,#(_chksum >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	dptr,#_upper_layer_chksum_sum_1_237
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:378: upper_layer_len);
	mov	dptr,#_upper_layer_chksum_upper_layer_len_1_237
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	../../../../core/net/uip6.c:377: sum = chksum(sum, &uip_buf[UIP_IPH_LEN + UIP_LLH_LEN + uip_ext_len],
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	add	a,#0x28
	add	a,#_uip_aligned_buf
	mov	r2,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r1,a
	mov	r3,#0x00
	push	ar4
	push	ar5
	push	ar2
	push	ar1
	push	ar3
	mov	dpl,r6
	mov	dph,r7
	mov	r0,#_chksum
	mov	r1,#(_chksum >> 8)
	mov	r2,#(_chksum >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	dptr,#_upper_layer_chksum_sum_1_237
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:380: return (sum == 0) ? 0xffff : uip_htons(sum);
	mov	a,r6
	orl	a,r7
	cjne	a,#0x01,00108$
00108$:
	clr	a
	rlc	a
	mov	r5,a
	jz	00103$
	mov	r4,#0xFF
	mov	r5,#0xFF
	sjmp	00104$
00103$:
	mov	dpl,r6
	mov	dph,r7
	mov	r0,#_uip_htons
	mov	r1,#(_uip_htons >> 8)
	mov	r2,#(_uip_htons >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
00104$:
	mov	dpl,r4
	mov	dph,r5
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_icmp6chksum'
;------------------------------------------------------------
;	../../../../core/net/uip6.c:384: uip_icmp6chksum(void)
;	-----------------------------------------
;	 function uip_icmp6chksum
;	-----------------------------------------
_uip_icmp6chksum:
;	../../../../core/net/uip6.c:386: return upper_layer_chksum(UIP_PROTO_ICMP6);
	mov	dpl,#0x3A
	mov	r0,#_upper_layer_chksum
	mov	r1,#(_upper_layer_chksum >> 8)
	mov	r2,#(_upper_layer_chksum >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov  r7,dph
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_tcpchksum'
;------------------------------------------------------------
;	../../../../core/net/uip6.c:392: uip_tcpchksum(void)
;	-----------------------------------------
;	 function uip_tcpchksum
;	-----------------------------------------
_uip_tcpchksum:
;	../../../../core/net/uip6.c:394: return upper_layer_chksum(UIP_PROTO_TCP);
	mov	dpl,#0x06
	mov	r0,#_upper_layer_chksum
	mov	r1,#(_upper_layer_chksum >> 8)
	mov	r2,#(_upper_layer_chksum >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov  r7,dph
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_udpchksum'
;------------------------------------------------------------
;	../../../../core/net/uip6.c:400: uip_udpchksum(void)
;	-----------------------------------------
;	 function uip_udpchksum
;	-----------------------------------------
_uip_udpchksum:
;	../../../../core/net/uip6.c:402: return upper_layer_chksum(UIP_PROTO_UDP);
	mov	dpl,#0x11
	mov	r0,#_upper_layer_chksum
	mov	r1,#(_upper_layer_chksum >> 8)
	mov	r2,#(_upper_layer_chksum >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov  r7,dph
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_init'
;------------------------------------------------------------
;	../../../../core/net/uip6.c:408: uip_init(void)
;	-----------------------------------------
;	 function uip_init
;	-----------------------------------------
_uip_init:
;	../../../../core/net/uip6.c:411: uip_ds6_init();
	mov	r0,#_uip_ds6_init
	mov	r1,#(_uip_ds6_init >> 8)
	mov	r2,#(_uip_ds6_init >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:414: for(c = 0; c < UIP_LISTENPORTS; ++c) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00104$:
;	../../../../core/net/uip6.c:415: uip_listenports[c] = 0;
	mov	dptr,#_c
	movx	a,@dptr
	mov	b,#0x02
	mul	ab
	add	a,#_uip_listenports
	mov	dpl,a
	mov	a,#(_uip_listenports >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:414: for(c = 0; c < UIP_LISTENPORTS; ++c) {
	mov	dptr,#_c
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x14,00127$
00127$:
	jc	00104$
;	../../../../core/net/uip6.c:417: for(c = 0; c < UIP_CONNS; ++c) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00106$:
;	../../../../core/net/uip6.c:418: uip_conns[c].tcpstateflags = UIP_CLOSED;
	mov	dptr,#_c
	movx	a,@dptr
	mov	b,#0x2E
	mul	ab
	add	a,#_uip_conns
	mov	r6,a
	mov	a,#(_uip_conns >> 8)
	addc	a,b
	mov	r7,a
	mov	a,#0x25
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movx	@dptr,a
;	../../../../core/net/uip6.c:417: for(c = 0; c < UIP_CONNS; ++c) {
	mov	dptr,#_c
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0A,00129$
00129$:
	jc	00106$
;	../../../../core/net/uip6.c:423: lastport = 1024;
	mov	dptr,#_lastport
	clr	a
	movx	@dptr,a
	mov	a,#0x04
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:427: for(c = 0; c < UIP_UDP_CONNS; ++c) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00108$:
;	../../../../core/net/uip6.c:428: uip_udp_conns[c].lport = 0;
	mov	dptr,#_c
	movx	a,@dptr
	mov	b,#0x1B
	mul	ab
	add	a,#_uip_udp_conns
	mov	r6,a
	mov	a,#(_uip_udp_conns >> 8)
	addc	a,b
	mov	r7,a
	mov	a,#0x10
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:427: for(c = 0; c < UIP_UDP_CONNS; ++c) {
	mov	dptr,#_c
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0A,00131$
00131$:
	jc	00108$
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_connect'
;------------------------------------------------------------
;rport                     Allocated to stack - sp -16
;ripaddr                   Allocated to stack - sp -11
;conn                      Allocated to stack - sp -5
;cconn                     Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -2
;sloc1                     Allocated to stack - sp -8
;------------------------------------------------------------
;	../../../../core/net/uip6.c:435: uip_connect(uip_ipaddr_t *ripaddr, uint16_t rport)
;	-----------------------------------------
;	 function uip_connect
;	-----------------------------------------
_uip_connect:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x09
	mov	sp,a
;	../../../../core/net/uip6.c:440: again:
00101$:
;	../../../../core/net/uip6.c:441: ++lastport;
	mov	dptr,#_lastport
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	../../../../core/net/uip6.c:443: if(lastport >= 32000) {
	mov	dptr,#_lastport
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	clr	c
	subb	a,#0x7D
	jc	00103$
;	../../../../core/net/uip6.c:444: lastport = 4096;
	mov	dptr,#_lastport
	clr	a
	movx	@dptr,a
	mov	a,#0x10
	inc	dptr
	movx	@dptr,a
00103$:
;	../../../../core/net/uip6.c:449: for(c = 0; c < UIP_CONNS; ++c) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00118$:
;	../../../../core/net/uip6.c:450: conn = &uip_conns[c];
	mov	dptr,#_c
	movx	a,@dptr
	mov	b,#0x2E
	mul	ab
	add	a,#_uip_conns
	mov	r3,a
	mov	a,#(_uip_conns >> 8)
	addc	a,b
	mov	r4,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
;	../../../../core/net/uip6.c:451: if(conn->tcpstateflags != UIP_CLOSED &&
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x25
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jz	00119$
;	../../../../core/net/uip6.c:452: conn->lport == uip_htons(lastport)) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x10
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_lastport
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar4
	mov	r0,#_uip_htons
	mov	r1,#(_uip_htons >> 8)
	mov	r2,#(_uip_htons >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
	mov	a,r5
	cjne	a,ar6,00156$
	mov	a,r4
	cjne	a,ar7,00156$
	ljmp	00101$
00156$:
;	../../../../core/net/uip6.c:453: goto again;
00119$:
;	../../../../core/net/uip6.c:449: for(c = 0; c < UIP_CONNS; ++c) {
	mov	dptr,#_c
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0A,00157$
00157$:
	jnc	00158$
	ljmp	00118$
00158$:
;	../../../../core/net/uip6.c:457: conn = 0;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
;	../../../../core/net/uip6.c:458: for(c = 0; c < UIP_CONNS; ++c) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00120$:
;	../../../../core/net/uip6.c:459: cconn = &uip_conns[c];
	mov	dptr,#_c
	movx	a,@dptr
	mov	b,#0x2E
	mul	ab
	add	a,#_uip_conns
	mov	r6,a
	mov	a,#(_uip_conns >> 8)
	addc	a,b
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
;	../../../../core/net/uip6.c:460: if(cconn->tcpstateflags == UIP_CLOSED) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x25
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	jnz	00109$
;	../../../../core/net/uip6.c:461: conn = cconn;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	../../../../core/net/uip6.c:462: break;
	sjmp	00115$
00109$:
;	../../../../core/net/uip6.c:464: if(cconn->tcpstateflags == UIP_TIME_WAIT) {
	cjne	r7,#0x07,00121$
;	../../../../core/net/uip6.c:465: if(conn == 0 ||
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00110$
;	../../../../core/net/uip6.c:466: cconn->timer > conn->timer) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x26
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x26
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	clr	c
	subb	a,r5
	jnc	00121$
00110$:
;	../../../../core/net/uip6.c:467: conn = cconn;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00121$:
;	../../../../core/net/uip6.c:458: for(c = 0; c < UIP_CONNS; ++c) {
	mov	dptr,#_c
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x0A,00164$
00164$:
	jnc	00165$
	ljmp	00120$
00165$:
00115$:
;	../../../../core/net/uip6.c:472: if(conn == 0) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
;	../../../../core/net/uip6.c:473: return 0;
	jnz	00117$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00122$
00117$:
;	../../../../core/net/uip6.c:476: conn->tcpstateflags = UIP_SYN_SENT;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x25
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x02
	lcall	__gptrput
;	../../../../core/net/uip6.c:478: conn->snd_nxt[0] = iss[0];
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x18
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dptr,#_iss
	movx	a,@dptr
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	../../../../core/net/uip6.c:479: conn->snd_nxt[1] = iss[1];
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x18
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x01
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	dptr,#(_iss + 0x0001)
	movx	a,@dptr
	mov	r4,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	../../../../core/net/uip6.c:480: conn->snd_nxt[2] = iss[2];
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x02
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	dptr,#(_iss + 0x0002)
	movx	a,@dptr
	mov	r4,a
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	../../../../core/net/uip6.c:481: conn->snd_nxt[3] = iss[3];
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#(_iss + 0x0003)
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	../../../../core/net/uip6.c:483: conn->rcv_nxt[0] = 0;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x14
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:484: conn->rcv_nxt[1] = 0;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x14
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
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
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:485: conn->rcv_nxt[2] = 0;
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
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:486: conn->rcv_nxt[3] = 0;
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:488: conn->initialmss = conn->mss = UIP_TCP_MSS;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x20
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x1E
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0xB4
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xB4
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:490: conn->len = 1;   /* TCP length of the SYN is one. */
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x1C
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:491: conn->nrtx = 0;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x27
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:492: conn->timer = 1; /* Send the SYN next time around. */
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x26
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	../../../../core/net/uip6.c:493: conn->rto = UIP_RTO;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x24
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x03
	lcall	__gptrput
;	../../../../core/net/uip6.c:494: conn->sa = 0;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x22
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:495: conn->sv = 16;   /* Initial value of the RTT variance. */
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x23
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x10
	lcall	__gptrput
;	../../../../core/net/uip6.c:496: conn->lport = uip_htons(lastport);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x10
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_lastport
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_uip_htons
	mov	r1,#(_uip_htons >> 8)
	mov	r2,#(_uip_htons >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../../../../core/net/uip6.c:497: conn->rport = rport;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x12
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	../../../../core/net/uip6.c:498: uip_ipaddr_copy(&conn->ripaddr, ripaddr);
	mov	a,sp
	add	a,#0xf5
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
;	../../../../core/net/uip6.c:500: return conn;
	mov	sp,a
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
00122$:
	xch	a,r0
	mov	a,sp
	add	a,#0xF4
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'remove_ext_hdr'
;------------------------------------------------------------
;	../../../../core/net/uip6.c:505: remove_ext_hdr(void)
;	-----------------------------------------
;	 function remove_ext_hdr
;	-----------------------------------------
_remove_ext_hdr:
;	../../../../core/net/uip6.c:508: if(uip_ext_len > 0) {
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	mov	r7,a
	jnz	00113$
	ljmp	00105$
00113$:
;	../../../../core/net/uip6.c:511: if(uip_len < UIP_IPH_LEN + uip_ext_len) {
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,#0x28
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	clr	c
	mov	a,r1
	subb	a,r3
	mov	a,r2
	subb	a,r4
	jnc	00102$
;	../../../../core/net/uip6.c:513: uip_ext_len = 0;
	mov	dptr,#_uip_ext_len
;	../../../../core/net/uip6.c:514: uip_len = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_uip_len
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:515: return;
	ljmp	00105$
00102$:
;	../../../../core/net/uip6.c:518: uip_len - UIP_IPH_LEN - uip_ext_len);
	mov	a,r1
	add	a,#0xD8
	mov	r1,a
	mov	a,r2
	addc	a,#0xFF
	mov	r2,a
	mov	a,r1
	clr	c
	subb	a,r5
	mov	r1,a
	mov	a,r2
	subb	a,r6
	mov	r2,a
;	../../../../core/net/uip6.c:517: memmove(((uint8_t *)UIP_TCP_BUF), (uint8_t *)UIP_TCP_BUF + uip_ext_len,
	mov	a,r7
	add	a,#(_uip_aligned_buf + 0x0028)
	mov	r7,a
	clr	a
	addc	a,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	r6,a
	mov	r5,#0x00
	push	ar1
	push	ar2
	push	ar7
	push	ar6
	push	ar5
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	mov	b,#0x00
	mov	r0,#_memmove
	mov	r1,#(_memmove >> 8)
	mov	r2,#(_memmove >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../../core/net/uip6.c:520: uip_len -= uip_ext_len;
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_uip_len
	mov	a,r4
	clr	c
	subb	a,r7
	movx	@dptr,a
	mov	a,r5
	subb	a,r6
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:523: UIP_IP_BUF->len[0] = (uip_len - UIP_IPH_LEN) >> 8;
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x04
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,#0xD8
	mov	a,r5
	addc	a,#0xFF
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
;	../../../../core/net/uip6.c:524: UIP_IP_BUF->len[1] = (uip_len - UIP_IPH_LEN) & 0xff;
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x05
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,#0xD8
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	../../../../core/net/uip6.c:525: uip_ext_len = 0;
	mov	dptr,#_uip_ext_len
	clr	a
	movx	@dptr,a
00105$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_udp_new'
;------------------------------------------------------------
;rport                     Allocated to stack - sp -13
;ripaddr                   Allocated to stack - sp -8
;conn                      Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -5
;------------------------------------------------------------
;	../../../../core/net/uip6.c:531: uip_udp_new(const uip_ipaddr_t *ripaddr, uint16_t rport)
;	-----------------------------------------
;	 function uip_udp_new
;	-----------------------------------------
_uip_udp_new:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x06
	mov	sp,a
;	../../../../core/net/uip6.c:536: again:
00101$:
;	../../../../core/net/uip6.c:537: ++lastport;
	mov	dptr,#_lastport
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	../../../../core/net/uip6.c:539: if(lastport >= 32000) {
	mov	dptr,#_lastport
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	clr	c
	subb	a,#0x7D
	jc	00103$
;	../../../../core/net/uip6.c:540: lastport = 4096;
	mov	dptr,#_lastport
	clr	a
	movx	@dptr,a
	mov	a,#0x10
	inc	dptr
	movx	@dptr,a
00103$:
;	../../../../core/net/uip6.c:543: for(c = 0; c < UIP_UDP_CONNS; ++c) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00115$:
;	../../../../core/net/uip6.c:544: if(uip_udp_conns[c].lport == uip_htons(lastport)) {
	mov	dptr,#_c
	movx	a,@dptr
	mov	b,#0x1B
	mul	ab
	add	a,#_uip_udp_conns
	mov	r3,a
	mov	a,#(_uip_udp_conns >> 8)
	addc	a,b
	mov	r4,a
	mov	a,#0x10
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_lastport
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r2
	mov	dph,r7
	push	ar4
	push	ar3
	mov	r0,#_uip_htons
	mov	r1,#(_uip_htons >> 8)
	mov	r2,#(_uip_htons >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	mov	a,r3
	cjne	a,ar6,00149$
	mov	a,r4
	cjne	a,ar7,00149$
	sjmp	00101$
00149$:
;	../../../../core/net/uip6.c:543: for(c = 0; c < UIP_UDP_CONNS; ++c) {
	mov	dptr,#_c
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x0A,00150$
00150$:
	jc	00115$
;	../../../../core/net/uip6.c:549: conn = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
;	../../../../core/net/uip6.c:550: for(c = 0; c < UIP_UDP_CONNS; ++c) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00117$:
;	../../../../core/net/uip6.c:551: if(uip_udp_conns[c].lport == 0) {
	mov	dptr,#_c
	movx	a,@dptr
	mov	r7,a
	mov	b,#0x1B
	mul	ab
	add	a,#_uip_udp_conns
	mov	r5,a
	mov	a,#(_uip_udp_conns >> 8)
	addc	a,b
	mov	r6,a
	mov	a,#0x10
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jnz	00118$
;	../../../../core/net/uip6.c:552: conn = &uip_udp_conns[c];
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
;	../../../../core/net/uip6.c:553: break;
	sjmp	00109$
00118$:
;	../../../../core/net/uip6.c:550: for(c = 0; c < UIP_UDP_CONNS; ++c) {
	mov	dptr,#_c
	mov	a,r7
	inc	a
	movx	@dptr,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0A,00153$
00153$:
	jc	00117$
00109$:
;	../../../../core/net/uip6.c:557: if(conn == 0) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
;	../../../../core/net/uip6.c:558: return 0;
	jnz	00111$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00119$
00111$:
;	../../../../core/net/uip6.c:561: conn->lport = UIP_HTONS(lastport);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xfb
	mov	r1,a
	mov	a,#0x10
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	dptr,#_lastport
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar7,r3
	mov	r2,#0x00
	mov	ar3,r4
	mov	r4,#0x00
	mov	a,r3
	orl	ar2,a
	mov	a,r4
	orl	ar7,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../../../../core/net/uip6.c:562: conn->rport = rport;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x12
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	../../../../core/net/uip6.c:563: if(ripaddr == NULL) {
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00113$
;	../../../../core/net/uip6.c:564: memset(&conn->ripaddr, 0, sizeof(uip_ipaddr_t));
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_memset
	mov	r1,#(_memset >> 8)
	mov	r2,#(_memset >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	sjmp	00114$
00113$:
;	../../../../core/net/uip6.c:566: uip_ipaddr_copy(&conn->ripaddr, ripaddr);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00114$:
;	../../../../core/net/uip6.c:568: conn->ttl = uip_ds6_if.cur_hop_limit;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x14
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dptr,#(_uip_ds6_if + 0x0004)
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	../../../../core/net/uip6.c:570: return conn;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
00119$:
	xch	a,r0
	mov	a,sp
	add	a,#0xF7
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_unlisten'
;------------------------------------------------------------
;port                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../../../core/net/uip6.c:576: uip_unlisten(uint16_t port)
;	-----------------------------------------
;	 function uip_unlisten
;	-----------------------------------------
_uip_unlisten:
	mov	r6,dpl
	mov	r7,dph
;	../../../../core/net/uip6.c:578: for(c = 0; c < UIP_LISTENPORTS; ++c) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00104$:
;	../../../../core/net/uip6.c:579: if(uip_listenports[c] == port) {
	mov	dptr,#_c
	movx	a,@dptr
	mov	r5,a
	mov	b,#0x02
	mul	ab
	add	a,#_uip_listenports
	mov	r3,a
	mov	a,#(_uip_listenports >> 8)
	addc	a,b
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r1
	cjne	a,ar6,00105$
	mov	a,r2
	cjne	a,ar7,00105$
;	../../../../core/net/uip6.c:580: uip_listenports[c] = 0;
	mov	dpl,r3
	mov	dph,r4
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:581: return;
	sjmp	00106$
00105$:
;	../../../../core/net/uip6.c:578: for(c = 0; c < UIP_LISTENPORTS; ++c) {
	mov	dptr,#_c
	mov	a,r5
	inc	a
	movx	@dptr,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x14,00116$
00116$:
	jc	00104$
00106$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_listen'
;------------------------------------------------------------
;port                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../../../core/net/uip6.c:587: uip_listen(uint16_t port)
;	-----------------------------------------
;	 function uip_listen
;	-----------------------------------------
_uip_listen:
	mov	r6,dpl
	mov	r7,dph
;	../../../../core/net/uip6.c:589: for(c = 0; c < UIP_LISTENPORTS; ++c) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00104$:
;	../../../../core/net/uip6.c:590: if(uip_listenports[c] == 0) {
	mov	dptr,#_c
	movx	a,@dptr
	mov	r5,a
	mov	b,#0x02
	mul	ab
	add	a,#_uip_listenports
	mov	r3,a
	mov	a,#(_uip_listenports >> 8)
	addc	a,b
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	orl	a,r1
	jnz	00105$
;	../../../../core/net/uip6.c:591: uip_listenports[c] = port;
	mov	dpl,r3
	mov	dph,r4
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:592: return;
	sjmp	00106$
00105$:
;	../../../../core/net/uip6.c:589: for(c = 0; c < UIP_LISTENPORTS; ++c) {
	mov	dptr,#_c
	mov	a,r5
	inc	a
	movx	@dptr,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x14,00115$
00115$:
	jc	00104$
00106$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_add_rcv_nxt'
;------------------------------------------------------------
;n                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../../../core/net/uip6.c:816: uip_add_rcv_nxt(uint16_t n)
;	-----------------------------------------
;	 function uip_add_rcv_nxt
;	-----------------------------------------
_uip_add_rcv_nxt:
	mov	r6,dpl
	mov	r7,dph
;	../../../../core/net/uip6.c:818: uip_add32(uip_conn->rcv_nxt, n);
	mov	dptr,#_uip_conn
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x14
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	r0,#_uip_add32
	mov	r1,#(_uip_add32 >> 8)
	mov	r2,#(_uip_add32 >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
;	../../../../core/net/uip6.c:819: uip_conn->rcv_nxt[0] = uip_acc32[0];
	mov	dptr,#_uip_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x14
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_uip_acc32
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	../../../../core/net/uip6.c:820: uip_conn->rcv_nxt[1] = uip_acc32[1];
	mov	dptr,#_uip_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x15
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#(_uip_acc32 + 0x0001)
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	../../../../core/net/uip6.c:821: uip_conn->rcv_nxt[2] = uip_acc32[2];
	mov	dptr,#_uip_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x16
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#(_uip_acc32 + 0x0002)
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	../../../../core/net/uip6.c:822: uip_conn->rcv_nxt[3] = uip_acc32[3];
	mov	dptr,#_uip_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x17
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#(_uip_acc32 + 0x0003)
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ext_hdr_options_process'
;------------------------------------------------------------
;sloc0                     Allocated to stack - sp -3
;sloc1                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../../../../core/net/uip6.c:831: ext_hdr_options_process(void)
;	-----------------------------------------
;	 function ext_hdr_options_process
;	-----------------------------------------
_ext_hdr_options_process:
	mov	a,sp
	add	a,#0x04
	mov	sp,a
;	../../../../core/net/uip6.c:838: uip_ext_opt_offset = 2;
	mov	dptr,#_uip_ext_opt_offset
	mov	a,#0x02
	movx	@dptr,a
;	../../../../core/net/uip6.c:839: while(uip_ext_opt_offset < ((UIP_EXT_BUF->len << 3) + 8)) {
00115$:
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	mov	r7,a
	add	a,#0x28
	add	a,#_uip_aligned_buf
	mov	r5,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	a
	rr	a
	anl	a,#0xF8
	xch	a,r6
	swap	a
	rr	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xF8
	xch	a,r6
	xrl	a,r6
	mov	r5,a
	mov	a,#0x08
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dptr,#_uip_ext_opt_offset
	movx	a,@dptr
	mov	r4,a
	mov	r2,a
	mov	r3,#0x00
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r3
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jc	00153$
	ljmp	00117$
00153$:
;	../../../../core/net/uip6.c:840: switch(UIP_EXT_HDR_OPT_BUF->type) {
	mov	a,#0x28
	add	a,r7
	add	a,r4
	add	a,#_uip_aligned_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	jz	00101$
	cjne	r6,#0x01,00155$
	sjmp	00102$
00155$:
;	../../../../core/net/uip6.c:846: case UIP_EXT_HDR_OPT_PAD1:
	cjne	r6,#0x63,00106$
	sjmp	00103$
00101$:
;	../../../../core/net/uip6.c:848: uip_ext_opt_offset += 1;
	mov	dptr,#_uip_ext_opt_offset
	mov	a,r4
	inc	a
	movx	@dptr,a
;	../../../../core/net/uip6.c:849: break;
;	../../../../core/net/uip6.c:850: case UIP_EXT_HDR_OPT_PADN:
	sjmp	00115$
00102$:
;	../../../../core/net/uip6.c:852: uip_ext_opt_offset += UIP_EXT_HDR_OPT_PADN_BUF->opt_len + 2;
	mov	a,#0x28
	add	a,r7
	add	a,r4
	add	a,#_uip_aligned_buf
	mov	r5,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	add	a,#0x02
	mov	dptr,#_uip_ext_opt_offset
	add	a,r4
	movx	@dptr,a
;	../../../../core/net/uip6.c:853: break;
	ljmp	00115$
;	../../../../core/net/uip6.c:855: case UIP_EXT_HDR_OPT_RPL:
00103$:
;	../../../../core/net/uip6.c:857: if(rpl_verify_header(uip_ext_opt_offset)) {
	mov	dpl,r2
	mov	dph,r3
	mov	r0,#_rpl_verify_header
	mov	r1,#(_rpl_verify_header >> 8)
	mov	r2,#(_rpl_verify_header >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00105$
;	../../../../core/net/uip6.c:859: return 1;
	mov	dpl,#0x01
	ljmp	00118$
00105$:
;	../../../../core/net/uip6.c:861: uip_ext_opt_offset += (UIP_EXT_HDR_OPT_RPL_BUF->opt_len) + 2;
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	add	a,#0x28
	mov	r6,a
	mov	dptr,#_uip_ext_opt_offset
	movx	a,@dptr
	mov	r5,a
	add	a,r6
	add	a,#_uip_aligned_buf
	mov	r3,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r6,a
	mov	dpl,r3
	mov	dph,r6
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	add	a,#0x02
	mov	dptr,#_uip_ext_opt_offset
	add	a,r5
	movx	@dptr,a
;	../../../../core/net/uip6.c:862: return 0;
	mov	dpl,#0x00
	ljmp	00118$
;	../../../../core/net/uip6.c:864: default:
00106$:
;	../../../../core/net/uip6.c:879: switch(UIP_EXT_HDR_OPT_BUF->type & 0xC0) {
	mov	a,#0x28
	add	a,r7
	add	a,r4
	add	a,#_uip_aligned_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	anl	ar6,#0xC0
	cjne	r6,#0x00,00158$
	ljmp	00113$
00158$:
	cjne	r6,#0x40,00159$
	sjmp	00108$
00159$:
	cjne	r6,#0x80,00160$
	sjmp	00112$
00160$:
	cjne	r6,#0xC0,00161$
	sjmp	00109$
00161$:
;	../../../../core/net/uip6.c:882: case 0x40:
	sjmp	00113$
00108$:
;	../../../../core/net/uip6.c:883: return 1;
	mov	dpl,#0x01
	ljmp	00118$
;	../../../../core/net/uip6.c:884: case 0xC0:
00109$:
;	../../../../core/net/uip6.c:885: if(uip_is_addr_mcast(&UIP_IP_BUF->destipaddr)) {
	mov	r5,#_uip_aligned_buf
	mov	r6,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0xFF,00112$
;	../../../../core/net/uip6.c:886: return 1;
	mov	dpl,#0x01
	ljmp	00118$
;	../../../../core/net/uip6.c:888: case 0x80:
00112$:
;	../../../../core/net/uip6.c:890: (uint32_t)UIP_IPH_LEN + uip_ext_len + uip_ext_opt_offset);
	mov	ar3,r7
	clr	a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x28
	add	a,r3
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	mov	dptr,#_uip_ext_opt_offset
	movx	a,@dptr
	mov	r2,a
	clr	a
	mov	r7,a
	mov	r6,a
	mov	r5,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
;	../../../../core/net/uip6.c:889: uip_icmp6_error_output(ICMP6_PARAM_PROB, ICMP6_PARAMPROB_OPTION,
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#0x02
	push	acc
	mov	dpl,#0x04
	mov	r0,#_uip_icmp6_error_output
	mov	r1,#(_uip_icmp6_error_output >> 8)
	mov	r2,#(_uip_icmp6_error_output >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../../core/net/uip6.c:891: return 2;
	mov	dpl,#0x02
;	../../../../core/net/uip6.c:892: }
	sjmp	00118$
00113$:
;	../../../../core/net/uip6.c:894: uip_ext_opt_offset += UIP_EXT_HDR_OPT_BUF->len + 2;
	mov	a,#0x28
	add	a,r7
	mov	r7,a
	mov	dptr,#_uip_ext_opt_offset
	movx	a,@dptr
	mov	r5,a
	add	a,r7
	add	a,#_uip_aligned_buf
	mov	r4,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r7,a
	mov	dpl,r4
	mov	dph,r7
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	add	a,#0x02
	mov	dptr,#_uip_ext_opt_offset
	add	a,r5
	movx	@dptr,a
;	../../../../core/net/uip6.c:896: }
	ljmp	00115$
00117$:
;	../../../../core/net/uip6.c:898: return 0;
	mov	dpl,#0x00
00118$:
	mov	a,sp
	add	a,#0xFC
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_process'
;------------------------------------------------------------
;flag                      Allocated to registers r7 
;uip_connr                 Allocated to stack - sp -2
;m                         Allocated to registers r2 
;sloc0                     Allocated to stack - sp -10
;sloc1                     Allocated to stack - sp -2
;sloc2                     Allocated to stack - sp -7
;sloc3                     Allocated to stack - sp -4
;------------------------------------------------------------
;	../../../../core/net/uip6.c:904: uip_process(uint8_t flag)
;	-----------------------------------------
;	 function uip_process
;	-----------------------------------------
_uip_process:
	mov	a,sp
	add	a,#0x0B
	mov	sp,a
	mov	r7,dpl
;	../../../../core/net/uip6.c:907: register struct uip_conn *uip_connr = uip_conn;
	mov	dptr,#_uip_conn
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
;	../../../../core/net/uip6.c:910: if(flag == UIP_UDP_SEND_CONN) {
	cjne	r7,#0x04,01122$
	ljmp	00291$
01122$:
;	../../../../core/net/uip6.c:914: uip_sappdata = uip_appdata = &uip_buf[UIP_IPTCPH_LEN + UIP_LLH_LEN];
	mov	dptr,#_uip_appdata
	mov	a,#(_uip_aligned_buf + 0x003c)
	movx	@dptr,a
	mov	a,#((_uip_aligned_buf + 0x003c) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_uip_sappdata
	mov	a,#(_uip_aligned_buf + 0x003c)
	movx	@dptr,a
	mov	a,#((_uip_aligned_buf + 0x003c) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:918: if(flag == UIP_POLL_REQUEST) {
	cjne	r7,#0x03,00145$
;	../../../../core/net/uip6.c:920: if((uip_connr->tcpstateflags & UIP_TS_MASK) == UIP_ESTABLISHED &&
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x25
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	lcall	__gptrget
	mov	r6,a
	mov	a,#0x0F
	anl	a,r6
	mov	r5,a
	cjne	r5,#0x03,00106$
;	../../../../core/net/uip6.c:921: !uip_outstanding(uip_connr)) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1C
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	orl	a,r3
	jnz	00106$
;	../../../../core/net/uip6.c:922: uip_flags = UIP_POLL;
	mov	dptr,#_uip_flags
	mov	a,#0x08
	movx	@dptr,a
;	../../../../core/net/uip6.c:923: UIP_APPCALL();
	mov	r0,#_tcpip_uipcall
	mov	r1,#(_tcpip_uipcall >> 8)
	mov	r2,#(_tcpip_uipcall >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:924: goto appsend;
	ljmp	00422$
00106$:
;	../../../../core/net/uip6.c:926: } else if((uip_connr->tcpstateflags & UIP_TS_MASK) == UIP_SYN_SENT) {
	anl	ar6,#0x0F
	cjne	r6,#0x02,01128$
	sjmp	01129$
01128$:
	ljmp	00482$
01129$:
;	../../../../core/net/uip6.c:928: UIP_TCP_BUF->flags = 0;
	mov	r5,#(_uip_aligned_buf + 0x0028)
	mov	r6,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	clr	a
	movx	@dptr,a
;	../../../../core/net/uip6.c:929: goto tcp_send_syn;
	ljmp	00349$
;	../../../../core/net/uip6.c:932: goto drop;
00145$:
;	../../../../core/net/uip6.c:935: } else if(flag == UIP_TIMER) {
	cjne	r7,#0x02,01130$
	sjmp	01131$
01130$:
	ljmp	00146$
01131$:
;	../../../../core/net/uip6.c:938: uip_len = 0;
	mov	dptr,#_uip_len
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:939: uip_slen = 0;
	mov	dptr,#_uip_slen
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:942: if(++iss[3] == 0) {
	mov	dptr,#(_iss + 0x0003)
	movx	a,@dptr
	mov	r6,a
	inc	r6
	mov	dptr,#(_iss + 0x0003)
	mov	a,r6
	movx	@dptr,a
	mov	a,r6
	jnz	00114$
;	../../../../core/net/uip6.c:943: if(++iss[2] == 0) {
	mov	dptr,#(_iss + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	r6
	mov	dptr,#(_iss + 0x0002)
	mov	a,r6
	movx	@dptr,a
	mov	a,r6
	jnz	00114$
;	../../../../core/net/uip6.c:944: if(++iss[1] == 0) {
	mov	dptr,#(_iss + 0x0001)
	movx	a,@dptr
	mov	r6,a
	inc	r6
	mov	dptr,#(_iss + 0x0001)
	mov	a,r6
	movx	@dptr,a
	mov	a,r6
	jnz	00114$
;	../../../../core/net/uip6.c:945: ++iss[0];
	mov	dptr,#_iss
	movx	a,@dptr
	mov	r6,a
	inc	r6
	mov	dptr,#_iss
	mov	a,r6
	movx	@dptr,a
00114$:
;	../../../../core/net/uip6.c:956: if(uip_connr->tcpstateflags == UIP_TIME_WAIT ||
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xf6
	mov	r1,a
	mov	a,#0x25
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	cjne	r3,#0x07,01135$
	sjmp	00138$
01135$:
;	../../../../core/net/uip6.c:957: uip_connr->tcpstateflags == UIP_FIN_WAIT_2) {
	cjne	r3,#0x05,00139$
00138$:
;	../../../../core/net/uip6.c:958: ++(uip_connr->timer);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x26
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	r4
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	mov	a,r4
	lcall	__gptrput
;	../../../../core/net/uip6.c:959: if(uip_connr->timer == UIP_TIME_WAIT_TIMEOUT) {
	cjne	r4,#0x78,01138$
	sjmp	01139$
01138$:
	ljmp	00482$
01139$:
;	../../../../core/net/uip6.c:960: uip_connr->tcpstateflags = UIP_CLOSED;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	ljmp	00482$
00139$:
;	../../../../core/net/uip6.c:962: } else if(uip_connr->tcpstateflags != UIP_CLOSED) {
	mov	a,r3
	jnz	01140$
	ljmp	00482$
01140$:
;	../../../../core/net/uip6.c:968: if(uip_outstanding(uip_connr)) {
	push	ar3
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x1C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	orl	a,r2
	pop	ar3
	jnz	01141$
	ljmp	00134$
01141$:
;	../../../../core/net/uip6.c:969: if(uip_connr->timer-- == 0) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x26
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r7,a
	dec	a
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
	mov	a,r7
	jz	01142$
	ljmp	00482$
01142$:
;	../../../../core/net/uip6.c:970: if(uip_connr->nrtx == UIP_MAXRTX ||
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xf9
	mov	r1,a
	mov	a,#0x27
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x08,01143$
	sjmp	00117$
01143$:
;	../../../../core/net/uip6.c:971: ((uip_connr->tcpstateflags == UIP_SYN_SENT ||
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x02,01144$
	sjmp	00120$
01144$:
;	../../../../core/net/uip6.c:972: uip_connr->tcpstateflags == UIP_SYN_RCVD) &&
	cjne	r7,#0x01,00118$
00120$:
;	../../../../core/net/uip6.c:973: uip_connr->nrtx == UIP_MAXSYNRTX)) {
	cjne	r2,#0x05,00118$
00117$:
;	../../../../core/net/uip6.c:974: uip_connr->tcpstateflags = UIP_CLOSED;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:981: uip_flags = UIP_TIMEDOUT;
	mov	dptr,#_uip_flags
	mov	a,#0x80
	movx	@dptr,a
;	../../../../core/net/uip6.c:982: UIP_APPCALL();
	mov	r0,#_tcpip_uipcall
	mov	r1,#(_tcpip_uipcall >> 8)
	mov	r2,#(_tcpip_uipcall >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:985: UIP_TCP_BUF->flags = TCP_RST | TCP_ACK;
	mov	r7,#(_uip_aligned_buf + 0x0028)
	mov	r6,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r7
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	mov	a,#0x14
	movx	@dptr,a
;	../../../../core/net/uip6.c:986: goto tcp_send_nodata;
	ljmp	00473$
00118$:
;	../../../../core/net/uip6.c:990: uip_connr->timer = UIP_RTO << (uip_connr->nrtx > 4?
	mov	a,r2
	add	a,#0xff - 0x04
	jnc	00501$
;	../../../../core/net/uip6.c:991: 4:
	mov	r7,#0x04
	sjmp	00502$
00501$:
;	../../../../core/net/uip6.c:992: uip_connr->nrtx);
	mov	ar7,r2
00502$:
	mov	b,r7
	inc	b
	mov	a,#0x03
	sjmp	01152$
01150$:
	add	a,acc
01152$:
	djnz	b,01150$
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
;	../../../../core/net/uip6.c:993: ++(uip_connr->nrtx);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	r6
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
;	../../../../core/net/uip6.c:1004: switch(uip_connr->tcpstateflags & UIP_TS_MASK) {
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	anl	a,#0x0F
	mov	r6,a
	add	a,#0xff - 0x08
	jnc	01153$
	ljmp	00482$
01153$:
	mov	a,r6
	add	a,#(01154$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r6
	add	a,#(01155$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
01154$:
	.db	00128$
	.db	00122$
	.db	00123$
	.db	00124$
	.db	00125$
	.db	00128$
	.db	00126$
	.db	00128$
	.db	00127$
01155$:
	.db	00128$>>8
	.db	00122$>>8
	.db	00123$>>8
	.db	00124$>>8
	.db	00125$>>8
	.db	00128$>>8
	.db	00126$>>8
	.db	00128$>>8
	.db	00127$>>8
;	../../../../core/net/uip6.c:1005: case UIP_SYN_RCVD:
00122$:
;	../../../../core/net/uip6.c:1007: goto tcp_send_synack;
	ljmp	00348$
;	../../../../core/net/uip6.c:1010: case UIP_SYN_SENT:
00123$:
;	../../../../core/net/uip6.c:1012: UIP_TCP_BUF->flags = 0;
	mov	r5,#(_uip_aligned_buf + 0x0028)
	mov	r6,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	clr	a
	movx	@dptr,a
;	../../../../core/net/uip6.c:1013: goto tcp_send_syn;
	ljmp	00349$
;	../../../../core/net/uip6.c:1016: case UIP_ESTABLISHED:
00124$:
;	../../../../core/net/uip6.c:1023: uip_flags = UIP_REXMIT;
	mov	dptr,#_uip_flags
	mov	a,#0x04
	movx	@dptr,a
;	../../../../core/net/uip6.c:1024: UIP_APPCALL();
	mov	r0,#_tcpip_uipcall
	mov	r1,#(_tcpip_uipcall >> 8)
	mov	r2,#(_tcpip_uipcall >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:1025: goto apprexmit;
	ljmp	00436$
;	../../../../core/net/uip6.c:1027: case UIP_FIN_WAIT_1:
00125$:
;	../../../../core/net/uip6.c:1028: case UIP_CLOSING:
00126$:
;	../../../../core/net/uip6.c:1029: case UIP_LAST_ACK:
00127$:
;	../../../../core/net/uip6.c:1031: goto tcp_send_finack;
	ljmp	00410$
;	../../../../core/net/uip6.c:1032: }
00128$:
	ljmp	00482$
00134$:
;	../../../../core/net/uip6.c:1034: } else if((uip_connr->tcpstateflags & UIP_TS_MASK) == UIP_ESTABLISHED) {
	anl	ar3,#0x0F
	cjne	r3,#0x03,01156$
	sjmp	01157$
01156$:
	ljmp	00482$
01157$:
;	../../../../core/net/uip6.c:1039: uip_flags = UIP_POLL;
	mov	dptr,#_uip_flags
	mov	a,#0x08
	movx	@dptr,a
;	../../../../core/net/uip6.c:1040: UIP_APPCALL();
	mov	r0,#_tcpip_uipcall
	mov	r1,#(_tcpip_uipcall >> 8)
	mov	r2,#(_tcpip_uipcall >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:1041: goto appsend;
	ljmp	00422$
;	../../../../core/net/uip6.c:1044: goto drop;
00146$:
;	../../../../core/net/uip6.c:1048: if(flag == UIP_UDP_TIMER) {
	cjne	r7,#0x05,00151$
;	../../../../core/net/uip6.c:1049: if(uip_udp_conn->lport != 0) {
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x10
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	orl	a,r5
	jnz	01160$
	ljmp	00482$
01160$:
;	../../../../core/net/uip6.c:1050: uip_conn = NULL;
	mov	dptr,#_uip_conn
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1051: uip_sappdata = uip_appdata = &uip_buf[UIP_IPUDPH_LEN + UIP_LLH_LEN];
	mov	dptr,#_uip_appdata
	mov	a,#(_uip_aligned_buf + 0x0030)
	movx	@dptr,a
	mov	a,#((_uip_aligned_buf + 0x0030) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_uip_sappdata
	mov	a,#(_uip_aligned_buf + 0x0030)
	movx	@dptr,a
	mov	a,#((_uip_aligned_buf + 0x0030) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1052: uip_len = uip_slen = 0;
	mov	dptr,#_uip_slen
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_uip_len
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1053: uip_flags = UIP_POLL;
	mov	dptr,#_uip_flags
	mov	a,#0x08
	movx	@dptr,a
;	../../../../core/net/uip6.c:1054: UIP_UDP_APPCALL();
	mov	r0,#_tcpip_uipcall
	mov	r1,#(_tcpip_uipcall >> 8)
	mov	r2,#(_tcpip_uipcall >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:1055: goto udp_send;
	ljmp	00291$
;	../../../../core/net/uip6.c:1057: goto drop;
00151$:
;	../../../../core/net/uip6.c:1069: if((UIP_IP_BUF->vtc & 0xf0) != 0x60)  { /* IP version and header length. */
	mov	dptr,#_uip_aligned_buf
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0xF0
	cjne	r7,#0x60,01161$
	sjmp	01162$
01161$:
	ljmp	00482$
01162$:
;	../../../../core/net/uip6.c:1084: if((UIP_IP_BUF->len[0] << 8) + UIP_IP_BUF->len[1] <= uip_len) {
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	r4,#_uip_aligned_buf
	mov	r5,#(_uip_aligned_buf >> 8)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,#0x00
	add	a,r7
	mov	r7,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,r7
	mov	a,r5
	subb	a,r6
	jnc	01163$
	ljmp	00482$
01163$:
;	../../../../core/net/uip6.c:1085: uip_len = (UIP_IP_BUF->len[0] << 8) + UIP_IP_BUF->len[1] + UIP_IPH_LEN;
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	r4,#_uip_aligned_buf
	mov	r5,#(_uip_aligned_buf >> 8)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	add	a,r7
	mov	r7,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	dptr,#_uip_len
	mov	a,#0x28
	add	a,r7
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1108: if(uip_is_addr_mcast(&UIP_IP_BUF->srcipaddr)){
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xFF,01164$
	ljmp	00482$
01164$:
;	../../../../core/net/uip6.c:1120: uip_next_hdr = &UIP_IP_BUF->proto;
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x06
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	dptr,#_uip_next_hdr
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1121: uip_ext_len = 0;
	mov	dptr,#_uip_ext_len
;	../../../../core/net/uip6.c:1122: uip_ext_bitmap = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_uip_ext_bitmap
	movx	@dptr,a
;	../../../../core/net/uip6.c:1123: if(*uip_next_hdr == UIP_PROTO_HBHO) {
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrget
	jnz	00164$
;	../../../../core/net/uip6.c:1125: uip_ext_bitmap |= UIP_EXT_HDR_BITMAP_HBHO;
	mov	dptr,#_uip_ext_bitmap
	mov	a,#0x01
	movx	@dptr,a
;	../../../../core/net/uip6.c:1127: switch(ext_hdr_options_process()) {
	mov	r0,#_ext_hdr_options_process
	mov	r1,#(_ext_hdr_options_process >> 8)
	mov	r2,#(_ext_hdr_options_process >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	cjne	r7,#0x00,01166$
	sjmp	00159$
01166$:
	cjne	r7,#0x01,01167$
	ljmp	00482$
01167$:
	cjne	r7,#0x02,01168$
	ljmp	00481$
01168$:
;	../../../../core/net/uip6.c:1128: case 0:
	sjmp	00164$
00159$:
;	../../../../core/net/uip6.c:1130: uip_next_hdr = &UIP_EXT_BUF->next;
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	mov	r7,a
	add	a,#0x28
	add	a,#_uip_aligned_buf
	mov	r5,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r6,a
	mov	ar3,r5
	mov	ar4,r6
	mov	dptr,#_uip_next_hdr
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1131: uip_ext_len += (UIP_EXT_BUF->len << 3) + 8;
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	movx	a,@dptr
	swap	a
	rr	a
	anl	a,#0xF8
	mov	r6,a
	add	a,#0x08
	mov	dptr,#_uip_ext_len
	add	a,r7
	movx	@dptr,a
;	../../../../core/net/uip6.c:1142: }
00164$:
;	../../../../core/net/uip6.c:1147: if(!uip_ds6_is_my_addr(&UIP_IP_BUF->destipaddr) &&
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	r0,#_uip_ds6_addr_lookup
	mov	r1,#(_uip_ds6_addr_lookup >> 8)
	mov	r2,#(_uip_ds6_addr_lookup >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,r5
	orl	a,r6
	jz	01169$
	ljmp	00251$
01169$:
;	../../../../core/net/uip6.c:1148: !uip_ds6_is_my_maddr(&UIP_IP_BUF->destipaddr)) {
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	r0,#_uip_ds6_maddr_lookup
	mov	r1,#(_uip_ds6_maddr_lookup >> 8)
	mov	r2,#(_uip_ds6_maddr_lookup >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,r5
	orl	a,r6
	jz	01170$
	ljmp	00251$
01170$:
;	../../../../core/net/uip6.c:1149: if(!uip_is_addr_mcast(&UIP_IP_BUF->destipaddr) &&
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xFF,01171$
	ljmp	00192$
01171$:
;	../../../../core/net/uip6.c:1150: !uip_is_addr_link_local(&UIP_IP_BUF->destipaddr) &&
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xFE,00197$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x19
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x80,01174$
	ljmp	00192$
01174$:
00197$:
;	../../../../core/net/uip6.c:1151: !uip_is_addr_link_local(&UIP_IP_BUF->srcipaddr) &&
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xFE,00205$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x09
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x80,01177$
	ljmp	00192$
01177$:
00205$:
;	../../../../core/net/uip6.c:1152: !uip_is_addr_unspecified(&UIP_IP_BUF->srcipaddr) &&
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	01178$
	ljmp	00214$
01178$:
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x0A
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	01179$
	ljmp	00214$
01179$:
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x0C
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00214$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x0E
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00214$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x10
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00214$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x12
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00214$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x14
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00214$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x16
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	01185$
	ljmp	00192$
01185$:
00214$:
;	../../../../core/net/uip6.c:1153: !uip_is_addr_loopback(&UIP_IP_BUF->destipaddr)) {
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	01186$
	ljmp	00191$
01186$:
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x1A
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	01187$
	ljmp	00191$
01187$:
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x1C
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00191$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x1E
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00191$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x20
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00191$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x22
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00191$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x24
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00191$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x26
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	jnz	00191$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x27
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,01194$
	ljmp	00192$
01194$:
00191$:
;	../../../../core/net/uip6.c:1157: if(uip_len > UIP_LINK_MTU) {
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	clr	a
	subb	a,r6
	mov	a,#0x05
	subb	a,r7
	jnc	00166$
;	../../../../core/net/uip6.c:1158: uip_icmp6_error_output(ICMP6_PACKET_TOO_BIG, 0, UIP_LINK_MTU);
	clr	a
	push	acc
	mov	a,#0x05
	push	acc
	clr	a
	push	acc
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x02
	mov	r0,#_uip_icmp6_error_output
	mov	r1,#(_uip_icmp6_error_output >> 8)
	mov	r2,#(_uip_icmp6_error_output >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../../core/net/uip6.c:1160: goto send;
	ljmp	00481$
00166$:
;	../../../../core/net/uip6.c:1163: if(UIP_IP_BUF->ttl <= 1) {
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x07
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x01
	jc	00168$
;	../../../../core/net/uip6.c:1164: uip_icmp6_error_output(ICMP6_TIME_EXCEEDED,
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x03
	mov	r0,#_uip_icmp6_error_output
	mov	r1,#(_uip_icmp6_error_output >> 8)
	mov	r2,#(_uip_icmp6_error_output >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../../core/net/uip6.c:1167: goto send;
	ljmp	00481$
00168$:
;	../../../../core/net/uip6.c:1171: rpl_update_header_empty();
	mov	r0,#_rpl_update_header_empty
	mov	r1,#(_rpl_update_header_empty >> 8)
	mov	r2,#(_rpl_update_header_empty >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:1174: UIP_IP_BUF->ttl = UIP_IP_BUF->ttl - 1;
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x07
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r4,#_uip_aligned_buf
	mov	r5,#(_uip_aligned_buf >> 8)
	mov	a,#0x07
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	dec	r5
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
;	../../../../core/net/uip6.c:1179: goto send;
	ljmp	00481$
00192$:
;	../../../../core/net/uip6.c:1181: if((uip_is_addr_link_local(&UIP_IP_BUF->srcipaddr)) &&
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xFE,01197$
	sjmp	01198$
01197$:
	ljmp	00482$
01198$:
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x09
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x80,01199$
	sjmp	01200$
01199$:
	ljmp	00482$
01200$:
;	../../../../core/net/uip6.c:1182: (!uip_is_addr_unspecified(&UIP_IP_BUF->srcipaddr)) &&
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	01201$
	ljmp	00188$
01201$:
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x0A
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	01202$
	ljmp	00188$
01202$:
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x0C
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00188$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x0E
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00188$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x10
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00188$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x12
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00188$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x14
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00188$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x16
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	01208$
	ljmp	00482$
01208$:
00188$:
;	../../../../core/net/uip6.c:1183: (!uip_is_addr_loopback(&UIP_IP_BUF->destipaddr)) &&
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	01209$
	ljmp	00189$
01209$:
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x1A
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	01210$
	ljmp	00189$
01210$:
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x1C
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00189$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x1E
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00189$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x20
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00189$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x22
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00189$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x24
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00189$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x26
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	jnz	00189$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x27
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,01217$
	ljmp	00482$
01217$:
00189$:
;	../../../../core/net/uip6.c:1184: (!uip_is_addr_mcast(&UIP_IP_BUF->destipaddr)) &&
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xFF,01218$
	ljmp	00482$
01218$:
;	../../../../core/net/uip6.c:1185: (!uip_ds6_is_addr_onlink((&UIP_IP_BUF->destipaddr)))) {
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	r0,#_uip_ds6_is_addr_onlink
	mov	r1,#(_uip_ds6_is_addr_onlink >> 8)
	mov	r2,#(_uip_ds6_is_addr_onlink >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	jz	01219$
	ljmp	00482$
01219$:
;	../../../../core/net/uip6.c:1187: uip_icmp6_error_output(ICMP6_DST_UNREACH,
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	a,#0x02
	push	acc
	mov	dpl,#0x01
	mov	r0,#_uip_icmp6_error_output
	mov	r1,#(_uip_icmp6_error_output >> 8)
	mov	r2,#(_uip_icmp6_error_output >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../../core/net/uip6.c:1189: goto send;
	ljmp	00481$
;	../../../../core/net/uip6.c:1214: while(1) {
00251$:
;	../../../../core/net/uip6.c:1215: switch(*uip_next_hdr){
	mov	dptr,#_uip_next_hdr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	jz	00221$
	cjne	r7,#0x06,01221$
	ljmp	00296$
01221$:
	cjne	r7,#0x11,01222$
	ljmp	00269$
01222$:
	cjne	r7,#0x2B,01223$
	ljmp	00240$
01223$:
	cjne	r7,#0x2C,01224$
	ljmp	00482$
01224$:
	cjne	r7,#0x3A,01225$
	ljmp	00254$
01225$:
	cjne	r7,#0x3B,01226$
	ljmp	00482$
01226$:
	cjne	r7,#0x3C,01227$
	sjmp	00229$
01227$:
	ljmp	00253$
;	../../../../core/net/uip6.c:1229: case UIP_PROTO_HBHO:
00221$:
;	../../../../core/net/uip6.c:1234: if(uip_ext_bitmap & UIP_EXT_HDR_BITMAP_HBHO) {
	mov	dptr,#_uip_ext_bitmap
	movx	a,@dptr
	mov	r7,a
	jnb	acc.0,01228$
	ljmp	00253$
01228$:
;	../../../../core/net/uip6.c:1237: uip_ext_bitmap |= UIP_EXT_HDR_BITMAP_HBHO;
	mov	dptr,#_uip_ext_bitmap
	mov	a,#0x01
	orl	a,r7
	movx	@dptr,a
;	../../../../core/net/uip6.c:1240: switch(ext_hdr_options_process()) {
	mov	r0,#_ext_hdr_options_process
	mov	r1,#(_ext_hdr_options_process >> 8)
	mov	r2,#(_ext_hdr_options_process >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	cjne	r7,#0x00,01229$
	sjmp	00225$
01229$:
	cjne	r7,#0x01,01230$
	ljmp	00482$
01230$:
	cjne	r7,#0x02,01231$
	ljmp	00481$
01231$:
;	../../../../core/net/uip6.c:1241: case 0:
	sjmp	00251$
00225$:
;	../../../../core/net/uip6.c:1243: uip_next_hdr = &UIP_EXT_BUF->next;
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	mov	r7,a
	add	a,#0x28
	add	a,#_uip_aligned_buf
	mov	r5,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r6,a
	mov	ar3,r5
	mov	ar4,r6
	mov	dptr,#_uip_next_hdr
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1244: uip_ext_len += (UIP_EXT_BUF->len << 3) + 8;
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	movx	a,@dptr
	swap	a
	rr	a
	anl	a,#0xF8
	mov	r6,a
	add	a,#0x08
	mov	dptr,#_uip_ext_len
	add	a,r7
	movx	@dptr,a
;	../../../../core/net/uip6.c:1245: break;
	ljmp	00251$
;	../../../../core/net/uip6.c:1255: case UIP_PROTO_DESTO:
00229$:
;	../../../../core/net/uip6.c:1259: if(uip_ext_bitmap & UIP_EXT_HDR_BITMAP_DESTO1) {
	mov	dptr,#_uip_ext_bitmap
	movx	a,@dptr
	mov	r7,a
	jnb	acc.1,00234$
;	../../../../core/net/uip6.c:1260: if(uip_ext_bitmap & UIP_EXT_HDR_BITMAP_DESTO2) {
	mov	a,r7
	jnb	acc.6,01233$
	ljmp	00253$
01233$:
;	../../../../core/net/uip6.c:1263: uip_ext_bitmap |= UIP_EXT_HDR_BITMAP_DESTO2;
	mov	dptr,#_uip_ext_bitmap
	mov	a,#0x40
	orl	a,r7
	movx	@dptr,a
	sjmp	00235$
00234$:
;	../../../../core/net/uip6.c:1266: uip_ext_bitmap |= UIP_EXT_HDR_BITMAP_DESTO1;
	mov	dptr,#_uip_ext_bitmap
	mov	a,#0x02
	orl	a,r7
	movx	@dptr,a
00235$:
;	../../../../core/net/uip6.c:1269: switch(ext_hdr_options_process()) {
	mov	r0,#_ext_hdr_options_process
	mov	r1,#(_ext_hdr_options_process >> 8)
	mov	r2,#(_ext_hdr_options_process >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	cjne	r7,#0x00,01234$
	sjmp	00236$
01234$:
	cjne	r7,#0x01,01235$
	ljmp	00482$
01235$:
	cjne	r7,#0x02,01236$
	ljmp	00481$
01236$:
	ljmp	00251$
;	../../../../core/net/uip6.c:1270: case 0:
00236$:
;	../../../../core/net/uip6.c:1272: uip_next_hdr = &UIP_EXT_BUF->next;
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	mov	r7,a
	add	a,#0x28
	add	a,#_uip_aligned_buf
	mov	r5,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r6,a
	mov	ar3,r5
	mov	ar4,r6
	mov	dptr,#_uip_next_hdr
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1273: uip_ext_len += (UIP_EXT_BUF->len << 3) + 8;
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	movx	a,@dptr
	swap	a
	rr	a
	anl	a,#0xF8
	mov	r6,a
	add	a,#0x08
	mov	dptr,#_uip_ext_len
	add	a,r7
	movx	@dptr,a
;	../../../../core/net/uip6.c:1274: break;
	ljmp	00251$
;	../../../../core/net/uip6.c:1284: case UIP_PROTO_ROUTING:
00240$:
;	../../../../core/net/uip6.c:1287: if(uip_ext_bitmap & UIP_EXT_HDR_BITMAP_ROUTING) {
	mov	dptr,#_uip_ext_bitmap
	movx	a,@dptr
	mov	r7,a
	jnb	acc.2,01237$
	ljmp	00253$
01237$:
;	../../../../core/net/uip6.c:1290: uip_ext_bitmap |= UIP_EXT_HDR_BITMAP_ROUTING;
	mov	dptr,#_uip_ext_bitmap
	mov	a,#0x04
	orl	a,r7
	movx	@dptr,a
;	../../../../core/net/uip6.c:1302: if(UIP_ROUTING_BUF->seg_left > 0) {
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	mov	r7,a
	add	a,#0x28
	add	a,#_uip_aligned_buf
	mov	r5,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r6,a
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	jz	00245$
;	../../../../core/net/uip6.c:1303: uip_icmp6_error_output(ICMP6_PARAM_PROB, ICMP6_PARAMPROB_HEADER, UIP_IPH_LEN + uip_ext_len + 2);
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,#0x2A
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r3,a
	push	ar5
	push	ar6
	push	ar4
	push	ar3
	clr	a
	push	acc
	mov	dpl,#0x04
	mov	r0,#_uip_icmp6_error_output
	mov	r1,#(_uip_icmp6_error_output >> 8)
	mov	r2,#(_uip_icmp6_error_output >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../../core/net/uip6.c:1306: goto send;
	ljmp	00481$
00245$:
;	../../../../core/net/uip6.c:1308: uip_next_hdr = &UIP_EXT_BUF->next;
	mov	a,#0x28
	add	a,r7
	add	a,#_uip_aligned_buf
	mov	r5,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r6,a
	mov	ar3,r5
	mov	ar4,r6
	mov	dptr,#_uip_next_hdr
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1309: uip_ext_len += (UIP_EXT_BUF->len << 3) + 8;
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	movx	a,@dptr
	swap	a
	rr	a
	anl	a,#0xF8
	mov	r6,a
	add	a,#0x08
	mov	dptr,#_uip_ext_len
	add	a,r7
	movx	@dptr,a
;	../../../../core/net/uip6.c:1310: break;
	ljmp	00251$
;	../../../../core/net/uip6.c:1342: bad_hdr:
00253$:
;	../../../../core/net/uip6.c:1347: uip_icmp6_error_output(ICMP6_PARAM_PROB, ICMP6_PARAMPROB_NEXTHEADER, (uint32_t)(uip_next_hdr - (uint8_t *)UIP_IP_BUF));
	mov	dptr,#_uip_next_hdr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	a,r5
	clr	c
	subb	a,#_uip_aligned_buf
	mov	r5,a
	mov	a,r6
	subb	a,#(_uip_aligned_buf >> 8)
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	push	ar4
	mov	a,#0x01
	push	acc
	mov	dpl,#0x04
	mov	r0,#_uip_icmp6_error_output
	mov	r1,#(_uip_icmp6_error_output >> 8)
	mov	r2,#(_uip_icmp6_error_output >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../../core/net/uip6.c:1351: goto send;
	ljmp	00481$
;	../../../../core/net/uip6.c:1354: icmp6_input:
00254$:
;	../../../../core/net/uip6.c:1360: if(uip_icmp6chksum() != 0xffff) {
	mov	r0,#_uip_icmp6chksum
	mov	r1,#(_uip_icmp6chksum >> 8)
	mov	r2,#(_uip_icmp6chksum >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0xFF,01239$
	cjne	r7,#0xFF,01239$
	sjmp	01240$
01239$:
	ljmp	00482$
01240$:
;	../../../../core/net/uip6.c:1380: UIP_ICMP6_APPCALL(UIP_ICMP_BUF->type);
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	add	a,#0x28
	add	a,#_uip_aligned_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	mov	r0,#_tcpip_icmp6_call
	mov	r1,#(_tcpip_icmp6_call >> 8)
	mov	r2,#(_tcpip_icmp6_call >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:1383: switch(UIP_ICMP_BUF->type) {
	mov	dptr,#_uip_ext_len
	movx	a,@dptr
	add	a,#0x28
	add	a,#_uip_aligned_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x80,01241$
	sjmp	00262$
01241$:
	cjne	r7,#0x81,01242$
	sjmp	00263$
01242$:
	cjne	r7,#0x85,01243$
	sjmp	00259$
01243$:
	cjne	r7,#0x86,01244$
	sjmp	00260$
01244$:
	cjne	r7,#0x87,01245$
	sjmp	00257$
01245$:
	cjne	r7,#0x88,01246$
	sjmp	00258$
01246$:
;	../../../../core/net/uip6.c:1384: case ICMP6_NS:
	cjne	r7,#0x9B,00264$
	sjmp	00261$
00257$:
;	../../../../core/net/uip6.c:1385: uip_nd6_ns_input();
	mov	r0,#_uip_nd6_ns_input
	mov	r1,#(_uip_nd6_ns_input >> 8)
	mov	r2,#(_uip_nd6_ns_input >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:1386: break;
;	../../../../core/net/uip6.c:1387: case ICMP6_NA:
	sjmp	00265$
00258$:
;	../../../../core/net/uip6.c:1388: uip_nd6_na_input();
	mov	r0,#_uip_nd6_na_input
	mov	r1,#(_uip_nd6_na_input >> 8)
	mov	r2,#(_uip_nd6_na_input >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:1389: break;
;	../../../../core/net/uip6.c:1390: case ICMP6_RS:
	sjmp	00265$
00259$:
;	../../../../core/net/uip6.c:1395: uip_len = 0;
	mov	dptr,#_uip_len
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1397: break;
;	../../../../core/net/uip6.c:1398: case ICMP6_RA:
	sjmp	00265$
00260$:
;	../../../../core/net/uip6.c:1401: uip_len = 0;
	mov	dptr,#_uip_len
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1405: break;
;	../../../../core/net/uip6.c:1407: case ICMP6_RPL:
	sjmp	00265$
00261$:
;	../../../../core/net/uip6.c:1408: uip_rpl_input();
	mov	r0,#_uip_rpl_input
	mov	r1,#(_uip_rpl_input >> 8)
	mov	r2,#(_uip_rpl_input >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:1409: break;
;	../../../../core/net/uip6.c:1411: case ICMP6_ECHO_REQUEST:
	sjmp	00265$
00262$:
;	../../../../core/net/uip6.c:1412: uip_icmp6_echo_request_input();
	mov	r0,#_uip_icmp6_echo_request_input
	mov	r1,#(_uip_icmp6_echo_request_input >> 8)
	mov	r2,#(_uip_icmp6_echo_request_input >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:1413: break;
;	../../../../core/net/uip6.c:1414: case ICMP6_ECHO_REPLY:
	sjmp	00265$
00263$:
;	../../../../core/net/uip6.c:1418: uip_len = 0;
	mov	dptr,#_uip_len
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1419: break;
;	../../../../core/net/uip6.c:1420: default:
	sjmp	00265$
00264$:
;	../../../../core/net/uip6.c:1425: uip_len = 0;
	mov	dptr,#_uip_len
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1427: }
00265$:
;	../../../../core/net/uip6.c:1429: if(uip_len > 0) {
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	01248$
	ljmp	00482$
01248$:
;	../../../../core/net/uip6.c:1430: goto send;
	ljmp	00481$
;	../../../../core/net/uip6.c:1439: udp_input:
00269$:
;	../../../../core/net/uip6.c:1441: remove_ext_hdr();
	mov	r0,#_remove_ext_hdr
	mov	r1,#(_remove_ext_hdr >> 8)
	mov	r2,#(_remove_ext_hdr >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:1451: uip_len = uip_len - UIP_IPUDPH_LEN;
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,#0xD0
	mov	r6,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
	mov	dptr,#_uip_len
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1452: uip_appdata = &uip_buf[UIP_IPUDPH_LEN + UIP_LLH_LEN];
	mov	dptr,#_uip_appdata
	mov	a,#(_uip_aligned_buf + 0x0030)
	movx	@dptr,a
	mov	a,#((_uip_aligned_buf + 0x0030) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1458: if(UIP_UDP_BUF->udpchksum != 0 && uip_udpchksum() != 0xffff) {
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00271$
	mov	r0,#_uip_udpchksum
	mov	r1,#(_uip_udpchksum >> 8)
	mov	r2,#(_uip_udpchksum >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0xFF,01250$
	cjne	r7,#0xFF,01250$
	sjmp	01251$
01250$:
	ljmp	00482$
01251$:
;	../../../../core/net/uip6.c:1463: goto drop;
00271$:
;	../../../../core/net/uip6.c:1470: if(UIP_UDP_BUF->destport == 0) {
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	01252$
	ljmp	00482$
01252$:
;	../../../../core/net/uip6.c:1476: for(uip_udp_conn = &uip_udp_conns[0];
	mov	dptr,#_uip_udp_conn
	mov	a,#_uip_udp_conns
	movx	@dptr,a
	mov	a,#(_uip_udp_conns >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00484$:
;	../../../../core/net/uip6.c:1477: uip_udp_conn < &uip_udp_conns[UIP_UDP_CONNS];
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#(_uip_udp_conns + 0x010e)
	push	acc
	mov	a,#((_uip_udp_conns + 0x010e) >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jc	01253$
	ljmp	00482$
01253$:
;	../../../../core/net/uip6.c:1486: if(uip_udp_conn->lport != 0 &&
	mov	a,#0x10
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
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	orl	a,r3
	jnz	01254$
	ljmp	00485$
01254$:
;	../../../../core/net/uip6.c:1487: UIP_UDP_BUF->destport == uip_udp_conn->lport &&
	push	ar5
	push	ar6
	push	ar7
	mov	r2,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r2
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	cjne	a,ar3,01255$
	mov	a,r7
	cjne	a,ar4,01255$
	sjmp	01256$
01255$:
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00485$
01256$:
	pop	ar7
	pop	ar6
	pop	ar5
;	../../../../core/net/uip6.c:1488: (uip_udp_conn->rport == 0 ||
	mov	a,#0x12
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	orl	a,r6
	jz	00288$
;	../../../../core/net/uip6.c:1489: UIP_UDP_BUF->srcport == uip_udp_conn->rport) &&
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	cjne	a,ar6,01258$
	mov	a,r5
	cjne	a,ar7,01258$
	sjmp	01259$
01258$:
	ljmp	00485$
01259$:
00288$:
;	../../../../core/net/uip6.c:1490: (uip_is_addr_unspecified(&uip_udp_conn->ripaddr) ||
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	orl	a,r2
	jz	01260$
	ljmp	00287$
01260$:
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	orl	a,r2
	jz	01261$
	ljmp	00287$
01261$:
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	orl	a,r2
	jz	01262$
	ljmp	00287$
01262$:
	mov	a,#0x06
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	orl	a,r2
	jnz	00287$
	mov	a,#0x08
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	orl	a,r2
	jnz	00287$
	mov	a,#0x0A
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	orl	a,r2
	jnz	00287$
	mov	a,#0x0C
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	orl	a,r2
	jnz	00287$
	mov	a,#0x0E
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	orl	a,r5
	jz	00290$
00287$:
;	../../../../core/net/uip6.c:1491: uip_ipaddr_cmp(&UIP_IP_BUF->srcipaddr, &uip_udp_conn->ripaddr))) {
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	mov	r0,#_memcmp
	mov	r1,#(_memcmp >> 8)
	mov	r2,#(_memcmp >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,r6
	orl	a,r7
	jz	00290$
;	../../../../core/net/uip6.c:1492: goto udp_found;
00485$:
;	../../../../core/net/uip6.c:1478: ++uip_udp_conn) {
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	add	a,#0x1B
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	ljmp	00484$
;	../../../../core/net/uip6.c:1505: udp_found:
00290$:
;	../../../../core/net/uip6.c:1508: uip_conn = NULL;
	mov	dptr,#_uip_conn
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1509: uip_flags = UIP_NEWDATA;
	mov	dptr,#_uip_flags
	mov	a,#0x02
	movx	@dptr,a
;	../../../../core/net/uip6.c:1510: uip_sappdata = uip_appdata = &uip_buf[UIP_IPUDPH_LEN + UIP_LLH_LEN];
	mov	dptr,#_uip_appdata
	mov	a,#(_uip_aligned_buf + 0x0030)
	movx	@dptr,a
	mov	a,#((_uip_aligned_buf + 0x0030) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_uip_sappdata
	mov	a,#(_uip_aligned_buf + 0x0030)
	movx	@dptr,a
	mov	a,#((_uip_aligned_buf + 0x0030) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1511: uip_slen = 0;
	mov	dptr,#_uip_slen
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1512: UIP_UDP_APPCALL();
	mov	r0,#_tcpip_uipcall
	mov	r1,#(_tcpip_uipcall >> 8)
	mov	r2,#(_tcpip_uipcall >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:1514: udp_send:
00291$:
;	../../../../core/net/uip6.c:1517: if(uip_slen == 0) {
	mov	dptr,#_uip_slen
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	01269$
	ljmp	00482$
01269$:
;	../../../../core/net/uip6.c:1520: uip_len = uip_slen + UIP_IPUDPH_LEN;
	mov	dptr,#_uip_len
	mov	a,#0x30
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1524: UIP_IP_BUF->len[0] = ((uip_len - UIP_IPH_LEN) >> 8);
	mov	r4,#_uip_aligned_buf
	mov	r5,#(_uip_aligned_buf >> 8)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	mov	a,r6
	add	a,#0x08
	clr	a
	addc	a,r7
	movx	@dptr,a
;	../../../../core/net/uip6.c:1525: UIP_IP_BUF->len[1] = ((uip_len - UIP_IPH_LEN) & 0xff);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x05
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	a,r4
	add	a,#0xD8
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	../../../../core/net/uip6.c:1527: memcpy(&UIP_IP_BUF->ttl, &uip_udp_conn->ttl, sizeof(uip_udp_conn->ttl));
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x14
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x07
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../../core/net/uip6.c:1528: UIP_IP_BUF->proto = UIP_PROTO_UDP;
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x11
	movx	@dptr,a
;	../../../../core/net/uip6.c:1530: UIP_UDP_BUF->udplen = UIP_HTONS(uip_slen + UIP_UDPH_LEN);
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x04
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_uip_slen
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x08
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	ar3,r4
	mov	r2,#0x00
	mov	ar4,r5
	mov	r5,#0x00
	mov	a,r4
	orl	ar2,a
	mov	a,r5
	orl	ar3,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1531: UIP_UDP_BUF->udpchksum = 0;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1533: UIP_UDP_BUF->srcport  = uip_udp_conn->lport;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x10
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1534: UIP_UDP_BUF->destport = uip_udp_conn->rport;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x02
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x12
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1536: uip_ipaddr_copy(&UIP_IP_BUF->destipaddr, &uip_udp_conn->ripaddr);
	mov	dptr,#_uip_udp_conn
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../../core/net/uip6.c:1537: uip_ds6_select_src(&UIP_IP_BUF->srcipaddr, &UIP_IP_BUF->destipaddr);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	push	ar6
	push	ar7
	push	ar5
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	mov	r0,#_uip_ds6_select_src
	mov	r1,#(_uip_ds6_select_src >> 8)
	mov	r2,#(_uip_ds6_select_src >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	../../../../core/net/uip6.c:1539: uip_appdata = &uip_buf[UIP_LLH_LEN + UIP_IPTCPH_LEN];
	mov	dptr,#_uip_appdata
	mov	a,#(_uip_aligned_buf + 0x003c)
	movx	@dptr,a
	mov	a,#((_uip_aligned_buf + 0x003c) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1543: UIP_UDP_BUF->udpchksum = ~(uip_udpchksum());
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x06
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	push	ar7
	push	ar6
	mov	r0,#_uip_udpchksum
	mov	r1,#(_uip_udpchksum >> 8)
	mov	r2,#(_uip_udpchksum >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	cpl	a
	mov	r4,a
	mov	a,r5
	cpl	a
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1544: if(UIP_UDP_BUF->udpchksum == 0) {
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	01270$
	ljmp	00480$
01270$:
;	../../../../core/net/uip6.c:1545: UIP_UDP_BUF->udpchksum = 0xffff;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0xFF
	movx	@dptr,a
	mov	a,#0xFF
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1549: goto ip_send_nolen;
	ljmp	00480$
;	../../../../core/net/uip6.c:1554: tcp_input:
00296$:
;	../../../../core/net/uip6.c:1556: remove_ext_hdr();
	mov	r0,#_remove_ext_hdr
	mov	r1,#(_remove_ext_hdr >> 8)
	mov	r2,#(_remove_ext_hdr >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:1562: if(uip_tcpchksum() != 0xffff) {   /* Compute and check the TCP
	mov	r0,#_uip_tcpchksum
	mov	r1,#(_uip_tcpchksum >> 8)
	mov	r2,#(_uip_tcpchksum >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0xFF,01271$
	cjne	r7,#0xFF,01271$
	sjmp	01272$
01271$:
	ljmp	00482$
01272$:
;	../../../../core/net/uip6.c:1572: if(UIP_TCP_BUF->destport == 0 || UIP_TCP_BUF->srcport == 0) {
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	01273$
	ljmp	00482$
01273$:
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	01274$
	ljmp	00482$
01274$:
;	../../../../core/net/uip6.c:1579: for(uip_connr = &uip_conns[0]; uip_connr <= &uip_conns[UIP_CONNS - 1];
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,#_uip_conns
	inc	r0
	mov	@r0,#(_uip_conns >> 8)
	inc	r0
	mov	@r0,#0x00
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
00487$:
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#(_uip_conns + 0x019e)
	mov	b,#0x00
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnc	01275$
	ljmp	00307$
01275$:
;	../../../../core/net/uip6.c:1581: if(uip_connr->tcpstateflags != UIP_CLOSED &&
	mov	a,#0x25
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
	jnz	01276$
	ljmp	00488$
01276$:
;	../../../../core/net/uip6.c:1582: UIP_TCP_BUF->destport == uip_connr->lport &&
	push	ar2
	push	ar3
	push	ar4
	mov	r3,#(_uip_aligned_buf + 0x0028)
	mov	r4,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,#0x10
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	cjne	a,ar2,01277$
	inc	r0
	mov	a,@r0
	cjne	a,ar3,01277$
	sjmp	01278$
01277$:
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00488$
01278$:
;	../../../../core/net/uip6.c:1583: UIP_TCP_BUF->srcport == uip_connr->rport &&
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,#0x12
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	cjne	a,ar2,01279$
	inc	r0
	mov	a,@r0
	cjne	a,ar3,01279$
	sjmp	01280$
01279$:
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00488$
01280$:
;	../../../../core/net/uip6.c:1584: uip_ipaddr_cmp(&UIP_IP_BUF->srcipaddr, &uip_connr->ripaddr)) {
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	mov	r0,#_memcmp
	mov	r1,#(_memcmp >> 8)
	mov	r2,#(_memcmp >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	orl	a,r4
	pop	ar4
	pop	ar3
	pop	ar2
	jnz	01281$
	ljmp	00350$
01281$:
;	../../../../core/net/uip6.c:1585: goto found;
00488$:
;	../../../../core/net/uip6.c:1580: ++uip_connr) {
	mov	a,#0x2E
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	ljmp	00487$
00307$:
;	../../../../core/net/uip6.c:1593: if((UIP_TCP_BUF->flags & TCP_CTL) != TCP_SYN) {
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x3F
	cjne	r7,#0x02,00313$
;	../../../../core/net/uip6.c:1597: tmp16 = UIP_TCP_BUF->destport;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_tmp16
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1599: for(c = 0; c < UIP_LISTENPORTS; ++c) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00489$:
;	../../../../core/net/uip6.c:1600: if(tmp16 == uip_listenports[c]) {
	mov	dptr,#_c
	movx	a,@dptr
	mov	r5,a
	mov	b,#0x02
	mul	ab
	add	a,#_uip_listenports
	mov	dpl,a
	mov	a,#(_uip_listenports >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r4
	cjne	a,ar6,01284$
	mov	a,r3
	cjne	a,ar7,01284$
	ljmp	00322$
01284$:
;	../../../../core/net/uip6.c:1599: for(c = 0; c < UIP_LISTENPORTS; ++c) {
	mov	dptr,#_c
	mov	a,r5
	inc	a
	movx	@dptr,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x14,01285$
01285$:
	jc	00489$
;	../../../../core/net/uip6.c:1608: reset:
00313$:
;	../../../../core/net/uip6.c:1611: if(UIP_TCP_BUF->flags & TCP_RST) {
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	jnb	acc.2,01287$
	ljmp	00482$
01287$:
;	../../../../core/net/uip6.c:1617: UIP_TCP_BUF->flags = TCP_RST | TCP_ACK;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x14
	movx	@dptr,a
;	../../../../core/net/uip6.c:1618: uip_len = UIP_IPTCPH_LEN;
	mov	dptr,#_uip_len
	mov	a,#0x3C
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1619: UIP_TCP_BUF->tcpoffset = 5 << 4;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0C
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x50
	movx	@dptr,a
;	../../../../core/net/uip6.c:1622: c = UIP_TCP_BUF->seqno[3];
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x07
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
;	../../../../core/net/uip6.c:1623: UIP_TCP_BUF->seqno[3] = UIP_TCP_BUF->ackno[3];
	mov	r5,#(_uip_aligned_buf + 0x0028)
	mov	r6,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x07
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0B
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r3
	movx	@dptr,a
;	../../../../core/net/uip6.c:1624: UIP_TCP_BUF->ackno[3] = c;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0B
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,r4
	movx	@dptr,a
;	../../../../core/net/uip6.c:1626: c = UIP_TCP_BUF->seqno[2];
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
;	../../../../core/net/uip6.c:1627: UIP_TCP_BUF->seqno[2] = UIP_TCP_BUF->ackno[2];
	mov	r5,#(_uip_aligned_buf + 0x0028)
	mov	r6,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x06
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0A
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r3
	movx	@dptr,a
;	../../../../core/net/uip6.c:1628: UIP_TCP_BUF->ackno[2] = c;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0A
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,r4
	movx	@dptr,a
;	../../../../core/net/uip6.c:1630: c = UIP_TCP_BUF->seqno[1];
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	../../../../core/net/uip6.c:1631: UIP_TCP_BUF->seqno[1] = UIP_TCP_BUF->ackno[1];
	mov	r5,#(_uip_aligned_buf + 0x0028)
	mov	r6,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x05
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x09
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r3
	movx	@dptr,a
;	../../../../core/net/uip6.c:1632: UIP_TCP_BUF->ackno[1] = c;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x09
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,r4
	movx	@dptr,a
;	../../../../core/net/uip6.c:1634: c = UIP_TCP_BUF->seqno[0];
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_c
	movx	@dptr,a
;	../../../../core/net/uip6.c:1635: UIP_TCP_BUF->seqno[0] = UIP_TCP_BUF->ackno[0];
	mov	r5,#(_uip_aligned_buf + 0x0028)
	mov	r6,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x04
	add	a,r5
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	r5,#(_uip_aligned_buf + 0x0028)
	mov	r6,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x08
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r3
	movx	@dptr,a
;	../../../../core/net/uip6.c:1636: UIP_TCP_BUF->ackno[0] = c;
	mov	r5,#(_uip_aligned_buf + 0x0028)
	mov	r6,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x08
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	mov	a,r7
	movx	@dptr,a
;	../../../../core/net/uip6.c:1641: if(++UIP_TCP_BUF->ackno[3] == 0) {
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0B
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	inc	r5
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
	mov	a,r5
	jnz	00321$
;	../../../../core/net/uip6.c:1642: if(++UIP_TCP_BUF->ackno[2] == 0) {
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0A
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	inc	r5
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
	mov	a,r5
	jnz	00321$
;	../../../../core/net/uip6.c:1643: if(++UIP_TCP_BUF->ackno[1] == 0) {
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x09
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	inc	r5
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
	mov	a,r5
	jnz	00321$
;	../../../../core/net/uip6.c:1644: ++UIP_TCP_BUF->ackno[0];
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x08
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	inc	r5
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
00321$:
;	../../../../core/net/uip6.c:1650: tmp16 = UIP_TCP_BUF->srcport;
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_tmp16
	mov	a,r5
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1651: UIP_TCP_BUF->srcport = UIP_TCP_BUF->destport;
	mov	r3,#(_uip_aligned_buf + 0x0028)
	mov	r2,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r3
	mov	dph,r2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1652: UIP_TCP_BUF->destport = tmp16;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1655: uip_ipaddr_copy(&UIP_IP_BUF->destipaddr, &UIP_IP_BUF->srcipaddr);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	ar4,r6
	mov	ar3,r7
	mov	r2,#0x00
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	ar4
	push	ar3
	push	ar2
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../../core/net/uip6.c:1656: uip_ds6_select_src(&UIP_IP_BUF->srcipaddr, &UIP_IP_BUF->destipaddr);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	ar4,r6
	mov	ar3,r7
	mov	r2,#0x00
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	push	ar4
	push	ar3
	push	ar2
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	r0,#_uip_ds6_select_src
	mov	r1,#(_uip_ds6_select_src >> 8)
	mov	r2,#(_uip_ds6_select_src >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	../../../../core/net/uip6.c:1658: goto tcp_send_noconn;
	ljmp	00479$
;	../../../../core/net/uip6.c:1663: found_listen:
00322$:
;	../../../../core/net/uip6.c:1671: uip_connr = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
;	../../../../core/net/uip6.c:1672: for(c = 0; c < UIP_CONNS; ++c) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00491$:
;	../../../../core/net/uip6.c:1673: if(uip_conns[c].tcpstateflags == UIP_CLOSED) {
	mov	dptr,#_c
	movx	a,@dptr
	mov	r7,a
	mov	b,#0x2E
	mul	ab
	add	a,#_uip_conns
	mov	r4,a
	mov	a,#(_uip_conns >> 8)
	addc	a,b
	mov	r3,a
	mov	a,#0x25
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	jnz	00324$
;	../../../../core/net/uip6.c:1674: uip_connr = &uip_conns[c];
	mov	ar6,r4
	mov	ar7,r3
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
;	../../../../core/net/uip6.c:1675: break;
	sjmp	00330$
00324$:
;	../../../../core/net/uip6.c:1677: if(uip_conns[c].tcpstateflags == UIP_TIME_WAIT) {
	cjne	r5,#0x07,00492$
;	../../../../core/net/uip6.c:1678: if(uip_connr == 0 ||
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00325$
;	../../../../core/net/uip6.c:1679: uip_conns[c].timer > uip_connr->timer) {
	mov	a,#0x26
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x26
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	clr	c
	subb	a,r4
	jnc	00492$
00325$:
;	../../../../core/net/uip6.c:1680: uip_connr = &uip_conns[c];
	mov	dptr,#_c
	movx	a,@dptr
	mov	b,#0x2E
	mul	ab
	add	a,#_uip_conns
	mov	r6,a
	mov	a,#(_uip_conns >> 8)
	addc	a,b
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
00492$:
;	../../../../core/net/uip6.c:1672: for(c = 0; c < UIP_CONNS; ++c) {
	mov	dptr,#_c
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0A,01296$
01296$:
	jnc	01297$
	ljmp	00491$
01297$:
00330$:
;	../../../../core/net/uip6.c:1685: if(uip_connr == 0) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	01298$
	ljmp	00482$
01298$:
;	../../../../core/net/uip6.c:1693: uip_conn = uip_connr;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dptr,#_uip_conn
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1696: uip_connr->rto = uip_connr->timer = UIP_RTO;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x24
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar2,@r0
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x26
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x03
	lcall	__gptrput
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	mov	a,#0x03
	lcall	__gptrput
;	../../../../core/net/uip6.c:1697: uip_connr->sa = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x22
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:1698: uip_connr->sv = 4;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x23
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x04
	lcall	__gptrput
;	../../../../core/net/uip6.c:1699: uip_connr->nrtx = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x27
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:1700: uip_connr->lport = UIP_TCP_BUF->destport;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x10
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar3,@r0
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../../../../core/net/uip6.c:1701: uip_connr->rport = UIP_TCP_BUF->srcport;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x12
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar3,@r0
	mov	dptr,#(_uip_aligned_buf + 0x0028)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../../../../core/net/uip6.c:1702: uip_ipaddr_copy(&uip_connr->ripaddr, &UIP_IP_BUF->srcipaddr);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	ar4,r6
	mov	ar3,r7
	mov	r2,#0x00
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	ar4
	push	ar3
	push	ar2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../../core/net/uip6.c:1703: uip_connr->tcpstateflags = UIP_SYN_RCVD;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x25
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	../../../../core/net/uip6.c:1705: uip_connr->snd_nxt[0] = iss[0];
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x18
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar4,@r0
	mov	dptr,#_iss
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	lcall	__gptrput
;	../../../../core/net/uip6.c:1706: uip_connr->snd_nxt[1] = iss[1];
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x18
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x01
	add	a,r6
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	dptr,#(_iss + 0x0001)
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	../../../../core/net/uip6.c:1707: uip_connr->snd_nxt[2] = iss[2];
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x02
	add	a,r6
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	dptr,#(_iss + 0x0002)
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	../../../../core/net/uip6.c:1708: uip_connr->snd_nxt[3] = iss[3];
	mov	a,#0x03
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dptr,#(_iss + 0x0003)
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	lcall	__gptrput
;	../../../../core/net/uip6.c:1709: uip_connr->len = 1;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1C
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:1712: uip_connr->rcv_nxt[3] = UIP_TCP_BUF->seqno[3];
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x14
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar3,@r0
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x03
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar3
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x07
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	../../../../core/net/uip6.c:1713: uip_connr->rcv_nxt[2] = UIP_TCP_BUF->seqno[2];
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x02
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar3
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	../../../../core/net/uip6.c:1714: uip_connr->rcv_nxt[1] = UIP_TCP_BUF->seqno[1];
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x01
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar3
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	../../../../core/net/uip6.c:1715: uip_connr->rcv_nxt[0] = UIP_TCP_BUF->seqno[0];
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	__gptrput
;	../../../../core/net/uip6.c:1716: uip_add_rcv_nxt(1);
	mov	dptr,#0x0001
	mov	r0,#_uip_add_rcv_nxt
	mov	r1,#(_uip_add_rcv_nxt >> 8)
	mov	r2,#(_uip_add_rcv_nxt >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:1719: if((UIP_TCP_BUF->tcpoffset & 0xf0) > 0x50) {
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0C
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	anl	a,#0xF0
	mov	r7,a
	add	a,#0xff - 0x50
	jc	01299$
	ljmp	00348$
01299$:
;	../../../../core/net/uip6.c:1720: for(c = 0; c < ((UIP_TCP_BUF->tcpoffset >> 4) - 5) << 2 ;) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00494$:
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0C
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	swap	a
	anl	a,#0x0F
	mov	r6,#0x00
	add	a,#0xFB
	mov	r7,a
	mov	a,r6
	addc	a,#0xFF
	mov	ar4,r7
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	r3,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r5,a
	mov	r6,a
	mov	r7,#0x00
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	01300$
	ljmp	00348$
01300$:
;	../../../../core/net/uip6.c:1721: opt = uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + c];
	mov	a,#0x3C
	add	a,r5
	add	a,#_uip_aligned_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_opt
	movx	@dptr,a
;	../../../../core/net/uip6.c:1722: if(opt == TCP_OPT_END) {
	mov	a,r7
	jnz	01301$
	ljmp	00348$
01301$:
;	../../../../core/net/uip6.c:1725: } else if(opt == TCP_OPT_NOOP) {
	cjne	r7,#0x01,00340$
;	../../../../core/net/uip6.c:1726: ++c;
	mov	dptr,#_c
	mov	a,r5
	inc	a
	movx	@dptr,a
	sjmp	00494$
00340$:
;	../../../../core/net/uip6.c:1728: } else if(opt == TCP_OPT_MSS &&
	cjne	r7,#0x02,01304$
	sjmp	01305$
01304$:
	ljmp	00336$
01305$:
;	../../../../core/net/uip6.c:1729: uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 1 + c] == TCP_OPT_MSS_LEN) {
	mov	a,#0x3D
	add	a,r5
	add	a,#_uip_aligned_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,01306$
	sjmp	01307$
01306$:
	ljmp	00336$
01307$:
;	../../../../core/net/uip6.c:1731: tmp16 = ((uint16_t)uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 2 + c] << 8) |
	mov	a,#0x3E
	add	a,r5
	add	a,#_uip_aligned_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	inc	r0
	mov	@r0,ar7
	dec	r0
	mov	@r0,#0x00
;	../../../../core/net/uip6.c:1732: (uint16_t)uip_buf[UIP_IPTCPH_LEN + UIP_LLH_LEN + 3 + c];
	mov	a,#0x3F
	add	a,r5
	add	a,#_uip_aligned_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	r7,#0x00
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,r5
	orl	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	orl	a,@r0
	mov	r7,a
	mov	dptr,#_tmp16
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1733: uip_connr->initialmss = uip_connr->mss =
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x20
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar3,@r0
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xf6
	mov	r1,a
	mov	a,#0x1E
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	../../../../core/net/uip6.c:1734: tmp16 > UIP_TCP_MSS? UIP_TCP_MSS: tmp16;
	clr	c
	mov	a,#0xB4
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00503$
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,#0xB4
	inc	r0
	mov	@r0,#0x00
	sjmp	00504$
00503$:
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00504$:
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,sp
	add	a,#0xfc
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	../../../../core/net/uip6.c:1737: break;
	sjmp	00348$
00336$:
;	../../../../core/net/uip6.c:1741: if(uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 1 + c] == 0) {
	mov	dptr,#_c
	movx	a,@dptr
	mov	r7,a
	add	a,#0x3D
	add	a,#_uip_aligned_buf
	mov	r5,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	jz	00348$
;	../../../../core/net/uip6.c:1746: c += uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 1 + c];
	mov	a,#0x3D
	add	a,r7
	add	a,#_uip_aligned_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_c
	add	a,r7
	movx	@dptr,a
	ljmp	00494$
;	../../../../core/net/uip6.c:1753: tcp_send_synack:
00348$:
;	../../../../core/net/uip6.c:1754: UIP_TCP_BUF->flags = TCP_ACK;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x10
	movx	@dptr,a
;	../../../../core/net/uip6.c:1756: tcp_send_syn:
00349$:
;	../../../../core/net/uip6.c:1757: UIP_TCP_BUF->flags |= TCP_SYN;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	r5,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	orl	ar7,#0x02
	mov	dpl,r6
	mov	dph,r4
	mov	a,r7
	movx	@dptr,a
;	../../../../core/net/uip6.c:1765: UIP_TCP_BUF->optdata[0] = TCP_OPT_MSS;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x14
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x02
	movx	@dptr,a
;	../../../../core/net/uip6.c:1766: UIP_TCP_BUF->optdata[1] = TCP_OPT_MSS_LEN;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x15
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x04
	movx	@dptr,a
;	../../../../core/net/uip6.c:1767: UIP_TCP_BUF->optdata[2] = (UIP_TCP_MSS) / 256;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x16
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movx	@dptr,a
;	../../../../core/net/uip6.c:1768: UIP_TCP_BUF->optdata[3] = (UIP_TCP_MSS) & 255;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x17
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0xB4
	movx	@dptr,a
;	../../../../core/net/uip6.c:1769: uip_len = UIP_IPTCPH_LEN + TCP_OPT_MSS_LEN;
	mov	dptr,#_uip_len
	mov	a,#0x40
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1770: UIP_TCP_BUF->tcpoffset = ((UIP_TCPH_LEN + TCP_OPT_MSS_LEN) / 4) << 4;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0C
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x60
	movx	@dptr,a
;	../../../../core/net/uip6.c:1771: goto tcp_send;
	ljmp	00475$
;	../../../../core/net/uip6.c:1774: found:
00350$:
;	../../../../core/net/uip6.c:1776: uip_conn = uip_connr;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dptr,#_uip_conn
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1777: uip_flags = 0;
	mov	dptr,#_uip_flags
	clr	a
	movx	@dptr,a
;	../../../../core/net/uip6.c:1782: if(UIP_TCP_BUF->flags & TCP_RST) {
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	jnb	acc.2,00352$
;	../../../../core/net/uip6.c:1783: uip_connr->tcpstateflags = UIP_CLOSED;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:1785: uip_flags = UIP_ABORT;
	mov	dptr,#_uip_flags
	mov	a,#0x20
	movx	@dptr,a
;	../../../../core/net/uip6.c:1786: UIP_APPCALL();
	mov	r0,#_tcpip_uipcall
	mov	r1,#(_tcpip_uipcall >> 8)
	mov	r2,#(_tcpip_uipcall >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:1787: goto drop;
	ljmp	00482$
00352$:
;	../../../../core/net/uip6.c:1791: c = (UIP_TCP_BUF->tcpoffset >> 4) << 2;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0C
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	swap	a
	anl	a,#0x0F
	add	a,acc
	add	a,acc
	mov	r7,a
	mov	dptr,#_c
	movx	@dptr,a
;	../../../../core/net/uip6.c:1795: uip_len = uip_len - c - UIP_IPH_LEN;
	mov	ar6,r7
	mov	r7,#0x00
	mov	dptr,#_uip_len
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r6
	mov	r6,a
	inc	r0
	mov	a,@r0
	subb	a,r7
	mov	r7,a
	mov	a,r6
	add	a,#0xD8
	mov	r6,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
	mov	dptr,#_uip_len
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1802: if(!((((uip_connr->tcpstateflags & UIP_TS_MASK) == UIP_SYN_SENT) &&
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	anl	ar2,#0x0F
	cjne	r2,#0x02,00366$
;	../../../../core/net/uip6.c:1803: ((UIP_TCP_BUF->flags & TCP_CTL) == (TCP_SYN | TCP_ACK))) ||
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x3F
	cjne	r7,#0x12,01313$
	ljmp	00363$
01313$:
00366$:
;	../../../../core/net/uip6.c:1804: (((uip_connr->tcpstateflags & UIP_TS_MASK) == UIP_SYN_RCVD) &&
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x25
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	anl	ar5,#0x0F
	cjne	r5,#0x01,00362$
;	../../../../core/net/uip6.c:1805: ((UIP_TCP_BUF->flags & TCP_CTL) == TCP_SYN)))) {
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x3F
	cjne	r7,#0x02,01316$
	ljmp	00363$
01316$:
00362$:
;	../../../../core/net/uip6.c:1806: if((uip_len > 0 || ((UIP_TCP_BUF->flags & (TCP_SYN | TCP_FIN)) != 0)) &&
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00361$
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	anl	a,#0x03
	jnz	01318$
	ljmp	00363$
01318$:
00361$:
;	../../../../core/net/uip6.c:1807: (UIP_TCP_BUF->seqno[0] != uip_connr->rcv_nxt[0] ||
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x04
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x14
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	a,r6
	cjne	a,ar3,01319$
	sjmp	01320$
01319$:
	ljmp	00355$
01320$:
;	../../../../core/net/uip6.c:1808: UIP_TCP_BUF->seqno[1] != uip_connr->rcv_nxt[1] ||
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x05
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x14
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	inc	r3
	cjne	r3,#0x00,01321$
	inc	r4
01321$:
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	a,r6
	cjne	a,ar3,00355$
;	../../../../core/net/uip6.c:1809: UIP_TCP_BUF->seqno[2] != uip_connr->rcv_nxt[2] ||
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x06
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x14
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	a,#0x02
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	a,r6
	cjne	a,ar3,00355$
;	../../../../core/net/uip6.c:1810: UIP_TCP_BUF->seqno[3] != uip_connr->rcv_nxt[3])) {
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x07
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x14
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	a,r6
	cjne	a,ar3,01326$
	sjmp	00363$
01326$:
00355$:
;	../../../../core/net/uip6.c:1812: if(UIP_TCP_BUF->flags & TCP_SYN) {
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	jb	acc.1,01327$
	ljmp	00472$
01327$:
;	../../../../core/net/uip6.c:1813: goto tcp_send_synack;
	ljmp	00348$
;	../../../../core/net/uip6.c:1815: goto tcp_send_ack;
00363$:
;	../../../../core/net/uip6.c:1823: if((UIP_TCP_BUF->flags & TCP_ACK) && uip_outstanding(uip_connr)) {
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	jb	acc.4,01328$
	ljmp	00377$
01328$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1C
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	orl	a,r3
	jnz	01329$
	ljmp	00377$
01329$:
;	../../../../core/net/uip6.c:1824: uip_add32(uip_connr->snd_nxt, uip_connr->len);
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x18
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar4
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	r0,#_uip_add32
	mov	r1,#(_uip_add32 >> 8)
	mov	r2,#(_uip_add32 >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	../../../../core/net/uip6.c:1826: if(UIP_TCP_BUF->ackno[0] == uip_acc32[0] &&
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x08
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_uip_acc32
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	cjne	a,ar6,01330$
	sjmp	01331$
01330$:
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00377$
01331$:
	pop	ar7
	pop	ar6
	pop	ar5
;	../../../../core/net/uip6.c:1827: UIP_TCP_BUF->ackno[1] == uip_acc32[1] &&
	mov	r3,#(_uip_aligned_buf + 0x0028)
	mov	r4,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x09
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dptr,#(_uip_acc32 + 0x0001)
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r3,a
	cjne	a,ar2,01332$
	sjmp	01333$
01332$:
	ljmp	00377$
01333$:
;	../../../../core/net/uip6.c:1828: UIP_TCP_BUF->ackno[2] == uip_acc32[2] &&
	mov	r3,#(_uip_aligned_buf + 0x0028)
	mov	r4,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0A
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dptr,#(_uip_acc32 + 0x0002)
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r3,a
	cjne	a,ar2,01334$
	sjmp	01335$
01334$:
	ljmp	00377$
01335$:
;	../../../../core/net/uip6.c:1829: UIP_TCP_BUF->ackno[3] == uip_acc32[3]) {
	mov	r3,#(_uip_aligned_buf + 0x0028)
	mov	r4,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0B
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dptr,#(_uip_acc32 + 0x0003)
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r3,a
	cjne	a,ar2,01336$
	sjmp	01337$
01336$:
	ljmp	00377$
01337$:
;	../../../../core/net/uip6.c:1831: uip_connr->snd_nxt[0] = uip_acc32[0];
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x18
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	../../../../core/net/uip6.c:1832: uip_connr->snd_nxt[1] = uip_acc32[1];
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x18
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x01
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	dptr,#(_uip_acc32 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	../../../../core/net/uip6.c:1833: uip_connr->snd_nxt[2] = uip_acc32[2];
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x02
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	dptr,#(_uip_acc32 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	../../../../core/net/uip6.c:1834: uip_connr->snd_nxt[3] = uip_acc32[3];
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dptr,#(_uip_acc32 + 0x0003)
	movx	a,@dptr
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	../../../../core/net/uip6.c:1837: if(uip_connr->nrtx == 0) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x27
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	pop	ar7
	pop	ar6
	pop	ar5
	jz	01338$
	ljmp	00370$
01338$:
;	../../../../core/net/uip6.c:1839: m = uip_connr->rto - uip_connr->timer;
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,sp
	add	a,#0xf3
	mov	r1,a
	mov	a,#0x24
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x26
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,r4
	clr	c
	subb	a,r5
	mov	r2,a
;	../../../../core/net/uip6.c:1841: m = m - (uip_connr->sa >> 3);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,sp
	add	a,#0xf6
	mov	r1,a
	mov	a,#0x22
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	swap	a
	rl	a
	anl	a,#0x1F
	mov	r6,a
	mov	a,r2
	clr	c
	subb	a,r6
;	../../../../core/net/uip6.c:1842: uip_connr->sa += m;
	mov	r2,a
	add	a,r7
	mov	r7,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	../../../../core/net/uip6.c:1843: if(m < 0) {
	mov	a,r2
	pop	ar7
	pop	ar6
	pop	ar5
	jnb	acc.7,00368$
;	../../../../core/net/uip6.c:1844: m = -m;
	clr	c
	clr	a
	subb	a,r2
	mov	r2,a
00368$:
;	../../../../core/net/uip6.c:1846: m = m - (uip_connr->sv >> 2);
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x23
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	rr	a
	rr	a
	anl	a,#0x3F
	mov	r3,a
	mov	a,r2
	clr	c
	subb	a,r3
;	../../../../core/net/uip6.c:1847: uip_connr->sv += m;
	mov	r2,a
	add	a,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	../../../../core/net/uip6.c:1848: uip_connr->rto = (uip_connr->sa >> 3) + uip_connr->sv;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	swap	a
	rl	a
	anl	a,#0x1F
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	add	a,r4
	mov	r4,a
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	../../../../core/net/uip6.c:2275: return;
	pop	ar7
	pop	ar6
	pop	ar5
;	../../../../core/net/uip6.c:1848: uip_connr->rto = (uip_connr->sa >> 3) + uip_connr->sv;
00370$:
;	../../../../core/net/uip6.c:1852: uip_flags = UIP_ACKDATA;
	mov	dptr,#_uip_flags
	mov	a,#0x01
	movx	@dptr,a
;	../../../../core/net/uip6.c:1854: uip_connr->timer = uip_connr->rto;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xf9
	mov	r1,a
	mov	a,#0x26
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x24
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	../../../../core/net/uip6.c:1857: uip_connr->len = 0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
00377$:
;	../../../../core/net/uip6.c:1863: switch(uip_connr->tcpstateflags & UIP_TS_MASK) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x25
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x0F
	anl	a,r4
	mov  r3,a
	add	a,#0xff - 0x08
	jnc	01340$
	ljmp	00482$
01340$:
	mov	a,r3
	add	a,#(01341$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r3
	add	a,#(01342$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
01341$:
	.db	00471$
	.db	00379$
	.db	00386$
	.db	00405$
	.db	00447$
	.db	00460$
	.db	00468$
	.db	00467$
	.db	00444$
01342$:
	.db	00471$>>8
	.db	00379$>>8
	.db	00386$>>8
	.db	00405$>>8
	.db	00447$>>8
	.db	00460$>>8
	.db	00468$>>8
	.db	00467$>>8
	.db	00444$>>8
;	../../../../core/net/uip6.c:1868: case UIP_SYN_RCVD:
00379$:
;	../../../../core/net/uip6.c:1873: if(uip_flags & UIP_ACKDATA) {
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r3,a
	jnb	acc.0,00383$
;	../../../../core/net/uip6.c:1874: uip_connr->tcpstateflags = UIP_ESTABLISHED;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x03
	lcall	__gptrput
;	../../../../core/net/uip6.c:1875: uip_flags = UIP_CONNECTED;
	mov	dptr,#_uip_flags
	mov	a,#0x40
	movx	@dptr,a
;	../../../../core/net/uip6.c:1876: uip_connr->len = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1C
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:1877: if(uip_len > 0) {
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	orl	a,r2
	jz	00381$
;	../../../../core/net/uip6.c:1878: uip_flags |= UIP_NEWDATA;
	mov	dptr,#_uip_flags
	mov	a,#0x42
	movx	@dptr,a
;	../../../../core/net/uip6.c:1879: uip_add_rcv_nxt(uip_len);
	mov	dpl,r2
	mov	dph,r3
	mov	r0,#_uip_add_rcv_nxt
	mov	r1,#(_uip_add_rcv_nxt >> 8)
	mov	r2,#(_uip_add_rcv_nxt >> 16)
	lcall	__sdcc_banked_call
00381$:
;	../../../../core/net/uip6.c:1881: uip_slen = 0;
	mov	dptr,#_uip_slen
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1882: UIP_APPCALL();
	mov	r0,#_tcpip_uipcall
	mov	r1,#(_tcpip_uipcall >> 8)
	mov	r2,#(_tcpip_uipcall >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:1883: goto appsend;
	ljmp	00422$
00383$:
;	../../../../core/net/uip6.c:1886: if((UIP_TCP_BUF->flags & TCP_CTL) == TCP_SYN) {
	mov	r2,#(_uip_aligned_buf + 0x0028)
	mov	r3,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	anl	ar3,#0x3F
	cjne	r3,#0x02,01345$
	sjmp	01346$
01345$:
	ljmp	00482$
01346$:
;	../../../../core/net/uip6.c:1887: goto tcp_send_synack;
	ljmp	00348$
;	../../../../core/net/uip6.c:1891: case UIP_SYN_SENT:
00386$:
;	../../../../core/net/uip6.c:1896: if((uip_flags & UIP_ACKDATA) &&
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r3,a
	jb	acc.0,01347$
	ljmp	00403$
01347$:
;	../../../../core/net/uip6.c:1897: (UIP_TCP_BUF->flags & TCP_CTL) == (TCP_SYN | TCP_ACK)) {
	mov	r2,#(_uip_aligned_buf + 0x0028)
	mov	r3,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	anl	ar3,#0x3F
	cjne	r3,#0x12,01348$
	sjmp	01349$
01348$:
	ljmp	00403$
01349$:
;	../../../../core/net/uip6.c:1900: if((UIP_TCP_BUF->tcpoffset & 0xf0) > 0x50) {
	mov	r2,#(_uip_aligned_buf + 0x0028)
	mov	r3,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0C
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	anl	a,#0xF0
	mov	r3,a
	add	a,#0xff - 0x50
	jc	01350$
	ljmp	00401$
01350$:
;	../../../../core/net/uip6.c:1901: for(c = 0; c < ((UIP_TCP_BUF->tcpoffset >> 4) - 5) << 2 ;) {
	mov	dptr,#_c
	clr	a
	movx	@dptr,a
00497$:
	push	ar5
	push	ar6
	push	ar7
	mov	r2,#(_uip_aligned_buf + 0x0028)
	mov	r3,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0C
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	swap	a
	anl	a,#0x0F
	mov	r2,#0x00
	add	a,#0xFB
	mov	r3,a
	mov	a,r2
	addc	a,#0xFF
	xch	a,r3
	add	a,acc
	xch	a,r3
	rlc	a
	xch	a,r3
	add	a,acc
	xch	a,r3
	rlc	a
	mov	r2,a
	mov	dptr,#_c
	movx	a,@dptr
	mov	r4,a
	mov	r6,a
	mov	r7,#0x00
	clr	c
	mov	a,r6
	subb	a,r3
	mov	a,r7
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	pop	ar7
	pop	ar6
	pop	ar5
	jc	01351$
	ljmp	00401$
01351$:
;	../../../../core/net/uip6.c:1902: opt = uip_buf[UIP_IPTCPH_LEN + UIP_LLH_LEN + c];
	mov	a,#0x3C
	add	a,r4
	add	a,#_uip_aligned_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_opt
	movx	@dptr,a
;	../../../../core/net/uip6.c:1903: if(opt == TCP_OPT_END) {
	mov	a,r3
	jnz	01352$
	ljmp	00401$
01352$:
;	../../../../core/net/uip6.c:1906: } else if(opt == TCP_OPT_NOOP) {
	cjne	r3,#0x01,00394$
;	../../../../core/net/uip6.c:1907: ++c;
	mov	dptr,#_c
	mov	a,r4
	inc	a
	movx	@dptr,a
	sjmp	00497$
00394$:
;	../../../../core/net/uip6.c:1909: } else if(opt == TCP_OPT_MSS &&
	cjne	r3,#0x02,01355$
	sjmp	01356$
01355$:
	ljmp	00390$
01356$:
;	../../../../core/net/uip6.c:1910: uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 1 + c] == TCP_OPT_MSS_LEN) {
	mov	a,#0x3D
	add	a,r4
	add	a,#_uip_aligned_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x04,01357$
	sjmp	01358$
01357$:
	ljmp	00390$
01358$:
;	../../../../core/net/uip6.c:1912: tmp16 = (uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 2 + c] << 8) |
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x3E
	add	a,r4
	add	a,#_uip_aligned_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	mov	r3,#0x00
;	../../../../core/net/uip6.c:1913: uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 3 + c];
	mov	a,#0x3F
	add	a,r4
	add	a,#_uip_aligned_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,r7
	orl	a,r3
	mov	@r0,a
	mov	a,r6
	orl	a,r2
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dptr,#_tmp16
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1914: uip_connr->initialmss =
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,sp
	add	a,#0xf6
	mov	r1,a
	mov	a,#0x20
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	../../../../core/net/uip6.c:1915: uip_connr->mss = tmp16 > UIP_TCP_MSS? UIP_TCP_MSS: tmp16;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,sp
	add	a,#0xf3
	mov	r1,a
	mov	a,#0x1E
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	clr	c
	mov	a,#0xB4
	subb	a,r6
	clr	a
	subb	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jnc	00505$
	mov	r2,#0xB4
	mov	r3,#0x00
	sjmp	00506$
00505$:
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
00506$:
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	../../../../core/net/uip6.c:1918: break;
	sjmp	00401$
00390$:
;	../../../../core/net/uip6.c:1922: if(uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 1 + c] == 0) {
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_c
	movx	a,@dptr
	mov	r3,a
	add	a,#0x3D
	add	a,#_uip_aligned_buf
	mov	r2,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	r7,a
	mov	dpl,r2
	mov	dph,r7
	movx	a,@dptr
	pop	ar7
	pop	ar6
	pop	ar5
	jz	00401$
;	../../../../core/net/uip6.c:1927: c += uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 1 + c];
	mov	a,#0x3D
	add	a,r3
	add	a,#_uip_aligned_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uip_aligned_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_c
	add	a,r3
	movx	@dptr,a
	ljmp	00497$
00401$:
;	../../../../core/net/uip6.c:1931: uip_connr->tcpstateflags = UIP_ESTABLISHED;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x03
	lcall	__gptrput
;	../../../../core/net/uip6.c:1932: uip_connr->rcv_nxt[0] = UIP_TCP_BUF->seqno[0];
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x14
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	r2,#(_uip_aligned_buf + 0x0028)
	mov	r3,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrput
;	../../../../core/net/uip6.c:1933: uip_connr->rcv_nxt[1] = UIP_TCP_BUF->seqno[1];
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x14
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x01
	add	a,r7
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
	mov	r2,#(_uip_aligned_buf + 0x0028)
	mov	r3,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
;	../../../../core/net/uip6.c:1934: uip_connr->rcv_nxt[2] = UIP_TCP_BUF->seqno[2];
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,#0x02
	add	a,r7
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
	mov	r2,#(_uip_aligned_buf + 0x0028)
	mov	r3,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x06
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
;	../../../../core/net/uip6.c:1935: uip_connr->rcv_nxt[3] = UIP_TCP_BUF->seqno[3];
	mov	a,#0x03
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	r2,#(_uip_aligned_buf + 0x0028)
	mov	r3,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x07
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrput
;	../../../../core/net/uip6.c:1936: uip_add_rcv_nxt(1);
	mov	dptr,#0x0001
	mov	r0,#_uip_add_rcv_nxt
	mov	r1,#(_uip_add_rcv_nxt >> 8)
	mov	r2,#(_uip_add_rcv_nxt >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:1937: uip_flags = UIP_CONNECTED | UIP_NEWDATA;
	mov	dptr,#_uip_flags
	mov	a,#0x42
	movx	@dptr,a
;	../../../../core/net/uip6.c:1938: uip_connr->len = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1C
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:1939: uip_len = 0;
	mov	dptr,#_uip_len
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1940: uip_slen = 0;
	mov	dptr,#_uip_slen
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1941: UIP_APPCALL();
	mov	r0,#_tcpip_uipcall
	mov	r1,#(_tcpip_uipcall >> 8)
	mov	r2,#(_tcpip_uipcall >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:1942: goto appsend;
	ljmp	00422$
00403$:
;	../../../../core/net/uip6.c:1945: uip_flags = UIP_ABORT;
	mov	dptr,#_uip_flags
	mov	a,#0x20
	movx	@dptr,a
;	../../../../core/net/uip6.c:1946: UIP_APPCALL();
	mov	r0,#_tcpip_uipcall
	mov	r1,#(_tcpip_uipcall >> 8)
	mov	r2,#(_tcpip_uipcall >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:1948: uip_conn->tcpstateflags = UIP_CLOSED;
	mov	dptr,#_uip_conn
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x25
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:1949: goto reset;
	ljmp	00313$
;	../../../../core/net/uip6.c:1952: case UIP_ESTABLISHED:
00405$:
;	../../../../core/net/uip6.c:1964: if(UIP_TCP_BUF->flags & TCP_FIN && !(uip_connr->tcpstateflags & UIP_STOPPED)) {
	mov	r2,#(_uip_aligned_buf + 0x0028)
	mov	r3,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	jb	acc.0,01361$
	ljmp	00412$
01361$:
	mov	a,r4
	jnb	acc.4,01362$
	ljmp	00412$
01362$:
;	../../../../core/net/uip6.c:1965: if(uip_outstanding(uip_connr)) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xf9
	mov	r1,a
	mov	a,#0x1C
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	orl	a,r3
	jz	01363$
	ljmp	00482$
01363$:
;	../../../../core/net/uip6.c:1968: uip_add_rcv_nxt(1 + uip_len);
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r3
	cjne	r3,#0x00,01364$
	inc	r4
01364$:
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_uip_add_rcv_nxt
	mov	r1,#(_uip_add_rcv_nxt >> 8)
	mov	r2,#(_uip_add_rcv_nxt >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	../../../../core/net/uip6.c:1969: uip_flags |= UIP_CLOSE;
	mov	dptr,#_uip_flags
	movx	a,@dptr
	orl	a,#0x10
	movx	@dptr,a
;	../../../../core/net/uip6.c:1970: if(uip_len > 0) {
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jz	00409$
;	../../../../core/net/uip6.c:1971: uip_flags |= UIP_NEWDATA;
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r4,a
	orl	a,#0x02
	movx	@dptr,a
00409$:
;	../../../../core/net/uip6.c:1973: UIP_APPCALL();
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_tcpip_uipcall
	mov	r1,#(_tcpip_uipcall >> 8)
	mov	r2,#(_tcpip_uipcall >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
;	../../../../core/net/uip6.c:1974: uip_connr->len = 1;
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x01
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:1975: uip_connr->tcpstateflags = UIP_LAST_ACK;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x08
	lcall	__gptrput
;	../../../../core/net/uip6.c:1976: uip_connr->nrtx = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x27
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:1977: tcp_send_finack:
00410$:
;	../../../../core/net/uip6.c:1978: UIP_TCP_BUF->flags = TCP_FIN | TCP_ACK;
	mov	r3,#(_uip_aligned_buf + 0x0028)
	mov	r4,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	a,#0x11
	movx	@dptr,a
;	../../../../core/net/uip6.c:1979: goto tcp_send_nodata;
	ljmp	00473$
00412$:
;	../../../../core/net/uip6.c:1984: if((UIP_TCP_BUF->flags & TCP_URG) != 0) {
	mov	r3,#(_uip_aligned_buf + 0x0028)
	mov	r4,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	jnb	acc.5,00415$
;	../../../../core/net/uip6.c:1998: uip_appdata = ((char *)uip_appdata) + ((UIP_TCP_BUF->urgp[0] << 8) | UIP_TCP_BUF->urgp[1]);
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x13
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,#0x00
	add	a,r2
	mov	r2,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	mov	dptr,#_uip_appdata
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:1999: uip_len -= (UIP_TCP_BUF->urgp[0] << 8) | UIP_TCP_BUF->urgp[1];
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x12
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	r4,#(_uip_aligned_buf + 0x0028)
	mov	r5,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x13
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r4,#0x00
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_uip_len
	mov	a,r4
	clr	c
	subb	a,r7
	movx	@dptr,a
	mov	a,r5
	subb	a,r6
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:2275: return;
	pop	ar7
	pop	ar6
	pop	ar5
;	../../../../core/net/uip6.c:1999: uip_len -= (UIP_TCP_BUF->urgp[0] << 8) | UIP_TCP_BUF->urgp[1];
00415$:
;	../../../../core/net/uip6.c:2008: if(uip_len > 0 && !(uip_connr->tcpstateflags & UIP_STOPPED)) {
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jz	00417$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	jb	acc.4,00417$
;	../../../../core/net/uip6.c:2009: uip_flags |= UIP_NEWDATA;
	mov	dptr,#_uip_flags
	movx	a,@dptr
	orl	a,#0x02
	movx	@dptr,a
;	../../../../core/net/uip6.c:2010: uip_add_rcv_nxt(uip_len);
	mov	dpl,r3
	mov	dph,r4
	mov	r0,#_uip_add_rcv_nxt
	mov	r1,#(_uip_add_rcv_nxt >> 8)
	mov	r2,#(_uip_add_rcv_nxt >> 16)
	lcall	__sdcc_banked_call
00417$:
;	../../../../core/net/uip6.c:2025: tmp16 = ((uint16_t)UIP_TCP_BUF->wnd[0] << 8) + (uint16_t)UIP_TCP_BUF->wnd[1];
	mov	r3,#(_uip_aligned_buf + 0x0028)
	mov	r4,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0E
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	r2,#(_uip_aligned_buf + 0x0028)
	mov	r4,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0F
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	r3,#0x00
	add	a,r7
	mov	r7,a
	mov	a,r3
	addc	a,r6
	mov	r6,a
	mov	dptr,#_tmp16
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:2026: if(tmp16 > uip_connr->initialmss ||
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x20
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r3
	subb	a,r7
	mov	a,r4
	subb	a,r6
	jc	00419$
;	../../../../core/net/uip6.c:2027: tmp16 == 0) {
	mov	a,r7
	orl	a,r6
	jnz	00420$
00419$:
;	../../../../core/net/uip6.c:2028: tmp16 = uip_connr->initialmss;
	mov	dptr,#_tmp16
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
00420$:
;	../../../../core/net/uip6.c:2030: uip_connr->mss = tmp16;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1E
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dptr,#_tmp16
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../../../../core/net/uip6.c:2048: if(uip_flags & (UIP_NEWDATA | UIP_ACKDATA)) {
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r4,a
	anl	a,#0x03
	jnz	01371$
	ljmp	00482$
01371$:
;	../../../../core/net/uip6.c:2049: uip_slen = 0;
	mov	dptr,#_uip_slen
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:2050: UIP_APPCALL();
	mov	r0,#_tcpip_uipcall
	mov	r1,#(_tcpip_uipcall >> 8)
	mov	r2,#(_tcpip_uipcall >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:2052: appsend:
00422$:
;	../../../../core/net/uip6.c:2054: if(uip_flags & UIP_ABORT) {
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r4,a
	jnb	acc.5,00424$
;	../../../../core/net/uip6.c:2055: uip_slen = 0;
	mov	dptr,#_uip_slen
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:2056: uip_connr->tcpstateflags = UIP_CLOSED;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x25
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:2057: UIP_TCP_BUF->flags = TCP_RST | TCP_ACK;
	mov	r2,#(_uip_aligned_buf + 0x0028)
	mov	r3,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	mov	a,#0x14
	movx	@dptr,a
;	../../../../core/net/uip6.c:2058: goto tcp_send_nodata;
	ljmp	00473$
00424$:
;	../../../../core/net/uip6.c:2061: if(uip_flags & UIP_CLOSE) {
	mov	a,r4
	jnb	acc.4,00426$
;	../../../../core/net/uip6.c:2062: uip_slen = 0;
	mov	dptr,#_uip_slen
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:2063: uip_connr->len = 1;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1C
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,#0x01
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:2064: uip_connr->tcpstateflags = UIP_FIN_WAIT_1;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x25
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,#0x04
	lcall	__gptrput
;	../../../../core/net/uip6.c:2065: uip_connr->nrtx = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x27
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:2066: UIP_TCP_BUF->flags = TCP_FIN | TCP_ACK;
	mov	r2,#(_uip_aligned_buf + 0x0028)
	mov	r3,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	mov	a,#0x11
	movx	@dptr,a
;	../../../../core/net/uip6.c:2067: goto tcp_send_nodata;
	ljmp	00473$
00426$:
;	../../../../core/net/uip6.c:2071: if(uip_slen > 0) {
	mov	dptr,#_uip_slen
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	orl	a,r2
	jnz	01374$
	ljmp	00435$
01374$:
;	../../../../core/net/uip6.c:2075: if((uip_flags & UIP_ACKDATA) != 0) {
	mov	a,r4
	jnb	acc.0,00428$
;	../../../../core/net/uip6.c:2076: uip_connr->len = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
00428$:
;	../../../../core/net/uip6.c:2082: if(uip_connr->len == 0) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1C
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	orl	a,r4
	jnz	00432$
;	../../../../core/net/uip6.c:2087: if(uip_slen > uip_connr->mss) {
	push	ar7
	push	ar6
	push	ar5
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x1E
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	dptr,#_uip_slen
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r4
	pop	ar5
	pop	ar6
	pop	ar7
	jnc	00430$
;	../../../../core/net/uip6.c:2088: uip_slen = uip_connr->mss;
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	dptr,#_uip_slen
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
00430$:
;	../../../../core/net/uip6.c:2093: uip_connr->len = uip_slen;
	mov	dptr,#_uip_slen
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	sjmp	00435$
00432$:
;	../../../../core/net/uip6.c:2099: uip_slen = uip_connr->len;
	mov	dptr,#_uip_slen
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
00435$:
;	../../../../core/net/uip6.c:2102: uip_connr->nrtx = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x27
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:2103: apprexmit:
00436$:
;	../../../../core/net/uip6.c:2104: uip_appdata = uip_sappdata;
	mov	dptr,#_uip_sappdata
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_uip_appdata
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:2108: if(uip_slen > 0 && uip_connr->len > 0) {
	mov	dptr,#_uip_slen
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jz	00438$
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	orl	a,r3
	jz	00438$
;	../../../../core/net/uip6.c:2110: uip_len = uip_connr->len + UIP_TCPIP_HLEN;
	mov	dptr,#_uip_len
	mov	a,#0x3C
	add	a,r3
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:2112: UIP_TCP_BUF->flags = TCP_ACK | TCP_PSH;
	mov	r3,#(_uip_aligned_buf + 0x0028)
	mov	r4,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	a,#0x18
	movx	@dptr,a
;	../../../../core/net/uip6.c:2114: goto tcp_send_noopts;
	ljmp	00474$
00438$:
;	../../../../core/net/uip6.c:2118: if(uip_flags & UIP_NEWDATA) {
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r4,a
	jb	acc.1,01380$
	ljmp	00482$
01380$:
;	../../../../core/net/uip6.c:2119: uip_len = UIP_TCPIP_HLEN;
	mov	dptr,#_uip_len
	mov	a,#0x3C
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:2120: UIP_TCP_BUF->flags = TCP_ACK;
	mov	r3,#(_uip_aligned_buf + 0x0028)
	mov	r4,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	a,#0x10
	movx	@dptr,a
;	../../../../core/net/uip6.c:2121: goto tcp_send_noopts;
	ljmp	00474$
;	../../../../core/net/uip6.c:2125: case UIP_LAST_ACK:
00444$:
;	../../../../core/net/uip6.c:2128: if(uip_flags & UIP_ACKDATA) {
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r4,a
	jb	acc.0,01381$
	ljmp	00482$
01381$:
;	../../../../core/net/uip6.c:2129: uip_connr->tcpstateflags = UIP_CLOSED;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:2130: uip_flags = UIP_CLOSE;
	mov	dptr,#_uip_flags
	mov	a,#0x10
	movx	@dptr,a
;	../../../../core/net/uip6.c:2131: UIP_APPCALL();
	mov	r0,#_tcpip_uipcall
	mov	r1,#(_tcpip_uipcall >> 8)
	mov	r2,#(_tcpip_uipcall >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:2133: break;
	ljmp	00482$
;	../../../../core/net/uip6.c:2135: case UIP_FIN_WAIT_1:
00447$:
;	../../../../core/net/uip6.c:2139: if(uip_len > 0) {
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jz	00449$
;	../../../../core/net/uip6.c:2140: uip_add_rcv_nxt(uip_len);
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_uip_add_rcv_nxt
	mov	r1,#(_uip_add_rcv_nxt >> 8)
	mov	r2,#(_uip_add_rcv_nxt >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
00449$:
;	../../../../core/net/uip6.c:2142: if(UIP_TCP_BUF->flags & TCP_FIN) {
	mov	r3,#(_uip_aligned_buf + 0x0028)
	mov	r4,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	jnb	acc.0,00456$
;	../../../../core/net/uip6.c:2143: if(uip_flags & UIP_ACKDATA) {
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r4,a
	jnb	acc.0,00451$
;	../../../../core/net/uip6.c:2144: uip_connr->tcpstateflags = UIP_TIME_WAIT;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x07
	lcall	__gptrput
;	../../../../core/net/uip6.c:2145: uip_connr->timer = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x26
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:2146: uip_connr->len = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	sjmp	00452$
00451$:
;	../../../../core/net/uip6.c:2148: uip_connr->tcpstateflags = UIP_CLOSING;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x06
	lcall	__gptrput
00452$:
;	../../../../core/net/uip6.c:2150: uip_add_rcv_nxt(1);
	mov	dptr,#0x0001
	mov	r0,#_uip_add_rcv_nxt
	mov	r1,#(_uip_add_rcv_nxt >> 8)
	mov	r2,#(_uip_add_rcv_nxt >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:2151: uip_flags = UIP_CLOSE;
	mov	dptr,#_uip_flags
	mov	a,#0x10
	movx	@dptr,a
;	../../../../core/net/uip6.c:2152: UIP_APPCALL();
	mov	r0,#_tcpip_uipcall
	mov	r1,#(_tcpip_uipcall >> 8)
	mov	r2,#(_tcpip_uipcall >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:2153: goto tcp_send_ack;
	ljmp	00472$
00456$:
;	../../../../core/net/uip6.c:2154: } else if(uip_flags & UIP_ACKDATA) {
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r4,a
	jnb	acc.0,00457$
;	../../../../core/net/uip6.c:2155: uip_connr->tcpstateflags = UIP_FIN_WAIT_2;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x05
	lcall	__gptrput
;	../../../../core/net/uip6.c:2156: uip_connr->len = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x1C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:2157: goto drop;
	ljmp	00482$
00457$:
;	../../../../core/net/uip6.c:2159: if(uip_len > 0) {
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jnz	01386$
	ljmp	00482$
01386$:
;	../../../../core/net/uip6.c:2160: goto tcp_send_ack;
	ljmp	00472$
;	../../../../core/net/uip6.c:2164: case UIP_FIN_WAIT_2:
00460$:
;	../../../../core/net/uip6.c:2165: if(uip_len > 0) {
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jz	00462$
;	../../../../core/net/uip6.c:2166: uip_add_rcv_nxt(uip_len);
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_uip_add_rcv_nxt
	mov	r1,#(_uip_add_rcv_nxt >> 8)
	mov	r2,#(_uip_add_rcv_nxt >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
	pop	ar7
00462$:
;	../../../../core/net/uip6.c:2168: if(UIP_TCP_BUF->flags & TCP_FIN) {
	mov	r3,#(_uip_aligned_buf + 0x0028)
	mov	r4,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	jnb	acc.0,00464$
;	../../../../core/net/uip6.c:2169: uip_connr->tcpstateflags = UIP_TIME_WAIT;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x07
	lcall	__gptrput
;	../../../../core/net/uip6.c:2170: uip_connr->timer = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x26
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:2171: uip_add_rcv_nxt(1);
	mov	dptr,#0x0001
	mov	r0,#_uip_add_rcv_nxt
	mov	r1,#(_uip_add_rcv_nxt >> 8)
	mov	r2,#(_uip_add_rcv_nxt >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:2172: uip_flags = UIP_CLOSE;
	mov	dptr,#_uip_flags
	mov	a,#0x10
	movx	@dptr,a
;	../../../../core/net/uip6.c:2173: UIP_APPCALL();
	mov	r0,#_tcpip_uipcall
	mov	r1,#(_tcpip_uipcall >> 8)
	mov	r2,#(_tcpip_uipcall >> 16)
	lcall	__sdcc_banked_call
;	../../../../core/net/uip6.c:2174: goto tcp_send_ack;
	sjmp	00472$
00464$:
;	../../../../core/net/uip6.c:2176: if(uip_len > 0) {
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jnz	01389$
	ljmp	00482$
01389$:
;	../../../../core/net/uip6.c:2177: goto tcp_send_ack;
;	../../../../core/net/uip6.c:2181: case UIP_TIME_WAIT:
	sjmp	00472$
00467$:
;	../../../../core/net/uip6.c:2182: goto tcp_send_ack;
;	../../../../core/net/uip6.c:2184: case UIP_CLOSING:
	sjmp	00472$
00468$:
;	../../../../core/net/uip6.c:2185: if(uip_flags & UIP_ACKDATA) {
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r4,a
	jb	acc.0,01390$
	ljmp	00482$
01390$:
;	../../../../core/net/uip6.c:2186: uip_connr->tcpstateflags = UIP_TIME_WAIT;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x07
	lcall	__gptrput
;	../../../../core/net/uip6.c:2187: uip_connr->timer = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x26
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../../../../core/net/uip6.c:2189: }
00471$:
;	../../../../core/net/uip6.c:2190: goto drop;
	ljmp	00482$
;	../../../../core/net/uip6.c:2194: tcp_send_ack:
00472$:
;	../../../../core/net/uip6.c:2195: UIP_TCP_BUF->flags = TCP_ACK;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0D
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x10
	movx	@dptr,a
;	../../../../core/net/uip6.c:2197: tcp_send_nodata:
00473$:
;	../../../../core/net/uip6.c:2198: uip_len = UIP_IPTCPH_LEN;
	mov	dptr,#_uip_len
	mov	a,#0x3C
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:2200: tcp_send_noopts:
00474$:
;	../../../../core/net/uip6.c:2201: UIP_TCP_BUF->tcpoffset = (UIP_TCPH_LEN / 4) << 4;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0C
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x50
	movx	@dptr,a
;	../../../../core/net/uip6.c:2207: tcp_send:
00475$:
;	../../../../core/net/uip6.c:2210: UIP_TCP_BUF->ackno[0] = uip_connr->rcv_nxt[0];
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x08
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x14
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	../../../../core/net/uip6.c:2211: UIP_TCP_BUF->ackno[1] = uip_connr->rcv_nxt[1];
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x09
	add	a,r6
	mov	@r0,a
	clr	a
	addc	a,r7
	inc	r0
	mov	@r0,a
	mov	a,#0x01
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,r2
	movx	@dptr,a
;	../../../../core/net/uip6.c:2212: UIP_TCP_BUF->ackno[2] = uip_connr->rcv_nxt[2];
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x0A
	add	a,r6
	mov	@r0,a
	clr	a
	addc	a,r7
	inc	r0
	mov	@r0,a
	mov	a,#0x02
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,r2
	movx	@dptr,a
;	../../../../core/net/uip6.c:2213: UIP_TCP_BUF->ackno[3] = uip_connr->rcv_nxt[3];
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0B
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	../../../../core/net/uip6.c:2215: UIP_TCP_BUF->seqno[0] = uip_connr->snd_nxt[0];
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x04
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x18
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	../../../../core/net/uip6.c:2216: UIP_TCP_BUF->seqno[1] = uip_connr->snd_nxt[1];
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x05
	add	a,r6
	mov	@r0,a
	clr	a
	addc	a,r7
	inc	r0
	mov	@r0,a
	mov	a,#0x01
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,r2
	movx	@dptr,a
;	../../../../core/net/uip6.c:2217: UIP_TCP_BUF->seqno[2] = uip_connr->snd_nxt[2];
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x06
	add	a,r6
	mov	@r0,a
	clr	a
	addc	a,r7
	inc	r0
	mov	@r0,a
	mov	a,#0x02
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,r2
	movx	@dptr,a
;	../../../../core/net/uip6.c:2218: UIP_TCP_BUF->seqno[3] = uip_connr->snd_nxt[3];
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x07
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	../../../../core/net/uip6.c:2220: UIP_IP_BUF->proto = UIP_PROTO_TCP;
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x06
	movx	@dptr,a
;	../../../../core/net/uip6.c:2222: UIP_TCP_BUF->srcport  = uip_connr->lport;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x10
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:2223: UIP_TCP_BUF->destport = uip_connr->rport;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x02
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x12
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:2225: uip_ipaddr_copy(&UIP_IP_BUF->destipaddr, &uip_connr->ripaddr);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../../../core/net/uip6.c:2226: uip_ds6_select_src(&UIP_IP_BUF->srcipaddr, &UIP_IP_BUF->destipaddr);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x18
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x08
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	push	ar6
	push	ar7
	push	ar5
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	mov	r0,#_uip_ds6_select_src
	mov	r1,#(_uip_ds6_select_src >> 8)
	mov	r2,#(_uip_ds6_select_src >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	../../../../core/net/uip6.c:2233: if(uip_connr->tcpstateflags & UIP_STOPPED) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x25
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	jnb	acc.4,00477$
;	../../../../core/net/uip6.c:2236: UIP_TCP_BUF->wnd[0] = UIP_TCP_BUF->wnd[1] = 0;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0E
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r4,#(_uip_aligned_buf + 0x0028)
	mov	r5,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0F
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	clr	a
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movx	@dptr,a
	sjmp	00479$
00477$:
;	../../../../core/net/uip6.c:2238: UIP_TCP_BUF->wnd[0] = ((UIP_RECEIVE_WINDOW) >> 8);
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0E
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movx	@dptr,a
;	../../../../core/net/uip6.c:2239: UIP_TCP_BUF->wnd[1] = ((UIP_RECEIVE_WINDOW) & 0xff);
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x0F
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0xB4
	movx	@dptr,a
;	../../../../core/net/uip6.c:2242: tcp_send_noconn:
00479$:
;	../../../../core/net/uip6.c:2243: UIP_IP_BUF->ttl = uip_ds6_if.cur_hop_limit;
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x07
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#(_uip_ds6_if + 0x0004)
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	../../../../core/net/uip6.c:2244: UIP_IP_BUF->len[0] = ((uip_len - UIP_IPH_LEN) >> 8);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x04
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,#0xD8
	mov	a,r5
	addc	a,#0xFF
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	../../../../core/net/uip6.c:2245: UIP_IP_BUF->len[1] = ((uip_len - UIP_IPH_LEN) & 0xff);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x05
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	a,r4
	add	a,#0xD8
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	../../../../core/net/uip6.c:2247: UIP_TCP_BUF->urgp[0] = UIP_TCP_BUF->urgp[1] = 0;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x12
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r4,#(_uip_aligned_buf + 0x0028)
	mov	r5,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x13
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	clr	a
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movx	@dptr,a
;	../../../../core/net/uip6.c:2250: UIP_TCP_BUF->tcpchksum = 0;
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x10
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:2251: UIP_TCP_BUF->tcpchksum = ~(uip_tcpchksum());
	mov	r6,#(_uip_aligned_buf + 0x0028)
	mov	r7,#((_uip_aligned_buf + 0x0028) >> 8)
	mov	a,#0x10
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	push	ar7
	push	ar6
	mov	r0,#_uip_tcpchksum
	mov	r1,#(_uip_tcpchksum >> 8)
	mov	r2,#(_uip_tcpchksum >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	cpl	a
	mov	r4,a
	mov	a,r5
	cpl	a
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:2256: ip_send_nolen:
00480$:
;	../../../../core/net/uip6.c:2258: UIP_IP_BUF->vtc = 0x60;
	mov	dptr,#_uip_aligned_buf
	mov	a,#0x60
	movx	@dptr,a
;	../../../../core/net/uip6.c:2259: UIP_IP_BUF->tcflow = 0x00;
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../../../core/net/uip6.c:2260: UIP_IP_BUF->flow = 0x00;
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:2261: send:
00481$:
;	../../../../core/net/uip6.c:2267: uip_flags = 0;
	mov	dptr,#_uip_flags
	clr	a
	movx	@dptr,a
;	../../../../core/net/uip6.c:2268: return;
;	../../../../core/net/uip6.c:2270: drop:
	sjmp	00499$
00482$:
;	../../../../core/net/uip6.c:2271: uip_len = 0;
	mov	dptr,#_uip_len
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:2272: uip_ext_len = 0;
	mov	dptr,#_uip_ext_len
;	../../../../core/net/uip6.c:2273: uip_ext_bitmap = 0;
;	../../../../core/net/uip6.c:2274: uip_flags = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_uip_ext_bitmap
	movx	@dptr,a
	mov	dptr,#_uip_flags
	movx	@dptr,a
;	../../../../core/net/uip6.c:2275: return;
00499$:
	mov	a,sp
	add	a,#0xF5
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_htons'
;------------------------------------------------------------
;val                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../../../core/net/uip6.c:2279: uip_htons(uint16_t val)
;	-----------------------------------------
;	 function uip_htons
;	-----------------------------------------
_uip_htons:
	mov	r6,dpl
	mov	r7,dph
;	../../../../core/net/uip6.c:2281: return UIP_HTONS(val);
	mov	ar5,r6
	mov	r4,#0x00
	mov	ar6,r7
	mov	r7,#0x00
	mov	a,r6
	orl	ar4,a
	mov	a,r7
	orl	ar5,a
	mov	dpl,r4
	mov	dph,r5
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_htonl'
;------------------------------------------------------------
;val                       Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	../../../../core/net/uip6.c:2285: uip_htonl(uint32_t val)
;	-----------------------------------------
;	 function uip_htonl
;	-----------------------------------------
_uip_htonl:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	../../../../core/net/uip6.c:2287: return UIP_HTONL(val);
	mov	ar2,r4
	mov	ar3,r5
	mov	ar1,r2
	mov	r0,#0x00
	mov	ar2,r3
	mov	r3,#0x00
	mov	a,r2
	orl	ar0,a
	mov	a,r3
	orl	ar1,a
	mov	ar2,r1
	mov	ar3,r0
	mov	r1,#0x00
	mov	r0,#0x00
	mov	ar4,r6
	mov	ar5,r7
	mov	ar7,r4
	mov	r6,#0x00
	mov	ar4,r5
	mov	r5,#0x00
	mov	a,r4
	orl	ar6,a
	mov	a,r5
	orl	ar7,a
	clr	a
	mov	r5,a
	mov	r4,a
	mov	a,r6
	orl	ar0,a
	mov	a,r7
	orl	ar1,a
	mov	a,r5
	orl	ar3,a
	mov	a,r4
	orl	ar2,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
	mov	a,r2
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_send'
;------------------------------------------------------------
;len                       Allocated to stack - sp -10
;data                      Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -2
;sloc1                     Allocated to stack - sp -5
;copylen                   Allocated with name '_uip_send_copylen_1_423'
;------------------------------------------------------------
;	../../../../core/net/uip6.c:2291: uip_send(const void *data, int len)
;	-----------------------------------------
;	 function uip_send
;	-----------------------------------------
_uip_send:
	mov	a,sp
	add	a,#0x06
	mov	sp,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
;	../../../../core/net/uip6.c:2295: copylen = MIN(len, UIP_BUFSIZE - UIP_LLH_LEN - UIP_TCPIP_HLEN -
	mov	dptr,#_uip_sappdata
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	r6,#(_uip_aligned_buf + 0x003c)
	mov	r7,#((_uip_aligned_buf + 0x003c) >> 8)
	mov	a,r2
	clr	c
	subb	a,r6
	mov	r6,a
	mov	a,r3
	subb	a,r7
	mov	r7,a
	mov	a,#0xB4
	clr	c
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00107$
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	sjmp	00108$
00107$:
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	ar7,r5
	mov	r2,#(_uip_aligned_buf + 0x003c)
	mov	r5,#((_uip_aligned_buf + 0x003c) >> 8)
	mov	a,r3
	clr	c
	subb	a,r2
	mov	r2,a
	mov	a,r4
	subb	a,r5
	mov	r5,a
	mov	a,#0xB4
	clr	c
	subb	a,r2
	mov	r6,a
	clr	a
	subb	a,r5
	mov	r7,a
00108$:
	mov	dptr,#_uip_send_copylen_1_423
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:2297: if(copylen > 0) {
	clr	c
	clr	a
	subb	a,r6
	clr	a
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	../../../../core/net/uip6.c:2298: uip_slen = copylen;
	mov	dptr,#_uip_slen
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../../../../core/net/uip6.c:2299: if(data != uip_sappdata) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00105$
;	../../../../core/net/uip6.c:2300: memcpy(uip_sappdata, (data), uip_slen);
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_memcpy
	mov	r1,#(_memcpy >> 8)
	mov	r2,#(_memcpy >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00105$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__uip_ext_bitmap:
	.db #0x00	; 0
__xinit__uip_ext_len:
	.db #0x00	; 0
__xinit__uip_ext_opt_offset:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
