;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module bank2code
	
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
	.globl b_some_bank2_proc2
	.globl _some_bank2_proc2
	.globl b___func_some_bank2_proc2
	.globl ___func_some_bank2_proc2
	.globl b_some_bank2_proc1
	.globl _some_bank2_proc1
	.globl b___func_some_bank2_proc1
	.globl ___func_some_bank2_proc1
	.globl b_some_bank2_proc0
	.globl _some_bank2_proc0
	.globl b___func_some_bank2_proc0
	.globl ___func_some_bank2_proc0
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
_local_bank2_proc_sloc0_1_0:
	.ds 2
_local_bank2_proc_sloc1_1_0:
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
_local_bank2_proc_PARM_2:
	.ds 2
_some_bank2_proc1_param2_10000_113:
	.ds 1
_some_bank2_proc1_param1_10000_113:
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
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_2
;------------------------------------------------------------
;Allocation info for local variables in function 'local_bank2_proc'
;------------------------------------------------------------
;sloc0         Allocated with name '_local_bank2_proc_sloc0_1_0'
;sloc1         Allocated with name '_local_bank2_proc_sloc1_1_0'
;param2        Allocated with name '_local_bank2_proc_PARM_2'
;param1        Allocated to registers a x 
;------------------------------------------------------------
;	src/bank2code.c: 7: static int local_bank2_proc(int param1, int param2) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function local_bank2_proc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_local_bank2_proc:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	src/bank2code.c: 8: printf("  sum: %d (bank=%d)\n", param1 + param2, (int)CURRENT_BANK);
;	genCast
	ldy	__current_bank
	sty	*_local_bank2_proc_sloc0_1_0
	ldy	#0x00
	sty	*(_local_bank2_proc_sloc0_1_0 + 1)
;	Raw cost for generated ic 3 : (9, 12.000000) count=1.000000
;	genPlus
;	genPlusIncr
	clc
	adc	_local_bank2_proc_PARM_2
	sta	*_local_bank2_proc_sloc1_1_0
	txa
	adc	(_local_bank2_proc_PARM_2 + 1)
	sta	*(_local_bank2_proc_sloc1_1_0 + 1)
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genIpush
	lda	*(_local_bank2_proc_sloc0_1_0 + 1)
	pha
	lda	*_local_bank2_proc_sloc0_1_0
	pha
;	Raw cost for generated ic 7 : (6, 12.000000) count=1.000000
;	genIpush
	lda	*(_local_bank2_proc_sloc1_1_0 + 1)
	pha
	lda	*_local_bank2_proc_sloc1_1_0
	pha
;	Raw cost for generated ic 8 : (6, 12.000000) count=1.000000
;	genIpush
	lda	#>___str_0
	pha
	lda	#___str_0
	pha
;	Raw cost for generated ic 9 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 10 : (9, 30.000000) count=1.000000
;	src/bank2code.c: 9: return (param1 + param2) << 1;
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	ldx	*(_local_bank2_proc_sloc1_1_0 + 1)
	lda	*_local_bank2_proc_sloc1_1_0
	stx	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 12 : (11, 19.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	src/bank2code.c: 10: }
;	genEndFunction
	rts
;	Raw cost for generated ic 15 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '__func_some_bank2_proc0'
;------------------------------------------------------------
;	src/bank2code.c: 12: BANKREF(some_bank2_proc0)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __func_some_bank2_proc0
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
	b___func_some_bank2_proc0	= 2
___func_some_bank2_proc0:
;	naked function: no prologue.
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	m6502_genInline
		.local b___func_some_bank2_proc0 
	 ___bank_some_bank2_proc0 = b___func_some_bank2_proc0 
	 .globl ___bank_some_bank2_proc0 
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genEndFunction
;	naked function: no epilogue.
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'some_bank2_proc0'
;------------------------------------------------------------
;	src/bank2code.c: 13: void some_bank2_proc0(void) BANKED {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function some_bank2_proc0
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
	b_some_bank2_proc0	= 2
_some_bank2_proc0:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/bank2code.c: 14: printf("some_bank2_proc0\n");
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
;	genLabel
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	src/bank2code.c: 15: }
;	genEndFunction
	rts
;	Raw cost for generated ic 7 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '__func_some_bank2_proc1'
;------------------------------------------------------------
;	src/bank2code.c: 17: BANKREF(some_bank2_proc1)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __func_some_bank2_proc1
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
	b___func_some_bank2_proc1	= 2
