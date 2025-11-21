;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module banks_farptr
	
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
	.globl _run
	.globl b_some_bank2_proc2
	.globl _some_bank2_proc2
	.globl b_some_bank2_proc1
	.globl _some_bank2_proc1
	.globl b_some_bank2_proc0
	.globl _some_bank2_proc0
	.globl _to_far_ptr
	.globl ___call__banked
	.globl _printf
	.globl _res
	.globl _farptr_var3
	.globl _farptr_var2
	.globl _farptr_var1
	.globl _farptr_var0
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
_run_sloc0_1_0:
	.ds 2
_run_sloc1_1_0:
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
_farptr_var0::
	.ds 4
_farptr_var1::
	.ds 4
_farptr_var2::
	.ds 4
_farptr_var3::
	.ds 4
_res::
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
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;------------------------------------------------------------
;Allocation info for local variables in function 'run'
;------------------------------------------------------------
;sloc0         Allocated with name '_run_sloc0_1_0'
;sloc1         Allocated with name '_run_sloc1_1_0'
;------------------------------------------------------------
;	src/banks_farptr.c: 23: void run(void) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function run
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_run:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/banks_farptr.c: 25: farptr_var0 = to_far_ptr(some_bank2_proc1, BANK(some_bank2_proc1));
;	genCast
;	genCopy
	ldx	#>(_some_bank2_proc1)
	lda	#(_some_bank2_proc1)
