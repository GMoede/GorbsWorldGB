;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module level
	
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
	.globl _SetupCurrentLevel
	.globl _IsTileSolid
	.globl _setBKGPalettes
	.globl __switch_prg0
	.globl _set_bkg_native_data
	.globl _set_bkg_attribute_xy_nes16x16
	.globl _nextLevel
	.globl _currentLevel
	.globl _IsTileSolid_PARM_2
	.globl _currentAreaBank
	.globl _currentLevelNonSolidTileCount
	.globl _currentLevelMap
	.globl _currentLevelHeightInTiles
	.globl _currentLevelHeight
	.globl _currentLevelWidthInTiles
	.globl _currentLevelWidth
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
_IsTileSolid_sloc0_1_0:
	.ds 2
_SetupCurrentLevel_sloc0_1_0:
	.ds 1
_SetupCurrentLevel_sloc1_1_0:
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
_currentLevelWidth::
	.ds 2
_currentLevelWidthInTiles::
	.ds 2
_currentLevelHeight::
	.ds 2
_currentLevelHeightInTiles::
	.ds 2
_currentLevelMap::
	.ds 2
_currentLevelNonSolidTileCount::
	.ds 1
_currentAreaBank::
	.ds 1
_IsTileSolid_PARM_2:
	.ds 2
_IsTileSolid__previous_bank_10000_130:
	.ds 1
_IsTileSolid_column_10001_131:
	.ds 2
_IsTileSolid_row_10001_131:
	.ds 2
_SetupCurrentLevel__previous_bank_10000_136:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area _DATA
_currentLevel::
	.ds 1
