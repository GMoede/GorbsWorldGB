;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module banks
	
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
	.globl _bank_fixed
	.globl b_bank_3
	.globl _bank_3
	.globl b_bank_2
	.globl _bank_2
	.globl b_bank_1
	.globl _bank_1
	.globl _puts
	.globl _printf
	.globl _var_internal
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
_var_internal::
	.ds 2
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
;	src/banks.c: 18: void bank_fixed(void) NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function bank_fixed
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_bank_fixed:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/banks.c: 20: puts("I'm in fixed ROM");
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>___str_0
	lda	#___str_0
;	Raw cost for generated ic 5 : (7, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	src/banks.c: 21: }
;	genEndFunction
	jmp	_puts
;	Raw cost for generated ic 7 : (1, 6.000000) count=1.000000
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;------------------------------------------------------------
;Allocation info for local variables in function 'bank_fixed'
;------------------------------------------------------------
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	src/banks.c: 23: void main(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/banks.c: 25: puts("Program Start...");
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>___str_1
	lda	#___str_1
	jsr	_puts
;	Raw cost for generated ic 5 : (7, 10.000000) count=1.000000
;	src/banks.c: 29: var_internal = 1;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_var_internal
	dex
	stx	(_var_internal + 1)
;	Raw cost for generated ic 7 : (9, 12.000000) count=1.000000
;	src/banks.c: 31: var_0 = 2;
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_var_0
	ldx	#0x00
	stx	(_var_0 + 1)
;	Raw cost for generated ic 9 : (10, 12.000000) count=1.000000
;	src/banks.c: 33: var_1 = 3;
;	genAssign
;	genAssignLit
	ldx	#0x03
	stx	_var_1
	ldx	#0x00
	stx	(_var_1 + 1)
;	Raw cost for generated ic 11 : (10, 12.000000) count=1.000000
;	src/banks.c: 35: var_2 = 4;
;	genAssign
;	genAssignLit
	ldx	#0x04
	stx	_var_2
	ldx	#0x00
	stx	(_var_2 + 1)
;	Raw cost for generated ic 13 : (10, 12.000000) count=1.000000
;	src/banks.c: 37: var_3 = 5;
;	genAssign
;	genAssignLit
	ldx	#0x05
	stx	_var_3
	ldx	#0x00
	stx	(_var_3 + 1)
;	Raw cost for generated ic 15 : (10, 12.000000) count=1.000000
;	src/banks.c: 39: bank_fixed();
;	genCall
	jsr	_bank_fixed
;	Raw cost for generated ic 16 : (3, 6.000000) count=1.000000
;	src/banks.c: 40: bank_1();
;	genCall
	jsr	___sdcc_bcall
	.db	b_bank_1
	.dw 	_bank_1-1
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	src/banks.c: 41: bank_2();
;	genCall
	jsr	___sdcc_bcall
	.db	b_bank_2
	.dw 	_bank_2-1
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	src/banks.c: 42: bank_3();
;	genCall
	jsr	___sdcc_bcall
	.db	b_bank_3
	.dw 	_bank_3-1
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	src/banks.c: 44: printf("Var is %u\n", var_internal);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 20 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	genIpush
	lda	(_var_internal + 1)
	pha
	lda	_var_internal
	pha
;	Raw cost for generated ic 22 : (8, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_2
	pha
	lda	#___str_2
	pha
;	Raw cost for generated ic 23 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 24 : (7, 22.000000) count=1.000000
;	src/banks.c: 46: printf("Var_0 is %u\n", var_0);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 26 : (0, 0.000000) count=1.000000
;	genIpush
	lda	(_var_0 + 1)
	pha
	lda	_var_0
	pha
;	Raw cost for generated ic 27 : (8, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_3
	pha
	lda	#___str_3
	pha
;	Raw cost for generated ic 28 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 29 : (7, 22.000000) count=1.000000
;	src/banks.c: 48: printf("Var_1 is %u\n", var_1);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 30 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 31 : (0, 0.000000) count=1.000000
;	genIpush
	lda	(_var_1 + 1)
	pha
	lda	_var_1
	pha
;	Raw cost for generated ic 32 : (8, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_4
	pha
	lda	#___str_4
	pha
;	Raw cost for generated ic 33 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 34 : (7, 22.000000) count=1.000000
;	src/banks.c: 50: printf("Var_2 is %u\n", var_2);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 35 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 36 : (0, 0.000000) count=1.000000
;	genIpush
	lda	(_var_2 + 1)
	pha
	lda	_var_2
	pha
;	Raw cost for generated ic 37 : (8, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_5
	pha
	lda	#___str_5
	pha
;	Raw cost for generated ic 38 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 39 : (7, 22.000000) count=1.000000
;	src/banks.c: 52: printf("Var_3 is %u\n", var_3);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 40 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 41 : (0, 0.000000) count=1.000000
;	genIpush
	lda	(_var_3 + 1)
	pha
	lda	_var_3
	pha
;	Raw cost for generated ic 42 : (8, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_6
	pha
	lda	#___str_6
	pha
;	Raw cost for generated ic 43 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 44 : (7, 22.000000) count=1.000000
;	src/banks.c: 54: puts("The End...");
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 45 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 46 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 47 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>___str_7
	lda	#___str_7
;	Raw cost for generated ic 48 : (7, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 49 : (0, 0.000000) count=1.000000
;	src/banks.c: 55: }
;	genEndFunction
	jmp	_puts
;	Raw cost for generated ic 50 : (1, 6.000000) count=1.000000
	.area _CODE
___str_0:
	.ascii "I'm in fixed ROM"
	.db 0x00
___str_1:
	.ascii "Program Start..."
	.db 0x00
___str_2:
	.ascii "Var is %u"
	.db 0x0a
	.db 0x00
___str_3:
	.ascii "Var_0 is %u"
	.db 0x0a
	.db 0x00
___str_4:
	.ascii "Var_1 is %u"
	.db 0x0a
	.db 0x00
___str_5:
	.ascii "Var_2 is %u"
	.db 0x0a
	.db 0x00
___str_6:
	.ascii "Var_3 is %u"
	.db 0x0a
	.db 0x00
___str_7:
	.ascii "The End..."
	.db 0x00
	.area _XINIT
	.area _CABS    (ABS)
