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
	.globl _some_const_var_0
	.globl _main
	.globl _bank_fixed
	.globl b_func_4
	.globl _func_4
	.globl b_func_3
	.globl _func_3
	.globl b_func_2
	.globl _func_2
	.globl b_func_1
	.globl _func_1
	.globl _puts
	.globl _printf
	.globl __switch_prg0
	.globl _vsync
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
_main__saved_bank_10000_112:
	.ds 1
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
;	src/banks.c: 17: void bank_fixed(void) NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function bank_fixed
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_bank_fixed:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/banks.c: 19: puts("I'm in fixed ROM");
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
;	src/banks.c: 20: }
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
;sloc0         Allocated with name '_main_sloc0_1_0'
;_saved_bank   Allocated with name '_main__saved_bank_10000_112'
;------------------------------------------------------------
;	src/banks.c: 22: void main(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/banks.c: 29: printf("Program Start...\n\n");
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#>___str_1
	pha
	lda	#___str_1
	pha
;	Raw cost for generated ic 4 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
;	Raw cost for generated ic 5 : (5, 14.000000) count=1.000000
;	src/banks.c: 32: bank_fixed();
;	genCall
	jsr	_bank_fixed
;	Raw cost for generated ic 6 : (3, 6.000000) count=1.000000
;	src/banks.c: 34: func_1();
;	genCall
	jsr	___sdcc_bcall
	.db	b_func_1
	.dw 	_func_1-1
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	src/banks.c: 35: func_2();
;	genCall
	jsr	___sdcc_bcall
	.db	b_func_2
	.dw 	_func_2-1
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	src/banks.c: 36: func_3();
;	genCall
	jsr	___sdcc_bcall
	.db	b_func_3
	.dw 	_func_3-1
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	src/banks.c: 37: func_4();
;	genCall
	jsr	___sdcc_bcall
	.db	b_func_4
	.dw 	_func_4-1
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	src/banks.c: 39: printf("\n");
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#>___str_2
	pha
	lda	#___str_2
	pha
;	Raw cost for generated ic 13 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
;	Raw cost for generated ic 14 : (5, 14.000000) count=1.000000
;	src/banks.c: 43: printf("Const0= %u nonbanked\n", some_const_var_0);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	pha
;	Raw cost for generated ic 18 : (4, 8.000000) count=1.000000
;	genIpush
	lda	#>___str_3
	pha
	lda	#___str_3
	pha
;	Raw cost for generated ic 19 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 20 : (7, 22.000000) count=1.000000
;	src/banks.c: 45: SWITCH_ROM(BANK(some_const_var_1));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#___bank_some_const_var_1
;	Raw cost for generated ic 22 : (2, 2.000000) count=1.000000
;	Raw cost for generated ic 23 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	__switch_prg0
;	Raw cost for generated ic 24 : (3, 6.000000) count=1.000000
;	src/banks.c: 46: printf("Const1= %u in bank %hu\n", some_const_var_1, BANK(some_const_var_1));
;	genCast
;	genCopy
	lda	#___bank_some_const_var_1
;	Raw cost for generated ic 26 : (2, 2.000000) count=1.000000
;	genCast
	ldx	_some_const_var_1
	stx	*_main_sloc0_1_0
	ldx	#0x00
	stx	*(_main_sloc0_1_0 + 1)
;	Raw cost for generated ic 27 : (9, 12.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 28 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 29 : (0, 0.000000) count=1.000000
;	genIpush
	pha
;	Raw cost for generated ic 30 : (1, 3.000000) count=1.000000
;	genIpush
	lda	*(_main_sloc0_1_0 + 1)
	pha
	lda	*_main_sloc0_1_0
	pha
;	Raw cost for generated ic 31 : (6, 12.000000) count=1.000000
;	genIpush
	lda	#>___str_4
	pha
	lda	#___str_4
	pha
;	Raw cost for generated ic 32 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 33 : (8, 26.000000) count=1.000000
;	src/banks.c: 47: SWITCH_ROM(BANK(some_const_var_2));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 34 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#___bank_some_const_var_2
;	Raw cost for generated ic 35 : (2, 2.000000) count=1.000000
;	Raw cost for generated ic 36 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	__switch_prg0
;	Raw cost for generated ic 37 : (3, 6.000000) count=1.000000
;	src/banks.c: 48: printf("Const2= %u in bank %hu\n", some_const_var_2, BANK(some_const_var_2));
;	genCast
;	genCopy
	lda	#___bank_some_const_var_2
;	Raw cost for generated ic 39 : (2, 2.000000) count=1.000000
;	genCast
	ldx	_some_const_var_2
	stx	*_main_sloc0_1_0
	ldx	#0x00
	stx	*(_main_sloc0_1_0 + 1)
;	Raw cost for generated ic 40 : (9, 12.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 41 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 42 : (0, 0.000000) count=1.000000
;	genIpush
	pha
;	Raw cost for generated ic 43 : (1, 3.000000) count=1.000000
;	genIpush
	lda	*(_main_sloc0_1_0 + 1)
	pha
	lda	*_main_sloc0_1_0
	pha
;	Raw cost for generated ic 44 : (6, 12.000000) count=1.000000
;	genIpush
	lda	#>___str_5
	pha
	lda	#___str_5
	pha
;	Raw cost for generated ic 45 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 46 : (8, 26.000000) count=1.000000
;	src/banks.c: 49: SWITCH_ROM(BANK(some_const_var_3));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 47 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#___bank_some_const_var_3
;	Raw cost for generated ic 48 : (2, 2.000000) count=1.000000
;	Raw cost for generated ic 49 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	__switch_prg0
;	Raw cost for generated ic 50 : (3, 6.000000) count=1.000000
;	src/banks.c: 50: printf("Const3= %u in bank %hu\n", some_const_var_3, BANK(some_const_var_3));
;	genCast
;	genCopy
	lda	#___bank_some_const_var_3
;	Raw cost for generated ic 52 : (2, 2.000000) count=1.000000
;	genCast
	ldx	_some_const_var_3
	stx	*_main_sloc0_1_0
	ldx	#0x00
	stx	*(_main_sloc0_1_0 + 1)
;	Raw cost for generated ic 53 : (9, 12.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 54 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 55 : (0, 0.000000) count=1.000000
;	genIpush
	pha
;	Raw cost for generated ic 56 : (1, 3.000000) count=1.000000
;	genIpush
	lda	*(_main_sloc0_1_0 + 1)
	pha
	lda	*_main_sloc0_1_0
	pha
;	Raw cost for generated ic 57 : (6, 12.000000) count=1.000000
;	genIpush
	lda	#>___str_6
	pha
	lda	#___str_6
	pha
;	Raw cost for generated ic 58 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 59 : (8, 26.000000) count=1.000000
;	src/banks.c: 56: _saved_bank = CURRENT_BANK;
;	genAssign
;	genAssignLit
;	genCopy
	lda	__current_bank
	sta	_main__saved_bank_10000_112
;	Raw cost for generated ic 60 : (6, 8.000000) count=1.000000
;	src/banks.c: 59: SWITCH_ROM(BANK(some_const_var_4));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 61 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#___bank_some_const_var_4
;	Raw cost for generated ic 62 : (2, 2.000000) count=1.000000
;	Raw cost for generated ic 63 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	__switch_prg0
;	Raw cost for generated ic 64 : (3, 6.000000) count=1.000000
;	src/banks.c: 60: printf("Const4= %u in bank %hu\n", some_const_var_4, BANK(some_const_var_4));
;	genCast
;	genCopy
	lda	#___bank_some_const_var_4
;	Raw cost for generated ic 66 : (2, 2.000000) count=1.000000
;	genCast
	ldx	_some_const_var_4
	stx	*_main_sloc0_1_0
	ldx	#0x00
	stx	*(_main_sloc0_1_0 + 1)
;	Raw cost for generated ic 67 : (9, 12.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 68 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 69 : (0, 0.000000) count=1.000000
;	genIpush
	pha
;	Raw cost for generated ic 70 : (1, 3.000000) count=1.000000
;	genIpush
	lda	*(_main_sloc0_1_0 + 1)
	pha
	lda	*_main_sloc0_1_0
	pha
;	Raw cost for generated ic 71 : (6, 12.000000) count=1.000000
;	genIpush
	lda	#>___str_7
	pha
	lda	#___str_7
	pha
;	Raw cost for generated ic 72 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 73 : (8, 26.000000) count=1.000000
;	src/banks.c: 63: SWITCH_ROM(_saved_bank);
;	Raw cost for generated ic 74 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	_main__saved_bank_10000_112
	jsr	__switch_prg0
;	Raw cost for generated ic 75 : (6, 10.000000) count=1.000000
;	src/banks.c: 67: printf("\n");
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 77 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#>___str_2
	pha
	lda	#___str_2
	pha
;	Raw cost for generated ic 78 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
;	Raw cost for generated ic 79 : (5, 14.000000) count=1.000000
;	src/banks.c: 68: puts("The End...");
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 80 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 81 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 82 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>___str_8
	lda	#___str_8
	jsr	_puts
;	Raw cost for generated ic 83 : (7, 10.000000) count=1.000000
;	src/banks.c: 71: while(1) {
;	genLabel
00102$:
;	Raw cost for generated ic 86 : (0, 0.000000) count=72.000000
;	src/banks.c: 74: vsync();
;	genCall
	jsr	_vsync
;	Raw cost for generated ic 87 : (3, 6.000000) count=72.000000
;	genGoto
	jmp	00102$
;	Raw cost for generated ic 88 : (3, 3.000000) count=72.000000
;	genLabel
;	Raw cost for generated ic 90 : (0, 0.000000) count=0.000000
;	src/banks.c: 76: }
;	genEndFunction
	rts
;	Raw cost for generated ic 91 : (1, 6.000000) count=0.000000
	.area _CODE
_some_const_var_0:
	.db #0x00	; 0
___str_0:
	.ascii "I'm in fixed ROM"
	.db 0x00
___str_1:
	.ascii "Program Start..."
	.db 0x0a
	.db 0x0a
	.db 0x00
___str_2:
	.db 0x0a
	.db 0x00
___str_3:
	.ascii "Const0= %u nonbanked"
	.db 0x0a
	.db 0x00
___str_4:
	.ascii "Const1= %u in bank %hu"
	.db 0x0a
	.db 0x00
___str_5:
	.ascii "Const2= %u in bank %hu"
	.db 0x0a
	.db 0x00
___str_6:
	.ascii "Const3= %u in bank %hu"
	.db 0x0a
	.db 0x00
___str_7:
	.ascii "Const4= %u in bank %hu"
	.db 0x0a
	.db 0x00
___str_8:
	.ascii "The End..."
	.db 0x00
	.area _XINIT
	.area _CABS    (ABS)