;	Raw cost for generated ic 2 : (4, 4.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#___bank_some_bank2_proc1
;	Raw cost for generated ic 4 : (2, 2.000000) count=1.000000
;	genCast
	sty	*_run_sloc0_1_0
	pha
	lda	#0x00
	sta	*(_run_sloc0_1_0 + 1)
	pla
;	Raw cost for generated ic 5 : (8, 15.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldy	*(_run_sloc0_1_0 + 1)
	sty	(_to_far_ptr_PARM_2 + 1)
	ldy	*_run_sloc0_1_0
	sty	_to_far_ptr_PARM_2
;	Raw cost for generated ic 7 : (10, 14.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_to_far_ptr
;	assignResultValue
	sta	_farptr_var0
	stx	(_farptr_var0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_farptr_var0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_farptr_var0 + 3)
;	Raw cost for generated ic 8 : (19, 28.000000) count=1.000000
;	src/banks_farptr.c: 26: farptr_var1 = to_far_ptr(some_bank2_proc1, BANK(some_bank2_proc1));
;	genCast
;	genCopy
	ldx	#>(_some_bank2_proc1)
	lda	#(_some_bank2_proc1)
;	Raw cost for generated ic 11 : (4, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldy	*(_run_sloc0_1_0 + 1)
	sty	(_to_far_ptr_PARM_2 + 1)
	ldy	*_run_sloc0_1_0
	sty	_to_far_ptr_PARM_2
;	Raw cost for generated ic 16 : (10, 14.000000) count=1.000000
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_to_far_ptr
;	assignResultValue
	sta	_farptr_var1
	stx	(_farptr_var1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_farptr_var1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_farptr_var1 + 3)
;	Raw cost for generated ic 17 : (19, 28.000000) count=1.000000
;	src/banks_farptr.c: 27: farptr_var2 = to_far_ptr(some_bank2_proc0, BANK(some_bank2_proc0));
;	genCast
;	genCopy
	ldx	#>(_some_bank2_proc0)
	lda	#(_some_bank2_proc0)
;	Raw cost for generated ic 20 : (4, 4.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#___bank_some_bank2_proc0
;	Raw cost for generated ic 22 : (2, 2.000000) count=1.000000
;	genCast
	sty	*_run_sloc0_1_0
	pha
	lda	#0x00
	sta	*(_run_sloc0_1_0 + 1)
	pla
;	Raw cost for generated ic 23 : (8, 15.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldy	*(_run_sloc0_1_0 + 1)
	sty	(_to_far_ptr_PARM_2 + 1)
	ldy	*_run_sloc0_1_0
	sty	_to_far_ptr_PARM_2
;	Raw cost for generated ic 25 : (10, 14.000000) count=1.000000
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_to_far_ptr
;	assignResultValue
	sta	_farptr_var2
	stx	(_farptr_var2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_farptr_var2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_farptr_var2 + 3)
;	Raw cost for generated ic 26 : (19, 28.000000) count=1.000000
;	src/banks_farptr.c: 28: farptr_var2 = to_far_ptr(some_bank2_proc0, BANK(some_bank2_proc0));
;	genCast
;	genCopy
	ldx	#>(_some_bank2_proc0)
	lda	#(_some_bank2_proc0)
;	Raw cost for generated ic 29 : (4, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldy	*(_run_sloc0_1_0 + 1)
	sty	(_to_far_ptr_PARM_2 + 1)
	ldy	*_run_sloc0_1_0
	sty	_to_far_ptr_PARM_2
;	Raw cost for generated ic 34 : (10, 14.000000) count=1.000000
;	Raw cost for generated ic 33 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_to_far_ptr
;	assignResultValue
	sta	_farptr_var2
	stx	(_farptr_var2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_farptr_var2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_farptr_var2 + 3)
;	Raw cost for generated ic 35 : (19, 28.000000) count=1.000000
;	src/banks_farptr.c: 31: printf("FAR PTR0: %x:%x\n", (int)FAR_SEG(farptr_var0), (int)FAR_OFS(farptr_var0));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 38 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	ldx	(_farptr_var0 + 1)
	lda	_farptr_var0
;	Raw cost for generated ic 42 : (6, 8.000000) count=1.000000
;	genCast
;	genCopy
	sta	*_run_sloc0_1_0
	stx	*(_run_sloc0_1_0 + 1)
;	Raw cost for generated ic 43 : (4, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 47 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	ldx	((_farptr_var0 + 0x0002) + 1)
	lda	(_farptr_var0 + 0x0002)
;	Raw cost for generated ic 48 : (6, 8.000000) count=1.000000
;	genCast
;	genCopy
	sta	*_run_sloc1_1_0
	stx	*(_run_sloc1_1_0 + 1)
;	Raw cost for generated ic 49 : (4, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 50 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 51 : (0, 0.000000) count=1.000000
;	genIpush
	lda	*(_run_sloc0_1_0 + 1)
	pha
	lda	*_run_sloc0_1_0
	pha
;	Raw cost for generated ic 52 : (6, 12.000000) count=1.000000
;	genIpush
	lda	*(_run_sloc1_1_0 + 1)
	pha
	lda	*_run_sloc1_1_0
	pha
;	Raw cost for generated ic 53 : (6, 12.000000) count=1.000000
;	genIpush
	lda	#>___str_0
	pha
	lda	#___str_0
	pha
;	Raw cost for generated ic 54 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 55 : (9, 30.000000) count=1.000000
;	src/banks_farptr.c: 32: printf("FAR PTR1: %x:%x\n", (int)FAR_SEG(farptr_var1), (int)FAR_OFS(farptr_var1));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 56 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	ldx	(_farptr_var1 + 1)
	lda	_farptr_var1
;	Raw cost for generated ic 60 : (6, 8.000000) count=1.000000
;	genCast
;	genCopy
	sta	*_run_sloc1_1_0
	stx	*(_run_sloc1_1_0 + 1)
;	Raw cost for generated ic 61 : (4, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 65 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	ldx	((_farptr_var1 + 0x0002) + 1)
	lda	(_farptr_var1 + 0x0002)
;	Raw cost for generated ic 66 : (6, 8.000000) count=1.000000
;	genCast
;	genCopy
	sta	*_run_sloc0_1_0
	stx	*(_run_sloc0_1_0 + 1)
;	Raw cost for generated ic 67 : (4, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 68 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 69 : (0, 0.000000) count=1.000000
;	genIpush
	lda	*(_run_sloc1_1_0 + 1)
	pha
	lda	*_run_sloc1_1_0
	pha
;	Raw cost for generated ic 70 : (6, 12.000000) count=1.000000
;	genIpush
	lda	*(_run_sloc0_1_0 + 1)
	pha
	lda	*_run_sloc0_1_0
	pha
;	Raw cost for generated ic 71 : (6, 12.000000) count=1.000000
;	genIpush
	lda	#>___str_1
	pha
	lda	#___str_1
	pha
;	Raw cost for generated ic 72 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 73 : (9, 30.000000) count=1.000000
;	src/banks_farptr.c: 35: FAR_CALL(farptr_var2, void (*)(void));
;	genAssign
;	genAssignLit
;	genCopy
	lda	(_farptr_var2 + 3)
	sta	(___call_banked_ptr + 3)
	lda	(_farptr_var2 + 2)
	sta	(___call_banked_ptr + 2)
	lda	(_farptr_var2 + 1)
	sta	(___call_banked_ptr + 1)
	lda	_farptr_var2
	sta	___call_banked_ptr
;	Raw cost for generated ic 74 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___call__banked
;	Raw cost for generated ic 75 : (3, 6.000000) count=1.000000
;	src/banks_farptr.c: 38: res = some_bank2_proc1(100, 50);
;	Raw cost for generated ic 76 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 77 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x64
	ldx	#0x32
	jsr	___sdcc_bcall
	.db	b_some_bank2_proc1
	.dw 	_some_bank2_proc1-1
;	assignResultValue
;	Raw cost for generated ic 78 : (4, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	sta	_res
	stx	(_res + 1)
;	Raw cost for generated ic 80 : (6, 8.000000) count=1.000000
;	src/banks_farptr.c: 39: printf("CALL DIR: %d\n", res);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 81 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 82 : (0, 0.000000) count=1.000000
;	genIpush
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 83 : (7, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_2
	pha
	lda	#___str_2
	pha
;	Raw cost for generated ic 84 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 85 : (7, 22.000000) count=1.000000
;	src/banks_farptr.c: 42: res = some_bank2_proc2(100, 50, 1);
;	genIpush
	lda	#0x01
	pha
;	Raw cost for generated ic 86 : (3, 5.000000) count=1.000000
;	Raw cost for generated ic 87 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 88 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x64
	ldx	#0x32
	jsr	___sdcc_bcall
	.db	b_some_bank2_proc2
	.dw 	_some_bank2_proc2-1
;	assignResultValue
	sta	*(REGTEMP+0)
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 89 : (9, 14.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	sta	_res
	stx	(_res + 1)
;	Raw cost for generated ic 91 : (6, 8.000000) count=1.000000
;	src/banks_farptr.c: 43: printf("CALL DIR (RE): %d\n", res);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 92 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 93 : (0, 0.000000) count=1.000000
;	genIpush
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 94 : (7, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_3
	pha
	lda	#___str_3
	pha
;	Raw cost for generated ic 95 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 96 : (7, 22.000000) count=1.000000
;	src/banks_farptr.c: 50: res = FAR_CALL(farptr_var1, int (*)(uint8_t, uint8_t), 100, 50);
;	genAssign
;	genAssignLit
;	genCopy
	lda	(_farptr_var1 + 3)
	sta	(___call_banked_ptr + 3)
	lda	(_farptr_var1 + 2)
	sta	(___call_banked_ptr + 2)
	lda	(_farptr_var1 + 1)
	sta	(___call_banked_ptr + 1)
	lda	_farptr_var1
	sta	___call_banked_ptr
;	Raw cost for generated ic 97 : (24, 32.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>(___call__banked)
	sta	*(_run_sloc1_1_0 + 1)
	lda	#(___call__banked)
;	Raw cost for generated ic 98 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 99 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 100 : (0, 0.000000) count=1.000000
;	genPcall
	sta	*_run_sloc1_1_0
	sta	*(REGTEMP+0)
	lda	*(_run_sloc1_1_0 + 1)
	sta	*(REGTEMP+1)
;	genSend
	lda	#0x64
	ldx	#0x32
	jsr	__sdcc_indirect_jsr
;	assignResultValue
;	Raw cost for generated ic 101 : (15, 22.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	sta	_res
	stx	(_res + 1)
;	Raw cost for generated ic 103 : (6, 8.000000) count=1.000000
;	src/banks_farptr.c: 56: printf("CALL IND: %d\n", res);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 104 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 105 : (0, 0.000000) count=1.000000
;	genIpush
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 106 : (7, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_4
	pha
	lda	#___str_4
	pha
;	Raw cost for generated ic 107 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 108 : (7, 22.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 109 : (0, 0.000000) count=1.000000
;	src/banks_farptr.c: 57: }
;	genEndFunction
	rts
;	Raw cost for generated ic 110 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	src/banks_farptr.c: 59: void main(void) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/banks_farptr.c: 61: printf("START (bank=%d)\n", (int)CURRENT_BANK);
;	genCast
;	genCopy
	ldx	#0x00
	lda	__current_bank
;	Raw cost for generated ic 2 : (5, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genIpush
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 5 : (7, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_5
	pha
	lda	#___str_5
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 7 : (7, 22.000000) count=1.000000
;	src/banks_farptr.c: 62: run();
;	genCall
	jsr	_run
;	Raw cost for generated ic 8 : (3, 6.000000) count=1.000000
;	src/banks_farptr.c: 63: printf("DONE! (bank=%d)\n", (int)CURRENT_BANK);
;	genCast
;	genCopy
	ldx	#0x00
	lda	__current_bank
;	Raw cost for generated ic 9 : (5, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genIpush
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 12 : (7, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_6
	pha
	lda	#___str_6
	pha
;	Raw cost for generated ic 13 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 14 : (7, 22.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	src/banks_farptr.c: 64: }
;	genEndFunction
	rts
;	Raw cost for generated ic 16 : (1, 6.000000) count=1.000000
	.area _CODE
___str_0:
	.ascii "FAR PTR0: %x:%x"
	.db 0x0a
	.db 0x00
___str_1:
	.ascii "FAR PTR1: %x:%x"
	.db 0x0a
	.db 0x00
___str_2:
	.ascii "CALL DIR: %d"
	.db 0x0a
	.db 0x00
___str_3:
	.ascii "CALL DIR (RE): %d"
	.db 0x0a
	.db 0x00
___str_4:
	.ascii "CALL IND: %d"
	.db 0x0a
	.db 0x00
___str_5:
	.ascii "START (bank=%d)"
	.db 0x0a
	.db 0x00
___str_6:
	.ascii "DONE! (bank=%d)"
	.db 0x0a
	.db 0x00
	.area _XINIT
	.area _CABS    (ABS)
