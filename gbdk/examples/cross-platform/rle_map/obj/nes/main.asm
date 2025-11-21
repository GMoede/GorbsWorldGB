;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module main
	
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
	.globl b___func_map_compressed
	.globl ___func_map_compressed
	.globl b___func_map_tiles
	.globl ___func_map_tiles
	.globl _rle_decompress
	.globl _rle_init
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _vsync
	.globl _datapos
	.globl _scrollpos
	.globl _data
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
_data::
	.ds 18
_main_map_x_column_40001_114:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area _DATA
_scrollpos::
	.ds 2
_datapos::
	.ds 1
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
;Allocation info for local variables in function '__func_map_tiles'
;------------------------------------------------------------
;	src/main.c: 8: INCBIN(map_tiles, "res/map_tiles.bin")
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __func_map_tiles
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
	b___func_map_tiles	= 0
___func_map_tiles:
;	naked function: no prologue.
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	m6502_genInline
		_map_tiles::
	 1$:
	 .incbin "res/map_tiles.bin" 
	 2$:
	 ___size_map_tiles = (2$-1$) 
	 .globl ___size_map_tiles 
	 .local b___func_map_tiles 
	 ___bank_map_tiles = b___func_map_tiles 
	 .globl ___bank_map_tiles 
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genEndFunction
;	naked function: no epilogue.
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '__func_map_compressed'
;------------------------------------------------------------
;	src/main.c: 15: INCBIN(map_compressed, "res/map.bin.rle")
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __func_map_compressed
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
	b___func_map_compressed	= 0
___func_map_compressed:
;	naked function: no prologue.
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	m6502_genInline
		_map_compressed::
	 1$:
	 .incbin "res/map.bin.rle" 
	 2$:
	 ___size_map_compressed = (2$-1$) 
	 .globl ___size_map_compressed 
	 .local b___func_map_compressed 
	 ___bank_map_compressed = b___func_map_compressed 
	 .globl ___bank_map_compressed 
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genEndFunction
;	naked function: no epilogue.
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc0         Allocated with name '_main_sloc0_1_0'
;i             Allocated to registers 
;__300000009   Allocated to registers 
;__300000010   Allocated to registers 
;x             Allocated to registers 
;y             Allocated to registers 
;map_x_column  Allocated with name '_main_map_x_column_40001_114'
;------------------------------------------------------------
;	src/main.c: 22: void main(void) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/main.c: 28: HIDE_LEFT_COLUMN;
;	genAnd
	lda	_shadow_PPUMASK
	and	#0xf9
	sta	_shadow_PPUMASK
;	Raw cost for generated ic 4 : (8, 10.000000) count=1.000000
;	src/main.c: 30: SHOW_BKG;
;	genOr
	lda	_shadow_PPUMASK
	ora	#0x08
	sta	_shadow_PPUMASK
;	Raw cost for generated ic 7 : (8, 10.000000) count=1.000000
;	src/main.c: 33: set_bkg_data(0, INCBIN_SIZE(map_tiles) >> 4, map_tiles);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#>___size_map_tiles
	lda	#___size_map_tiles
