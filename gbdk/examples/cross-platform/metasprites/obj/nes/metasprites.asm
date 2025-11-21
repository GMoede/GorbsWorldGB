;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module metasprites
	
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
	.globl _green_pal
	.globl _cyan_pal
	.globl _pink_pal
	.globl _gray_pal
	.globl _reverse_bits
	.globl _pattern
	.globl _main
	.globl _load_and_duplicate_sprite_tile_data
	.globl _get_tile_offset
	.globl _set_tile
	.globl _hide_sprites_range
	.globl _fill_bkg_rect
	.globl _set_sprite_data
	.globl _set_bkg_data
	.globl _display_off
	.globl _display_on
	.globl _vsync
	.globl _joypad
	.globl _set_sprite_palette
	.globl _old_joyp
	.globl _joyp
	.globl _set_tile_PARM_4
	.globl _set_tile_PARM_3
	.globl _set_tile_PARM_2
	.globl _num_tiles
	.globl _flipped_data
	.globl _rot
	.globl _idx
	.globl _PosF
	.globl _SpdY
	.globl _SpdX
	.globl _PosY
	.globl _PosX
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
_load_and_duplicate_sprite_tile_data_sloc0_1_0:
	.ds 2
_load_and_duplicate_sprite_tile_data_sloc1_1_0:
	.ds 1
_main_sloc0_1_0:
	.ds 2
_main_sloc1_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_set_tile_sloc0_1_0:
	.ds 2
_set_tile_sloc1_1_0:
	.ds 2
_set_tile_sloc2_1_0:
	.ds 2
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
_PosX::
	.ds 2
_PosY::
	.ds 2
_SpdX::
	.ds 2
_SpdY::
	.ds 2
_PosF::
	.ds 1
_idx::
	.ds 1
_rot::
	.ds 1
_flipped_data::
	.ds 16
_num_tiles::
	.ds 2
_set_tile_PARM_2:
	.ds 2
_set_tile_PARM_3:
	.ds 1
_set_tile_PARM_4:
	.ds 1
_set_tile_tile_idx_10000_126:
	.ds 1
_set_tile_y_30000_129:
	.ds 2
_main___500010012_50001_170:
	.ds 1
_main_x_60001_171:
	.ds 2
_main_y_60001_171:
	.ds 2
_main___500010020_50001_173:
	.ds 1
_main___500010022_50001_173:
	.ds 2
_main_y_60001_174:
	.ds 2
_main___500010028_50001_176:
	.ds 1
_main___500010030_50001_176:
	.ds 2
_main___500010031_50001_176:
	.ds 2
_main___500010036_50001_179:
	.ds 1
_main___500010038_50001_179:
	.ds 2
_main___500010039_50001_179:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area _DATA
_joyp::
	.ds 1
_old_joyp::
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
;Allocation info for local variables in function 'set_tile'
;------------------------------------------------------------
;data          Allocated with name '_set_tile_PARM_2'
;flip_x        Allocated with name '_set_tile_PARM_3'
;flip_y        Allocated with name '_set_tile_PARM_4'
;tile_idx      Allocated with name '_set_tile_tile_idx_10000_126'
;i             Allocated to registers 
;y             Allocated with name '_set_tile_y_30000_129'
;sloc0         Allocated with name '_set_tile_sloc0_1_0'
;sloc1         Allocated with name '_set_tile_sloc1_1_0'
;sloc2         Allocated with name '_set_tile_sloc2_1_0'
;------------------------------------------------------------
;	src/metasprites.c: 94: void set_tile(uint8_t tile_idx, uint8_t* data, uint8_t flip_x, uint8_t flip_y)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function set_tile
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_set_tile:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_set_tile_tile_idx_10000_126
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	src/metasprites.c: 97: for(i = 0; i < TILE_HEIGHT; i++)
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 41 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_set_tile_sloc0_1_0
	stx	*(_set_tile_sloc0_1_0 + 1)
;	Raw cost for generated ic 75 : (6, 8.000000) count=1.000000
;	genLabel
00102$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=3.999932
;	src/metasprites.c: 99: size_t y = flip_y ? (TILE_HEIGHT-1-i) : i; 
;	genIfx
	lda	_set_tile_PARM_4
;	genIfxJump : z
	beq	00106$
;	Raw cost for generated ic 5 : (8, 9.600000) count=3.999932
;	genMinus
;	genMinusDec
	lda	#0x07
	sec
	sbc	*_set_tile_sloc0_1_0
	pha
	lda	#0x00
	sbc	*(_set_tile_sloc0_1_0 + 1)
	tax
	pla
;	Raw cost for generated ic 6 : (12, 21.000000) count=2.999943
;	genGoto
	jmp	00107$
;	Raw cost for generated ic 8 : (3, 3.000000) count=2.999943
;	genLabel
00106$:
;	Raw cost for generated ic 9 : (0, 0.000000) count=0.999983
;	genAssign
;	genAssignLit
;	genCopy
	ldx	*(_set_tile_sloc0_1_0 + 1)
	lda	*_set_tile_sloc0_1_0
;	Raw cost for generated ic 10 : (4, 6.000000) count=0.999983
;	genLabel
00107$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=3.999926
;	genAssign
;	genAssignLit
;	genCopy
	sta	_set_tile_y_30000_129
	stx	(_set_tile_y_30000_129 + 1)
;	Raw cost for generated ic 12 : (6, 8.000000) count=3.999926
;	src/metasprites.c: 100: flipped_data[2*i] = flip_x ? reverse_bits[data[2*y]] : data[2*y];
;	genCast
;	genCopy
	lda	*_set_tile_sloc0_1_0
;	Raw cost for generated ic 14 : (2, 3.000000) count=3.999926
;	genLeftShift
;	genLeftShiftLiteral
;	genlshOne
	asl	a
;	Raw cost for generated ic 15 : (1, 2.000000) count=3.999926
;	genCast
;	genCopy
;	Raw cost for generated ic 16 : (0, 0.000000) count=3.999926
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
	stx	*(_set_tile_sloc1_1_0 + 1)
	sta	*_set_tile_sloc1_1_0
;	Raw cost for generated ic 17 : (6, 8.000000) count=3.999926
;	genIfx
	lda	_set_tile_PARM_3
;	genIfxJump : z
	beq	00108$
;	Raw cost for generated ic 18 : (8, 9.600000) count=3.999926
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	ldx	(_set_tile_y_30000_129 + 1)
	lda	_set_tile_y_30000_129
	stx	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 20 : (13, 21.000000) count=2.999938
;	genPlus
;	genPlusIncr
	clc
	adc	_set_tile_PARM_2
	sta	*_set_tile_sloc2_1_0
	txa
	adc	(_set_tile_PARM_2 + 1)
	sta	*(_set_tile_sloc2_1_0 + 1)
;	Raw cost for generated ic 21 : (12, 18.000000) count=2.999938
;	genPointerGet
	ldy	#0x00
	lda	[*_set_tile_sloc2_1_0],y
;	Raw cost for generated ic 22 : (4, 7.000000) count=2.999938
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 23 : (2, 2.000000) count=2.999938
;	genPointerGet
	tay
	lda	(_reverse_bits+0+0x0000),y
;	Raw cost for generated ic 24 : (4, 6.000000) count=2.999938
;	genGoto
	jmp	00109$
;	Raw cost for generated ic 26 : (3, 3.000000) count=2.999938
;	genLabel
00108$:
;	Raw cost for generated ic 27 : (0, 0.000000) count=0.999975
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	ldx	(_set_tile_y_30000_129 + 1)
	lda	_set_tile_y_30000_129
	stx	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 28 : (13, 21.000000) count=0.999975
;	genPlus
;	genPlusIncr
	clc
	adc	_set_tile_PARM_2
	sta	*_set_tile_sloc2_1_0
	txa
	adc	(_set_tile_PARM_2 + 1)
	sta	*(_set_tile_sloc2_1_0 + 1)
;	Raw cost for generated ic 29 : (12, 18.000000) count=0.999975
;	genPointerGet
	ldy	#0x00
	lda	[*_set_tile_sloc2_1_0],y
;	Raw cost for generated ic 30 : (4, 7.000000) count=0.999975
;	genLabel
00109$:
;	Raw cost for generated ic 32 : (0, 0.000000) count=3.999913
;	genPointerSet
	sta	*(REGTEMP+0)
;	setupDPTR
	clc
	lda	*_set_tile_sloc1_1_0
	adc	#<(_flipped_data+0)
	sta	*(DPTR+0)
	lda	*(_set_tile_sloc1_1_0 + 1)
	adc	#>(_flipped_data+0)
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x00
	sta	[DPTR],y
;	Raw cost for generated ic 33 : (21, 32.000000) count=3.999913
;	src/metasprites.c: 101: flipped_data[2*i+1] = flip_x ? reverse_bits[data[2*y+1]] : data[2*y+1];
;	genCast
;	genCopy
	lda	*_set_tile_sloc0_1_0
;	Raw cost for generated ic 35 : (2, 3.000000) count=3.999913
;	genLeftShift
;	genLeftShiftLiteral
;	genlshOne
	asl	a
	tax
;	Raw cost for generated ic 36 : (2, 4.000000) count=3.999913
;	genPlus
;	genPlusIncr
	inx
;	Raw cost for generated ic 37 : (1, 2.000000) count=3.999913
;	genCast
;	genCopy
;	Raw cost for generated ic 38 : (0, 0.000000) count=3.999913
;	genAssign
;	genAssignLit
;	genCopy
	sty	*(_set_tile_sloc2_1_0 + 1)
	stx	*_set_tile_sloc2_1_0
;	Raw cost for generated ic 39 : (4, 6.000000) count=3.999913
;	genIfx
	lda	_set_tile_PARM_3
;	genIfxJump : z
	beq	00110$
