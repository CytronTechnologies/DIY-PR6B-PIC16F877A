opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 22 "D:\DIY\DIY-PR6B-PIC877A\Old\Source file\PR6(BLuetooth Remote Control).c"
	psect config,class=CONFIG,delta=2 ;#
# 22 "D:\DIY\DIY-PR6B-PIC877A\Old\Source file\PR6(BLuetooth Remote Control).c"
	dw 0x3F32 ;#
	FNCALL	_main,_init
	FNCALL	_main,_receive
	FNCALL	_main,_display
	FNROOT	_main
	global	_a
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_a:
       ds      1

	global	_PORTD
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_TXREG
_TXREG	set	25
	global	_CARRY
_CARRY	set	24
	global	_CREN
_CREN	set	196
	global	_GIE
_GIE	set	95
	global	_RCIF
_RCIF	set	101
	global	_SPEN
_SPEN	set	199
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_TRISD
_TRISD	set	136
	global	_BRGH
_BRGH	set	1218
	global	_TXEN
_TXEN	set	1221
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	file	"PR6B.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_init
?_init:	; 0 bytes @ 0x0
	global	??_init
??_init:	; 0 bytes @ 0x0
	global	?_display
?_display:	; 0 bytes @ 0x0
	global	??_display
??_display:	; 0 bytes @ 0x0
	global	??_receive
??_receive:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_receive
?_receive:	; 1 bytes @ 0x0
	global	display@c
display@c:	; 1 bytes @ 0x0
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x1
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 1 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      2       3
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_receive
;;   _main->_display
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0      15
;;                                              1 COMMON     1     1      0
;;                               _init
;;                            _receive
;;                            _display
;; ---------------------------------------------------------------------------------
;; (1) _receive                                              1     1      0       0
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _display                                              1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _init                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _init
;;   _receive
;;   _display
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      2       3       1       21.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       3       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       4      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 68 in file "D:\DIY\DIY-PR6B-PIC877A\Old\Source file\PR6(BLuetooth Remote Control).c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_init
;;		_receive
;;		_display
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\DIY\DIY-PR6B-PIC877A\Old\Source file\PR6(BLuetooth Remote Control).c"
	line	68
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	69
	
l2642:	
;PR6(BLuetooth Remote Control).c: 69: init();
	fcall	_init
	goto	l2644
	line	71
;PR6(BLuetooth Remote Control).c: 71: while(1)
	
l702:	
	line	73
	
l2644:	
;PR6(BLuetooth Remote Control).c: 72: {
;PR6(BLuetooth Remote Control).c: 73: a = receive();
	fcall	_receive
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_a)
	line	74
	
l2646:	
;PR6(BLuetooth Remote Control).c: 74: if (a == 'o')
	movf	(_a),w
	xorlw	06Fh
	skipz
	goto	u2241
	goto	u2240
u2241:
	goto	l2644
u2240:
	line	76
	
l2648:	
;PR6(BLuetooth Remote Control).c: 75: {
;PR6(BLuetooth Remote Control).c: 76: a = receive();
	fcall	_receive
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_a)
	line	77
	
l2650:	
;PR6(BLuetooth Remote Control).c: 77: if (a == 'k') break;
	movf	(_a),w
	xorlw	06Bh
	skipz
	goto	u2251
	goto	u2250
u2251:
	goto	l2644
u2250:
	goto	l2654
	
l2652:	
	goto	l2654
	
l704:	
	goto	l2644
	line	78
	
l703:	
	goto	l2644
	line	79
	
l706:	
	line	71
	goto	l2644
	
l705:	
	line	82
	
l2654:	
;PR6(BLuetooth Remote Control).c: 78: }
;PR6(BLuetooth Remote Control).c: 79: }
;PR6(BLuetooth Remote Control).c: 82: display('C');
	movlw	(043h)
	fcall	_display
	line	83
;PR6(BLuetooth Remote Control).c: 83: display('y');
	movlw	(079h)
	fcall	_display
	line	84
;PR6(BLuetooth Remote Control).c: 84: display('t');
	movlw	(074h)
	fcall	_display
	line	85
;PR6(BLuetooth Remote Control).c: 85: display('r');
	movlw	(072h)
	fcall	_display
	line	86
;PR6(BLuetooth Remote Control).c: 86: display('o');
	movlw	(06Fh)
	fcall	_display
	line	87
;PR6(BLuetooth Remote Control).c: 87: display('n');
	movlw	(06Eh)
	fcall	_display
	line	88
