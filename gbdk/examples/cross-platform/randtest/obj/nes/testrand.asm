;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module testrand
	
;; Ordering of segments for the linker.
	.area _ZP      (PAG)
	.area _OSEG    (PAG, OVR)
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _CODE
	.area _XINIT
	.area _DATA
	.area _DATA
	.area _BSS
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _waitpadup
	.globl _waitpad
	.globl _arand
	.globl _initarand
	.globl _rand
	.globl _puts
	.globl _printf
	.globl _OAMDMA
	.globl _PPUDATA
	.globl _PPUADDR
	.globl _PPUSCROLL
	.globl _OAMDATA
	.globl _OAMADDR
	.globl _PPUSTATUS
	.globl _PPUMASK
	.globl _PPUCTRL
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area _ZP      (PAG)
_main_sloc0_1_0:
	.ds 1
_main_sloc1_1_0:
	.ds 2
_main_sloc2_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area _BSS
_PPUCTRL	=	0x2000
_PPUMASK	=	0x2001
_PPUSTATUS	=	0x2002
_OAMADDR	=	0x2003
_OAMDATA	=	0x2004
_PPUSCROLL	=	0x2005
_PPUADDR	=	0x2006
_PPUDATA	=	0x2007
_OAMDMA	=	0x4014
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc0         Allocated with name '_main_sloc0_1_0'
;sloc1         Allocated with name '_main_sloc1_1_0'
;sloc2         Allocated with name '_main_sloc2_1_0'
;i             Allocated to registers 
;------------------------------------------------------------
;	src/testrand.c: 14: void main(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/testrand.c: 16: puts("press A...");
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>___str_0
	lda	#___str_0
	jsr	_puts
;	Raw cost for generated ic 5 : (7, 10.000000) count=1.000000
;	src/testrand.c: 17: waitpad(J_A);
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x80
	jsr	_waitpad
;	Raw cost for generated ic 7 : (5, 8.000000) count=1.000000
;	src/testrand.c: 18: initarand(sys_time);
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	_sys_time
	ldx	(_sys_time + 1)
	jsr	_initarand
;	Raw cost for generated ic 9 : (9, 14.000000) count=1.000000
;	src/testrand.c: 19: while(TRUE) {
;	genLabel
00103$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=18.750000
;	src/testrand.c: 20: waitpadup();
;	genCall
	jsr	_waitpadup
;	Raw cost for generated ic 13 : (3, 6.000000) count=18.750000
;	src/testrand.c: 21: for (uint8_t i = 0; i != 16; i++) 
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 24 : (0, 0.000000) count=18.750000
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_main_sloc0_1_0
;	Raw cost for generated ic 48 : (4, 5.000000) count=18.750000
;	genLabel
00106$:
;	Raw cost for generated ic 15 : (0, 0.000000) count=72.000000
;	genCmpEQorNE
	lda	*_main_sloc0_1_0
	cmp	#0x10
	beq	00101$
;	Raw cost for generated ic 16 : (9, 10.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 17 : (0, 0.000000) count=72.000000
;	src/testrand.c: 22: printf("r=%x a=%x\n", (uint16_t)rand(), (uint16_t)arand());
;	genCall
	jsr	_arand
;	assignResultValue
;	Raw cost for generated ic 20 : (3, 6.000000) count=54.000000
;	genCast
	sta	*_main_sloc1_1_0
	ldx	#0x00
	stx	*(_main_sloc1_1_0 + 1)
;	Raw cost for generated ic 21 : (6, 8.000000) count=54.000000
;	genCall
	jsr	_rand
;	assignResultValue
;	Raw cost for generated ic 22 : (3, 6.000000) count=54.000000
;	genCast
	sta	*_main_sloc2_1_0
	ldx	#0x00
	stx	*(_main_sloc2_1_0 + 1)
;	Raw cost for generated ic 23 : (6, 8.000000) count=54.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 25 : (0, 0.000000) count=54.000000
;	genIpush
	lda	*(_main_sloc1_1_0 + 1)
	pha
	lda	*_main_sloc1_1_0
	pha
;	Raw cost for generated ic 26 : (6, 12.000000) count=54.000000
;	genIpush
	lda	*(_main_sloc2_1_0 + 1)
	pha
	lda	*_main_sloc2_1_0
	pha
;	Raw cost for generated ic 27 : (6, 12.000000) count=54.000000
;	genIpush
	lda	#>___str_1
	pha
	lda	#___str_1
	pha
;	Raw cost for generated ic 28 : (6, 10.000000) count=54.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 29 : (9, 30.000000) count=54.000000
;	src/testrand.c: 21: for (uint8_t i = 0; i != 16; i++) 
;	genPlus
;	genPlusIncr
	inc	*_main_sloc0_1_0
;	Raw cost for generated ic 32 : (2, 5.000000) count=54.000000
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 34 : (3, 3.000000) count=54.000000
;	genLabel
00101$:
;	Raw cost for generated ic 35 : (0, 0.000000) count=18.000000
;	src/testrand.c: 23: puts("press A...");
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 37 : (0, 0.000000) count=18.000000
;	Raw cost for generated ic 38 : (0, 0.000000) count=18.000000
;	genCall
;	genSend
	ldx	#>___str_0
	lda	#___str_0
	jsr	_puts
;	Raw cost for generated ic 39 : (7, 10.000000) count=18.000000
;	src/testrand.c: 24: waitpad(J_A);
;	Raw cost for generated ic 40 : (0, 0.000000) count=18.000000
;	genCall
;	genSend
	lda	#0x80
	jsr	_waitpad
;	Raw cost for generated ic 41 : (5, 8.000000) count=18.000000
;	genGoto
	jmp	00103$
;	Raw cost for generated ic 42 : (3, 3.000000) count=18.000000
;	genLabel
;	Raw cost for generated ic 44 : (0, 0.000000) count=0.000000
;	src/testrand.c: 26: }
;	genEndFunction
	rts
;	Raw cost for generated ic 45 : (1, 6.000000) count=0.000000
	.area _CODE
___str_0:
	.ascii "press A..."
	.db 0x00
___str_1:
	.ascii "r=%x a=%x"
	.db 0x0a
	.db 0x00
	.area _XINIT
	.area _CABS    (ABS)
