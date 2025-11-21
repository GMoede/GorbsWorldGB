;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module banks_nonintrinsic
	
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
	.globl _hello_code
	.globl _main
	.globl _set_RAM_bank1
	.globl _set_RAM_bank0
	.globl _set_ROM_bank2
	.globl _set_ROM_bank1
	.globl _printf
	.globl _putchar
	.globl __switch_prg0
	.globl _add_num_wram
	.globl _data
	.globl __current_ram_bank
	.globl ___dummy_variable
	.globl _OAMDMA
	.globl _PPUDATA
	.globl _PPUADDR
	.globl _PPUSCROLL
	.globl _OAMDATA
	.globl _OAMADDR
	.globl _PPUSTATUS
	.globl _PPUMASK
	.globl _PPUCTRL
	.globl _add_num__ptr
	.globl _hello_rom_1
	.globl _hello_rom_2
	.globl _add_num_sram_0
	.globl _hello_sram_0
	.globl _add_num_sram_1b
	.globl _add_num_sram_1a
	.globl _hello_sram_1
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area _ZP      (PAG)
_main_sloc0_1_0:
	.ds 1
_main_sloc1_1_0:
	.ds 2
_main_sloc2_1_0:
	.ds 1
_main_sloc3_1_0:
	.ds 2
;--------------------------------------------------------
; DATA_1 ram data
;--------------------------------------------------------
	.area _DATA_1
_hello_sram_1::
	.ds 20
_add_num_sram_1a::
	.ds 2
_add_num_sram_1b::
	.ds 2
;--------------------------------------------------------
; DATA_0 ram data
;--------------------------------------------------------
	.area _DATA_0
_hello_sram_0::
	.ds 20
_add_num_sram_0::
	.ds 2
;--------------------------------------------------------
; CODE_2 rom data
;--------------------------------------------------------
	.area _CODE_2
_hello_rom_2:
	.ascii "hello from CODE_2"
	.db 0x0a
	.db 0x00
;--------------------------------------------------------
; CODE_1 rom data
;--------------------------------------------------------
	.area _CODE_1
_hello_rom_1:
	.ascii "hello from CODE_1"
	.db 0x0a
	.db 0x00
_add_num__ptr:
	.dw _add_num_sram_1a
	.dw _add_num_sram_1b
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
___dummy_variable::
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area _DATA
__current_ram_bank::
	.ds 1
_data::
	.ds 20