;PR6(BLuetooth Remote Control).c: 88: display(0x0a);
	movlw	(0Ah)
	fcall	_display
	line	89
;PR6(BLuetooth Remote Control).c: 89: display(0x0d);
	movlw	(0Dh)
	fcall	_display
	line	90
;PR6(BLuetooth Remote Control).c: 90: display('P');
	movlw	(050h)
	fcall	_display
	line	91
;PR6(BLuetooth Remote Control).c: 91: display('r');
	movlw	(072h)
	fcall	_display
	line	92
;PR6(BLuetooth Remote Control).c: 92: display('e');
	movlw	(065h)
	fcall	_display
	line	93
;PR6(BLuetooth Remote Control).c: 93: display('s');
	movlw	(073h)
	fcall	_display
	line	94
;PR6(BLuetooth Remote Control).c: 94: display('s');
	movlw	(073h)
	fcall	_display
	line	95
;PR6(BLuetooth Remote Control).c: 95: display(0x20);
	movlw	(020h)
	fcall	_display
	line	96
;PR6(BLuetooth Remote Control).c: 96: display('a');
	movlw	(061h)
	fcall	_display
	line	97
;PR6(BLuetooth Remote Control).c: 97: display('n');
	movlw	(06Eh)
	fcall	_display
	line	98
;PR6(BLuetooth Remote Control).c: 98: display('y');
	movlw	(079h)
	fcall	_display
	line	99
;PR6(BLuetooth Remote Control).c: 99: display(0x20);
	movlw	(020h)
	fcall	_display
	line	100
;PR6(BLuetooth Remote Control).c: 100: display('n');
	movlw	(06Eh)
	fcall	_display
	line	101
;PR6(BLuetooth Remote Control).c: 101: display('u');
	movlw	(075h)
	fcall	_display
	line	102
;PR6(BLuetooth Remote Control).c: 102: display('m');
	movlw	(06Dh)
	fcall	_display
	line	103
;PR6(BLuetooth Remote Control).c: 103: display('b');
	movlw	(062h)
	fcall	_display
	line	104
;PR6(BLuetooth Remote Control).c: 104: display('e');
	movlw	(065h)
	fcall	_display
	line	105
;PR6(BLuetooth Remote Control).c: 105: display('r');
	movlw	(072h)
	fcall	_display
	line	107
	
l2656:	
;PR6(BLuetooth Remote Control).c: 107: PORTD = 1;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	goto	l2658
	line	110
;PR6(BLuetooth Remote Control).c: 110: while(1)
	
l707:	
	line	112
	
l2658:	
;PR6(BLuetooth Remote Control).c: 111: {
;PR6(BLuetooth Remote Control).c: 112: a = receive();
	fcall	_receive
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_a)
	line	113
	
l2660:	
;PR6(BLuetooth Remote Control).c: 113: if (a=='1'||a=='2'||a=='3'||a=='4'||a=='5'||a=='6'||a=='7'||a=='8'||a=='9'||a=='0')
	movf	(_a),w
	xorlw	031h
	skipnz
	goto	u2261
	goto	u2260
u2261:
	goto	l2680
u2260:
	
l2662:	
	movf	(_a),w
	xorlw	032h
	skipnz
	goto	u2271
	goto	u2270
u2271:
	goto	l2680
u2270:
	
l2664:	
	movf	(_a),w
	xorlw	033h
	skipnz
	goto	u2281
	goto	u2280
u2281:
	goto	l2680
u2280:
	
l2666:	
	movf	(_a),w
	xorlw	034h
	skipnz
	goto	u2291
	goto	u2290
u2291:
	goto	l2680
u2290:
	
l2668:	
	movf	(_a),w
	xorlw	035h
	skipnz
	goto	u2301
	goto	u2300
u2301:
	goto	l2680
u2300:
	
l2670:	
	movf	(_a),w
	xorlw	036h
	skipnz
	goto	u2311
	goto	u2310
u2311:
	goto	l2680
u2310:
	
l2672:	
	movf	(_a),w
	xorlw	037h
	skipnz
	goto	u2321
	goto	u2320
u2321:
	goto	l2680
u2320:
	
l2674:	
	movf	(_a),w
	xorlw	038h
	skipnz
	goto	u2331
	goto	u2330
u2331:
	goto	l2680
u2330:
	
l2676:	
	movf	(_a),w
	xorlw	039h
	skipnz
	goto	u2341
	goto	u2340
u2341:
	goto	l2680
u2340:
	
l2678:	
	movf	(_a),w
	xorlw	030h
	skipz
	goto	u2351
	goto	u2350