;	Raw cost for generated ic 10 : (4, 4.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
;	Raw cost for generated ic 11 : (16, 34.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#>_map_tiles
	stx	(_set_bkg_data_PARM_3 + 1)
	ldx	#_map_tiles
	stx	_set_bkg_data_PARM_3
;	Raw cost for generated ic 14 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tax
	lda	#0x00
	jsr	_set_bkg_data
;	Raw cost for generated ic 18 : (6, 10.000000) count=1.000000
;	src/main.c: 36: rle_init(map_compressed);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 20 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_map_compressed
	lda	#_map_compressed
	jsr	_rle_init
;	Raw cost for generated ic 22 : (7, 10.000000) count=1.000000
;	src/main.c: 41: for (uint8_t i = 0; (i != DEVICE_SCREEN_WIDTH + 1); i++) {
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 29 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_main_sloc0_1_0
;	Raw cost for generated ic 126 : (4, 5.000000) count=1.000000
;	genLabel
00113$:
;	Raw cost for generated ic 24 : (0, 0.000000) count=3.999997
;	genCmpEQorNE
	lda	*_main_sloc0_1_0
	cmp	#0x21
	beq	00103$
;	Raw cost for generated ic 25 : (9, 10.600000) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 26 : (0, 0.000000) count=3.999997
;	src/main.c: 42: rle_decompress(data, MAP_DATA_HEIGHT);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 30 : (0, 0.000000) count=2.999997
;	genAssign
;	genAssignLit
	ldx	#0x12
	stx	_rle_decompress_PARM_2
;	Raw cost for generated ic 32 : (5, 6.000000) count=2.999997
;	Raw cost for generated ic 31 : (0, 0.000000) count=2.999997
;	genCall
;	genSend
	ldx	#>_data
	lda	#_data
	jsr	_rle_decompress
;	Raw cost for generated ic 33 : (7, 10.000000) count=2.999997
;	src/main.c: 47: set_bkg_tiles(i & (DEVICE_SCREEN_BUFFER_WIDTH-1), 0, 1, MAP_DATA_HEIGHT, data);
;	genAnd
	lda	*_main_sloc0_1_0
	and	#0x1f
;	Raw cost for generated ic 34 : (4, 5.000000) count=2.999997
;	genCast
;	genCopy
	ldx	#>_data
	stx	(_set_bkg_tiles_PARM_5 + 1)
	ldx	#_data
	stx	_set_bkg_tiles_PARM_5
;	Raw cost for generated ic 36 : (10, 12.000000) count=2.999997
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_set_bkg_tiles_PARM_3
;	Raw cost for generated ic 39 : (5, 6.000000) count=2.999997
;	genAssign
;	genAssignLit
	ldx	#0x12
	stx	_set_bkg_tiles_PARM_4
;	Raw cost for generated ic 40 : (5, 6.000000) count=2.999997
;	Raw cost for generated ic 37 : (0, 0.000000) count=2.999997
;	Raw cost for generated ic 38 : (0, 0.000000) count=2.999997
;	genCall
;	genSend
	ldx	#0x00
	jsr	_set_bkg_tiles
;	Raw cost for generated ic 42 : (5, 8.000000) count=2.999997
;	src/main.c: 41: for (uint8_t i = 0; (i != DEVICE_SCREEN_WIDTH + 1); i++) {
;	genPlus
;	genPlusIncr
	inc	*_main_sloc0_1_0
;	Raw cost for generated ic 45 : (2, 5.000000) count=2.999997
;	genGoto
	jmp	00113$
;	Raw cost for generated ic 47 : (3, 3.000000) count=2.999997
;	genLabel
00103$:
;	Raw cost for generated ic 48 : (0, 0.000000) count=0.999999
;	src/main.c: 51: datapos = 0;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_datapos
;	Raw cost for generated ic 50 : (5, 6.000000) count=0.999999
;	src/main.c: 52: scrollpos = 1;
;	genAssign
;	genAssignLit
	inx
	stx	_scrollpos
	dex
	stx	(_scrollpos + 1)
;	Raw cost for generated ic 52 : (8, 12.000000) count=0.999999
;	src/main.c: 53: while(TRUE) {
;	genLabel
00109$:
;	Raw cost for generated ic 55 : (0, 0.000000) count=68.918907
;	src/main.c: 55: vsync();
;	genCall
	jsr	_vsync
;	Raw cost for generated ic 56 : (3, 6.000000) count=68.918907
;	src/main.c: 60: scrollpos++;
;	genPlus
;	genPlusIncr
	inc	_scrollpos
	bne	00152$
	inc	(_scrollpos + 1)
00152$:
;	Raw cost for generated ic 58 : (8, 14.600000) count=68.918907
;	src/main.c: 61: move_bkg(scrollpos, 0);
;	genCast
;	genCopy
	lda	_scrollpos
	sta	_bkg_scroll_x
;	Raw cost for generated ic 62 : (6, 9.000000) count=68.918907
;	../../../include/nes/nes.h: 976: bkg_scroll_y = (uint8_t)(y >= 240 ? (y - 240) : y);
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
	stx	_bkg_scroll_y
;	Raw cost for generated ic 78 : (5, 7.000000) count=68.918907
;	src/main.c: 65: if ((scrollpos & 0x07u) == 0) {
;	genAssign
;	genAssignLit
;	genCopy
	ldx	(_scrollpos + 1)
	lda	_scrollpos
;	Raw cost for generated ic 80 : (6, 8.000000) count=68.918907
;	genAnd
	sta	*(REGTEMP+0)
	and	#0x07
	php
	lda	*(REGTEMP+0)
	plp
;	genIfxJump : z
	bne	00109$
;	Raw cost for generated ic 81 : (15, 23.200001) count=68.918907
;	skipping generated iCode
;	Raw cost for generated ic 82 : (0, 0.000000) count=68.918907
;	src/main.c: 69: datapos = (scrollpos >> 3);
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 85 : (13, 27.000000) count=17.229727
;	genCast
;	genCopy
;	Raw cost for generated ic 86 : (0, 0.000000) count=17.229727
;	genAssign
;	genAssignLit
;	genCopy
	sta	_datapos
;	Raw cost for generated ic 88 : (3, 4.000000) count=17.229727
;	src/main.c: 70: uint8_t map_x_column = (datapos + DEVICE_SCREEN_WIDTH) & (DEVICE_SCREEN_BUFFER_WIDTH-1);
;	genCast
;	genCopy
;	Raw cost for generated ic 89 : (0, 0.000000) count=17.229727
;	genPlus
;	genPlusIncr
	clc
	adc	#0x20
;	Raw cost for generated ic 90 : (3, 4.000000) count=17.229727
;	genAnd
	and	#0x1f
	sta	_main_map_x_column_40001_114
;	Raw cost for generated ic 91 : (5, 6.000000) count=17.229727
;	src/main.c: 75: if (!rle_decompress(data, MAP_DATA_HEIGHT)) {
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 93 : (0, 0.000000) count=17.229727
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 94 : (0, 0.000000) count=17.229727
;	genAssign
;	genAssignLit
	ldx	#0x12
	stx	_rle_decompress_PARM_2
;	Raw cost for generated ic 96 : (5, 6.000000) count=17.229727
;	Raw cost for generated ic 95 : (0, 0.000000) count=17.229727
;	genCall
;	genSend
	ldx	#>_data
	lda	#_data
	jsr	_rle_decompress
;	assignResultValue
;	Raw cost for generated ic 97 : (7, 10.000000) count=17.229727
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00105$
;	Raw cost for generated ic 98 : (7, 7.600000) count=17.229727
;	src/main.c: 76: rle_init(map_compressed);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 102 : (0, 0.000000) count=12.922290
;	Raw cost for generated ic 103 : (0, 0.000000) count=12.922290
;	genCall
;	genSend
	ldx	#>_map_compressed
	lda	#_map_compressed
	jsr	_rle_init
;	Raw cost for generated ic 104 : (7, 10.000000) count=12.922290
;	src/main.c: 77: rle_decompress(data, MAP_DATA_HEIGHT);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 106 : (0, 0.000000) count=12.922290
;	genAssign
;	genAssignLit
	ldx	#0x12
	stx	_rle_decompress_PARM_2
;	Raw cost for generated ic 108 : (5, 6.000000) count=12.922290
;	Raw cost for generated ic 107 : (0, 0.000000) count=12.922290
;	genCall
;	genSend
	ldx	#>_data
	lda	#_data
	jsr	_rle_decompress
;	Raw cost for generated ic 109 : (7, 10.000000) count=12.922290
;	genLabel
00105$:
;	Raw cost for generated ic 110 : (0, 0.000000) count=17.229727
;	src/main.c: 83: set_bkg_tiles(map_x_column, 0, 1, MAP_DATA_HEIGHT, data);
;	genCast
;	genCopy
	lda	#>_data
	sta	(_set_bkg_tiles_PARM_5 + 1)
	lda	#_data
	sta	_set_bkg_tiles_PARM_5
;	Raw cost for generated ic 112 : (10, 12.000000) count=17.229727
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_set_bkg_tiles_PARM_3
;	Raw cost for generated ic 115 : (5, 6.000000) count=17.229727
;	genAssign
;	genAssignLit
	ldx	#0x12
	stx	_set_bkg_tiles_PARM_4
;	Raw cost for generated ic 116 : (5, 6.000000) count=17.229727
;	Raw cost for generated ic 113 : (0, 0.000000) count=17.229727
;	Raw cost for generated ic 114 : (0, 0.000000) count=17.229727
;	genCall
;	genSend
	lda	_main_map_x_column_40001_114
	ldx	#0x00
	jsr	_set_bkg_tiles
;	Raw cost for generated ic 118 : (8, 12.000000) count=17.229727
;	genGoto
	jmp	00109$
;	Raw cost for generated ic 120 : (3, 3.000000) count=17.229727
;	genLabel
;	Raw cost for generated ic 122 : (0, 0.000000) count=0.000000
;	src/main.c: 86: }
;	genEndFunction
	rts
;	Raw cost for generated ic 123 : (1, 6.000000) count=0.000000
	.area _CODE
	.area _XINIT
__xinit__scrollpos:
	.dw #0x0000
__xinit__datapos:
	.db #0x00	; 0
	.area _CABS    (ABS)