_add_num_wram::
	.ds 2
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
;	src/banks_nonintrinsic.c: 21: void set_ROM_bank1(void) NONBANKED { SWITCH_ROM(1); }
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function set_ROM_bank1
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_set_ROM_bank1:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x01
;	Raw cost for generated ic 3 : (5, 8.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	__switch_prg0
;	Raw cost for generated ic 5 : (1, 6.000000) count=1.000000
;	src/banks_nonintrinsic.c: 22: void set_ROM_bank2(void) NONBANKED { SWITCH_ROM(2); }
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function set_ROM_bank2
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_set_ROM_bank2:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x02
;	Raw cost for generated ic 3 : (5, 8.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	__switch_prg0
;	Raw cost for generated ic 5 : (1, 6.000000) count=1.000000
;	src/banks_nonintrinsic.c: 31: void set_RAM_bank0(void) NONBANKED { SWITCH_RAM_BANK(0); }
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function set_RAM_bank0
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_set_RAM_bank0:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	__current_ram_bank
;	Raw cost for generated ic 3 : (5, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 5 : (1, 6.000000) count=1.000000
;	src/banks_nonintrinsic.c: 32: void set_RAM_bank1(void) NONBANKED { SWITCH_RAM_BANK(1); }
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function set_RAM_bank1
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_set_RAM_bank1:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	__current_ram_bank
;	Raw cost for generated ic 3 : (5, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 5 : (1, 6.000000) count=1.000000
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;------------------------------------------------------------
;Allocation info for local variables in function 'set_ROM_bank1'
;------------------------------------------------------------
;------------------------------------------------------------
;Allocation info for local variables in function 'set_ROM_bank2'
;------------------------------------------------------------
;------------------------------------------------------------
;Allocation info for local variables in function 'set_RAM_bank0'
;------------------------------------------------------------
;------------------------------------------------------------
;Allocation info for local variables in function 'set_RAM_bank1'
;------------------------------------------------------------
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc0         Allocated with name '_main_sloc0_1_0'
;sloc1         Allocated with name '_main_sloc1_1_0'
;sloc2         Allocated with name '_main_sloc2_1_0'
;sloc3         Allocated with name '_main_sloc3_1_0'
;i             Allocated to registers 
;i             Allocated to registers 
;i             Allocated to registers 
;i             Allocated to registers 
;i             Allocated to registers 
;i             Allocated to registers 
;i             Allocated to registers 
;i             Allocated to registers 
;i             Allocated to registers 
;i             Allocated to registers 
;i             Allocated to registers 
;i             Allocated to registers 
;i             Allocated to registers 
;i             Allocated to registers 
;------------------------------------------------------------
;	src/banks_nonintrinsic.c: 50: void main(void) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/banks_nonintrinsic.c: 53: add_num_sram_0 = 2;
;	genCall
	jsr	_set_RAM_bank0
;	Raw cost for generated ic 472 : (3, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_add_num_sram_0
	ldx	#0x00
	stx	(_add_num_sram_0 + 1)
;	Raw cost for generated ic 3 : (10, 12.000000) count=1.000000
;	src/banks_nonintrinsic.c: 54: add_num_sram_1a = 4;
;	genCall
	jsr	_set_RAM_bank1
;	Raw cost for generated ic 473 : (3, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x04
	stx	_add_num_sram_1a
	ldx	#0x00
	stx	(_add_num_sram_1a + 1)
;	Raw cost for generated ic 5 : (10, 12.000000) count=1.000000
;	src/banks_nonintrinsic.c: 55: add_num_sram_1b = 8;
;	genAssign
;	genAssignLit
	ldx	#0x08
	stx	_add_num_sram_1b
	ldx	#0x00
	stx	(_add_num_sram_1b + 1)
;	Raw cost for generated ic 7 : (10, 12.000000) count=1.000000
;	src/banks_nonintrinsic.c: 58: for (int8_t i = 0; (hello_code[i]); i++) putchar(hello_code[i]);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	*_main_sloc0_1_0
;	Raw cost for generated ic 400 : (2, 3.000000) count=1.000000
;	genLabel
00119$:
;	Raw cost for generated ic 9 : (0, 0.000000) count=3.999997
;	genCast
;	genCopy
	ldx	#0x00
	lda	*_main_sloc0_1_0
	bpl	00350$
	dex
00350$:
;	Raw cost for generated ic 11 : (7, 9.600000) count=3.999997
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 12 : (0, 0.000000) count=3.999997
;	genPointerGet
;	setupDPTR
	clc
	adc	#<(_hello_code+0)
	sta	*(DPTR+0)
	txa
	adc	#>(_hello_code+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 13 : (14, 21.000000) count=3.999997
;	genIfx
;	genIfxJump : z
	beq	00101$
;	Raw cost for generated ic 14 : (5, 5.600000) count=3.999997
;	Raw cost for generated ic 21 : (0, 0.000000) count=2.999997
;	genCall
;	genSend
	jsr	_putchar
;	Raw cost for generated ic 22 : (3, 6.000000) count=2.999997
;	genPlus
;	genPlusIncr
	inc	*_main_sloc0_1_0
;	Raw cost for generated ic 25 : (2, 5.000000) count=2.999997
;	genGoto
	jmp	00119$
;	Raw cost for generated ic 27 : (3, 3.000000) count=2.999997
;	genLabel
00101$:
;	Raw cost for generated ic 28 : (0, 0.000000) count=0.999999
;	src/banks_nonintrinsic.c: 59: for (int8_t i = 0; (hello_rom_1[i]); i++) putchar(hello_rom_1[i]);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 31 : (0, 0.000000) count=0.999999
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_main_sloc0_1_0
;	Raw cost for generated ic 403 : (4, 5.000000) count=0.999999
;	genLabel
00122$:
;	Raw cost for generated ic 30 : (0, 0.000000) count=3.999993
;	genCast
;	genCopy
	ldx	#0x00
	lda	*_main_sloc0_1_0
	bpl	00353$
	dex
00353$:
;	Raw cost for generated ic 32 : (7, 9.600000) count=3.999993
;	genCall
	pha
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	jsr	_set_ROM_bank1
	pla
	tax
	pla
;	Raw cost for generated ic 474 : (13, 30.000000) count=3.999993
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 33 : (0, 0.000000) count=3.999993
;	genPointerGet
;	setupDPTR
	clc
	adc	#<(_hello_rom_1+0)
	sta	*(DPTR+0)
	txa
	adc	#>(_hello_rom_1+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 34 : (14, 21.000000) count=3.999993
;	genIfx
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 35 : (5, 5.600000) count=3.999993
;	Raw cost for generated ic 42 : (0, 0.000000) count=2.999994
;	genCall
;	genSend
	jsr	_putchar
;	Raw cost for generated ic 43 : (3, 6.000000) count=2.999994
;	genPlus
;	genPlusIncr
	inc	*_main_sloc0_1_0
;	Raw cost for generated ic 46 : (2, 5.000000) count=2.999994
;	genGoto
	jmp	00122$
;	Raw cost for generated ic 48 : (3, 3.000000) count=2.999994
;	genLabel
00102$:
;	Raw cost for generated ic 49 : (0, 0.000000) count=0.999998
;	src/banks_nonintrinsic.c: 60: for (int8_t i = 0; (hello_rom_2[i]); i++) putchar(hello_rom_2[i]);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 52 : (0, 0.000000) count=0.999998
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_main_sloc0_1_0
;	Raw cost for generated ic 406 : (4, 5.000000) count=0.999998
;	genLabel
00125$:
;	Raw cost for generated ic 51 : (0, 0.000000) count=3.999983
;	genCast
;	genCopy
	ldx	#0x00
	lda	*_main_sloc0_1_0
	bpl	00356$
	dex
00356$:
;	Raw cost for generated ic 53 : (7, 9.600000) count=3.999983
;	genCall
	pha
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	jsr	_set_ROM_bank2
	pla
	tax
	pla
;	Raw cost for generated ic 475 : (13, 30.000000) count=3.999983
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 54 : (0, 0.000000) count=3.999983
;	genPointerGet
;	setupDPTR
	clc
	adc	#<(_hello_rom_2+0)
	sta	*(DPTR+0)
	txa
	adc	#>(_hello_rom_2+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 55 : (14, 21.000000) count=3.999983
;	genIfx
;	genIfxJump : z
	beq	00103$
;	Raw cost for generated ic 56 : (5, 5.600000) count=3.999983
;	Raw cost for generated ic 63 : (0, 0.000000) count=2.999987
;	genCall
;	genSend
	jsr	_putchar
;	Raw cost for generated ic 64 : (3, 6.000000) count=2.999987
;	genPlus
;	genPlusIncr
	inc	*_main_sloc0_1_0
;	Raw cost for generated ic 67 : (2, 5.000000) count=2.999987
;	genGoto
	jmp	00125$
;	Raw cost for generated ic 69 : (3, 3.000000) count=2.999987
;	genLabel
00103$:
;	Raw cost for generated ic 70 : (0, 0.000000) count=0.999996
;	src/banks_nonintrinsic.c: 63: for (int8_t i = 0; (i < sizeof(hello_rom_1)); i++) hello_sram_0[i] = hello_rom_1[i];
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 77 : (0, 0.000000) count=0.999996
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_main_sloc0_1_0
;	Raw cost for generated ic 409 : (4, 5.000000) count=0.999996
;	genLabel
00128$:
;	Raw cost for generated ic 72 : (0, 0.000000) count=3.999950
;	genCmp
	lda	*_main_sloc0_1_0
	sec
	sbc	#0x13
	bvc	00361$
	bpl	00359$
	bmi	00362$
00361$:
	bmi	00359$
00362$:
	lda	#0x00
	jmp	00360$
00359$:
	lda	#0x01
00360$:
;	Raw cost for generated ic 73 : (20, 24.400002) count=3.999950
;	genCall
	pha
	jsr	_set_ROM_bank1
	pla
;	Raw cost for generated ic 476 : (5, 13.000000) count=3.999950
;	genIfx
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 74 : (5, 5.600000) count=3.999950
;	genCast
;	genCopy
	lda	*_main_sloc0_1_0
;	Raw cost for generated ic 78 : (2, 3.000000) count=2.999963
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
	stx	*(_main_sloc1_1_0 + 1)
	sta	*_main_sloc1_1_0
;	Raw cost for generated ic 79 : (6, 8.000000) count=2.999963
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 82 : (0, 0.000000) count=2.999963
;	genPointerGet
	tay
	lda	(_hello_rom_1+0+0x0000),y
	sta	*_main_sloc2_1_0
;	Raw cost for generated ic 83 : (6, 9.000000) count=2.999963
;	genCall
	jsr	_set_RAM_bank0
;	Raw cost for generated ic 477 : (3, 6.000000) count=2.999963
;	genPointerSet
;	setupDPTR
	clc
	lda	*_main_sloc1_1_0
	adc	#<(_hello_sram_0+0)
	sta	*(DPTR+0)
	lda	*(_main_sloc1_1_0 + 1)
	adc	#>(_hello_sram_0+0)
	sta	*(DPTR+1)
	lda	*_main_sloc2_1_0
	ldy	#0x00
	sta	[DPTR],y
;	Raw cost for generated ic 84 : (19, 29.000000) count=2.999963
;	genPlus
;	genPlusIncr
	inc	*_main_sloc0_1_0
;	Raw cost for generated ic 87 : (2, 5.000000) count=2.999963
;	genGoto
	jmp	00128$
;	Raw cost for generated ic 89 : (3, 3.000000) count=2.999963
;	genLabel
00104$:
;	Raw cost for generated ic 90 : (0, 0.000000) count=0.999987
;	src/banks_nonintrinsic.c: 64: for (int8_t i = 0; (i < 4); i++) hello_sram_0[i + 11] = data[i];
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 97 : (0, 0.000000) count=0.999987
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 101 : (0, 0.000000) count=0.999987
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_main_sloc2_1_0
;	Raw cost for generated ic 412 : (4, 5.000000) count=0.999987
;	genCall
	jsr	_set_RAM_bank0
;	Raw cost for generated ic 478 : (3, 6.000000) count=0.999987
;	genLabel
00131$:
;	Raw cost for generated ic 92 : (0, 0.000000) count=3.999868
;	genCmp
	lda	*_main_sloc2_1_0
	sec
	sbc	#0x04
	bvc	00366$
	bpl	00365$
	bmi	00105$
00366$:
	bpl	00105$
00365$:
;	Raw cost for generated ic 93 : (16, 20.400002) count=3.999868
;	skipping generated iCode
;	Raw cost for generated ic 94 : (0, 0.000000) count=3.999868
;	genPlus
;	genPlusIncr
	lda	*_main_sloc2_1_0
	clc
	adc	#0x0b
;	Raw cost for generated ic 98 : (5, 7.000000) count=2.999901
;	genCast
;	genCopy
;	Raw cost for generated ic 99 : (0, 0.000000) count=2.999901
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
	stx	*(_main_sloc1_1_0 + 1)
	sta	*_main_sloc1_1_0
;	Raw cost for generated ic 100 : (6, 8.000000) count=2.999901
;	genCast
;	genCopy
	lda	*_main_sloc2_1_0
;	Raw cost for generated ic 102 : (2, 3.000000) count=2.999901
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 103 : (0, 0.000000) count=2.999901
;	genPointerGet
	tay
	lda	(_data+0+0x0000),y
;	Raw cost for generated ic 104 : (4, 6.000000) count=2.999901
;	genPointerSet
	sta	*(REGTEMP+0)
;	setupDPTR
	clc
	lda	*_main_sloc1_1_0
	adc	#<(_hello_sram_0+0)
	sta	*(DPTR+0)
	lda	*(_main_sloc1_1_0 + 1)
	adc	#>(_hello_sram_0+0)
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x00
	sta	[DPTR],y
;	Raw cost for generated ic 105 : (21, 32.000000) count=2.999901
;	genPlus
;	genPlusIncr
	inc	*_main_sloc2_1_0
;	Raw cost for generated ic 108 : (2, 5.000000) count=2.999901
;	genGoto
	jmp	00131$
;	Raw cost for generated ic 110 : (3, 3.000000) count=2.999901
;	genLabel
00105$:
;	Raw cost for generated ic 111 : (0, 0.000000) count=0.999967
;	src/banks_nonintrinsic.c: 65: for (int8_t i = 0; (hello_sram_0[i]); i++) putchar(hello_sram_0[i]);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 114 : (0, 0.000000) count=0.999967
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_main_sloc2_1_0
;	Raw cost for generated ic 415 : (4, 5.000000) count=0.999967
;	genLabel
00134$:
;	Raw cost for generated ic 113 : (0, 0.000000) count=3.999663
;	genCast
;	genCopy
	ldx	#0x00
	lda	*_main_sloc2_1_0
	bpl	00368$
	dex
00368$:
;	Raw cost for generated ic 115 : (7, 9.600000) count=3.999663
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 116 : (0, 0.000000) count=3.999663
;	genPointerGet
;	setupDPTR
	clc
	adc	#<(_hello_sram_0+0)
	sta	*(DPTR+0)
	txa
	adc	#>(_hello_sram_0+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 117 : (14, 21.000000) count=3.999663
;	genIfx
;	genIfxJump : z
	beq	00106$
;	Raw cost for generated ic 118 : (5, 5.600000) count=3.999663
;	Raw cost for generated ic 125 : (0, 0.000000) count=2.999747
;	genCall
;	genSend
	jsr	_putchar
;	Raw cost for generated ic 126 : (3, 6.000000) count=2.999747
;	genCall
	jsr	_set_RAM_bank0
;	Raw cost for generated ic 479 : (3, 6.000000) count=2.999747
;	genPlus
;	genPlusIncr
	inc	*_main_sloc2_1_0
;	Raw cost for generated ic 129 : (2, 5.000000) count=2.999747
;	genGoto
	jmp	00134$
;	Raw cost for generated ic 131 : (3, 3.000000) count=2.999747
;	genLabel
00106$:
;	Raw cost for generated ic 132 : (0, 0.000000) count=0.999916
;	src/banks_nonintrinsic.c: 68: for (int8_t i = 0; (i < sizeof(hello_rom_2)); i++) hello_sram_1[i] = hello_rom_2[i];
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 139 : (0, 0.000000) count=0.999916
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_main_sloc2_1_0
;	Raw cost for generated ic 418 : (4, 5.000000) count=0.999916
;	genLabel
00137$:
;	Raw cost for generated ic 134 : (0, 0.000000) count=3.999177
;	genCmp
	lda	*_main_sloc2_1_0
	sec
	sbc	#0x13
	bvc	00373$
	bpl	00371$
	bmi	00374$
00373$:
	bmi	00371$
00374$:
	lda	#0x00
	jmp	00372$
00371$:
	lda	#0x01
00372$:
;	Raw cost for generated ic 135 : (20, 24.400002) count=3.999177
;	genCall
	pha
	jsr	_set_ROM_bank2
	pla
;	Raw cost for generated ic 480 : (5, 13.000000) count=3.999177
;	genIfx
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 136 : (5, 5.600000) count=3.999177
;	genCast
;	genCopy
	lda	*_main_sloc2_1_0
;	Raw cost for generated ic 140 : (2, 3.000000) count=2.999383
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
	stx	*(_main_sloc1_1_0 + 1)
	sta	*_main_sloc1_1_0
;	Raw cost for generated ic 141 : (6, 8.000000) count=2.999383
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 144 : (0, 0.000000) count=2.999383
;	genPointerGet
	tay
	lda	(_hello_rom_2+0+0x0000),y
	sta	*_main_sloc0_1_0
;	Raw cost for generated ic 145 : (6, 9.000000) count=2.999383
;	genCall
	jsr	_set_RAM_bank1
;	Raw cost for generated ic 481 : (3, 6.000000) count=2.999383
;	genPointerSet
;	setupDPTR
	clc
	lda	*_main_sloc1_1_0
	adc	#<(_hello_sram_1+0)
	sta	*(DPTR+0)
	lda	*(_main_sloc1_1_0 + 1)
	adc	#>(_hello_sram_1+0)
	sta	*(DPTR+1)
	lda	*_main_sloc0_1_0
	ldy	#0x00
	sta	[DPTR],y
;	Raw cost for generated ic 146 : (19, 29.000000) count=2.999383
;	genPlus
;	genPlusIncr
	inc	*_main_sloc2_1_0
;	Raw cost for generated ic 149 : (2, 5.000000) count=2.999383
;	genGoto
	jmp	00137$
;	Raw cost for generated ic 151 : (3, 3.000000) count=2.999383
;	genLabel
00107$:
;	Raw cost for generated ic 152 : (0, 0.000000) count=0.999794
;	src/banks_nonintrinsic.c: 69: for (int8_t i = 0; (i < 4); i++) hello_sram_1[i + 11] = data[i];
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 159 : (0, 0.000000) count=0.999794
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 163 : (0, 0.000000) count=0.999794
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_main_sloc2_1_0
;	Raw cost for generated ic 421 : (4, 5.000000) count=0.999794
;	genCall
	jsr	_set_RAM_bank1
;	Raw cost for generated ic 482 : (3, 6.000000) count=0.999794
;	genLabel
00140$:
;	Raw cost for generated ic 154 : (0, 0.000000) count=3.998088
;	genCmp
	lda	*_main_sloc2_1_0
	sec
	sbc	#0x04
	bvc	00378$
	bpl	00377$
	bmi	00108$
00378$:
	bpl	00108$
00377$:
;	Raw cost for generated ic 155 : (16, 20.400002) count=3.998088
;	skipping generated iCode
;	Raw cost for generated ic 156 : (0, 0.000000) count=3.998088
;	genPlus
;	genPlusIncr
	lda	*_main_sloc2_1_0
	clc
	adc	#0x0b
;	Raw cost for generated ic 160 : (5, 7.000000) count=2.998566
;	genCast
;	genCopy
;	Raw cost for generated ic 161 : (0, 0.000000) count=2.998566
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
	stx	*(_main_sloc1_1_0 + 1)
	sta	*_main_sloc1_1_0
;	Raw cost for generated ic 162 : (6, 8.000000) count=2.998566
;	genCast
;	genCopy
	lda	*_main_sloc2_1_0
;	Raw cost for generated ic 164 : (2, 3.000000) count=2.998566
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 165 : (0, 0.000000) count=2.998566
;	genPointerGet
	tay
	lda	(_data+0+0x0000),y
;	Raw cost for generated ic 166 : (4, 6.000000) count=2.998566
;	genPointerSet
	sta	*(REGTEMP+0)
;	setupDPTR
	clc
	lda	*_main_sloc1_1_0
	adc	#<(_hello_sram_1+0)
	sta	*(DPTR+0)
	lda	*(_main_sloc1_1_0 + 1)
	adc	#>(_hello_sram_1+0)
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x00
	sta	[DPTR],y
;	Raw cost for generated ic 167 : (21, 32.000000) count=2.998566
;	genPlus
;	genPlusIncr
	inc	*_main_sloc2_1_0
;	Raw cost for generated ic 170 : (2, 5.000000) count=2.998566
;	genGoto
	jmp	00140$
;	Raw cost for generated ic 172 : (3, 3.000000) count=2.998566
;	genLabel
00108$:
;	Raw cost for generated ic 173 : (0, 0.000000) count=0.999522
;	src/banks_nonintrinsic.c: 70: for (int8_t i = 0; (hello_sram_1[i]); i++) putchar(hello_sram_1[i]);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 176 : (0, 0.000000) count=0.999522
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_main_sloc2_1_0
;	Raw cost for generated ic 424 : (4, 5.000000) count=0.999522
;	genLabel
00143$:
;	Raw cost for generated ic 175 : (0, 0.000000) count=3.995788
;	genCast
;	genCopy
	ldx	#0x00
	lda	*_main_sloc2_1_0
	bpl	00380$
	dex
00380$:
;	Raw cost for generated ic 177 : (7, 9.600000) count=3.995788
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 178 : (0, 0.000000) count=3.995788
;	genPointerGet
;	setupDPTR
	clc
	adc	#<(_hello_sram_1+0)
	sta	*(DPTR+0)
	txa
	adc	#>(_hello_sram_1+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 179 : (14, 21.000000) count=3.995788
;	genIfx
;	genIfxJump : z
	beq	00109$
;	Raw cost for generated ic 180 : (5, 5.600000) count=3.995788
;	Raw cost for generated ic 187 : (0, 0.000000) count=2.996841
;	genCall
;	genSend
	jsr	_putchar
;	Raw cost for generated ic 188 : (3, 6.000000) count=2.996841
;	genCall
	jsr	_set_RAM_bank1
;	Raw cost for generated ic 483 : (3, 6.000000) count=2.996841
;	genPlus
;	genPlusIncr
	inc	*_main_sloc2_1_0
;	Raw cost for generated ic 191 : (2, 5.000000) count=2.996841
;	genGoto
	jmp	00143$
;	Raw cost for generated ic 193 : (3, 3.000000) count=2.996841
;	genLabel
00109$:
;	Raw cost for generated ic 194 : (0, 0.000000) count=0.998947
;	src/banks_nonintrinsic.c: 72: printf("once more...\n");
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 195 : (0, 0.000000) count=0.998947
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 196 : (0, 0.000000) count=0.998947
;	genIpush
	lda	#>___str_0
	pha
	lda	#___str_0
	pha
;	Raw cost for generated ic 197 : (6, 10.000000) count=0.998947
;	genCall
	jsr	_printf
	pla
	pla
;	Raw cost for generated ic 198 : (5, 14.000000) count=0.998947
;	src/banks_nonintrinsic.c: 74: for (int8_t i = 0; (hello_code[i]); i++) putchar(hello_code[i]);
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_main_sloc2_1_0
;	Raw cost for generated ic 427 : (4, 5.000000) count=0.998947
;	genLabel
00146$:
;	Raw cost for generated ic 200 : (0, 0.000000) count=3.991214
;	genCast
;	genCopy
	ldx	#0x00
	lda	*_main_sloc2_1_0
	bpl	00383$
	dex
00383$:
;	Raw cost for generated ic 202 : (7, 9.600000) count=3.991214
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 203 : (0, 0.000000) count=3.991214
;	genPointerGet
;	setupDPTR
	clc
	adc	#<(_hello_code+0)
	sta	*(DPTR+0)
	txa
	adc	#>(_hello_code+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 204 : (14, 21.000000) count=3.991214
;	genIfx
;	genIfxJump : z
	beq	00110$
;	Raw cost for generated ic 205 : (5, 5.600000) count=3.991214
;	Raw cost for generated ic 212 : (0, 0.000000) count=2.993410
;	genCall
;	genSend
	jsr	_putchar
;	Raw cost for generated ic 213 : (3, 6.000000) count=2.993410
;	genPlus
;	genPlusIncr
	inc	*_main_sloc2_1_0
;	Raw cost for generated ic 216 : (2, 5.000000) count=2.993410
;	genGoto
	jmp	00146$
;	Raw cost for generated ic 218 : (3, 3.000000) count=2.993410
;	genLabel
00110$:
;	Raw cost for generated ic 219 : (0, 0.000000) count=0.997803
;	src/banks_nonintrinsic.c: 75: for (int8_t i = 0; (hello_rom_1[i]); i++) putchar(hello_rom_1[i]);
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_main_sloc2_1_0
;	Raw cost for generated ic 430 : (4, 5.000000) count=0.997803
;	genLabel
00149$:
;	Raw cost for generated ic 221 : (0, 0.000000) count=3.982671
;	genCast
;	genCopy
	ldx	#0x00
	lda	*_main_sloc2_1_0
	bpl	00386$
	dex
00386$:
;	Raw cost for generated ic 223 : (7, 9.600000) count=3.982671
;	genCall
	pha
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	jsr	_set_ROM_bank1
	pla
	tax
	pla
;	Raw cost for generated ic 484 : (13, 30.000000) count=3.982671
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 224 : (0, 0.000000) count=3.982671
;	genPointerGet
;	setupDPTR
	clc
	adc	#<(_hello_rom_1+0)
	sta	*(DPTR+0)
	txa
	adc	#>(_hello_rom_1+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 225 : (14, 21.000000) count=3.982671
;	genIfx
;	genIfxJump : z
	beq	00111$
;	Raw cost for generated ic 226 : (5, 5.600000) count=3.982671
;	Raw cost for generated ic 233 : (0, 0.000000) count=2.987004
;	genCall
;	genSend
	jsr	_putchar
;	Raw cost for generated ic 234 : (3, 6.000000) count=2.987004
;	genPlus
;	genPlusIncr
	inc	*_main_sloc2_1_0
;	Raw cost for generated ic 237 : (2, 5.000000) count=2.987004
;	genGoto
	jmp	00149$
;	Raw cost for generated ic 239 : (3, 3.000000) count=2.987004
;	genLabel
00111$:
;	Raw cost for generated ic 240 : (0, 0.000000) count=0.995668
;	src/banks_nonintrinsic.c: 76: for (int8_t i = 0; (hello_rom_2[i]); i++) putchar(hello_rom_2[i]);
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_main_sloc2_1_0
;	Raw cost for generated ic 433 : (4, 5.000000) count=0.995668
;	genLabel
00152$:
;	Raw cost for generated ic 242 : (0, 0.000000) count=3.967657
;	genCast
;	genCopy
	ldx	#0x00
	lda	*_main_sloc2_1_0
	bpl	00389$
	dex
00389$:
;	Raw cost for generated ic 244 : (7, 9.600000) count=3.967657
;	genCall
	pha
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	jsr	_set_ROM_bank2
	pla
	tax
	pla
;	Raw cost for generated ic 485 : (13, 30.000000) count=3.967657
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 245 : (0, 0.000000) count=3.967657
;	genPointerGet
;	setupDPTR
	clc
	adc	#<(_hello_rom_2+0)
	sta	*(DPTR+0)
	txa
	adc	#>(_hello_rom_2+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 246 : (14, 21.000000) count=3.967657
;	genIfx
;	genIfxJump : z
	beq	00112$
;	Raw cost for generated ic 247 : (5, 5.600000) count=3.967657
;	Raw cost for generated ic 254 : (0, 0.000000) count=2.975743
;	genCall
;	genSend
	jsr	_putchar
;	Raw cost for generated ic 255 : (3, 6.000000) count=2.975743
;	genPlus
;	genPlusIncr
	inc	*_main_sloc2_1_0
;	Raw cost for generated ic 258 : (2, 5.000000) count=2.975743
;	genGoto
	jmp	00152$
;	Raw cost for generated ic 260 : (3, 3.000000) count=2.975743
;	genLabel
00112$:
;	Raw cost for generated ic 261 : (0, 0.000000) count=0.991914
;	src/banks_nonintrinsic.c: 77: for (int8_t i = 0; (hello_sram_0[i]); i++) putchar(hello_sram_0[i]);
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_main_sloc2_1_0
;	Raw cost for generated ic 436 : (4, 5.000000) count=0.991914
;	genLabel
00155$:
;	Raw cost for generated ic 263 : (0, 0.000000) count=3.942775
;	genCast
;	genCopy
	ldx	#0x00
	lda	*_main_sloc2_1_0
	bpl	00392$
	dex
00392$:
;	Raw cost for generated ic 265 : (7, 9.600000) count=3.942775
;	genCall
	pha
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	jsr	_set_RAM_bank0
	pla
	tax
	pla
;	Raw cost for generated ic 486 : (13, 30.000000) count=3.942775
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 266 : (0, 0.000000) count=3.942775
;	genPointerGet
;	setupDPTR
	clc
	adc	#<(_hello_sram_0+0)
	sta	*(DPTR+0)
	txa
	adc	#>(_hello_sram_0+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 267 : (14, 21.000000) count=3.942775
;	genIfx
;	genIfxJump : z
	beq	00113$
;	Raw cost for generated ic 268 : (5, 5.600000) count=3.942775
;	Raw cost for generated ic 275 : (0, 0.000000) count=2.957082
;	genCall
;	genSend
	jsr	_putchar
;	Raw cost for generated ic 276 : (3, 6.000000) count=2.957082
;	genPlus
;	genPlusIncr
	inc	*_main_sloc2_1_0
;	Raw cost for generated ic 279 : (2, 5.000000) count=2.957082
;	genGoto
	jmp	00155$
;	Raw cost for generated ic 281 : (3, 3.000000) count=2.957082
;	genLabel
00113$:
;	Raw cost for generated ic 282 : (0, 0.000000) count=0.985694
;	src/banks_nonintrinsic.c: 78: for (int8_t i = 0; (hello_sram_1[i]); i++) putchar(hello_sram_1[i]);
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_main_sloc2_1_0
;	Raw cost for generated ic 439 : (4, 5.000000) count=0.985694
;	genLabel
00158$:
;	Raw cost for generated ic 284 : (0, 0.000000) count=3.903811
;	genCast
;	genCopy
	ldx	#0x00
	lda	*_main_sloc2_1_0
	bpl	00395$
	dex
00395$:
;	Raw cost for generated ic 286 : (7, 9.600000) count=3.903811
;	genCall
	pha
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	jsr	_set_RAM_bank1
	pla
	tax
	pla
;	Raw cost for generated ic 487 : (13, 30.000000) count=3.903811
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 287 : (0, 0.000000) count=3.903811
;	genPointerGet
;	setupDPTR
	clc
	adc	#<(_hello_sram_1+0)
	sta	*(DPTR+0)
	txa
	adc	#>(_hello_sram_1+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 288 : (14, 21.000000) count=3.903811
;	genIfx
;	genIfxJump : z
	beq	00114$
;	Raw cost for generated ic 289 : (5, 5.600000) count=3.903811
;	Raw cost for generated ic 296 : (0, 0.000000) count=2.927858
;	genCall
;	genSend
	jsr	_putchar
;	Raw cost for generated ic 297 : (3, 6.000000) count=2.927858
;	genPlus
;	genPlusIncr
	inc	*_main_sloc2_1_0
;	Raw cost for generated ic 300 : (2, 5.000000) count=2.927858
;	genGoto
	jmp	00158$
;	Raw cost for generated ic 302 : (3, 3.000000) count=2.927858
;	genLabel
00114$:
;	Raw cost for generated ic 303 : (0, 0.000000) count=0.975953
;	src/banks_nonintrinsic.c: 80: printf("once more...\n");
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 305 : (0, 0.000000) count=0.975953
;	genIpush
	lda	#>___str_0
	pha
	lda	#___str_0
	pha
;	Raw cost for generated ic 306 : (6, 10.000000) count=0.975953
;	genCall
	jsr	_printf
	pla
	pla
;	Raw cost for generated ic 307 : (5, 14.000000) count=0.975953
;	src/banks_nonintrinsic.c: 82: printf("%s", hello_code);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 309 : (0, 0.000000) count=0.975953
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 310 : (0, 0.000000) count=0.975953
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 311 : (0, 0.000000) count=0.975953
;	genIpush
	lda	#>_hello_code
	pha
	lda	#_hello_code
	pha
;	Raw cost for generated ic 312 : (6, 10.000000) count=0.975953
;	genIpush
	lda	#>___str_1
	pha
	lda	#___str_1
	pha
;	Raw cost for generated ic 313 : (6, 10.000000) count=0.975953
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 314 : (7, 22.000000) count=0.975953
;	src/banks_nonintrinsic.c: 83: printf("%s", switch_to(hello_rom_1));
;	genCall
	jsr	_set_ROM_bank1
;	Raw cost for generated ic 488 : (3, 6.000000) count=0.975953
;	genPointerGet
;	genDataPointerGet
	lda	_hello_rom_1
	sta	___dummy_variable
;	Raw cost for generated ic 316 : (6, 8.000000) count=0.975953
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 319 : (0, 0.000000) count=0.975953
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 321 : (0, 0.000000) count=0.975953
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 323 : (0, 0.000000) count=0.975953
;	genIpush
	lda	#>_hello_rom_1
	pha
	lda	#_hello_rom_1
	pha
;	Raw cost for generated ic 324 : (6, 10.000000) count=0.975953
;	genIpush
	lda	#>___str_1
	pha
	lda	#___str_1
	pha
;	Raw cost for generated ic 325 : (6, 10.000000) count=0.975953
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 326 : (7, 22.000000) count=0.975953
;	src/banks_nonintrinsic.c: 84: printf("%s", switch_to(hello_rom_2));
;	genCall
	jsr	_set_ROM_bank2
;	Raw cost for generated ic 489 : (3, 6.000000) count=0.975953
;	genPointerGet
;	genDataPointerGet
	lda	_hello_rom_2
	sta	___dummy_variable
;	Raw cost for generated ic 328 : (6, 8.000000) count=0.975953
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 331 : (0, 0.000000) count=0.975953
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 333 : (0, 0.000000) count=0.975953
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 335 : (0, 0.000000) count=0.975953
;	genIpush
	lda	#>_hello_rom_2
	pha
	lda	#_hello_rom_2
	pha
;	Raw cost for generated ic 336 : (6, 10.000000) count=0.975953
;	genIpush
	lda	#>___str_1
	pha
	lda	#___str_1
	pha
;	Raw cost for generated ic 337 : (6, 10.000000) count=0.975953
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 338 : (7, 22.000000) count=0.975953
;	src/banks_nonintrinsic.c: 85: printf("%s", switch_to(hello_sram_0));
;	genCall
	jsr	_set_RAM_bank0
;	Raw cost for generated ic 490 : (3, 6.000000) count=0.975953
;	genPointerGet
;	genDataPointerGet
	lda	_hello_sram_0
	sta	___dummy_variable
;	Raw cost for generated ic 340 : (6, 8.000000) count=0.975953
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 343 : (0, 0.000000) count=0.975953
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 345 : (0, 0.000000) count=0.975953
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 347 : (0, 0.000000) count=0.975953
;	genIpush
	lda	#>_hello_sram_0
	pha
	lda	#_hello_sram_0
	pha
;	Raw cost for generated ic 348 : (6, 10.000000) count=0.975953
;	genIpush
	lda	#>___str_1
	pha
	lda	#___str_1
	pha
;	Raw cost for generated ic 349 : (6, 10.000000) count=0.975953
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 350 : (7, 22.000000) count=0.975953
;	src/banks_nonintrinsic.c: 86: printf("%s", switch_to(hello_sram_1));
;	genCall
	jsr	_set_RAM_bank1
;	Raw cost for generated ic 491 : (3, 6.000000) count=0.975953
;	genPointerGet
;	genDataPointerGet
	lda	_hello_sram_1
	sta	___dummy_variable
;	Raw cost for generated ic 352 : (6, 8.000000) count=0.975953
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 355 : (0, 0.000000) count=0.975953
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 357 : (0, 0.000000) count=0.975953
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 359 : (0, 0.000000) count=0.975953
;	genIpush
	lda	#>_hello_sram_1
	pha
	lda	#_hello_sram_1
	pha
;	Raw cost for generated ic 360 : (6, 10.000000) count=0.975953
;	genIpush
	lda	#>___str_1
	pha
	lda	#___str_1
	pha
;	Raw cost for generated ic 361 : (6, 10.000000) count=0.975953
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 362 : (7, 22.000000) count=0.975953
;	src/banks_nonintrinsic.c: 89: printf("1+2+4+8=0x%x", (int)(add_num_wram + add_num_sram_0 + (*add_num__ptr[0]) + (*add_num__ptr[1])));
;	genCall
	jsr	_set_RAM_bank0
;	Raw cost for generated ic 492 : (3, 6.000000) count=0.975953
;	genPlus
;	genPlusIncr
	lda	_add_num_wram
	clc
	adc	_add_num_sram_0
	sta	*_main_sloc1_1_0
	lda	(_add_num_wram + 1)
	adc	(_add_num_sram_0 + 1)
	sta	*(_main_sloc1_1_0 + 1)
;	Raw cost for generated ic 363 : (17, 24.000000) count=0.975953
;	genCall
	jsr	_set_ROM_bank1
;	Raw cost for generated ic 493 : (3, 6.000000) count=0.975953
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 364 : (0, 0.000000) count=0.975953
;	genPointerGet
;	genDataPointerGet
	lda	(_add_num__ptr + 1)
	sta	*(_main_sloc3_1_0 + 1)
	lda	_add_num__ptr
	sta	*_main_sloc3_1_0
;	Raw cost for generated ic 365 : (10, 14.000000) count=0.975953
;	genCall
	jsr	_set_RAM_bank1
;	Raw cost for generated ic 494 : (3, 6.000000) count=0.975953
;	genPointerGet
	ldy	#0x01
	lda	[*_main_sloc3_1_0],y
	pha
	dey
	lda	[*_main_sloc3_1_0],y
	sta	*_main_sloc3_1_0
	pla
	sta	*(_main_sloc3_1_0 + 1)
;	Raw cost for generated ic 366 : (13, 27.000000) count=0.975953
;	genCall
	jsr	_set_ROM_bank1
;	Raw cost for generated ic 495 : (3, 6.000000) count=0.975953
;	genPlus
;	genPlusIncr
	lda	*_main_sloc1_1_0
	clc
	adc	*_main_sloc3_1_0
	sta	*_main_sloc3_1_0
	lda	*(_main_sloc1_1_0 + 1)
	adc	*(_main_sloc3_1_0 + 1)
	sta	*(_main_sloc3_1_0 + 1)
;	Raw cost for generated ic 367 : (13, 20.000000) count=0.975953
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 369 : (0, 0.000000) count=0.975953
;	genPointerGet
;	genDataPointerGet
	lda	((_add_num__ptr + 0x0002) + 1)
	sta	*(_main_sloc1_1_0 + 1)
	lda	(_add_num__ptr + 0x0002)
	sta	*_main_sloc1_1_0
;	Raw cost for generated ic 370 : (10, 14.000000) count=0.975953
;	genCall
	jsr	_set_RAM_bank1
;	Raw cost for generated ic 496 : (3, 6.000000) count=0.975953
;	genPointerGet
	ldy	#0x01
	lda	[*_main_sloc1_1_0],y
	tax
	dey
	lda	[*_main_sloc1_1_0],y
;	Raw cost for generated ic 371 : (8, 16.000000) count=0.975953
;	genPlus
;	genPlusIncr
	clc
	adc	*_main_sloc3_1_0
	sta	*_main_sloc3_1_0
	txa
	adc	*(_main_sloc3_1_0 + 1)
;	Raw cost for generated ic 372 : (10, 16.000000) count=0.975953
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 373 : (0, 0.000000) count=0.975953
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 374 : (0, 0.000000) count=0.975953
;	genIpush
	sta	*(_main_sloc3_1_0 + 1)
	pha
	lda	*_main_sloc3_1_0
	pha
;	Raw cost for generated ic 375 : (6, 12.000000) count=0.975953
;	genIpush
	lda	#>___str_2
	pha
	lda	#___str_2
	pha
;	Raw cost for generated ic 376 : (6, 10.000000) count=0.975953
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 377 : (7, 22.000000) count=0.975953
;	src/banks_nonintrinsic.c: 92: while(1);
;	genLabel
00116$:
;	Raw cost for generated ic 380 : (0, 0.000000) count=30.018684
;	genGoto
	jmp	00116$
;	Raw cost for generated ic 381 : (3, 3.000000) count=30.018684
;	genLabel
;	Raw cost for generated ic 383 : (0, 0.000000) count=0.000000
;	src/banks_nonintrinsic.c: 93: }
;	genEndFunction
	rts
;	Raw cost for generated ic 384 : (1, 6.000000) count=0.000000
	.area _CODE
_hello_code:
	.ascii "hello from CODE"
	.db 0x0a
	.db 0x00
___str_0:
	.ascii "once more..."
	.db 0x0a
	.db 0x00
___str_1:
	.ascii "%s"
	.db 0x00
___str_2:
	.ascii "1+2+4+8=0x%x"
	.db 0x00
	.area _XINIT
__xinit___current_ram_bank:
	.db #0x00	; 0
__xinit__data:
	.ascii "DATA"
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
__xinit__add_num_wram:
	.dw #0x0001
	.area _CABS    (ABS)