u2351:
	goto	l2658
u2350:
	goto	l2680
	
l710:	
	line	115
	
l2680:	
;PR6(BLuetooth Remote Control).c: 114: {
;PR6(BLuetooth Remote Control).c: 115: PORTD = a-0x30;
	movf	(_a),w
	addlw	0D0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	goto	l2658
	line	116
	
l708:	
	goto	l2658
	line	117
	
l711:	
	line	110
	goto	l2658
	
l712:	
	line	118
	
l713:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_receive
psect	text101,local,class=CODE,delta=2
global __ptext101
__ptext101:

;; *************** function _receive *****************
;; Defined at:
;;		line 56 in file "D:\DIY\DIY-PR6B-PIC877A\Old\Source file\PR6(BLuetooth Remote Control).c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text101
	file	"D:\DIY\DIY-PR6B-PIC877A\Old\Source file\PR6(BLuetooth Remote Control).c"
	line	56
	global	__size_of_receive
	__size_of_receive	equ	__end_of_receive-_receive
	
_receive:	
	opt	stack 7
; Regs used in _receive: [wreg]
	line	57
	
l1778:	
;PR6(BLuetooth Remote Control).c: 57: while (RCIF == 0);
	goto	l696
	
l697:	
	
l696:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u21
	goto	u20
u21:
	goto	l696
u20:
	goto	l1780
	
l698:	
	line	58
	
l1780:	
;PR6(BLuetooth Remote Control).c: 58: a = RCREG;
	movf	(26),w	;volatile
	movwf	(??_receive+0)+0
	movf	(??_receive+0)+0,w
	movwf	(_a)
	line	59
;PR6(BLuetooth Remote Control).c: 59: return a;
	movf	(_a),w
	goto	l699
	
l1782:	
	line	60
	
l699:	
	return
	opt stack 0
GLOBAL	__end_of_receive
	__end_of_receive:
;; =============== function _receive ends ============

	signat	_receive,89
	global	_display
psect	text102,local,class=CODE,delta=2
global __ptext102
__ptext102:

;; *************** function _display *****************
;; Defined at:
;;		line 50 in file "D:\DIY\DIY-PR6B-PIC877A\Old\Source file\PR6(BLuetooth Remote Control).c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text102
	file	"D:\DIY\DIY-PR6B-PIC877A\Old\Source file\PR6(BLuetooth Remote Control).c"
	line	50
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 7
; Regs used in _display: [wreg]
;display@c stored from wreg
	movwf	(display@c)
	line	51
	
l1774:	
;PR6(BLuetooth Remote Control).c: 51: while (TXIF == 0);
	goto	l690
	
l691:	
	
l690:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u11
	goto	u10
u11:
	goto	l690
u10:
	goto	l1776
	
l692:	
	line	52
	
l1776:	
;PR6(BLuetooth Remote Control).c: 52: TXREG = c;
	movf	(display@c),w
	movwf	(25)	;volatile
	line	53
	
l693:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,4216
	global	_init
psect	text103,local,class=CODE,delta=2
global __ptext103
__ptext103:

;; *************** function _init *****************
;; Defined at:
;;		line 39 in file "D:\DIY\DIY-PR6B-PIC877A\Old\Source file\PR6(BLuetooth Remote Control).c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text103
	file	"D:\DIY\DIY-PR6B-PIC877A\Old\Source file\PR6(BLuetooth Remote Control).c"
	line	39
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
	opt	stack 7
; Regs used in _init: [wreg+status,2]
	line	40
	
l1760:	
;PR6(BLuetooth Remote Control).c: 40: SPBRG=129;
	movlw	(081h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	41
	
l1762:	
;PR6(BLuetooth Remote Control).c: 41: BRGH=1;
	bsf	(1218/8)^080h,(1218)&7
	line	42
	
l1764:	
;PR6(BLuetooth Remote Control).c: 42: TXEN=1;
	bsf	(1221/8)^080h,(1221)&7
	line	43
	
l1766:	
;PR6(BLuetooth Remote Control).c: 43: CREN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7
	line	44
	
l1768:	
;PR6(BLuetooth Remote Control).c: 44: SPEN=1;
	bsf	(199/8),(199)&7
	line	45
	
l1770:	
;PR6(BLuetooth Remote Control).c: 45: TRISD = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	46
	
l1772:	
;PR6(BLuetooth Remote Control).c: 46: PORTD = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	47
	
l687:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
;; =============== function _init ends ============

	signat	_init,88
psect	text104,local,class=CODE,delta=2
global __ptext104
__ptext104:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