;	Raw cost for generated ic 40 : (8, 9.600000) count=3.999913
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	ldx	(_set_tile_y_30000_129 + 1)
	lda	_set_tile_y_30000_129
	stx	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 42 : (13, 21.000000) count=2.999934
;	genPlus
;	genPlusIncr
	clc
	adc	#0x01
	bcc	00149$
	inx
00149$:
;	Raw cost for generated ic 43 : (6, 8.600000) count=2.999934
;	genPlus
;	genPlusIncr
	clc
	adc	_set_tile_PARM_2
	sta	*_set_tile_sloc1_1_0
	txa
	adc	(_set_tile_PARM_2 + 1)
	sta	*(_set_tile_sloc1_1_0 + 1)
;	Raw cost for generated ic 44 : (12, 18.000000) count=2.999934
;	genPointerGet
	lda	[*_set_tile_sloc1_1_0],y
;	Raw cost for generated ic 45 : (2, 5.000000) count=2.999934
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 46 : (2, 2.000000) count=2.999934
;	genPointerGet
	tay
	lda	(_reverse_bits+0+0x0000),y
;	Raw cost for generated ic 47 : (4, 6.000000) count=2.999934
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 49 : (3, 3.000000) count=2.999934
;	genLabel
00110$:
;	Raw cost for generated ic 50 : (0, 0.000000) count=0.999975
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	ldx	(_set_tile_y_30000_129 + 1)
	lda	_set_tile_y_30000_129
	stx	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 51 : (13, 21.000000) count=0.999975
;	genPlus
;	genPlusIncr
	clc
	adc	#0x01
	bcc	00150$
	inx
00150$:
;	Raw cost for generated ic 52 : (6, 8.600000) count=0.999975
;	genPlus
;	genPlusIncr
	clc
	adc	_set_tile_PARM_2
	sta	*_set_tile_sloc1_1_0
	txa
	adc	(_set_tile_PARM_2 + 1)
	sta	*(_set_tile_sloc1_1_0 + 1)
;	Raw cost for generated ic 53 : (12, 18.000000) count=0.999975
;	genPointerGet
	ldy	#0x00
	lda	[*_set_tile_sloc1_1_0],y
;	Raw cost for generated ic 54 : (4, 7.000000) count=0.999975
;	genLabel
00111$:
;	Raw cost for generated ic 56 : (0, 0.000000) count=3.999909
;	genPointerSet
	sta	*(REGTEMP+0)
;	setupDPTR
	clc
	lda	*_set_tile_sloc2_1_0
	adc	#<(_flipped_data+0)
	sta	*(DPTR+0)
	lda	*(_set_tile_sloc2_1_0 + 1)
	adc	#>(_flipped_data+0)
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x00
	sta	[DPTR],y
;	Raw cost for generated ic 57 : (21, 32.000000) count=3.999909
;	src/metasprites.c: 97: for(i = 0; i < TILE_HEIGHT; i++)
;	genPlus
;	genPlusIncr
	inc	*_set_tile_sloc0_1_0
	bne	00151$
	inc	*(_set_tile_sloc0_1_0 + 1)
00151$:
;	Raw cost for generated ic 60 : (6, 12.600000) count=3.999909
;	genCmp
	lda	*_set_tile_sloc0_1_0
	sec
	sbc	#0x08
	lda	*(_set_tile_sloc0_1_0 + 1)
	sbc	#0x00
	bcs	00152$
	jmp	00102$
00152$:
;	Raw cost for generated ic 62 : (14, 17.600000) count=3.999909
;	skipping generated iCode
;	Raw cost for generated ic 63 : (0, 0.000000) count=3.999909
;	src/metasprites.c: 103: set_sprite_data(tile_idx, 1, flipped_data);
;	genCast
;	genCopy
	lda	#>_flipped_data
	sta	(_set_sprite_data_PARM_3 + 1)
	lda	#_flipped_data
	sta	_set_sprite_data_PARM_3
;	Raw cost for generated ic 67 : (10, 12.000000) count=0.999975
;	Raw cost for generated ic 68 : (0, 0.000000) count=0.999975
;	Raw cost for generated ic 69 : (0, 0.000000) count=0.999975
;	genCall
;	genSend
	lda	_set_tile_tile_idx_10000_126
	ldx	#0x01
;	Raw cost for generated ic 71 : (8, 12.000000) count=0.999975
;	genLabel
;	Raw cost for generated ic 72 : (0, 0.000000) count=0.999975
;	src/metasprites.c: 104: }
;	genEndFunction
	jmp	_set_sprite_data
;	Raw cost for generated ic 73 : (1, 6.000000) count=0.999975
;------------------------------------------------------------
;Allocation info for local variables in function 'get_tile_offset'
;------------------------------------------------------------
;flipy         Allocated to registers 
;flipx         Allocated to registers 
;offset        Allocated to registers 
;------------------------------------------------------------
;	src/metasprites.c: 106: uint8_t get_tile_offset(uint8_t flipx, uint8_t flipy)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function get_tile_offset
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_get_tile_offset:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/metasprites.c: 117: return offset;
;	genRet
	lda	#0x00
;	Raw cost for generated ic 5 : (2, 2.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	src/metasprites.c: 118: }
;	genEndFunction
	rts
;	Raw cost for generated ic 7 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'load_and_duplicate_sprite_tile_data'
;------------------------------------------------------------
;sloc0         Allocated with name '_load_and_duplicate_sprite_tile_data_sloc0_1_0'
;sloc1         Allocated with name '_load_and_duplicate_sprite_tile_data_sloc1_1_0'
;i             Allocated to registers 
;------------------------------------------------------------
;	src/metasprites.c: 123: void load_and_duplicate_sprite_tile_data(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function load_and_duplicate_sprite_tile_data
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_load_and_duplicate_sprite_tile_data:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/metasprites.c: 126: num_tiles = sizeof(sprite_tiles) >> 4;
;	genAssign
;	genAssignLit
	ldx	#0x30
	stx	_num_tiles
	ldx	#0x00
	stx	(_num_tiles + 1)
;	Raw cost for generated ic 3 : (10, 12.000000) count=1.000000
;	src/metasprites.c: 127: for(i = 0; i < num_tiles; i++)
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	*_load_and_duplicate_sprite_tile_data_sloc0_1_0
	stx	*(_load_and_duplicate_sprite_tile_data_sloc0_1_0 + 1)
;	Raw cost for generated ic 33 : (4, 6.000000) count=1.000000
;	genLabel
00103$:
;	Raw cost for generated ic 5 : (0, 0.000000) count=3.999997
;	genCmp
	lda	*_load_and_duplicate_sprite_tile_data_sloc0_1_0
	sec
	sbc	_num_tiles
	lda	*(_load_and_duplicate_sprite_tile_data_sloc0_1_0 + 1)
	sbc	(_num_tiles + 1)
	bcs	00105$
;	Raw cost for generated ic 6 : (16, 21.600000) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 7 : (0, 0.000000) count=3.999997
;	src/metasprites.c: 129: set_tile(i + get_tile_offset(0, 0), sprite_tiles + (i << 4), 0, 0);
;	genCast
;	genCopy
	lda	*_load_and_duplicate_sprite_tile_data_sloc0_1_0
	sta	*_load_and_duplicate_sprite_tile_data_sloc1_1_0
;	Raw cost for generated ic 10 : (4, 6.000000) count=2.999997
;	Raw cost for generated ic 11 : (0, 0.000000) count=2.999997
;	Raw cost for generated ic 12 : (0, 0.000000) count=2.999997
;	genCall
;	genSend
	lda	#0x00
	tax
	jsr	_get_tile_offset
;	assignResultValue
;	Raw cost for generated ic 13 : (6, 10.000000) count=2.999997
;	genPlus
;	genPlusIncr
	clc
	adc	*_load_and_duplicate_sprite_tile_data_sloc1_1_0
	tay
;	Raw cost for generated ic 14 : (4, 7.000000) count=2.999997
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	ldx	*(_load_and_duplicate_sprite_tile_data_sloc0_1_0 + 1)
	lda	*_load_and_duplicate_sprite_tile_data_sloc0_1_0
	stx	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 16 : (20, 40.000000) count=2.999997
;	genPlus
;	genPlusIncr
	clc
	adc	#_sprite_tiles
	pha
	txa
	adc	#>_sprite_tiles
	tax
	pla
;	Raw cost for generated ic 17 : (9, 17.000000) count=2.999997
;	genCast
;	genCopy
	sta	_set_tile_PARM_2
	stx	(_set_tile_PARM_2 + 1)
;	Raw cost for generated ic 18 : (6, 8.000000) count=2.999997
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_set_tile_PARM_3
;	Raw cost for generated ic 21 : (5, 6.000000) count=2.999997
;	genAssign
;	genAssignLit
	stx	_set_tile_PARM_4
;	Raw cost for generated ic 22 : (3, 4.000000) count=2.999997
;	Raw cost for generated ic 19 : (0, 0.000000) count=2.999997
;	genCall
;	genSend
	tya
	jsr	_set_tile
;	Raw cost for generated ic 23 : (4, 8.000000) count=2.999997
;	src/metasprites.c: 127: for(i = 0; i < num_tiles; i++)
;	genPlus
;	genPlusIncr
	inc	*_load_and_duplicate_sprite_tile_data_sloc0_1_0
	bne	00103$
	inc	*(_load_and_duplicate_sprite_tile_data_sloc0_1_0 + 1)
;	Raw cost for generated ic 26 : (6, 12.600000) count=2.999997
;	genGoto
	jmp	00103$
;	Raw cost for generated ic 28 : (3, 3.000000) count=2.999997
;	genLabel
00105$:
;	Raw cost for generated ic 30 : (0, 0.000000) count=0.999999
;	src/metasprites.c: 140: }
;	genEndFunction
	rts