___func_some_bank2_proc1:
;	naked function: no prologue.
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	m6502_genInline
		.local b___func_some_bank2_proc1 
	 ___bank_some_bank2_proc1 = b___func_some_bank2_proc1 
	 .globl ___bank_some_bank2_proc1 
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genEndFunction
;	naked function: no epilogue.
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'some_bank2_proc1'
;------------------------------------------------------------
;param2        Allocated with name '_some_bank2_proc1_param2_10000_113'
;param1        Allocated with name '_some_bank2_proc1_param1_10000_113'
;------------------------------------------------------------
;	src/bank2code.c: 18: int some_bank2_proc1(uint8_t param1, uint8_t param2) BANKED {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function some_bank2_proc1
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
	b_some_bank2_proc1	= 2
_some_bank2_proc1:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_some_bank2_proc1_param1_10000_113
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	genReceive
	stx	_some_bank2_proc1_param2_10000_113
;	Raw cost for generated ic 3 : (3, 4.000000) count=1.000000
;	src/bank2code.c: 19: printf("some_bank2_proc1\n");
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#>___str_2
	pha
	lda	#___str_2
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
;	Raw cost for generated ic 7 : (5, 14.000000) count=1.000000
;	src/bank2code.c: 20: return local_bank2_proc(param1, param2);
;	genCast
;	genCopy
	ldx	#0x00
	lda	_some_bank2_proc1_param1_10000_113
;	Raw cost for generated ic 8 : (5, 6.000000) count=1.000000
;	genCast
	ldy	_some_bank2_proc1_param2_10000_113
	sty	_local_bank2_proc_PARM_2
	stx	(_local_bank2_proc_PARM_2 + 1)
;	Raw cost for generated ic 9 : (9, 12.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	assignResultValue
;	Raw cost for generated ic 12 : (3, 6.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	src/bank2code.c: 21: }
;	genEndFunction
	jmp	_local_bank2_proc
;	Raw cost for generated ic 15 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '__func_some_bank2_proc2'
;------------------------------------------------------------
;	src/bank2code.c: 23: BANKREF(some_bank2_proc2)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __func_some_bank2_proc2
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
	b___func_some_bank2_proc2	= 2
___func_some_bank2_proc2:
;	naked function: no prologue.
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	m6502_genInline
		.local b___func_some_bank2_proc2 
	 ___bank_some_bank2_proc2 = b___func_some_bank2_proc2 
	 .globl ___bank_some_bank2_proc2 
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genEndFunction
;	naked function: no epilogue.
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'some_bank2_proc2'
;------------------------------------------------------------
;param3        Allocated to stack - sp +9 +1 
;param2        Allocated to registers y 
;param1        Allocated to stack - sp +3 +1 
;sloc0         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	src/bank2code.c: 24: int some_bank2_proc2(uint8_t param1, uint8_t param2, uint8_t param3) BANKED REENTRANT {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function some_bank2_proc2
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 3 bytes.
	b_some_bank2_proc2	= 2
_some_bank2_proc2:
;	genReceive: size=1
;	pushreg: ofs=0
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (3, 9.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genReceive
	stx	*(REGTEMP+0)
	ldy	*(REGTEMP+0)
;	Raw cost for generated ic 3 : (4, 6.000000) count=1.000000
;	src/bank2code.c: 25: printf("some_bank2_proc2\n");
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genIpush
	sta	*(REGTEMP+0)
	tya
	pha
	lda	#>___str_3
	pha
	lda	#___str_3
	pha
;	Raw cost for generated ic 6 : (12, 21.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	sta	*(REGTEMP+0)
	pla
	tay
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 7 : (11, 26.000000) count=1.000000
;	src/bank2code.c: 26: return local_bank2_proc(param1, param2 * param3);
;	genCast
	tsx
	lda	0x103,x
	sta	0x101,x
	lda	#0x00
	sta	0x102,x
;	Raw cost for generated ic 8 : (12, 18.000000) count=1.000000
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tya
	sta	*(REGTEMP+0)
	lda	0x109,x
	tax
	lda	*(REGTEMP+0)
	jsr	__muluchar
;	assignResultValue
	sta	_local_bank2_proc_PARM_2
	stx	(_local_bank2_proc_PARM_2 + 1)
;	Raw cost for generated ic 18 : (18, 28.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tsx
	lda	0x102,x
	tax
	stx	*(REGTEMP+0)
	tsx
	lda	0x101,x
	php
	ldx	*(REGTEMP+0)
	plp
	jsr	_local_bank2_proc
;	assignResultValue
;	Raw cost for generated ic 12 : (18, 33.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	src/bank2code.c: 27: }
;	genEndFunction
	sta	*(REGTEMP+0)
	pla
	pla
	pla
	lda	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 15 : (8, 24.000000) count=1.000000
	.area _CODE_2
___str_0:
	.ascii "  sum: %d (bank=%d)"
	.db 0x0a
	.db 0x00
___str_1:
	.ascii "some_bank2_proc0"
	.db 0x0a
	.db 0x00
___str_2:
	.ascii "some_bank2_proc1"
	.db 0x0a
	.db 0x00
___str_3:
	.ascii "some_bank2_proc2"
	.db 0x0a
	.db 0x00
	.area _XINIT
	.area _CABS    (ABS)