_nextLevel::
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
;	src/level.c: 40: uint8_t IsTileSolid(uint16_t worldX,uint16_t worldY) NONBANKED{
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function IsTileSolid
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_IsTileSolid:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	src/level.c: 42: uint8_t _previous_bank = CURRENT_BANK;
;	genAssign
;	genAssignLit
;	genCopy
	ldy	__current_bank
	sty	_IsTileSolid__previous_bank_10000_130
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	src/level.c: 44: SWITCH_ROM(currentAreaBank);
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCall
	pha
	sta	*(REGTEMP+0)
	txa
	pha
;	genSend
	lda	_currentAreaBank
	jsr	__switch_prg0
	pla
	tax
	pla
;	Raw cost for generated ic 5 : (16, 34.000000) count=1.000000
;	src/level.c: 47: uint16_t column = worldX>>3;
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
	sta	_IsTileSolid_column_10001_131
	stx	(_IsTileSolid_column_10001_131 + 1)
;	Raw cost for generated ic 6 : (19, 35.000000) count=1.000000
;	src/level.c: 48: uint16_t row = worldY>>3;
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	ldx	(_IsTileSolid_PARM_2 + 1)
	lda	_IsTileSolid_PARM_2
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
	sta	_IsTileSolid_row_10001_131
	stx	(_IsTileSolid_row_10001_131 + 1)
;	Raw cost for generated ic 8 : (25, 43.000000) count=1.000000
;	src/level.c: 50: uint16_t worldMaxRow = currentLevelHeight>>3;
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	ldx	(_currentLevelHeight + 1)
	lda	_currentLevelHeight
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 10 : (19, 35.000000) count=1.000000
;	src/level.c: 55: if(row>worldMaxRow||column>=currentLevelWidthInTiles){
;	genCmp
	sec
	sbc	_IsTileSolid_row_10001_131
	txa
	sbc	(_IsTileSolid_row_10001_131 + 1)
	bcc	00101$
;	Raw cost for generated ic 12 : (13, 17.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCmp
	lda	_IsTileSolid_column_10001_131
	sec
	sbc	_currentLevelWidthInTiles
	lda	(_IsTileSolid_column_10001_131 + 1)
	sbc	(_currentLevelWidthInTiles + 1)
	bcc	00102$
;	Raw cost for generated ic 16 : (18, 23.600000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 17 : (0, 0.000000) count=0.750000
;	genLabel
00101$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=0.812500
;	src/level.c: 57: SWITCH_ROM(_previous_bank);
;	Raw cost for generated ic 20 : (0, 0.000000) count=0.812500
;	genCall
;	genSend
	lda	_IsTileSolid__previous_bank_10000_130
	jsr	__switch_prg0
;	Raw cost for generated ic 21 : (6, 10.000000) count=0.812500
;	src/level.c: 58: return TRUE;
;	genRet
	lda	#0x01
	rts
;	Raw cost for generated ic 22 : (5, 5.000000) count=0.812500
;	genLabel
00102$:
;	Raw cost for generated ic 23 : (0, 0.000000) count=1.000000
;	src/level.c: 61: uint16_t index = column + row* currentLevelWidthInTiles;
;	genAssign
;	genAssignLit
;	genCopy
	lda	(_currentLevelWidthInTiles + 1)
	sta	(__mulint_PARM_2 + 1)
	lda	_currentLevelWidthInTiles
	sta	__mulint_PARM_2
;	Raw cost for generated ic 37 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 36 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	(_IsTileSolid_row_10001_131 + 1)
	lda	_IsTileSolid_row_10001_131
	jsr	__mulint
;	assignResultValue
;	Raw cost for generated ic 38 : (9, 14.000000) count=1.000000
;	genPlus
;	genPlusIncr
	clc
	adc	_IsTileSolid_column_10001_131
	pha
	txa
	adc	(_IsTileSolid_column_10001_131 + 1)
	tax
	pla
;	Raw cost for generated ic 25 : (11, 21.000000) count=1.000000
;	src/level.c: 63: uint8_t tile = currentLevelMap[index];
;	genPlus
;	genPlusIncr
	clc
	adc	_currentLevelMap
	sta	*_IsTileSolid_sloc0_1_0
	txa
	adc	(_currentLevelMap + 1)
	sta	*(_IsTileSolid_sloc0_1_0 + 1)
;	Raw cost for generated ic 27 : (12, 18.000000) count=1.000000
;	genPointerGet
	ldy	#0x00
	lda	[*_IsTileSolid_sloc0_1_0],y
;	Raw cost for generated ic 28 : (4, 7.000000) count=1.000000
;	src/level.c: 65: SWITCH_ROM(_previous_bank);
;	Raw cost for generated ic 30 : (0, 0.000000) count=1.000000
;	genCall
	pha
;	genSend
	lda	_IsTileSolid__previous_bank_10000_130
	jsr	__switch_prg0
	pla
;	Raw cost for generated ic 31 : (8, 17.000000) count=1.000000
;	src/level.c: 67: return tile<currentLevelNonSolidTileCount;
;	genCmp
	cmp	_currentLevelNonSolidTileCount
	bcc	00114$
	lda	#0x00
	rts
00114$:
	lda	#0x01
;	Raw cost for generated ic 32 : (12, 13.600000) count=1.000000
;	genRet
;	Raw cost for generated ic 33 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 34 : (0, 0.000000) count=1.000000
;	src/level.c: 68: }
;	genEndFunction
	rts
;	Raw cost for generated ic 35 : (1, 6.000000) count=1.000000
;	src/level.c: 72: void SetupCurrentLevel(void) NONBANKED{
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function SetupCurrentLevel
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SetupCurrentLevel:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/level.c: 74: uint8_t _previous_bank = CURRENT_BANK;
;	genAssign
;	genAssignLit
;	genCopy
	lda	__current_bank
	sta	_SetupCurrentLevel__previous_bank_10000_136
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	src/level.c: 76: for(uint8_t i=0;i<DEVICE_SCREEN_BUFFER_WIDTH;i++){
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_SetupCurrentLevel_sloc0_1_0
;	Raw cost for generated ic 287 : (4, 5.000000) count=1.000000
;	genLabel
00130$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=3.969304
;	genCmp
	lda	*_SetupCurrentLevel_sloc0_1_0
	cmp	#0x20
	bcs	00102$
;	Raw cost for generated ic 5 : (9, 10.600000) count=3.969304
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=3.969304
;	src/level.c: 77: for(uint8_t j=0;j<DEVICE_SCREEN_BUFFER_HEIGHT;j++){
;	genRightShift
;	genRightShiftLiteral
;	genrshOne
	lda	*_SetupCurrentLevel_sloc0_1_0
	lsr	a
	sta	*_SetupCurrentLevel_sloc1_1_0
;	Raw cost for generated ic 21 : (5, 8.000000) count=2.976978
;	genAssign
;	genAssignLit
;	genCopy
	ldy	#0x00
;	Raw cost for generated ic 284 : (2, 2.000000) count=2.976978
;	genLabel
00127$:
;	Raw cost for generated ic 10 : (0, 0.000000) count=11.884892
;	genCmp
	cpy	#0x1e
	bcs	00131$
;	Raw cost for generated ic 11 : (7, 7.600000) count=11.884892
;	skipping generated iCode
;	Raw cost for generated ic 12 : (0, 0.000000) count=11.884892
;	../../../include/nes/nes.h: 947: set_bkg_attribute_xy_nes16x16(x >> 1, y >> 1, a);
;	genRightShift
;	genRightShiftLiteral
;	genrshOne
	tya
	lsr	a
;	Raw cost for generated ic 22 : (2, 4.000000) count=8.913667
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_set_bkg_attribute_xy_nes16x16_PARM_3
;	Raw cost for generated ic 25 : (5, 6.000000) count=8.913667
;	Raw cost for generated ic 23 : (0, 0.000000) count=8.913667
;	Raw cost for generated ic 24 : (0, 0.000000) count=8.913667
;	genCall
	sta	*(REGTEMP+0)
	tya
	pha
	lda	*(REGTEMP+0)
;	genSend
	tax
	lda	*_SetupCurrentLevel_sloc1_1_0
	jsr	_set_bkg_attribute_xy_nes16x16
	sta	*(REGTEMP+0)
	pla
	tay
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 26 : (18, 34.000000) count=8.913667
;	src/level.c: 77: for(uint8_t j=0;j<DEVICE_SCREEN_BUFFER_HEIGHT;j++){
;	genPlus
;	genPlusIncr
	iny
;	Raw cost for generated ic 30 : (1, 2.000000) count=8.913667
;	genGoto
	jmp	00127$
;	Raw cost for generated ic 32 : (3, 3.000000) count=8.913667
;	genLabel
00131$:
;	Raw cost for generated ic 34 : (0, 0.000000) count=2.971223
;	src/level.c: 76: for(uint8_t i=0;i<DEVICE_SCREEN_BUFFER_WIDTH;i++){
;	genPlus
;	genPlusIncr
	inc	*_SetupCurrentLevel_sloc0_1_0
;	Raw cost for generated ic 36 : (2, 5.000000) count=2.971223
;	genGoto
	jmp	00130$
;	Raw cost for generated ic 38 : (3, 3.000000) count=2.971223
;	genLabel
00102$:
;	Raw cost for generated ic 39 : (0, 0.000000) count=0.992326
;	src/level.c: 85: switch(currentLevel % 3){
;	genCast
;	genCopy
	lda	_currentLevel
;	Raw cost for generated ic 40 : (3, 4.000000) count=0.992326
;	Raw cost for generated ic 298 : (0, 0.000000) count=0.992326
;	Raw cost for generated ic 299 : (0, 0.000000) count=0.992326
;	genCall
;	genSend
	ldx	#0x03
	jsr	__moduchar
;	assignResultValue
;	Raw cost for generated ic 300 : (5, 8.000000) count=0.992326
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 291 : (2, 2.000000) count=0.992326
;	genJumpTab
	tay
	lda	00172$,y
	sta	*(REGTEMP+0)
	lda	00173$,y
	sta	*(REGTEMP+1)
	jmp	[REGTEMP+0]
00172$:
	.db	00103$
	.db	00104$
	.db	00105$
00173$:
	.db	>00103$
	.db	>00104$
	.db	>00105$
;	Raw cost for generated ic 46 : (20, 21.000000) count=0.992326
;	src/level.c: 86: case 0:
;	genLabel
00103$:
;	Raw cost for generated ic 47 : (0, 0.000000) count=0.325538
;	src/level.c: 92: SWITCH_ROM(( BANK(World1Tileset)));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 48 : (0, 0.000000) count=0.325538
;	genCast
;	genCopy
	lda	#___bank_World1Tileset
;	Raw cost for generated ic 49 : (2, 2.000000) count=0.325538
;	Raw cost for generated ic 50 : (0, 0.000000) count=0.325538
;	genCall
;	genSend
	jsr	__switch_prg0
;	Raw cost for generated ic 51 : (3, 6.000000) count=0.325538
;	src/level.c: 94: set_native_tile_data(0,World1Tileset_TILE_COUNT,World1Tileset_tiles);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 52 : (0, 0.000000) count=0.325538
;	genCast
;	genCopy
	lda	#>_World1Tileset_tiles
	sta	(_set_bkg_native_data_PARM_3 + 1)
	lda	#_World1Tileset_tiles
	sta	_set_bkg_native_data_PARM_3
;	Raw cost for generated ic 53 : (10, 12.000000) count=0.325538
;	../../../include/nes/nes.h: 1277: set_bkg_native_data(first_tile, nb_tiles, data);
;	Raw cost for generated ic 66 : (0, 0.000000) count=0.325538
;	Raw cost for generated ic 67 : (0, 0.000000) count=0.325538
;	genCall
;	genSend
	lda	#0x00
	ldx	#0x20
	jsr	_set_bkg_native_data
;	Raw cost for generated ic 69 : (7, 10.000000) count=0.325538
;	src/level.c: 95: setBKGPalettes(World1Tileset_PALETTE_COUNT,World1Tileset_palettes);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 97 : (0, 0.000000) count=0.325538
;	genCast
;	genCopy
	lda	#>_World1Tileset_palettes
	sta	(_setBKGPalettes_PARM_2 + 1)
	lda	#_World1Tileset_palettes
	sta	_setBKGPalettes_PARM_2
;	Raw cost for generated ic 98 : (10, 12.000000) count=0.325538
;	Raw cost for generated ic 99 : (0, 0.000000) count=0.325538
;	genCall
;	genSend
	lda	#0x04
	jsr	_setBKGPalettes
;	Raw cost for generated ic 101 : (5, 8.000000) count=0.325538
;	src/level.c: 99: SWITCH_ROM((currentAreaBank = BANK(World1Area1)));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 102 : (0, 0.000000) count=0.325538
;	genCast
;	genCopy
	lda	#___bank_World1Area1
;	Raw cost for generated ic 103 : (2, 2.000000) count=0.325538
;	genAssign
;	genAssignLit
;	genCopy
	sta	_currentAreaBank
;	Raw cost for generated ic 105 : (3, 4.000000) count=0.325538
;	Raw cost for generated ic 106 : (0, 0.000000) count=0.325538
;	genCall
;	genSend
	jsr	__switch_prg0
;	Raw cost for generated ic 107 : (3, 6.000000) count=0.325538
;	src/level.c: 101: currentLevelNonSolidTileCount=WORLD1_SOLID_TILE_COUNT;
;	genAssign
;	genAssignLit
	ldx	#0x11
	stx	_currentLevelNonSolidTileCount
;	Raw cost for generated ic 109 : (5, 6.000000) count=0.325538
;	src/level.c: 102: currentLevelWidth = World1Area1_WIDTH;
;	genAssign
;	genAssignLit
	ldx	#0xe0
	stx	_currentLevelWidth
	ldx	#0x01
	stx	(_currentLevelWidth + 1)
;	Raw cost for generated ic 111 : (10, 12.000000) count=0.325538
;	src/level.c: 103: currentLevelHeight = World1Area1_HEIGHT;
;	genAssign
;	genAssignLit
	dex
	stx	_currentLevelHeight
	inx
	stx	(_currentLevelHeight + 1)
;	Raw cost for generated ic 113 : (8, 12.000000) count=0.325538
;	src/level.c: 104: currentLevelWidthInTiles = World1Area1_WIDTH>>3;
;	genAssign
;	genAssignLit
	ldx	#0x3c
	stx	_currentLevelWidthInTiles
	ldx	#0x00
	stx	(_currentLevelWidthInTiles + 1)
;	Raw cost for generated ic 115 : (10, 12.000000) count=0.325538
;	src/level.c: 105: currentLevelHeightInTiles = World1Area1_HEIGHT>>3;            
;	genAssign
;	genAssignLit
	ldx	#0x20
	stx	_currentLevelHeightInTiles
	ldx	#0x00
	stx	(_currentLevelHeightInTiles + 1)
;	Raw cost for generated ic 117 : (10, 12.000000) count=0.325538
;	src/level.c: 106: currentLevelMap= World1Area1_map;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 118 : (0, 0.000000) count=0.325538
;	genCast
;	genCopy
	lda	#>_World1Area1_map
	sta	(_currentLevelMap + 1)
	lda	#_World1Area1_map
	sta	_currentLevelMap
;	Raw cost for generated ic 119 : (10, 12.000000) count=0.325538
;	src/level.c: 109: break;
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 122 : (3, 3.000000) count=0.325538
;	src/level.c: 110: case 1:
;	genLabel
00104$:
;	Raw cost for generated ic 123 : (0, 0.000000) count=0.325538
;	src/level.c: 115: SWITCH_ROM((currentAreaBank = BANK(World1Tileset)));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 124 : (0, 0.000000) count=0.325538
;	genCast
;	genCopy
	lda	#___bank_World1Tileset
;	Raw cost for generated ic 125 : (2, 2.000000) count=0.325538
;	genAssign
;	genAssignLit
;	genCopy
	sta	_currentAreaBank
;	Raw cost for generated ic 127 : (3, 4.000000) count=0.325538
;	Raw cost for generated ic 128 : (0, 0.000000) count=0.325538
;	genCall
;	genSend
	jsr	__switch_prg0
;	Raw cost for generated ic 129 : (3, 6.000000) count=0.325538
;	src/level.c: 118: set_native_tile_data(0,World1Tileset_TILE_COUNT,World1Tileset_tiles);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 130 : (0, 0.000000) count=0.325538
;	genCast
;	genCopy
	lda	#>_World1Tileset_tiles
	sta	(_set_bkg_native_data_PARM_3 + 1)
	lda	#_World1Tileset_tiles
	sta	_set_bkg_native_data_PARM_3
;	Raw cost for generated ic 131 : (10, 12.000000) count=0.325538
;	../../../include/nes/nes.h: 1277: set_bkg_native_data(first_tile, nb_tiles, data);
;	Raw cost for generated ic 144 : (0, 0.000000) count=0.325538
;	Raw cost for generated ic 145 : (0, 0.000000) count=0.325538
;	genCall
;	genSend
	lda	#0x00
	ldx	#0x20
	jsr	_set_bkg_native_data
;	Raw cost for generated ic 147 : (7, 10.000000) count=0.325538
;	src/level.c: 119: setBKGPalettes(World1Tileset_PALETTE_COUNT,World1Tileset_palettes);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 175 : (0, 0.000000) count=0.325538
;	genCast
;	genCopy
	lda	#>_World1Tileset_palettes
	sta	(_setBKGPalettes_PARM_2 + 1)
	lda	#_World1Tileset_palettes
	sta	_setBKGPalettes_PARM_2
;	Raw cost for generated ic 176 : (10, 12.000000) count=0.325538
;	Raw cost for generated ic 177 : (0, 0.000000) count=0.325538
;	genCall
;	genSend
	lda	#0x04
	jsr	_setBKGPalettes
;	Raw cost for generated ic 179 : (5, 8.000000) count=0.325538
;	src/level.c: 124: SWITCH_ROM((currentAreaBank = BANK(World1Area2)));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 180 : (0, 0.000000) count=0.325538
;	genCast
;	genCopy
	lda	#___bank_World1Area2
;	Raw cost for generated ic 181 : (2, 2.000000) count=0.325538
;	genAssign
;	genAssignLit
;	genCopy
	sta	_currentAreaBank
;	Raw cost for generated ic 183 : (3, 4.000000) count=0.325538
;	Raw cost for generated ic 184 : (0, 0.000000) count=0.325538
;	genCall
;	genSend
	jsr	__switch_prg0
;	Raw cost for generated ic 185 : (3, 6.000000) count=0.325538
;	src/level.c: 126: currentLevelNonSolidTileCount=WORLD1_SOLID_TILE_COUNT;
;	genAssign
;	genAssignLit
	ldx	#0x11
	stx	_currentLevelNonSolidTileCount
;	Raw cost for generated ic 187 : (5, 6.000000) count=0.325538
;	src/level.c: 127: currentLevelWidth = World1Area2_WIDTH;
;	genAssign
;	genAssignLit
	ldx	#0xe0
	stx	_currentLevelWidth
	ldx	#0x01
	stx	(_currentLevelWidth + 1)
;	Raw cost for generated ic 189 : (10, 12.000000) count=0.325538
;	src/level.c: 128: currentLevelHeight = World1Area2_HEIGHT;
;	genAssign
;	genAssignLit
	dex
	stx	_currentLevelHeight
	inx
	stx	(_currentLevelHeight + 1)
;	Raw cost for generated ic 191 : (8, 12.000000) count=0.325538
;	src/level.c: 129: currentLevelWidthInTiles = World1Area2_WIDTH>>3;
;	genAssign
;	genAssignLit
	ldx	#0x3c
	stx	_currentLevelWidthInTiles
	ldx	#0x00
	stx	(_currentLevelWidthInTiles + 1)
;	Raw cost for generated ic 193 : (10, 12.000000) count=0.325538
;	src/level.c: 130: currentLevelHeightInTiles = World1Area2_HEIGHT>>3;
;	genAssign
;	genAssignLit
	ldx	#0x20
	stx	_currentLevelHeightInTiles
	ldx	#0x00
	stx	(_currentLevelHeightInTiles + 1)
;	Raw cost for generated ic 195 : (10, 12.000000) count=0.325538
;	src/level.c: 131: currentLevelMap= World1Area2_map;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 196 : (0, 0.000000) count=0.325538
;	genCast
;	genCopy
	lda	#>_World1Area2_map
	sta	(_currentLevelMap + 1)
	lda	#_World1Area2_map
	sta	_currentLevelMap
;	Raw cost for generated ic 197 : (10, 12.000000) count=0.325538
;	src/level.c: 133: break;
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 200 : (3, 3.000000) count=0.325538
;	src/level.c: 134: case 2:
;	genLabel
00105$:
;	Raw cost for generated ic 201 : (0, 0.000000) count=0.325538
;	src/level.c: 139: SWITCH_ROM((BANK(World2Tileset)));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 202 : (0, 0.000000) count=0.325538
;	genCast
;	genCopy
	lda	#___bank_World2Tileset
;	Raw cost for generated ic 203 : (2, 2.000000) count=0.325538
;	Raw cost for generated ic 204 : (0, 0.000000) count=0.325538
;	genCall
;	genSend
	jsr	__switch_prg0
;	Raw cost for generated ic 205 : (3, 6.000000) count=0.325538
;	src/level.c: 141: set_native_tile_data(0,World2Tileset_TILE_COUNT,World2Tileset_tiles);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 206 : (0, 0.000000) count=0.325538
;	genCast
;	genCopy
	lda	#>_World2Tileset_tiles
	sta	(_set_bkg_native_data_PARM_3 + 1)
	lda	#_World2Tileset_tiles
	sta	_set_bkg_native_data_PARM_3
;	Raw cost for generated ic 207 : (10, 12.000000) count=0.325538
;	../../../include/nes/nes.h: 1277: set_bkg_native_data(first_tile, nb_tiles, data);
;	Raw cost for generated ic 220 : (0, 0.000000) count=0.325538
;	Raw cost for generated ic 221 : (0, 0.000000) count=0.325538
;	genCall
;	genSend
	lda	#0x00
	ldx	#0x46
	jsr	_set_bkg_native_data
;	Raw cost for generated ic 223 : (7, 10.000000) count=0.325538
;	src/level.c: 142: setBKGPalettes(World2Tileset_PALETTE_COUNT,World2Tileset_palettes);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 251 : (0, 0.000000) count=0.325538
;	genCast
;	genCopy
	lda	#>_World2Tileset_palettes
	sta	(_setBKGPalettes_PARM_2 + 1)
	lda	#_World2Tileset_palettes
	sta	_setBKGPalettes_PARM_2
;	Raw cost for generated ic 252 : (10, 12.000000) count=0.325538
;	Raw cost for generated ic 253 : (0, 0.000000) count=0.325538
;	genCall
;	genSend
	lda	#0x04
	jsr	_setBKGPalettes
;	Raw cost for generated ic 255 : (5, 8.000000) count=0.325538
;	src/level.c: 147: SWITCH_ROM((currentAreaBank = BANK(World2Area1)));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 256 : (0, 0.000000) count=0.325538
;	genCast
;	genCopy
	lda	#___bank_World2Area1
;	Raw cost for generated ic 257 : (2, 2.000000) count=0.325538
;	genAssign
;	genAssignLit
;	genCopy
	sta	_currentAreaBank
;	Raw cost for generated ic 259 : (3, 4.000000) count=0.325538
;	Raw cost for generated ic 260 : (0, 0.000000) count=0.325538
;	genCall
;	genSend
	jsr	__switch_prg0
;	Raw cost for generated ic 261 : (3, 6.000000) count=0.325538
;	src/level.c: 149: currentLevelNonSolidTileCount=WORLD2_SOLID_TILE_COUNT;
;	genAssign
;	genAssignLit
	ldx	#0x44
	stx	_currentLevelNonSolidTileCount
;	Raw cost for generated ic 263 : (5, 6.000000) count=0.325538
;	src/level.c: 150: currentLevelWidth = World2Area1_WIDTH;
;	genAssign
;	genAssignLit
	ldx	#0xe0
	stx	_currentLevelWidth
	ldx	#0x01
	stx	(_currentLevelWidth + 1)
;	Raw cost for generated ic 265 : (10, 12.000000) count=0.325538
;	src/level.c: 151: currentLevelHeight = World2Area1_HEIGHT;
;	genAssign
;	genAssignLit
	dex
	stx	_currentLevelHeight
	inx
	stx	(_currentLevelHeight + 1)
;	Raw cost for generated ic 267 : (8, 12.000000) count=0.325538
;	src/level.c: 152: currentLevelWidthInTiles = World2Area1_WIDTH>>3;
;	genAssign
;	genAssignLit
	ldx	#0x3c
	stx	_currentLevelWidthInTiles
	ldx	#0x00
	stx	(_currentLevelWidthInTiles + 1)
;	Raw cost for generated ic 269 : (10, 12.000000) count=0.325538
;	src/level.c: 153: currentLevelHeightInTiles = World2Area1_HEIGHT>>3;
;	genAssign
;	genAssignLit
	ldx	#0x20
	stx	_currentLevelHeightInTiles
	ldx	#0x00
	stx	(_currentLevelHeightInTiles + 1)
;	Raw cost for generated ic 271 : (10, 12.000000) count=0.325538
;	src/level.c: 154: currentLevelMap= World2Area1_map;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 272 : (0, 0.000000) count=0.325538
;	genCast
;	genCopy
	lda	#>_World2Area1_map
	sta	(_currentLevelMap + 1)
	lda	#_World2Area1_map
	sta	_currentLevelMap
;	Raw cost for generated ic 273 : (10, 12.000000) count=0.325538
;	src/level.c: 157: }
;	genLabel
00106$:
;	Raw cost for generated ic 277 : (0, 0.000000) count=0.976613
;	src/level.c: 159: SWITCH_ROM(_previous_bank);
;	Raw cost for generated ic 278 : (0, 0.000000) count=0.976613
;	genCall
;	genSend
	lda	_SetupCurrentLevel__previous_bank_10000_136
;	Raw cost for generated ic 279 : (6, 10.000000) count=0.976613
;	genLabel
;	Raw cost for generated ic 280 : (0, 0.000000) count=0.976613
;	src/level.c: 160: }
;	genEndFunction
	jmp	__switch_prg0
;	Raw cost for generated ic 281 : (1, 6.000000) count=0.976613
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;------------------------------------------------------------
;Allocation info for local variables in function 'IsTileSolid'
;------------------------------------------------------------
;sloc0         Allocated with name '_IsTileSolid_sloc0_1_0'
;worldY        Allocated with name '_IsTileSolid_PARM_2'
;worldX        Allocated to registers a x 
;_previous_bank Allocated with name '_IsTileSolid__previous_bank_10000_130'
;column        Allocated with name '_IsTileSolid_column_10001_131'
;row           Allocated with name '_IsTileSolid_row_10001_131'
;worldMaxRow   Allocated to registers a x 
;index         Allocated to registers a x 
;tile          Allocated to registers a 
;------------------------------------------------------------
;------------------------------------------------------------
;Allocation info for local variables in function 'SetupCurrentLevel'
;------------------------------------------------------------
;sloc0         Allocated with name '_SetupCurrentLevel_sloc0_1_0'
;sloc1         Allocated with name '_SetupCurrentLevel_sloc1_1_0'
;_previous_bank Allocated with name '_SetupCurrentLevel__previous_bank_10000_136'
;i             Allocated to registers 
;j             Allocated to registers 
;__600000009   Allocated to registers 
;__600000010   Allocated to registers 
;__600000011   Allocated to registers 
;x             Allocated to registers 
;y             Allocated to registers 
;a             Allocated to registers 
;__400000013   Allocated to registers 
;__400000014   Allocated to registers 
;__400000015   Allocated to registers 
;first_tile    Allocated to registers 
;nb_tiles      Allocated to registers 
;data          Allocated to registers 
;__400000017   Allocated to registers 
;__400000018   Allocated to registers 
;__400000019   Allocated to registers 
;first_tile    Allocated to registers 
;nb_tiles      Allocated to registers 
;data          Allocated to registers 
;__400000021   Allocated to registers 
;__400000022   Allocated to registers 
;__400000023   Allocated to registers 
;first_tile    Allocated to registers 
;nb_tiles      Allocated to registers 
;data          Allocated to registers 
;------------------------------------------------------------
	.area _CODE
	.area _XINIT
__xinit__currentLevel:
	.db #0xff	; 255
__xinit__nextLevel:
	.db #0x00	; 0
	.area _CABS    (ABS)