;	Raw cost for generated ic 31 : (1, 6.000000) count=0.999999
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc0         Allocated with name '_main_sloc0_1_0'
;sloc1         Allocated with name '_main_sloc1_1_0'
;hiwater       Allocated to registers a 
;subpal        Allocated to registers y 
;__500010033   Allocated to registers 
;__500010025   Allocated to registers 
;__500010017   Allocated to registers a 
;__500010009   Allocated to registers a 
;__500010010   Allocated to registers a x 
;__500010011   Allocated to registers 
;__500010012   Allocated with name '_main___500010012_50001_170'
;__500010013   Allocated to registers 
;__500010014   Allocated to registers 
;__500010015   Allocated to registers 
;metasprite    Allocated to registers 
;base_tile     Allocated to registers 
;base_prop     Allocated to registers 
;base_sprite   Allocated to registers 
;x             Allocated with name '_main_x_60001_171'
;y             Allocated with name '_main_y_60001_171'
;__500010018   Allocated to registers a x 
;__500010019   Allocated to registers 
;__500010020   Allocated with name '_main___500010020_50001_173'
;__500010021   Allocated to registers 
;__500010022   Allocated with name '_main___500010022_50001_173'
;__500010023   Allocated to registers 
;metasprite    Allocated to registers 
;base_tile     Allocated to registers 
;base_prop     Allocated to registers 
;base_sprite   Allocated to registers 
;x             Allocated to registers 
;y             Allocated with name '_main_y_60001_174'
;__500010026   Allocated to registers 
;__500010027   Allocated to registers 
;__500010028   Allocated with name '_main___500010028_50001_176'
;__500010029   Allocated to registers 
;__500010030   Allocated with name '_main___500010030_50001_176'
;__500010031   Allocated with name '_main___500010031_50001_176'
;metasprite    Allocated to registers 
;base_tile     Allocated to registers 
;base_prop     Allocated to registers 
;base_sprite   Allocated to registers 
;x             Allocated to registers 
;y             Allocated to registers 
;__500010034   Allocated to registers 
;__500010035   Allocated to registers 
;__500010036   Allocated with name '_main___500010036_50001_179'
;__500010037   Allocated to registers 
;__500010038   Allocated with name '_main___500010038_50001_179'
;__500010039   Allocated with name '_main___500010039_50001_179'
;metasprite    Allocated to registers 
;base_tile     Allocated to registers 
;base_prop     Allocated to registers 
;base_sprite   Allocated to registers 
;x             Allocated to registers 
;y             Allocated to registers 
;------------------------------------------------------------
;	src/metasprites.c: 160: void main(void) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/metasprites.c: 161: DISPLAY_OFF;
;	genCall
	jsr	_display_off
;	Raw cost for generated ic 2 : (3, 6.000000) count=1.000000
;	src/metasprites.c: 170: set_sprite_palette(0, 1, gray_pal);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_gray_pal
	sta	(_set_sprite_palette_PARM_3 + 1)
	lda	#_gray_pal
	sta	_set_sprite_palette_PARM_3
;	Raw cost for generated ic 4 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x00
	ldx	#0x01
	jsr	_set_sprite_palette
;	Raw cost for generated ic 8 : (7, 10.000000) count=1.000000
;	src/metasprites.c: 171: set_sprite_palette(1, 1, pink_pal);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_pink_pal
	sta	(_set_sprite_palette_PARM_3 + 1)
	lda	#_pink_pal
	sta	_set_sprite_palette_PARM_3
;	Raw cost for generated ic 10 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x01
	tax
	jsr	_set_sprite_palette
;	Raw cost for generated ic 14 : (6, 10.000000) count=1.000000
;	src/metasprites.c: 172: set_sprite_palette(2, 1, cyan_pal);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_cyan_pal
	sta	(_set_sprite_palette_PARM_3 + 1)
	lda	#_cyan_pal
	sta	_set_sprite_palette_PARM_3
;	Raw cost for generated ic 16 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x02
	ldx	#0x01
	jsr	_set_sprite_palette
;	Raw cost for generated ic 20 : (7, 10.000000) count=1.000000
;	src/metasprites.c: 173: set_sprite_palette(3, 1, green_pal);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_green_pal
	sta	(_set_sprite_palette_PARM_3 + 1)
	lda	#_green_pal
	sta	_set_sprite_palette_PARM_3
;	Raw cost for generated ic 22 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 23 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x03
	ldx	#0x01
	jsr	_set_sprite_palette
;	Raw cost for generated ic 26 : (7, 10.000000) count=1.000000
;	src/metasprites.c: 177: fill_bkg_rect(0, 0, DEVICE_SCREEN_WIDTH, DEVICE_SCREEN_HEIGHT, 0);
;	genAssign
;	genAssignLit
	ldx	#0x20
	stx	_fill_bkg_rect_PARM_3
;	Raw cost for generated ic 29 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x1e
	stx	_fill_bkg_rect_PARM_4
;	Raw cost for generated ic 30 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_fill_bkg_rect_PARM_5
;	Raw cost for generated ic 31 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 27 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 28 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	txa
	jsr	_fill_bkg_rect
;	Raw cost for generated ic 32 : (4, 8.000000) count=1.000000
;	src/metasprites.c: 180: set_bkg_data(0, 1, pattern);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 33 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_pattern
	sta	(_set_bkg_data_PARM_3 + 1)
	lda	#_pattern
	sta	_set_bkg_data_PARM_3
;	Raw cost for generated ic 34 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 35 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 36 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x00
	ldx	#0x01
	jsr	_set_bkg_data
;	Raw cost for generated ic 38 : (7, 10.000000) count=1.000000
;	src/metasprites.c: 183: load_and_duplicate_sprite_tile_data();
;	genCall
	jsr	_load_and_duplicate_sprite_tile_data
;	Raw cost for generated ic 39 : (3, 6.000000) count=1.000000
;	src/metasprites.c: 186: SHOW_BKG; SHOW_SPRITES;
;	genOr
	lda	_shadow_PPUMASK
	ora	#0x08
	sta	_shadow_PPUMASK
;	Raw cost for generated ic 40 : (8, 10.000000) count=1.000000
;	genOr
	lda	_shadow_PPUMASK
	ora	#0x10
	sta	_shadow_PPUMASK
;	Raw cost for generated ic 42 : (8, 10.000000) count=1.000000
;	src/metasprites.c: 192: SPRITES_8x8;
;	genAnd
	lda	_shadow_PPUCTRL
	and	#0xdf
	sta	_shadow_PPUCTRL
;	Raw cost for generated ic 44 : (8, 10.000000) count=1.000000
;	src/metasprites.c: 194: DISPLAY_ON;
;	genCall
	jsr	_display_on
;	Raw cost for generated ic 46 : (3, 6.000000) count=1.000000
;	src/metasprites.c: 197: PosX = (DEVICE_SCREEN_PX_WIDTH / 2) << 4;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_PosX
	ldx	#0x08
	stx	(_PosX + 1)
;	Raw cost for generated ic 48 : (10, 12.000000) count=1.000000
;	src/metasprites.c: 198: PosY = (DEVICE_SCREEN_PX_HEIGHT / 2) << 4;
;	genAssign
;	genAssignLit
	ldx	#0x80
	stx	_PosY
	ldx	#0x07
	stx	(_PosY + 1)
;	Raw cost for generated ic 50 : (10, 12.000000) count=1.000000
;	src/metasprites.c: 199: SpdX = SpdY = 0;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_SpdY
	stx	(_SpdY + 1)
;	Raw cost for generated ic 52 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	_SpdX
	stx	(_SpdX + 1)
;	Raw cost for generated ic 54 : (6, 8.000000) count=1.000000
;	src/metasprites.c: 201: idx = 0; rot = 0;
;	genAssign
;	genAssignLit
	stx	_idx
;	Raw cost for generated ic 56 : (3, 5.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	_rot
;	Raw cost for generated ic 58 : (3, 4.000000) count=1.000000
;	src/metasprites.c: 203: while(TRUE) {        
;	genLabel
00145$:
;	Raw cost for generated ic 61 : (0, 0.000000) count=72.000000
;	src/metasprites.c: 205: KEY_INPUT;
;	genAssign
;	genAssignLit
;	genCopy
	lda	_joyp
	sta	_old_joyp
;	Raw cost for generated ic 62 : (6, 8.000000) count=72.000000
;	genCall
	jsr	_joypad
;	assignResultValue
	tax
;	Raw cost for generated ic 64 : (4, 8.000000) count=72.000000
;	genAssign
;	genAssignLit
;	genCopy
	stx	_joyp
;	Raw cost for generated ic 66 : (3, 4.000000) count=72.000000
;	src/metasprites.c: 207: PosF = 0;
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	_PosF
;	Raw cost for generated ic 68 : (5, 6.000000) count=72.000000
;	src/metasprites.c: 209: if (KEY_DOWN(J_UP)) {
;	genAnd
	txa
	and	#0x08
;	genIfxJump : z
	beq	00108$
;	Raw cost for generated ic 70 : (8, 9.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 71 : (0, 0.000000) count=72.000000
;	src/metasprites.c: 210: SpdY -= 2;
;	genCast
;	genCopy
	ldx	(_SpdY + 1)
	lda	_SpdY
;	Raw cost for generated ic 74 : (6, 8.000000) count=54.000000
;	genMinus
;	genMinusDec
	sec
	sbc	#0x02
	bcs	00297$
	dex
00297$:
;	Raw cost for generated ic 75 : (6, 8.600000) count=54.000000
;	genCast
;	genCopy
	sta	_SpdY
	stx	(_SpdY + 1)
;	Raw cost for generated ic 76 : (6, 8.000000) count=54.000000
;	src/metasprites.c: 211: if (SpdY < -32) SpdY = -32;
;	genCmp
	lda	_SpdY
	sec
	sbc	#0xe0
	lda	(_SpdY + 1)
	sbc	#0xff
	bvc	00299$
	bpl	00298$
	bmi	00102$
00299$:
	bpl	00102$
00298$:
;	Raw cost for generated ic 79 : (22, 27.400002) count=54.000000
;	skipping generated iCode
;	Raw cost for generated ic 80 : (0, 0.000000) count=54.000000
;	genAssign
;	genAssignLit
	ldx	#0xe0
	stx	_SpdY
	ldx	#0xff
	stx	(_SpdY + 1)
;	Raw cost for generated ic 84 : (10, 12.000000) count=40.500000
;	genLabel
00102$:
;	Raw cost for generated ic 85 : (0, 0.000000) count=54.000000
;	src/metasprites.c: 212: PosF |= ACC_Y;
;	genOr
	lda	_PosF
	ora	#0x02
	sta	_PosF
;	Raw cost for generated ic 86 : (8, 10.000000) count=54.000000
;	genGoto
	jmp	00109$
;	Raw cost for generated ic 89 : (3, 3.000000) count=54.000000
;	genLabel
00108$:
;	Raw cost for generated ic 90 : (0, 0.000000) count=18.000000
;	src/metasprites.c: 213: } else if (KEY_DOWN(J_DOWN)) {
;	genAnd
	txa
	and	#0x04
;	genIfxJump : z
	beq	00109$
;	Raw cost for generated ic 92 : (8, 9.600000) count=18.000000
;	skipping generated iCode
;	Raw cost for generated ic 93 : (0, 0.000000) count=18.000000
;	src/metasprites.c: 214: SpdY += 2;
;	genCast
;	genCopy
	ldx	(_SpdY + 1)
	lda	_SpdY
;	Raw cost for generated ic 96 : (6, 8.000000) count=13.500000
;	genPlus
;	genPlusIncr
	clc
	adc	#0x02
	bcc	00303$
	inx
00303$:
;	Raw cost for generated ic 97 : (6, 8.600000) count=13.500000
;	genCast
;	genCopy
;	Raw cost for generated ic 98 : (6, 8.000000) count=13.500000
;	src/metasprites.c: 215: if (SpdY > 32) SpdY = 32;
;	genCast
;	genCopy
	sta	_SpdY
	stx	(_SpdY + 1)
;	Raw cost for generated ic 101 : (6, 8.000000) count=13.500000
;	genCmp
	sta	*(REGTEMP+0)
	lda	#0x20
	sec
	sbc	*(REGTEMP+0)
	lda	#0x00
	stx	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	bvc	00305$
	bpl	00304$
	bmi	00104$
00305$:
	bpl	00104$
00304$:
;	Raw cost for generated ic 102 : (24, 31.400002) count=13.500000
;	skipping generated iCode
;	Raw cost for generated ic 103 : (0, 0.000000) count=13.500000
;	genAssign
;	genAssignLit
	ldx	#0x20
	stx	_SpdY
	ldx	#0x00
	stx	(_SpdY + 1)
;	Raw cost for generated ic 107 : (10, 12.000000) count=10.125000
;	genLabel
00104$:
;	Raw cost for generated ic 108 : (0, 0.000000) count=13.500000
;	src/metasprites.c: 216: PosF |= ACC_Y;
;	genOr
	lda	_PosF
	ora	#0x02
	sta	_PosF
;	Raw cost for generated ic 109 : (8, 10.000000) count=13.500000
;	genLabel
00109$:
;	Raw cost for generated ic 113 : (0, 0.000000) count=72.000000
;	src/metasprites.c: 219: if (KEY_DOWN(J_LEFT)) {
;	genCast
;	genCopy
	ldx	_joyp
;	Raw cost for generated ic 114 : (3, 4.000000) count=72.000000
;	genAnd
	txa
	and	#0x02
;	genIfxJump : z
	beq	00117$
;	Raw cost for generated ic 115 : (8, 9.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 116 : (0, 0.000000) count=72.000000
;	src/metasprites.c: 220: SpdX -= 2;
;	genCast
;	genCopy
	ldx	(_SpdX + 1)
	lda	_SpdX
;	Raw cost for generated ic 119 : (6, 8.000000) count=54.000000
;	genMinus
;	genMinusDec
	sec
	sbc	#0x02
	bcs	00309$
	dex
00309$:
;	Raw cost for generated ic 120 : (6, 8.600000) count=54.000000
;	genCast
;	genCopy
	sta	_SpdX
	stx	(_SpdX + 1)
;	Raw cost for generated ic 121 : (6, 8.000000) count=54.000000
;	src/metasprites.c: 221: if (SpdX < -32) SpdX = -32;
;	genCmp
	lda	_SpdX
	sec
	sbc	#0xe0
	lda	(_SpdX + 1)
	sbc	#0xff
	bvc	00311$
	bpl	00310$
	bmi	00111$
00311$:
	bpl	00111$
00310$:
;	Raw cost for generated ic 124 : (22, 27.400002) count=54.000000
;	skipping generated iCode
;	Raw cost for generated ic 125 : (0, 0.000000) count=54.000000
;	genAssign
;	genAssignLit
	ldx	#0xe0
	stx	_SpdX
	ldx	#0xff
	stx	(_SpdX + 1)
;	Raw cost for generated ic 129 : (10, 12.000000) count=40.500000
;	genLabel
00111$:
;	Raw cost for generated ic 130 : (0, 0.000000) count=54.000000
;	src/metasprites.c: 222: PosF |= ACC_X;
;	genOr
	lda	_PosF
	ora	#0x01
	sta	_PosF
;	Raw cost for generated ic 131 : (8, 10.000000) count=54.000000
;	genGoto
	jmp	00118$
;	Raw cost for generated ic 134 : (3, 3.000000) count=54.000000
;	genLabel
00117$:
;	Raw cost for generated ic 135 : (0, 0.000000) count=18.000000
;	src/metasprites.c: 223: } else if (KEY_DOWN(J_RIGHT)) {
;	genAnd
	txa
	and	#0x01
;	genIfxJump : z
	beq	00118$
;	Raw cost for generated ic 137 : (8, 9.600000) count=18.000000
;	skipping generated iCode
;	Raw cost for generated ic 138 : (0, 0.000000) count=18.000000
;	src/metasprites.c: 224: SpdX += 2;
;	genCast
;	genCopy
	ldx	(_SpdX + 1)
	lda	_SpdX
;	Raw cost for generated ic 141 : (6, 8.000000) count=13.500000
;	genPlus
;	genPlusIncr
	clc
	adc	#0x02
	bcc	00315$
	inx
00315$:
;	Raw cost for generated ic 142 : (6, 8.600000) count=13.500000
;	genCast
;	genCopy
;	Raw cost for generated ic 143 : (6, 8.000000) count=13.500000
;	src/metasprites.c: 225: if (SpdX > 32) SpdX = 32;
;	genCast
;	genCopy
	sta	_SpdX
	stx	(_SpdX + 1)
;	Raw cost for generated ic 146 : (6, 8.000000) count=13.500000
;	genCmp
	sta	*(REGTEMP+0)
	lda	#0x20
	sec
	sbc	*(REGTEMP+0)
	lda	#0x00
	stx	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	bvc	00317$
	bpl	00316$
	bmi	00113$
00317$:
	bpl	00113$
00316$:
;	Raw cost for generated ic 147 : (24, 31.400002) count=13.500000
;	skipping generated iCode
;	Raw cost for generated ic 148 : (0, 0.000000) count=13.500000
;	genAssign
;	genAssignLit
	ldx	#0x20
	stx	_SpdX
	ldx	#0x00
	stx	(_SpdX + 1)
;	Raw cost for generated ic 152 : (10, 12.000000) count=10.125000
;	genLabel
00113$:
;	Raw cost for generated ic 153 : (0, 0.000000) count=13.500000
;	src/metasprites.c: 226: PosF |= ACC_X;
;	genOr
	lda	_PosF
	ora	#0x01
	sta	_PosF
;	Raw cost for generated ic 154 : (8, 10.000000) count=13.500000
;	genLabel
00118$:
;	Raw cost for generated ic 158 : (0, 0.000000) count=72.000000
;	src/metasprites.c: 230: if (KEY_PRESSED(J_B)) {
;	genXor
	lda	_joyp
	eor	_old_joyp
;	Raw cost for generated ic 159 : (6, 8.000000) count=72.000000
;	genAnd
	and	_joyp
;	Raw cost for generated ic 160 : (3, 4.000000) count=72.000000
;	genAnd
	and	#0x40
;	genIfxJump : z
	beq	00122$
;	Raw cost for generated ic 162 : (7, 7.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 163 : (0, 0.000000) count=72.000000
;	src/metasprites.c: 231: idx++; if (idx >= (sizeof(sprite_metasprites) >> 1)) idx = 0;
;	genPlus
;	genPlusIncr
	inc	_idx
;	Raw cost for generated ic 167 : (3, 7.000000) count=54.000000
;	genCmp
	lda	_idx
	cmp	#0x05
	bcc	00122$
;	Raw cost for generated ic 170 : (10, 11.600000) count=54.000000
;	skipping generated iCode
;	Raw cost for generated ic 171 : (0, 0.000000) count=54.000000
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_idx
;	Raw cost for generated ic 175 : (5, 7.000000) count=40.500000
;	genLabel
00122$:
;	Raw cost for generated ic 177 : (0, 0.000000) count=72.000000
;	src/metasprites.c: 235: if (KEY_PRESSED(J_A)) {
;	genXor
	lda	_joyp
	eor	_old_joyp
;	Raw cost for generated ic 178 : (6, 8.000000) count=72.000000
;	genAnd
	and	_joyp
;	Raw cost for generated ic 179 : (3, 4.000000) count=72.000000
;	genAnd
	and	#0x80
;	genIfxJump : z
	beq	00124$
;	Raw cost for generated ic 181 : (7, 7.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 182 : (0, 0.000000) count=72.000000
;	src/metasprites.c: 236: rot++; rot &= 0xF;
;	genPlus
;	genPlusIncr
	inc	_rot
;	Raw cost for generated ic 186 : (3, 6.000000) count=54.000000
;	genAnd
	lda	_rot
	and	#0x0f
	sta	_rot
;	Raw cost for generated ic 190 : (8, 10.000000) count=54.000000
;	genLabel
00124$:
;	Raw cost for generated ic 194 : (0, 0.000000) count=72.000000
;	src/metasprites.c: 239: PosX += SpdX, PosY += SpdY; 
;	genPlus
;	genPlusIncr
	lda	_PosX
	clc
	adc	_SpdX
	sta	_PosX
	lda	(_PosX + 1)
	adc	(_SpdX + 1)
	sta	(_PosX + 1)
;	Raw cost for generated ic 195 : (19, 26.000000) count=72.000000
;	genPlus
;	genPlusIncr
	lda	_PosY
	clc
	adc	_SpdY
	sta	_PosY
	lda	(_PosY + 1)
	adc	(_SpdY + 1)
	sta	(_PosY + 1)
;	Raw cost for generated ic 198 : (19, 26.000000) count=72.000000
;	src/metasprites.c: 250: uint8_t subpal = rot >> 2;
;	genRightShift
;	genRightShiftLiteral
;	genrshOne
	lda	_rot
	lsr	a
	lsr	a
	tay
;	Raw cost for generated ic 202 : (6, 10.000000) count=72.000000
;	src/metasprites.c: 251: switch (rot & 0x3) {
;	genCast
;	genCopy
	lda	_rot
;	Raw cost for generated ic 204 : (3, 4.000000) count=72.000000
;	genAnd
	and	#0x03
;	Raw cost for generated ic 205 : (2, 2.000000) count=72.000000
;	genCmpEQorNE
	cmp	#0x01
	beq	00125$
;	Raw cost for generated ic 206 : (7, 7.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 207 : (0, 0.000000) count=72.000000
;	genCmpEQorNE
	cmp	#0x02
	bne	00323$
	jmp	00126$
00323$:
;	Raw cost for generated ic 208 : (7, 7.600000) count=54.000000
;	skipping generated iCode
;	Raw cost for generated ic 209 : (0, 0.000000) count=54.000000
;	genCmpEQorNE
	cmp	#0x03
	bne	00324$
	jmp	00127$
00324$:
;	Raw cost for generated ic 210 : (7, 7.600000) count=40.500000
;	skipping generated iCode
;	Raw cost for generated ic 211 : (0, 0.000000) count=40.500000
;	genGoto
	jmp	00128$
;	Raw cost for generated ic 212 : (3, 3.000000) count=30.375000
;	src/metasprites.c: 252: case 1:
;	genLabel
00125$:
;	Raw cost for generated ic 213 : (0, 0.000000) count=18.000000
;	src/metasprites.c: 258: DEVICE_SPRITE_PX_OFFSET_Y + (PosY >> 4));
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	ldx	(_PosY + 1)
	lda	_PosY
	stx	*(REGTEMP+0)
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 214 : (30, 50.000000) count=18.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 215 : (0, 0.000000) count=18.000000
;	genPlus
;	genPlusIncr
	clc
	adc	#0xff
	pha
	txa
	adc	#0xff
	tax
	pla
;	Raw cost for generated ic 216 : (9, 17.000000) count=18.000000
;	genCast
;	genCopy
	sta	_main_y_60001_171
	stx	(_main_y_60001_171 + 1)
;	Raw cost for generated ic 217 : (6, 8.000000) count=18.000000
;	src/metasprites.c: 257: DEVICE_SPRITE_PX_OFFSET_X + (PosX >> 4),
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	ldx	(_PosX + 1)
	lda	_PosX
	stx	*(REGTEMP+0)
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
	sta	_main_x_60001_171
	stx	(_main_x_60001_171 + 1)
;	Raw cost for generated ic 219 : (36, 58.000000) count=18.000000
;	genAssign
;	genAssignLit
;	genCopy
	sty	_main___500010012_50001_170
;	Raw cost for generated ic 222 : (3, 4.000000) count=18.000000
;	src/metasprites.c: 254: TILE_NUM_START + get_tile_offset(0, 1),
;	Raw cost for generated ic 223 : (0, 0.000000) count=18.000000
;	Raw cost for generated ic 224 : (0, 0.000000) count=18.000000
;	genCall
;	genSend
	lda	#0x00
	ldx	#0x01
	jsr	_get_tile_offset
;	assignResultValue
	sta	___current_base_tile
;	Raw cost for generated ic 225 : (10, 14.000000) count=18.000000
;	src/metasprites.c: 253: hiwater += move_metasprite_flipy( sprite_metasprites[idx],
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 227 : (0, 0.000000) count=18.000000
;	genCast
;	genCopy
	ldx	#0x00
	lda	_idx
;	Raw cost for generated ic 228 : (5, 6.000000) count=18.000000
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	stx	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 229 : (7, 13.000000) count=18.000000
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 230 : (0, 0.000000) count=18.000000
;	genPointerGet
;	setupDPTR
	clc
	adc	#<(_sprite_metasprites+0)
	sta	*(DPTR+0)
	txa
	adc	#>(_sprite_metasprites+0)
	sta	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 231 : (18, 30.000000) count=18.000000
;	../../../include/nes/metasprites.h: 170: __current_metasprite = metasprite;
;	genCast
;	genCopy
	sta	___current_metasprite
	stx	(___current_metasprite + 1)
;	Raw cost for generated ic 239 : (6, 8.000000) count=18.000000
;	../../../include/nes/metasprites.h: 172: __current_base_prop = base_prop;
;	genAssign
;	genAssignLit
;	genCopy
	lda	_main___500010012_50001_170
	sta	___current_base_prop
;	Raw cost for generated ic 245 : (6, 8.000000) count=18.000000
;	../../../include/nes/metasprites.h: 173: return __move_metasprite_flipy(base_sprite, x, y - ((shadow_PPUCTRL & PPUCTRL_SPR_8X16) ? 16 : 8) );
;	genCast
;	genCopy
	lda	_shadow_PPUCTRL
;	Raw cost for generated ic 246 : (3, 4.000000) count=18.000000
;	genAnd
	and	#0x20
;	genIfxJump : z
	beq	00153$
;	Raw cost for generated ic 247 : (7, 7.600000) count=18.000000
;	skipping generated iCode
;	Raw cost for generated ic 248 : (0, 0.000000) count=18.000000
;	genAssign
;	genAssignLit
	ldx	#0x10
	stx	*_main_sloc0_1_0
	sty	*(_main_sloc0_1_0 + 1)
;	Raw cost for generated ic 249 : (6, 8.000000) count=13.500000
;	genGoto
	jmp	00154$
;	Raw cost for generated ic 250 : (3, 3.000000) count=13.500000
;	genLabel
00153$:
;	Raw cost for generated ic 251 : (0, 0.000000) count=4.500000
;	genAssign
;	genAssignLit
	ldx	#0x08
	stx	*_main_sloc0_1_0
	ldx	#0x00
	stx	*(_main_sloc0_1_0 + 1)
;	Raw cost for generated ic 252 : (8, 10.000000) count=4.500000
;	genLabel
00154$:
;	Raw cost for generated ic 253 : (0, 0.000000) count=18.000000
;	genCast
;	genCopy
	ldx	(_main_y_60001_171 + 1)
	lda	_main_y_60001_171
;	Raw cost for generated ic 254 : (6, 8.000000) count=18.000000
;	genMinus
;	genMinusDec
	sec
	sbc	*_main_sloc0_1_0
	pha
	txa
	sbc	*(_main_sloc0_1_0 + 1)
	tax
	pla
;	Raw cost for generated ic 255 : (9, 19.000000) count=18.000000
;	genCast
;	genCopy
	sta	___move_metasprite_flipy_PARM_3
	stx	(___move_metasprite_flipy_PARM_3 + 1)
;	Raw cost for generated ic 256 : (6, 8.000000) count=18.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	(_main_x_60001_171 + 1)
	sta	(___move_metasprite_flipy_PARM_2 + 1)
	lda	_main_x_60001_171
	sta	___move_metasprite_flipy_PARM_2
;	Raw cost for generated ic 258 : (12, 16.000000) count=18.000000
;	Raw cost for generated ic 257 : (0, 0.000000) count=18.000000
;	genCall
;	genSend
	lda	#0x00
	jsr	___move_metasprite_flipy
;	assignResultValue
;	Raw cost for generated ic 260 : (5, 8.000000) count=18.000000
;	src/metasprites.c: 258: DEVICE_SPRITE_PX_OFFSET_Y + (PosY >> 4));
;	genPlus
;	genPlusIncr
	clc
;	Raw cost for generated ic 264 : (1, 2.000000) count=18.000000
;	src/metasprites.c: 259: break;
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 266 : (3, 3.000000) count=18.000000
;	src/metasprites.c: 260: case 2:
;	genLabel
00126$:
;	Raw cost for generated ic 267 : (0, 0.000000) count=13.500000
;	src/metasprites.c: 266: DEVICE_SPRITE_PX_OFFSET_Y + (PosY >> 4));
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	ldx	(_PosY + 1)
	lda	_PosY
	stx	*(REGTEMP+0)
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 268 : (30, 50.000000) count=13.500000
;	genCast
;	genCopy
;	Raw cost for generated ic 269 : (0, 0.000000) count=13.500000
;	genPlus
;	genPlusIncr
	clc
	adc	#0xff
	pha
	txa
	adc	#0xff
	tax
	pla
;	Raw cost for generated ic 270 : (9, 17.000000) count=13.500000
;	genCast
;	genCopy
	sta	_main_y_60001_174
	stx	(_main_y_60001_174 + 1)
;	Raw cost for generated ic 271 : (6, 8.000000) count=13.500000
;	src/metasprites.c: 265: DEVICE_SPRITE_PX_OFFSET_X + (PosX >> 4),
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	ldx	(_PosX + 1)
	lda	_PosX
	stx	*(REGTEMP+0)
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
	sta	_main___500010022_50001_173
	stx	(_main___500010022_50001_173 + 1)
;	Raw cost for generated ic 273 : (36, 58.000000) count=13.500000
;	genAssign
;	genAssignLit
;	genCopy
	sty	_main___500010020_50001_173
;	Raw cost for generated ic 276 : (3, 4.000000) count=13.500000
;	src/metasprites.c: 262: TILE_NUM_START + get_tile_offset(1, 1),
;	Raw cost for generated ic 277 : (0, 0.000000) count=13.500000
;	Raw cost for generated ic 278 : (0, 0.000000) count=13.500000
;	genCall
;	genSend
	lda	#0x01
	tax
	jsr	_get_tile_offset
;	assignResultValue
	sta	___current_base_tile
;	Raw cost for generated ic 279 : (9, 14.000000) count=13.500000
;	src/metasprites.c: 261: hiwater += move_metasprite_flipxy(sprite_metasprites[idx],
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 281 : (0, 0.000000) count=13.500000
;	genCast
;	genCopy
	ldx	#0x00
	lda	_idx
;	Raw cost for generated ic 282 : (5, 6.000000) count=13.500000
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	stx	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 283 : (7, 13.000000) count=13.500000
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 284 : (0, 0.000000) count=13.500000
;	genPointerGet
;	setupDPTR
	clc
	adc	#<(_sprite_metasprites+0)
	sta	*(DPTR+0)
	txa
	adc	#>(_sprite_metasprites+0)
	sta	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 285 : (18, 30.000000) count=13.500000
;	../../../include/nes/metasprites.h: 209: __current_metasprite = metasprite;
;	genCast
;	genCopy
	sta	___current_metasprite
	stx	(___current_metasprite + 1)
;	Raw cost for generated ic 293 : (6, 8.000000) count=13.500000
;	../../../include/nes/metasprites.h: 211: __current_base_prop = base_prop;
;	genAssign
;	genAssignLit
;	genCopy
	lda	_main___500010020_50001_173
	sta	___current_base_prop
;	Raw cost for generated ic 299 : (6, 8.000000) count=13.500000
;	../../../include/nes/metasprites.h: 212: return __move_metasprite_flipxy(base_sprite, x - 8, y - ((shadow_PPUCTRL & PPUCTRL_SPR_8X16) ? 16 : 8));
;	genCast
;	genCopy
	ldx	(_main___500010022_50001_173 + 1)
	lda	_main___500010022_50001_173
;	Raw cost for generated ic 300 : (6, 8.000000) count=13.500000
;	genMinus
;	genMinusDec
	sec
	sbc	#0x08
	bcs	00326$
	dex
00326$:
;	Raw cost for generated ic 301 : (6, 8.600000) count=13.500000
;	genCast
;	genCopy
	sta	*_main_sloc0_1_0
	stx	*(_main_sloc0_1_0 + 1)
;	Raw cost for generated ic 302 : (4, 6.000000) count=13.500000
;	genCast
;	genCopy
	lda	_shadow_PPUCTRL
;	Raw cost for generated ic 303 : (3, 4.000000) count=13.500000
;	genAnd
	and	#0x20
;	genIfxJump : z
	beq	00155$
;	Raw cost for generated ic 304 : (7, 7.600000) count=13.500000
;	skipping generated iCode
;	Raw cost for generated ic 305 : (0, 0.000000) count=13.500000
;	genAssign
;	genAssignLit
	ldx	#0x10
	stx	*_main_sloc1_1_0
	sty	*(_main_sloc1_1_0 + 1)
;	Raw cost for generated ic 306 : (6, 8.000000) count=10.125000
;	genGoto
	jmp	00156$
;	Raw cost for generated ic 307 : (3, 3.000000) count=10.125000
;	genLabel
00155$:
;	Raw cost for generated ic 308 : (0, 0.000000) count=3.375000
;	genAssign
;	genAssignLit
	ldx	#0x08
	stx	*_main_sloc1_1_0
	ldx	#0x00
	stx	*(_main_sloc1_1_0 + 1)
;	Raw cost for generated ic 309 : (8, 10.000000) count=3.375000
;	genLabel
00156$:
;	Raw cost for generated ic 310 : (0, 0.000000) count=13.500000
;	genCast
;	genCopy
	ldx	(_main_y_60001_174 + 1)
	lda	_main_y_60001_174
;	Raw cost for generated ic 311 : (6, 8.000000) count=13.500000
;	genMinus
;	genMinusDec
	sec
	sbc	*_main_sloc1_1_0
	pha
	txa
	sbc	*(_main_sloc1_1_0 + 1)
	tax
	pla
;	Raw cost for generated ic 312 : (9, 19.000000) count=13.500000
;	genCast
;	genCopy
	sta	___move_metasprite_flipxy_PARM_3
	stx	(___move_metasprite_flipxy_PARM_3 + 1)
;	Raw cost for generated ic 313 : (6, 8.000000) count=13.500000
;	genAssign
;	genAssignLit
;	genCopy
	lda	*(_main_sloc0_1_0 + 1)
	sta	(___move_metasprite_flipxy_PARM_2 + 1)
	lda	*_main_sloc0_1_0
	sta	___move_metasprite_flipxy_PARM_2
;	Raw cost for generated ic 315 : (10, 14.000000) count=13.500000
;	Raw cost for generated ic 314 : (0, 0.000000) count=13.500000
;	genCall
;	genSend
	lda	#0x00
	jsr	___move_metasprite_flipxy
;	assignResultValue
;	Raw cost for generated ic 317 : (5, 8.000000) count=13.500000
;	src/metasprites.c: 266: DEVICE_SPRITE_PX_OFFSET_Y + (PosY >> 4));
;	genPlus
;	genPlusIncr
	clc
;	Raw cost for generated ic 321 : (1, 2.000000) count=13.500000
;	src/metasprites.c: 267: break;
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 323 : (3, 3.000000) count=13.500000
;	src/metasprites.c: 268: case 3:
;	genLabel
00127$:
;	Raw cost for generated ic 324 : (0, 0.000000) count=10.125000
;	src/metasprites.c: 274: DEVICE_SPRITE_PX_OFFSET_Y + (PosY >> 4));
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	ldx	(_PosY + 1)
	lda	_PosY
	stx	*(REGTEMP+0)
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 325 : (30, 50.000000) count=10.125000
;	genCast
;	genCopy
;	Raw cost for generated ic 326 : (0, 0.000000) count=10.125000
;	genPlus
;	genPlusIncr
	clc
	adc	#0xff
	pha
	txa
	adc	#0xff
	tax
	pla
;	Raw cost for generated ic 327 : (9, 17.000000) count=10.125000
;	genCast
;	genCopy
	sta	_main___500010031_50001_176
	stx	(_main___500010031_50001_176 + 1)
;	Raw cost for generated ic 328 : (6, 8.000000) count=10.125000
;	src/metasprites.c: 273: DEVICE_SPRITE_PX_OFFSET_X + (PosX >> 4),
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	ldx	(_PosX + 1)
	lda	_PosX
	stx	*(REGTEMP+0)
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
	sta	_main___500010030_50001_176
	stx	(_main___500010030_50001_176 + 1)
;	Raw cost for generated ic 330 : (36, 58.000000) count=10.125000
;	genAssign
;	genAssignLit
;	genCopy
	sty	_main___500010028_50001_176
;	Raw cost for generated ic 333 : (3, 4.000000) count=10.125000
;	src/metasprites.c: 270: TILE_NUM_START + get_tile_offset(1, 0),
;	Raw cost for generated ic 334 : (0, 0.000000) count=10.125000
;	Raw cost for generated ic 335 : (0, 0.000000) count=10.125000
;	genCall
;	genSend
	lda	#0x01
	ldx	#0x00
	jsr	_get_tile_offset
;	assignResultValue
	sta	___current_base_tile
;	Raw cost for generated ic 336 : (10, 14.000000) count=10.125000
;	src/metasprites.c: 269: hiwater += move_metasprite_flipx( sprite_metasprites[idx],
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 338 : (0, 0.000000) count=10.125000
;	genCast
;	genCopy
	ldx	#0x00
	lda	_idx
;	Raw cost for generated ic 339 : (5, 6.000000) count=10.125000
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	stx	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 340 : (7, 13.000000) count=10.125000
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 341 : (0, 0.000000) count=10.125000
;	genPointerGet
;	setupDPTR
	clc
	adc	#<(_sprite_metasprites+0)
	sta	*(DPTR+0)
	txa
	adc	#>(_sprite_metasprites+0)
	sta	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 342 : (18, 30.000000) count=10.125000
;	../../../include/nes/metasprites.h: 130: __current_metasprite = metasprite;
;	genCast
;	genCopy
	sta	___current_metasprite
	stx	(___current_metasprite + 1)
;	Raw cost for generated ic 350 : (6, 8.000000) count=10.125000
;	../../../include/nes/metasprites.h: 132: __current_base_prop = base_prop;
;	genAssign
;	genAssignLit
;	genCopy
	lda	_main___500010028_50001_176
	sta	___current_base_prop
;	Raw cost for generated ic 356 : (6, 8.000000) count=10.125000
;	../../../include/nes/metasprites.h: 133: return __move_metasprite_flipx(base_sprite, x - 8, y);
;	genCast
;	genCopy
	ldx	(_main___500010030_50001_176 + 1)
	lda	_main___500010030_50001_176
;	Raw cost for generated ic 357 : (6, 8.000000) count=10.125000
;	genMinus
;	genMinusDec
	sec
	sbc	#0x08
	bcs	00328$
	dex
00328$:
;	Raw cost for generated ic 358 : (6, 8.600000) count=10.125000
;	genCast
;	genCopy
	sta	___move_metasprite_flipx_PARM_2
	stx	(___move_metasprite_flipx_PARM_2 + 1)
;	Raw cost for generated ic 359 : (6, 8.000000) count=10.125000
;	genAssign
;	genAssignLit
;	genCopy
	lda	(_main___500010031_50001_176 + 1)
	sta	(___move_metasprite_flipx_PARM_3 + 1)
	lda	_main___500010031_50001_176
	sta	___move_metasprite_flipx_PARM_3
;	Raw cost for generated ic 362 : (12, 16.000000) count=10.125000
;	Raw cost for generated ic 360 : (0, 0.000000) count=10.125000
;	genCall
;	genSend
	tya
	jsr	___move_metasprite_flipx
;	assignResultValue
;	Raw cost for generated ic 363 : (4, 8.000000) count=10.125000
;	src/metasprites.c: 275: break;
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 369 : (3, 3.000000) count=10.125000
;	src/metasprites.c: 276: default:
;	genLabel
00128$:
;	Raw cost for generated ic 370 : (0, 0.000000) count=30.375000
;	src/metasprites.c: 282: DEVICE_SPRITE_PX_OFFSET_Y + (PosY >> 4));
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	ldx	(_PosY + 1)
	lda	_PosY
	stx	*(REGTEMP+0)
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 371 : (30, 50.000000) count=30.375000
;	genCast
;	genCopy
;	Raw cost for generated ic 372 : (0, 0.000000) count=30.375000
;	genPlus
;	genPlusIncr
	clc
	adc	#0xff
	pha
	txa
	adc	#0xff
	tax
	pla
;	Raw cost for generated ic 373 : (9, 17.000000) count=30.375000
;	genCast
;	genCopy
	sta	_main___500010039_50001_179
	stx	(_main___500010039_50001_179 + 1)
;	Raw cost for generated ic 374 : (6, 8.000000) count=30.375000
;	src/metasprites.c: 281: DEVICE_SPRITE_PX_OFFSET_X + (PosX >> 4),
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	ldx	(_PosX + 1)
	lda	_PosX
	stx	*(REGTEMP+0)
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
	sta	_main___500010038_50001_179
	stx	(_main___500010038_50001_179 + 1)
;	Raw cost for generated ic 376 : (36, 58.000000) count=30.375000
;	genAssign
;	genAssignLit
;	genCopy
	sty	_main___500010036_50001_179
;	Raw cost for generated ic 379 : (3, 4.000000) count=30.375000
;	src/metasprites.c: 278: TILE_NUM_START + get_tile_offset(0, 0),
;	Raw cost for generated ic 380 : (0, 0.000000) count=30.375000
;	Raw cost for generated ic 381 : (0, 0.000000) count=30.375000
;	genCall
;	genSend
	lda	#0x00
	tax
	jsr	_get_tile_offset
;	assignResultValue
	sta	___current_base_tile
;	Raw cost for generated ic 382 : (9, 14.000000) count=30.375000
;	src/metasprites.c: 277: hiwater += move_metasprite_ex(    sprite_metasprites[idx],
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 384 : (0, 0.000000) count=30.375000
;	genCast
;	genCopy
	ldx	#0x00
	lda	_idx
;	Raw cost for generated ic 385 : (5, 6.000000) count=30.375000
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	stx	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 386 : (7, 13.000000) count=30.375000
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 387 : (0, 0.000000) count=30.375000
;	genPointerGet
;	setupDPTR
	clc
	adc	#<(_sprite_metasprites+0)
	sta	*(DPTR+0)
	txa
	adc	#>(_sprite_metasprites+0)
	sta	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 388 : (18, 30.000000) count=30.375000
;	../../../include/nes/metasprites.h: 91: __current_metasprite = metasprite;
;	genCast
;	genCopy
	sta	___current_metasprite
	stx	(___current_metasprite + 1)
;	Raw cost for generated ic 396 : (6, 8.000000) count=30.375000
;	../../../include/nes/metasprites.h: 93: __current_base_prop = base_prop;
;	genAssign
;	genAssignLit
;	genCopy
	lda	_main___500010036_50001_179
	sta	___current_base_prop
;	Raw cost for generated ic 402 : (6, 8.000000) count=30.375000
;	../../../include/nes/metasprites.h: 94: return __move_metasprite(base_sprite, x, y);
;	genAssign
;	genAssignLit
;	genCopy
	lda	(_main___500010038_50001_179 + 1)
	sta	(___move_metasprite_PARM_2 + 1)
	lda	_main___500010038_50001_179
	sta	___move_metasprite_PARM_2
;	Raw cost for generated ic 404 : (12, 16.000000) count=30.375000
;	genAssign
;	genAssignLit
;	genCopy
	lda	(_main___500010039_50001_179 + 1)
	sta	(___move_metasprite_PARM_3 + 1)
	lda	_main___500010039_50001_179
	sta	___move_metasprite_PARM_3
;	Raw cost for generated ic 405 : (12, 16.000000) count=30.375000
;	Raw cost for generated ic 403 : (0, 0.000000) count=30.375000
;	genCall
;	genSend
	tya
	jsr	___move_metasprite
;	assignResultValue
;	Raw cost for generated ic 406 : (4, 8.000000) count=30.375000
;	src/metasprites.c: 284: }
;	genLabel
00129$:
;	Raw cost for generated ic 413 : (0, 0.000000) count=72.000000
;	src/metasprites.c: 287: hide_sprites_range(hiwater, MAX_HARDWARE_SPRITES);        
;	Raw cost for generated ic 414 : (0, 0.000000) count=72.000000
;	Raw cost for generated ic 415 : (0, 0.000000) count=72.000000
;	genCall
;	genSend
	ldx	#0x40
	jsr	_hide_sprites_range
;	Raw cost for generated ic 416 : (5, 8.000000) count=72.000000
;	src/metasprites.c: 290: if (!(PosF & ACC_Y)) {
;	genCast
;	genCopy
	lda	_PosF
;	Raw cost for generated ic 417 : (3, 4.000000) count=72.000000
;	genAnd
	and	#0x02
;	genIfxJump : z
	bne	00136$
;	Raw cost for generated ic 418 : (7, 7.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 419 : (0, 0.000000) count=72.000000
;	src/metasprites.c: 291: if (SpdY != 0) {
;	genIfx
	lda	(_SpdY + 1)
	ora	_SpdY
;	genIfxJump : z
	beq	00136$
;	Raw cost for generated ic 422 : (11, 13.600000) count=54.000000
;	src/metasprites.c: 292: if (SpdY > 0) SpdY--;
;	genCast
;	genCopy
	ldx	(_SpdY + 1)
	lda	_SpdY
;	Raw cost for generated ic 425 : (6, 8.000000) count=40.500000
;	genCmp
	sta	*(REGTEMP+0)
	lda	#0x00
	sec
	sbc	*(REGTEMP+0)
	lda	#0x00
	stx	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	bvc	00333$
	bpl	00332$
	bmi	00131$
00333$:
	bpl	00131$
00332$:
;	Raw cost for generated ic 426 : (24, 31.400002) count=40.500000
;	skipping generated iCode
;	Raw cost for generated ic 427 : (0, 0.000000) count=40.500000
;	genMinus
;	genMinusDec
	sec
	lda	_SpdY
	sbc	#0x01
	sta	_SpdY
	bcs	00136$
	dec	(_SpdY + 1)
;	Raw cost for generated ic 431 : (14, 20.600000) count=30.375000
;	genGoto
	jmp	00136$
;	Raw cost for generated ic 434 : (3, 3.000000) count=30.375000
;	genLabel
00131$:
;	Raw cost for generated ic 435 : (0, 0.000000) count=10.125000
;	src/metasprites.c: 293: else SpdY ++;
;	genPlus
;	genPlusIncr
	inc	_SpdY
	bne	00336$
	inc	(_SpdY + 1)
00336$:
;	Raw cost for generated ic 437 : (8, 14.600000) count=10.125000
;	genLabel
00136$:
;	Raw cost for generated ic 442 : (0, 0.000000) count=72.000000
;	src/metasprites.c: 298: if (!(PosF & ACC_X)) {
;	genCast
;	genCopy
	lda	_PosF
;	Raw cost for generated ic 443 : (3, 4.000000) count=72.000000
;	genAnd
	and	#0x01
;	genIfxJump : z
	bne	00143$
;	Raw cost for generated ic 444 : (7, 7.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 445 : (0, 0.000000) count=72.000000
;	src/metasprites.c: 299: if (SpdX != 0) {
;	genIfx
	lda	(_SpdX + 1)
	ora	_SpdX
;	genIfxJump : z
	beq	00143$
;	Raw cost for generated ic 448 : (11, 13.600000) count=54.000000
;	src/metasprites.c: 300: if (SpdX > 0) SpdX--;
;	genCast
;	genCopy
	ldx	(_SpdX + 1)
	lda	_SpdX
;	Raw cost for generated ic 451 : (6, 8.000000) count=40.500000
;	genCmp
	sta	*(REGTEMP+0)
	lda	#0x00
	sec
	sbc	*(REGTEMP+0)
	lda	#0x00
	stx	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	bvc	00341$
	bpl	00340$
	bmi	00138$
00341$:
	bpl	00138$
00340$:
;	Raw cost for generated ic 452 : (24, 31.400002) count=40.500000
;	skipping generated iCode
;	Raw cost for generated ic 453 : (0, 0.000000) count=40.500000
;	genMinus
;	genMinusDec
	sec
	lda	_SpdX
	sbc	#0x01
	sta	_SpdX
	bcs	00143$
	dec	(_SpdX + 1)
;	Raw cost for generated ic 457 : (14, 20.600000) count=30.375000
;	genGoto
	jmp	00143$
;	Raw cost for generated ic 460 : (3, 3.000000) count=30.375000
;	genLabel
00138$:
;	Raw cost for generated ic 461 : (0, 0.000000) count=10.125000
;	src/metasprites.c: 301: else SpdX ++;
;	genPlus
;	genPlusIncr
	inc	_SpdX
	bne	00344$
	inc	(_SpdX + 1)
00344$:
;	Raw cost for generated ic 463 : (8, 14.600000) count=10.125000
;	genLabel
00143$:
;	Raw cost for generated ic 468 : (0, 0.000000) count=72.000000
;	src/metasprites.c: 307: vsync();
;	genCall
	jsr	_vsync
;	Raw cost for generated ic 469 : (3, 6.000000) count=72.000000
;	genGoto
	jmp	00145$
;	Raw cost for generated ic 470 : (3, 3.000000) count=72.000000
;	genLabel
;	Raw cost for generated ic 472 : (0, 0.000000) count=0.000000
;	src/metasprites.c: 309: }
;	genEndFunction
	rts
;	Raw cost for generated ic 473 : (1, 6.000000) count=0.000000
	.area _CODE
_pattern:
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
_reverse_bits:
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0x90	; 144
	.db #0x50	; 80	'P'
	.db #0xd0	; 208
	.db #0x30	; 48	'0'
	.db #0xb0	; 176
	.db #0x70	; 112	'p'
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0x88	; 136
	.db #0x48	; 72	'H'
	.db #0xc8	; 200
	.db #0x28	; 40
	.db #0xa8	; 168
	.db #0x68	; 104	'h'
	.db #0xe8	; 232
	.db #0x18	; 24
	.db #0x98	; 152
	.db #0x58	; 88	'X'
	.db #0xd8	; 216
	.db #0x38	; 56	'8'
	.db #0xb8	; 184
	.db #0x78	; 120	'x'
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0x84	; 132
	.db #0x44	; 68	'D'
	.db #0xc4	; 196
	.db #0x24	; 36
	.db #0xa4	; 164
	.db #0x64	; 100	'd'
	.db #0xe4	; 228
	.db #0x14	; 20
	.db #0x94	; 148
	.db #0x54	; 84	'T'
	.db #0xd4	; 212
	.db #0x34	; 52	'4'
	.db #0xb4	; 180
	.db #0x74	; 116	't'
	.db #0xf4	; 244
	.db #0x0c	; 12
	.db #0x8c	; 140
	.db #0x4c	; 76	'L'
	.db #0xcc	; 204
	.db #0x2c	; 44
	.db #0xac	; 172
	.db #0x6c	; 108	'l'
	.db #0xec	; 236
	.db #0x1c	; 28
	.db #0x9c	; 156
	.db #0x5c	; 92
	.db #0xdc	; 220
	.db #0x3c	; 60
	.db #0xbc	; 188
	.db #0x7c	; 124
	.db #0xfc	; 252
	.db #0x02	; 2
	.db #0x82	; 130
	.db #0x42	; 66	'B'
	.db #0xc2	; 194
	.db #0x22	; 34
	.db #0xa2	; 162
	.db #0x62	; 98	'b'
	.db #0xe2	; 226
	.db #0x12	; 18
	.db #0x92	; 146
	.db #0x52	; 82	'R'
	.db #0xd2	; 210
	.db #0x32	; 50	'2'
	.db #0xb2	; 178
	.db #0x72	; 114	'r'
	.db #0xf2	; 242
	.db #0x0a	; 10
	.db #0x8a	; 138
	.db #0x4a	; 74	'J'
	.db #0xca	; 202
	.db #0x2a	; 42
	.db #0xaa	; 170
	.db #0x6a	; 106	'j'
	.db #0xea	; 234
	.db #0x1a	; 26
	.db #0x9a	; 154
	.db #0x5a	; 90	'Z'
	.db #0xda	; 218
	.db #0x3a	; 58
	.db #0xba	; 186
	.db #0x7a	; 122	'z'
	.db #0xfa	; 250
	.db #0x06	; 6
	.db #0x86	; 134
	.db #0x46	; 70	'F'
	.db #0xc6	; 198
	.db #0x26	; 38
	.db #0xa6	; 166
	.db #0x66	; 102	'f'
	.db #0xe6	; 230
	.db #0x16	; 22
	.db #0x96	; 150
	.db #0x56	; 86	'V'
	.db #0xd6	; 214
	.db #0x36	; 54	'6'
	.db #0xb6	; 182
	.db #0x76	; 118	'v'
	.db #0xf6	; 246
	.db #0x0e	; 14
	.db #0x8e	; 142
	.db #0x4e	; 78	'N'
	.db #0xce	; 206
	.db #0x2e	; 46
	.db #0xae	; 174
	.db #0x6e	; 110	'n'
	.db #0xee	; 238
	.db #0x1e	; 30
	.db #0x9e	; 158
	.db #0x5e	; 94
	.db #0xde	; 222
	.db #0x3e	; 62
	.db #0xbe	; 190
	.db #0x7e	; 126
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0x81	; 129
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x21	; 33
	.db #0xa1	; 161
	.db #0x61	; 97	'a'
	.db #0xe1	; 225
	.db #0x11	; 17
	.db #0x91	; 145
	.db #0x51	; 81	'Q'
	.db #0xd1	; 209
	.db #0x31	; 49	'1'
	.db #0xb1	; 177
	.db #0x71	; 113	'q'
	.db #0xf1	; 241
	.db #0x09	; 9
	.db #0x89	; 137
	.db #0x49	; 73	'I'
	.db #0xc9	; 201
	.db #0x29	; 41
	.db #0xa9	; 169
	.db #0x69	; 105	'i'
	.db #0xe9	; 233
	.db #0x19	; 25
	.db #0x99	; 153
	.db #0x59	; 89	'Y'
	.db #0xd9	; 217
	.db #0x39	; 57	'9'
	.db #0xb9	; 185
	.db #0x79	; 121	'y'
	.db #0xf9	; 249
	.db #0x05	; 5
	.db #0x85	; 133
	.db #0x45	; 69	'E'
	.db #0xc5	; 197
	.db #0x25	; 37
	.db #0xa5	; 165
	.db #0x65	; 101	'e'
	.db #0xe5	; 229
	.db #0x15	; 21
	.db #0x95	; 149
	.db #0x55	; 85	'U'
	.db #0xd5	; 213
	.db #0x35	; 53	'5'
	.db #0xb5	; 181
	.db #0x75	; 117	'u'
	.db #0xf5	; 245
	.db #0x0d	; 13
	.db #0x8d	; 141
	.db #0x4d	; 77	'M'
	.db #0xcd	; 205
	.db #0x2d	; 45
	.db #0xad	; 173
	.db #0x6d	; 109	'm'
	.db #0xed	; 237
	.db #0x1d	; 29
	.db #0x9d	; 157
	.db #0x5d	; 93
	.db #0xdd	; 221
	.db #0x3d	; 61
	.db #0xbd	; 189
	.db #0x7d	; 125
	.db #0xfd	; 253
	.db #0x03	; 3
	.db #0x83	; 131
	.db #0x43	; 67	'C'
	.db #0xc3	; 195
	.db #0x23	; 35
	.db #0xa3	; 163
	.db #0x63	; 99	'c'
	.db #0xe3	; 227
	.db #0x13	; 19
	.db #0x93	; 147
	.db #0x53	; 83	'S'
	.db #0xd3	; 211
	.db #0x33	; 51	'3'
	.db #0xb3	; 179
	.db #0x73	; 115	's'
	.db #0xf3	; 243
	.db #0x0b	; 11
	.db #0x8b	; 139
	.db #0x4b	; 75	'K'
	.db #0xcb	; 203
	.db #0x2b	; 43
	.db #0xab	; 171
	.db #0x6b	; 107	'k'
	.db #0xeb	; 235
	.db #0x1b	; 27
	.db #0x9b	; 155
	.db #0x5b	; 91
	.db #0xdb	; 219
	.db #0x3b	; 59
	.db #0xbb	; 187
	.db #0x7b	; 123
	.db #0xfb	; 251
	.db #0x07	; 7
	.db #0x87	; 135
	.db #0x47	; 71	'G'
	.db #0xc7	; 199
	.db #0x27	; 39
	.db #0xa7	; 167
	.db #0x67	; 103	'g'
	.db #0xe7	; 231
	.db #0x17	; 23
	.db #0x97	; 151
	.db #0x57	; 87	'W'
	.db #0xd7	; 215
	.db #0x37	; 55	'7'
	.db #0xb7	; 183
	.db #0x77	; 119	'w'
	.db #0xf7	; 247
	.db #0x0f	; 15
	.db #0x8f	; 143
	.db #0x4f	; 79	'O'
	.db #0xcf	; 207
	.db #0x2f	; 47
	.db #0xaf	; 175
	.db #0x6f	; 111	'o'
	.db #0xef	; 239
	.db #0x1f	; 31
	.db #0x9f	; 159
	.db #0x5f	; 95
	.db #0xdf	; 223
	.db #0x3f	; 63
	.db #0xbf	; 191
	.db #0x7f	; 127
	.db #0xff	; 255
_gray_pal:
	.db #0x20	; 32
	.db #0x3d	; 61
	.db #0x00	; 0
	.db #0x1d	; 29
_pink_pal:
	.db #0x20	; 32
	.db #0x24	; 36
	.db #0x14	; 20
	.db #0x04	; 4
_cyan_pal:
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x2c	; 44
	.db #0x1c	; 28
_green_pal:
	.db #0x20	; 32
	.db #0x3a	; 58
	.db #0x2a	; 42
	.db #0x19	; 25
	.area _XINIT
__xinit__joyp:
	.db #0x00	; 0
__xinit__old_joyp:
	.db #0x00	; 0
	.area _CABS    (ABS)
