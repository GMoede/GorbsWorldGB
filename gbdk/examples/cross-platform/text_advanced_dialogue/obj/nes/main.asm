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
	.globl _ClearScreen
	.globl _DrawTextAdvanced
	.globl _vsyncMultiple
	.globl _ResetLoadedCharacters
	.globl _HideDialgoueBox
	.globl _ShowDialgoueBox
	.globl _ClearDialogueBox
	.globl _WaitForAButton
	.globl _BreakLineEarly
	.globl _IsAlphaNumeric
	.globl _GetTileForCharacter
	.globl _MoveWindow
	.globl _fill_bkg_rect
	.globl _set_sprite_native_data
	.globl _set_bkg_native_data
	.globl _set_bkg_tile_xy
	.globl _set_bkg_tiles
	.globl _get_bkg_xy_addr
	.globl _set_vram_byte
	.globl _display_on
	.globl _vsync
	.globl _joypad
	.globl _loadedCharacterCount
	.globl _joypadPrevious
	.globl _joypadCurrent
	.globl _fontTilesStart
	.globl _windowYPosition
	.globl _BreakLineEarly_PARM_3
	.globl _BreakLineEarly_PARM_2
	.globl _loadedCharacters
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
_BreakLineEarly_sloc0_1_0:
	.ds 2
_BreakLineEarly_sloc1_1_0:
	.ds 2
_BreakLineEarly_sloc2_1_0:
	.ds 2
_DrawTextAdvanced_sloc0_1_0:
	.ds 2
_DrawTextAdvanced_sloc1_1_0:
	.ds 2
_DrawTextAdvanced_sloc2_1_0:
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
_loadedCharacters::
	.ds 46
_IsAlphaNumeric_character_10000_149:
	.ds 1
_BreakLineEarly_PARM_2:
	.ds 1
_BreakLineEarly_PARM_3:
	.ds 2
_BreakLineEarly_index_10000_154:
	.ds 2
_vsyncMultiple_count_10000_177:
	.ds 1
_DrawTextAdvanced_text_10000_181:
	.ds 2
_DrawTextAdvanced_index_10001_183:
	.ds 2
_DrawTextAdvanced_columnSize_10001_183:
	.ds 1
_DrawTextAdvanced_rowCount_10001_183:
	.ds 1
_DrawTextAdvanced_copyBuffer_10001_183:
	.ds 180
_DrawTextAdvanced_copyBufferCount_10001_183:
	.ds 1
_DrawTextAdvanced_vramAddress_10002_188:
	.ds 2
_DrawTextAdvanced_c_10002_188:
	.ds 1
_DrawTextAdvanced_vramTile_20002_189:
	.ds 1
_DrawTextAdvanced_shiftCount_70002_202:
	.ds 1
_main_emptyTile_10001_221:
	.ds 16
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area _DATA
_windowYPosition::
	.ds 2
_fontTilesStart::
	.ds 1
_joypadCurrent::
	.ds 1
_joypadPrevious::
	.ds 1
_loadedCharacterCount::
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
;Allocation info for local variables in function 'MoveWindow'
;------------------------------------------------------------
;	src/main.c: 50: void MoveWindow(void){
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function MoveWindow
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_MoveWindow:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/main.c: 57: }
;	genLabel
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 3 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'GetTileForCharacter'
;------------------------------------------------------------
;character     Allocated to registers y 
;vramTile      Allocated to registers x 
;------------------------------------------------------------
;	src/main.c: 60: uint8_t GetTileForCharacter(char character) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function GetTileForCharacter
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_GetTileForCharacter:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	tay
;	Raw cost for generated ic 2 : (1, 2.000000) count=1.000000
;	src/main.c: 62: uint8_t vramTile=0;
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 3 : (2, 2.000000) count=1.000000
;	src/main.c: 68: if      (character >= 'a' && character <= 'z') vramTile = (character - 'a') + 1;
;	genCmp
	tya
	sec
	sbc	#0x61
	bvs	00216$
	bpl	00215$
	bmi	00120$
00216$:
	bpl	00120$
00215$:
;	Raw cost for generated ic 4 : (15, 19.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCmp
	lda	#0x7a
	sec
	sty	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	bvs	00219$
	bpl	00218$
	bmi	00120$
00219$:
	bpl	00120$
00218$:
;	Raw cost for generated ic 8 : (18, 23.400002) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 9 : (0, 0.000000) count=0.750000
;	genPlus
;	genPlusIncr
	tya
	clc
	adc	#0xa0
	tax
;	Raw cost for generated ic 12 : (5, 8.000000) count=0.562500
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 14 : (3, 3.000000) count=0.562500
;	genLabel
00120$:
;	Raw cost for generated ic 15 : (0, 0.000000) count=0.437500
;	src/main.c: 69: else if (character >= 'A' && character <= 'Z') vramTile = (character - 'A') + 1;
;	genCmp
	tya
	sec
	sbc	#0x41
	bvs	00222$
	bpl	00221$
	bmi	00116$
00222$:
	bpl	00116$
00221$:
;	Raw cost for generated ic 16 : (15, 19.400002) count=0.437500
;	skipping generated iCode
;	Raw cost for generated ic 17 : (0, 0.000000) count=0.437500
;	genCmp
	lda	#0x5a
	sec
	sty	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	bvs	00225$
	bpl	00224$
	bmi	00116$
00225$:
	bpl	00116$
00224$:
;	Raw cost for generated ic 20 : (18, 23.400002) count=0.328125
;	skipping generated iCode
;	Raw cost for generated ic 21 : (0, 0.000000) count=0.328125
;	genPlus
;	genPlusIncr
	tya
	clc
	adc	#0xc0
	tax
;	Raw cost for generated ic 24 : (5, 8.000000) count=0.246094
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 26 : (3, 3.000000) count=0.246094
;	genLabel
00116$:
;	Raw cost for generated ic 27 : (0, 0.000000) count=0.191406
;	src/main.c: 70: else if (character >= '0' && character <= '9') vramTile = (character - '0') + 27;
;	genCmp
	tya
	sec
	sbc	#0x30
	bvs	00228$
	bpl	00227$
	bmi	00112$
00228$:
	bpl	00112$
00227$:
;	Raw cost for generated ic 28 : (15, 19.400002) count=0.191406
;	skipping generated iCode
;	Raw cost for generated ic 29 : (0, 0.000000) count=0.191406
;	genCmp
	lda	#0x39
	sec
	sty	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	bvs	00231$
	bpl	00230$
	bmi	00112$
00231$:
	bpl	00112$
00230$:
;	Raw cost for generated ic 32 : (18, 23.400002) count=0.143555
;	skipping generated iCode
;	Raw cost for generated ic 33 : (0, 0.000000) count=0.143555
;	genPlus
;	genPlusIncr
	tya
	clc
	adc	#0xeb
	tax
;	Raw cost for generated ic 36 : (5, 8.000000) count=0.107666
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 38 : (3, 3.000000) count=0.107666
;	genLabel
00112$:
;	Raw cost for generated ic 39 : (0, 0.000000) count=0.083740
;	src/main.c: 72: switch(character) {
;	genCmpEQorNE
	cpy	#0x21
	beq	00101$
;	Raw cost for generated ic 40 : (7, 7.600000) count=0.083740
;	skipping generated iCode
;	Raw cost for generated ic 41 : (0, 0.000000) count=0.083740
;	genCmpEQorNE
	cpy	#0x2c
	beq	00106$
;	Raw cost for generated ic 42 : (7, 7.600000) count=0.062805
;	skipping generated iCode
;	Raw cost for generated ic 43 : (0, 0.000000) count=0.062805
;	genCmpEQorNE
	cpy	#0x2e
	beq	00107$
;	Raw cost for generated ic 44 : (7, 7.600000) count=0.047104
;	skipping generated iCode
;	Raw cost for generated ic 45 : (0, 0.000000) count=0.047104
;	genCmpEQorNE
	cpy	#0x2f
	beq	00104$
;	Raw cost for generated ic 46 : (7, 7.600000) count=0.035328
;	skipping generated iCode
;	Raw cost for generated ic 47 : (0, 0.000000) count=0.035328
;	genCmpEQorNE
	cpy	#0x3a
	beq	00102$
;	Raw cost for generated ic 48 : (7, 7.600000) count=0.026496
;	skipping generated iCode
;	Raw cost for generated ic 49 : (0, 0.000000) count=0.026496
;	genCmpEQorNE
	cpy	#0x3c
	beq	00108$
;	Raw cost for generated ic 50 : (7, 7.600000) count=0.019872
;	skipping generated iCode
;	Raw cost for generated ic 51 : (0, 0.000000) count=0.019872
;	genCmpEQorNE
	cpy	#0x3d
	beq	00105$
;	Raw cost for generated ic 52 : (7, 7.600000) count=0.014904
;	skipping generated iCode
;	Raw cost for generated ic 53 : (0, 0.000000) count=0.014904
;	genCmpEQorNE
	cpy	#0x3e
	beq	00109$
;	Raw cost for generated ic 54 : (7, 7.600000) count=0.011178
;	skipping generated iCode
;	Raw cost for generated ic 55 : (0, 0.000000) count=0.011178
;	genCmpEQorNE
	cpy	#0x3f
	beq	00103$
;	Raw cost for generated ic 56 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 57 : (0, 0.000000) count=0.000000
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 58 : (3, 3.000000) count=0.000000
;	src/main.c: 73: case '!': vramTile = 37; break;
;	genLabel
00101$:
;	Raw cost for generated ic 59 : (0, 0.000000) count=0.020935
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x25
;	Raw cost for generated ic 60 : (2, 2.000000) count=0.020935
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 61 : (3, 3.000000) count=0.020935
;	src/main.c: 74: case ':': vramTile = 38; break;
;	genLabel
00102$:
;	Raw cost for generated ic 62 : (0, 0.000000) count=0.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x26
;	Raw cost for generated ic 63 : (2, 2.000000) count=0.000000
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 64 : (3, 3.000000) count=0.000000
;	src/main.c: 75: case '?': vramTile = 39; break;
;	genLabel
00103$:
;	Raw cost for generated ic 65 : (0, 0.000000) count=0.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x27
;	Raw cost for generated ic 66 : (2, 2.000000) count=0.000000
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 67 : (3, 3.000000) count=0.000000
;	src/main.c: 76: case '/': vramTile = 40; break;
;	genLabel
00104$:
;	Raw cost for generated ic 68 : (0, 0.000000) count=0.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x28
;	Raw cost for generated ic 69 : (2, 2.000000) count=0.000000
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 70 : (3, 3.000000) count=0.000000
;	src/main.c: 77: case '=': vramTile = 41; break;
;	genLabel
00105$:
;	Raw cost for generated ic 71 : (0, 0.000000) count=0.011178
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x29
;	Raw cost for generated ic 72 : (2, 2.000000) count=0.011178
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 73 : (3, 3.000000) count=0.011178
;	src/main.c: 78: case ',': vramTile = 42; break;
;	genLabel
00106$:
;	Raw cost for generated ic 74 : (0, 0.000000) count=0.015701
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x2a
;	Raw cost for generated ic 75 : (2, 2.000000) count=0.015701
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 76 : (3, 3.000000) count=0.015701
;	src/main.c: 79: case '.': vramTile = 43; break;
;	genLabel
00107$:
;	Raw cost for generated ic 77 : (0, 0.000000) count=0.011776
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x2b
;	Raw cost for generated ic 78 : (2, 2.000000) count=0.011776
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 79 : (3, 3.000000) count=0.011776
;	src/main.c: 80: case '<': vramTile = 44; break;
;	genLabel
00108$:
;	Raw cost for generated ic 80 : (0, 0.000000) count=0.014904
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x2c
;	Raw cost for generated ic 81 : (2, 2.000000) count=0.014904
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 82 : (3, 3.000000) count=0.014904
;	src/main.c: 81: case '>': vramTile = 45; break;
;	genLabel
00109$:
;	Raw cost for generated ic 83 : (0, 0.000000) count=0.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x2d
;	Raw cost for generated ic 84 : (2, 2.000000) count=0.000000
;	src/main.c: 82: }
;	genLabel
00121$:
;	Raw cost for generated ic 89 : (0, 0.000000) count=0.990754
;	src/main.c: 85: return vramTile;
;	genRet
	txa
;	Raw cost for generated ic 90 : (1, 2.000000) count=0.990754
;	genLabel
;	Raw cost for generated ic 91 : (0, 0.000000) count=0.990754
;	src/main.c: 87: }
;	genEndFunction
	rts
;	Raw cost for generated ic 92 : (1, 6.000000) count=0.990754
;------------------------------------------------------------
;Allocation info for local variables in function 'IsAlphaNumeric'
;------------------------------------------------------------
;character     Allocated with name '_IsAlphaNumeric_character_10000_149'
;------------------------------------------------------------
;	src/main.c: 89: uint8_t IsAlphaNumeric(char character){
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function IsAlphaNumeric
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_IsAlphaNumeric:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	src/main.c: 92: if(character>='a'&&character<='z')return TRUE;
;	genCmp
	sta	_IsAlphaNumeric_character_10000_149
	sec
	sbc	#0x61
	bvs	00151$
	bpl	00150$
	bmi	00109$
00151$:
	bpl	00109$
00150$:
;	Raw cost for generated ic 3 : (17, 21.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCmp
	lda	#0x7a
	sec
	sbc	_IsAlphaNumeric_character_10000_149
	bvs	00154$
	bpl	00153$
	bmi	00109$
00154$:
	bpl	00109$
00153$:
;	Raw cost for generated ic 7 : (17, 21.400002) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 8 : (0, 0.000000) count=0.750000
;	genRet
	lda	#0x01
	rts
;	Raw cost for generated ic 11 : (5, 5.000000) count=0.562500
;	genLabel
00109$:
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	src/main.c: 93: else if(character>='A'&&character<='Z')return TRUE;
;	genCmp
	lda	_IsAlphaNumeric_character_10000_149
	sec
	sbc	#0x41
	bvs	00157$
	bpl	00156$
	bmi	00105$
00157$:
	bpl	00105$
00156$:
;	Raw cost for generated ic 14 : (17, 21.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	genCmp
	lda	#0x5a
	sec
	sbc	_IsAlphaNumeric_character_10000_149
	bvs	00160$
	bpl	00159$
	bmi	00105$
00160$:
	bpl	00105$
00159$:
;	Raw cost for generated ic 18 : (17, 21.400002) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 19 : (0, 0.000000) count=0.750000
;	genRet
	lda	#0x01
	rts
;	Raw cost for generated ic 22 : (5, 5.000000) count=0.562500
;	genLabel
00105$:
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.000000
;	src/main.c: 94: else if(character>='0'&&character<='9')return TRUE;
;	genCmp
	lda	_IsAlphaNumeric_character_10000_149
	sec
	sbc	#0x30
	bvs	00163$
	bpl	00162$
	bmi	00110$
00163$:
	bpl	00110$
00162$:
;	Raw cost for generated ic 25 : (17, 21.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 26 : (0, 0.000000) count=1.000000
;	genCmp
	lda	#0x39
	sec
	sbc	_IsAlphaNumeric_character_10000_149
	bvs	00166$
	bpl	00165$
	bmi	00110$
00166$:
	bpl	00110$
00165$:
;	Raw cost for generated ic 29 : (17, 21.400002) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 30 : (0, 0.000000) count=0.750000
;	genRet
	lda	#0x01
	rts
;	Raw cost for generated ic 33 : (5, 5.000000) count=0.562500
;	genLabel
00110$:
;	Raw cost for generated ic 36 : (0, 0.000000) count=1.000000
;	src/main.c: 96: return FALSE;
;	genRet
	lda	#0x00
;	Raw cost for generated ic 37 : (2, 2.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 38 : (0, 0.000000) count=1.000000
;	src/main.c: 97: }
;	genEndFunction
	rts
;	Raw cost for generated ic 39 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'BreakLineEarly'
;------------------------------------------------------------
;sloc0         Allocated with name '_BreakLineEarly_sloc0_1_0'
;sloc1         Allocated with name '_BreakLineEarly_sloc1_1_0'
;sloc2         Allocated with name '_BreakLineEarly_sloc2_1_0'
;columnSize    Allocated with name '_BreakLineEarly_PARM_2'
;text          Allocated with name '_BreakLineEarly_PARM_3'
;index         Allocated with name '_BreakLineEarly_index_10000_154'
;character     Allocated to registers 
;spaceLeftOnLine Allocated to registers 
;nextColumnSize Allocated to registers 
;------------------------------------------------------------
;	src/main.c: 99: uint8_t BreakLineEarly(uint16_t index, uint8_t columnSize, char* text){
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function BreakLineEarly
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_BreakLineEarly:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	src/main.c: 101: char character = text[index++];
;	genAssign
;	genAssignLit
;	genCopy
	sta	*_BreakLineEarly_sloc0_1_0
	stx	*(_BreakLineEarly_sloc0_1_0 + 1)
;	Raw cost for generated ic 3 : (4, 6.000000) count=1.000000
;	genPlus
;	genPlusIncr
	clc
	adc	#0x01
	sta	_BreakLineEarly_index_10000_154
	txa
	adc	#0x00
	sta	(_BreakLineEarly_index_10000_154 + 1)
;	Raw cost for generated ic 4 : (12, 16.000000) count=1.000000
;	genPlus
;	genPlusIncr
	lda	_BreakLineEarly_PARM_3
	clc
	adc	*_BreakLineEarly_sloc0_1_0
	sta	*_BreakLineEarly_sloc0_1_0
	lda	(_BreakLineEarly_PARM_3 + 1)
	adc	*(_BreakLineEarly_sloc0_1_0 + 1)
	sta	*(_BreakLineEarly_sloc0_1_0 + 1)
;	Raw cost for generated ic 6 : (15, 22.000000) count=1.000000
;	genPointerGet
	ldy	#0x00
	lda	[*_BreakLineEarly_sloc0_1_0],y
	tax
;	Raw cost for generated ic 7 : (5, 9.000000) count=1.000000
;	src/main.c: 104: if(columnSize>=INNER_DIALOGUE_BOX_WIDTH)return TRUE;
;	genCmp
	lda	_BreakLineEarly_PARM_2
	cmp	#0x1e
	bcc	00102$
;	Raw cost for generated ic 9 : (10, 11.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genRet
	lda	#0x01
	rts
;	Raw cost for generated ic 13 : (5, 5.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	src/main.c: 107: if(IsAlphaNumeric(character))return FALSE;
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	txa
	jsr	_IsAlphaNumeric
;	assignResultValue
;	Raw cost for generated ic 16 : (4, 8.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 17 : (7, 7.600000) count=1.000000
;	genRet
	lda	#0x00
	rts
;	Raw cost for generated ic 20 : (5, 5.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	src/main.c: 111: uint8_t nextColumnSize=columnSize+1;
;	genCast
;	genCopy
	lda	_BreakLineEarly_PARM_2
;	Raw cost for generated ic 25 : (3, 4.000000) count=1.000000
;	genPlus
;	genPlusIncr
	clc
	adc	#0x01
	sta	*_BreakLineEarly_sloc0_1_0
;	Raw cost for generated ic 26 : (5, 7.000000) count=1.000000
;	src/main.c: 114: while((character=text[index++])!='\0'){
;	genAssign
;	genAssignLit
;	genCopy
	lda	(_BreakLineEarly_index_10000_154 + 1)
	sta	*(_BreakLineEarly_sloc1_1_0 + 1)
	lda	_BreakLineEarly_index_10000_154
	sta	*_BreakLineEarly_sloc1_1_0
;	Raw cost for generated ic 58 : (10, 14.000000) count=1.000000
;	genLabel
00107$:
;	Raw cost for generated ic 28 : (0, 0.000000) count=2.285713
;	genPlus
;	genPlusIncr
	lda	_BreakLineEarly_PARM_3
	clc
	adc	*_BreakLineEarly_sloc1_1_0
	sta	*_BreakLineEarly_sloc2_1_0
	lda	(_BreakLineEarly_PARM_3 + 1)
	adc	*(_BreakLineEarly_sloc1_1_0 + 1)
	sta	*(_BreakLineEarly_sloc2_1_0 + 1)
;	Raw cost for generated ic 32 : (15, 22.000000) count=2.285713
;	genPlus
;	genPlusIncr
	inc	*_BreakLineEarly_sloc1_1_0
	bne	00151$
	inc	*(_BreakLineEarly_sloc1_1_0 + 1)
00151$:
;	Raw cost for generated ic 30 : (6, 12.600000) count=2.285713
;	genPointerGet
	ldy	#0x00
	lda	[*_BreakLineEarly_sloc2_1_0],y
;	Raw cost for generated ic 33 : (4, 7.000000) count=2.285713
;	genIfx
;	genIfxJump : z
	beq	00109$
;	Raw cost for generated ic 35 : (5, 5.600000) count=2.285713
;	src/main.c: 117: if(!IsAlphaNumeric(character))break;
;	Raw cost for generated ic 38 : (0, 0.000000) count=1.714284
;	genCall
;	genSend
	jsr	_IsAlphaNumeric
;	assignResultValue
;	Raw cost for generated ic 39 : (3, 6.000000) count=1.714284
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00109$
;	Raw cost for generated ic 40 : (7, 7.600000) count=1.714284
;	src/main.c: 120: nextColumnSize++;
;	genPlus
;	genPlusIncr
	inc	*_BreakLineEarly_sloc0_1_0
;	Raw cost for generated ic 46 : (2, 5.000000) count=1.285713
;	genGoto
	jmp	00107$
;	Raw cost for generated ic 48 : (3, 3.000000) count=1.285713
;	genLabel
00109$:
;	Raw cost for generated ic 49 : (0, 0.000000) count=0.999999
;	src/main.c: 124: return nextColumnSize>INNER_DIALOGUE_BOX_WIDTH;
;	genCmp
	lda	*_BreakLineEarly_sloc0_1_0
	cmp	#0x1e
	beq	00158$
	bcs	00156$
00158$:
	lda	#0x00
	rts
00156$:
	lda	#0x01
;	Raw cost for generated ic 50 : (15, 17.200001) count=0.999999
;	genRet
;	Raw cost for generated ic 51 : (0, 0.000000) count=0.999999
;	genLabel
;	Raw cost for generated ic 52 : (0, 0.000000) count=0.999999
;	src/main.c: 125: }   
;	genEndFunction
	rts
;	Raw cost for generated ic 53 : (1, 6.000000) count=0.999999
;------------------------------------------------------------
;Allocation info for local variables in function 'WaitForAButton'
;------------------------------------------------------------
;	src/main.c: 128: void WaitForAButton(void){
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function WaitForAButton
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_WaitForAButton:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/main.c: 129: while(TRUE){
;	genLabel
00105$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=15.846519
;	src/main.c: 131: joypadPrevious=joypadCurrent;
;	genAssign
;	genAssignLit
;	genCopy
	lda	_joypadCurrent
	sta	_joypadPrevious
;	Raw cost for generated ic 5 : (6, 8.000000) count=15.846519
;	src/main.c: 132: joypadCurrent = joypad();
;	genCall
	jsr	_joypad
;	assignResultValue
;	Raw cost for generated ic 7 : (3, 6.000000) count=15.846519
;	genAssign
;	genAssignLit
;	genCopy
	sta	_joypadCurrent
;	Raw cost for generated ic 9 : (3, 4.000000) count=15.846519
;	src/main.c: 134: if((joypadCurrent & J_A) && !(joypadPrevious & J_A))break;
;	genAnd
	and	#0x80
;	genIfxJump : z
	beq	00105$
;	Raw cost for generated ic 11 : (7, 7.600000) count=15.846519
;	skipping generated iCode
;	Raw cost for generated ic 12 : (0, 0.000000) count=15.846519
;	genCast
;	genCopy
	lda	_joypadPrevious
;	Raw cost for generated ic 15 : (3, 4.000000) count=3.961630
;	genAnd
	and	#0x80
;	genIfxJump : z
	bne	00105$
;	Raw cost for generated ic 16 : (7, 7.600000) count=3.961630
;	skipping generated iCode
;	Raw cost for generated ic 17 : (0, 0.000000) count=3.961630
;	genLabel
;	Raw cost for generated ic 24 : (0, 0.000000) count=0.990407
;	src/main.c: 137: }
;	genEndFunction
	rts
;	Raw cost for generated ic 25 : (1, 6.000000) count=0.990407
;------------------------------------------------------------
;Allocation info for local variables in function 'ClearDialogueBox'
;------------------------------------------------------------
;	src/main.c: 139: void ClearDialogueBox(void){
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function ClearDialogueBox
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ClearDialogueBox:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/main.c: 142: fill_winbkg_rect(1,DIALOGUE_BOX_Y+1,DEVICE_SCREEN_WIDTH-2,DIALOG_BOX_HEIGHT-2,0);
;	genAssign
;	genAssignLit
	ldx	#0x1e
	stx	_fill_bkg_rect_PARM_3
;	Raw cost for generated ic 4 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x05
	stx	_fill_bkg_rect_PARM_4
;	Raw cost for generated ic 5 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_fill_bkg_rect_PARM_5
;	Raw cost for generated ic 6 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x01
	ldx	#0x18
	jsr	_fill_bkg_rect
;	Raw cost for generated ic 7 : (7, 10.000000) count=1.000000
;	src/main.c: 145: fill_winbkg_rect(1,DIALOGUE_BOX_Y,DEVICE_SCREEN_WIDTH-2,1,2);
;	genAssign
;	genAssignLit
	ldx	#0x1e
	stx	_fill_bkg_rect_PARM_3
;	Raw cost for generated ic 10 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_fill_bkg_rect_PARM_4
;	Raw cost for generated ic 11 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	inx
	stx	_fill_bkg_rect_PARM_5
;	Raw cost for generated ic 12 : (4, 6.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x01
	ldx	#0x17
	jsr	_fill_bkg_rect
;	Raw cost for generated ic 13 : (7, 10.000000) count=1.000000
;	src/main.c: 146: set_winbkg_tile_xy(DEVICE_SCREEN_WIDTH-1,DIALOGUE_BOX_Y+DIALOG_BOX_HEIGHT-1,6);
;	genAssign
;	genAssignLit
	ldx	#0x06
	stx	_set_bkg_tile_xy_PARM_3
;	Raw cost for generated ic 16 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x1f
	ldx	#0x1d
	jsr	_set_bkg_tile_xy
;	Raw cost for generated ic 17 : (7, 10.000000) count=1.000000
;	src/main.c: 147: fill_winbkg_rect(1,DIALOGUE_BOX_Y+DIALOG_BOX_HEIGHT-1,DEVICE_SCREEN_WIDTH-2,1,2);
;	genAssign
;	genAssignLit
	ldx	#0x1e
	stx	_fill_bkg_rect_PARM_3
;	Raw cost for generated ic 20 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_fill_bkg_rect_PARM_4
;	Raw cost for generated ic 21 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	inx
	stx	_fill_bkg_rect_PARM_5
;	Raw cost for generated ic 22 : (4, 6.000000) count=1.000000
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x01
	ldx	#0x1d
	jsr	_fill_bkg_rect
;	Raw cost for generated ic 23 : (7, 10.000000) count=1.000000
;	src/main.c: 150: fill_winbkg_rect(0,DIALOGUE_BOX_Y+1,1,DIALOG_BOX_HEIGHT-2,4);
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_fill_bkg_rect_PARM_3
;	Raw cost for generated ic 26 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x05
	stx	_fill_bkg_rect_PARM_4
;	Raw cost for generated ic 27 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	dex
	stx	_fill_bkg_rect_PARM_5
;	Raw cost for generated ic 28 : (4, 6.000000) count=1.000000
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x00
	ldx	#0x18
	jsr	_fill_bkg_rect
;	Raw cost for generated ic 29 : (7, 10.000000) count=1.000000
;	src/main.c: 151: fill_winbkg_rect(DEVICE_SCREEN_WIDTH-1,DIALOGUE_BOX_Y+1,1,DIALOG_BOX_HEIGHT-2,4);
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_fill_bkg_rect_PARM_3
;	Raw cost for generated ic 32 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x05
	stx	_fill_bkg_rect_PARM_4
;	Raw cost for generated ic 33 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	dex
	stx	_fill_bkg_rect_PARM_5
;	Raw cost for generated ic 34 : (4, 6.000000) count=1.000000
;	Raw cost for generated ic 30 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 31 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x1f
	ldx	#0x18
	jsr	_fill_bkg_rect
;	Raw cost for generated ic 35 : (7, 10.000000) count=1.000000
;	src/main.c: 154: set_winbkg_tile_xy(0,DIALOGUE_BOX_Y,1);
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_set_bkg_tile_xy_PARM_3
;	Raw cost for generated ic 38 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 36 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 37 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x00
	ldx	#0x17
	jsr	_set_bkg_tile_xy
;	Raw cost for generated ic 39 : (7, 10.000000) count=1.000000
;	src/main.c: 155: set_winbkg_tile_xy(DEVICE_SCREEN_WIDTH-1,DIALOGUE_BOX_Y,3);
;	genAssign
;	genAssignLit
	ldx	#0x03
	stx	_set_bkg_tile_xy_PARM_3
;	Raw cost for generated ic 42 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 40 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 41 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x1f
	ldx	#0x17
	jsr	_set_bkg_tile_xy
;	Raw cost for generated ic 43 : (7, 10.000000) count=1.000000
;	src/main.c: 158: set_winbkg_tile_xy(0,DIALOGUE_BOX_Y+DIALOG_BOX_HEIGHT-1,5);
;	genAssign
;	genAssignLit
	ldx	#0x05
	stx	_set_bkg_tile_xy_PARM_3
;	Raw cost for generated ic 46 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 44 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 45 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x00
	ldx	#0x1d
	jsr	_set_bkg_tile_xy
;	Raw cost for generated ic 47 : (7, 10.000000) count=1.000000
;	src/main.c: 159: set_winbkg_tile_xy(DEVICE_SCREEN_WIDTH-1,DIALOGUE_BOX_Y+DIALOG_BOX_HEIGHT-1,6);
;	genAssign
;	genAssignLit
	ldx	#0x06
	stx	_set_bkg_tile_xy_PARM_3
;	Raw cost for generated ic 50 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 48 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 49 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x1f
	ldx	#0x1d
;	Raw cost for generated ic 51 : (7, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 52 : (0, 0.000000) count=1.000000
;	src/main.c: 160: }
;	genEndFunction
	jmp	_set_bkg_tile_xy
;	Raw cost for generated ic 53 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'ShowDialgoueBox'
;------------------------------------------------------------
;desiredWindowPosition Allocated to registers 
;------------------------------------------------------------
;	src/main.c: 162: void ShowDialgoueBox(void){
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function ShowDialgoueBox
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ShowDialgoueBox:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/main.c: 164: ClearDialogueBox();
;	genCall
	jsr	_ClearDialogueBox
;	Raw cost for generated ic 2 : (3, 6.000000) count=1.000000
;	src/main.c: 168: while(windowYPosition>desiredWindowPosition){
;	genLabel
00101$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=3.999997
;	genCmp
	lda	#0xb8
	sec
	sbc	_windowYPosition
	lda	#0x00
	sbc	(_windowYPosition + 1)
	bvc	00119$
	bpl	00118$
	bmi	00104$
00119$:
	bmi	00118$
	rts
00118$:
;	Raw cost for generated ic 5 : (22, 27.400002) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=3.999997
;	src/main.c: 170: windowYPosition-=4;
;	genCast
;	genCopy
	ldx	(_windowYPosition + 1)
	lda	_windowYPosition
;	Raw cost for generated ic 9 : (6, 8.000000) count=2.999997
;	genMinus
;	genMinusDec
	sec
	sbc	#0x04
	bcs	00121$
	dex
00121$:
;	Raw cost for generated ic 10 : (6, 8.600000) count=2.999997
;	genCast
;	genCopy
	sta	_windowYPosition
	stx	(_windowYPosition + 1)
;	Raw cost for generated ic 11 : (6, 8.000000) count=2.999997
;	src/main.c: 171: MoveWindow();
;	genCall
	jsr	_MoveWindow
;	Raw cost for generated ic 14 : (3, 6.000000) count=2.999997
;	src/main.c: 172: vsync();
;	genCall
	jsr	_vsync
;	Raw cost for generated ic 15 : (3, 6.000000) count=2.999997
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 16 : (3, 3.000000) count=2.999997
;	genLabel
00104$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=0.999999
;	src/main.c: 174: }
;	genEndFunction
	rts
;	Raw cost for generated ic 19 : (1, 6.000000) count=0.999999
;------------------------------------------------------------
;Allocation info for local variables in function 'HideDialgoueBox'
;------------------------------------------------------------
;desiredWindowPosition Allocated to registers 
;------------------------------------------------------------
;	src/main.c: 176: void HideDialgoueBox(void){
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function HideDialgoueBox
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_HideDialgoueBox:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/main.c: 180: while(windowYPosition<desiredWindowPosition){
;	genLabel
00101$:
;	Raw cost for generated ic 3 : (0, 0.000000) count=3.999997
;	genCmp
	lda	_windowYPosition
	sec
	sbc	#0xf0
	lda	(_windowYPosition + 1)
	sbc	#0x00
	bvc	00119$
	bpl	00118$
	bmi	00104$
00119$:
	bmi	00118$
	rts
00118$:
;	Raw cost for generated ic 4 : (22, 27.400002) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 5 : (0, 0.000000) count=3.999997
;	src/main.c: 182: windowYPosition+=4;
;	genCast
;	genCopy
	ldx	(_windowYPosition + 1)
	lda	_windowYPosition
;	Raw cost for generated ic 8 : (6, 8.000000) count=2.999997
;	genPlus
;	genPlusIncr
	clc
	adc	#0x04
	bcc	00121$
	inx
00121$:
;	Raw cost for generated ic 9 : (6, 8.600000) count=2.999997
;	genCast
;	genCopy
	sta	_windowYPosition
	stx	(_windowYPosition + 1)
;	Raw cost for generated ic 10 : (6, 8.000000) count=2.999997
;	src/main.c: 183: MoveWindow();
;	genCall
	jsr	_MoveWindow
;	Raw cost for generated ic 13 : (3, 6.000000) count=2.999997
;	src/main.c: 184: vsync();
;	genCall
	jsr	_vsync
;	Raw cost for generated ic 14 : (3, 6.000000) count=2.999997
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 15 : (3, 3.000000) count=2.999997
;	genLabel
00104$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=0.999999
;	src/main.c: 186: }
;	genEndFunction
	rts
;	Raw cost for generated ic 18 : (1, 6.000000) count=0.999999
;------------------------------------------------------------
;Allocation info for local variables in function 'ResetLoadedCharacters'
;------------------------------------------------------------
;i             Allocated to registers 
;------------------------------------------------------------
;	src/main.c: 188: void ResetLoadedCharacters(void){
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function ResetLoadedCharacters
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ResetLoadedCharacters:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/main.c: 190: loadedCharacterCount=1;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_loadedCharacterCount
;	Raw cost for generated ic 3 : (5, 6.000000) count=1.000000
;	src/main.c: 193: for(uint8_t i=0;i<45;i++)loadedCharacters[i]=255;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldy	#0x00
;	Raw cost for generated ic 22 : (2, 2.000000) count=1.000000
;	genLabel
00103$:
;	Raw cost for generated ic 5 : (0, 0.000000) count=3.999997
;	genCmp
	cpy	#0x2d
	bcs	00105$
;	Raw cost for generated ic 6 : (7, 7.600000) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 7 : (0, 0.000000) count=3.999997
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
	tya
;	Raw cost for generated ic 11 : (3, 4.000000) count=2.999997
;	genPointerSet
	sty	*(REGTEMP+0)
	tay
	lda	#0xff
	sta	(_loadedCharacters+0+0x0000),y
	ldy	*(REGTEMP+0)
;	Raw cost for generated ic 12 : (10, 14.000000) count=2.999997
;	genPlus
;	genPlusIncr
	iny
;	Raw cost for generated ic 15 : (1, 2.000000) count=2.999997
;	genGoto
	jmp	00103$
;	Raw cost for generated ic 17 : (3, 3.000000) count=2.999997
;	genLabel
00105$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=0.999999
;	src/main.c: 194: }
;	genEndFunction
	rts
;	Raw cost for generated ic 20 : (1, 6.000000) count=0.999999
;------------------------------------------------------------
;Allocation info for local variables in function 'vsyncMultiple'
;------------------------------------------------------------
;count         Allocated with name '_vsyncMultiple_count_10000_177'
;i             Allocated to registers 
;------------------------------------------------------------
;	src/main.c: 196: void vsyncMultiple(uint8_t count){
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function vsyncMultiple
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_vsyncMultiple:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_vsyncMultiple_count_10000_177
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	src/main.c: 199: for(uint8_t i=0;i<count;i++){
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 19 : (2, 2.000000) count=1.000000
;	genLabel
00103$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=3.999997
;	genCmp
	cmp	_vsyncMultiple_count_10000_177
	bcs	00105$
;	Raw cost for generated ic 5 : (8, 9.600000) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=3.999997
;	src/main.c: 201: vsync();
;	genCall
	pha
	jsr	_vsync
	pla
;	Raw cost for generated ic 9 : (5, 13.000000) count=2.999997
;	src/main.c: 199: for(uint8_t i=0;i<count;i++){
;	genPlus
;	genPlusIncr
	clc
	adc	#0x01
;	Raw cost for generated ic 12 : (3, 4.000000) count=2.999997
;	genGoto
	jmp	00103$
;	Raw cost for generated ic 14 : (3, 3.000000) count=2.999997
;	genLabel
00105$:
;	Raw cost for generated ic 16 : (0, 0.000000) count=0.999999
;	src/main.c: 203: }
;	genEndFunction
	rts
;	Raw cost for generated ic 17 : (1, 6.000000) count=0.999999
;------------------------------------------------------------
;Allocation info for local variables in function 'DrawTextAdvanced'
;------------------------------------------------------------
;sloc0         Allocated with name '_DrawTextAdvanced_sloc0_1_0'
;sloc1         Allocated with name '_DrawTextAdvanced_sloc1_1_0'
;sloc2         Allocated with name '_DrawTextAdvanced_sloc2_1_0'
;text          Allocated with name '_DrawTextAdvanced_text_10000_181'
;column        Allocated to registers 
;row           Allocated to registers 
;index         Allocated with name '_DrawTextAdvanced_index_10001_183'
;columnSize    Allocated with name '_DrawTextAdvanced_columnSize_10001_183'
;rowCount      Allocated with name '_DrawTextAdvanced_rowCount_10001_183'
;copyBuffer    Allocated with name '_DrawTextAdvanced_copyBuffer_10001_183'
;copyBufferCount Allocated with name '_DrawTextAdvanced_copyBufferCount_10001_183'
;k             Allocated to registers 
;t             Allocated to registers 
;vramAddress   Allocated with name '_DrawTextAdvanced_vramAddress_10002_188'
;c             Allocated with name '_DrawTextAdvanced_c_10002_188'
;vramTile      Allocated with name '_DrawTextAdvanced_vramTile_20002_189'
;__500020009   Allocated to registers a 
;__500020010   Allocated to registers 
;__500020011   Allocated to registers 
;first_tile    Allocated to registers 
;nb_tiles      Allocated to registers 
;data          Allocated to registers 
;k             Allocated to registers 
;t             Allocated to registers 
;shiftCount    Allocated with name '_DrawTextAdvanced_shiftCount_70002_202'
;k             Allocated to registers 
;t             Allocated to registers 
;copyBufferIndex Allocated to registers y 
;k             Allocated to registers 
;t             Allocated to registers 
;------------------------------------------------------------
;	src/main.c: 205: void DrawTextAdvanced(char* text){
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function DrawTextAdvanced
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_DrawTextAdvanced:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_DrawTextAdvanced_text_10000_181
	stx	(_DrawTextAdvanced_text_10000_181 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	src/main.c: 210: ShowDialgoueBox();
;	genCall
	jsr	_ShowDialgoueBox
;	Raw cost for generated ic 5 : (3, 6.000000) count=1.000000
;	src/main.c: 212: ResetLoadedCharacters();
;	genCall
	jsr	_ResetLoadedCharacters
;	Raw cost for generated ic 6 : (3, 6.000000) count=1.000000
;	src/main.c: 214: uint16_t index=0;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_DrawTextAdvanced_index_10001_183
	stx	(_DrawTextAdvanced_index_10001_183 + 1)
;	Raw cost for generated ic 7 : (8, 10.000000) count=1.000000
;	src/main.c: 215: uint8_t columnSize=0;
;	genAssign
;	genAssignLit
	stx	_DrawTextAdvanced_columnSize_10001_183
;	Raw cost for generated ic 8 : (3, 4.000000) count=1.000000
;	src/main.c: 216: uint8_t rowCount=0;
;	genAssign
;	genAssignLit
	stx	_DrawTextAdvanced_rowCount_10001_183
;	Raw cost for generated ic 9 : (3, 4.000000) count=1.000000
;	src/main.c: 221: uint8_t copyBufferCount=0;
;	genAssign
;	genAssignLit
	stx	_DrawTextAdvanced_copyBufferCount_10001_183
;	Raw cost for generated ic 10 : (3, 4.000000) count=1.000000
;	src/main.c: 224: for(uint8_t k=0;k<INNER_DIALOGUE_BOX_WIDTH;k++){
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 23 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 364 : (0, 0.000000) count=1.000000
;	genLabel
00138$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=3.969304
;	genCmp
	cpx	#0x1e
	bcs	00102$
;	Raw cost for generated ic 13 : (7, 7.600000) count=3.969304
;	skipping generated iCode
;	Raw cost for generated ic 14 : (0, 0.000000) count=3.969304
;	src/main.c: 225: for(uint8_t t=0;t<DIALOG_BOX_INNER_HEIGHT+1;t++){
;	genAssign
;	genAssignLit
;	genCopy
	ldy	#0x00
;	Raw cost for generated ic 343 : (2, 2.000000) count=2.976978
;	genAssign
;	genAssignLit
	sty	*_DrawTextAdvanced_sloc0_1_0
	sty	*(_DrawTextAdvanced_sloc0_1_0 + 1)
;	Raw cost for generated ic 346 : (4, 6.000000) count=2.976978
;	genLabel
00135$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=11.884892
;	genCmp
	cpy	#0x06
	bcs	00139$
;	Raw cost for generated ic 19 : (7, 7.600000) count=11.884892
;	skipping generated iCode
;	Raw cost for generated ic 20 : (0, 0.000000) count=11.884892
;	src/main.c: 226: copyBuffer[t][k]=0;
;	genPlus
;	genPlusIncr
	lda	#_DrawTextAdvanced_copyBuffer_10001_183
	clc
	adc	*_DrawTextAdvanced_sloc0_1_0
	sta	*_DrawTextAdvanced_sloc1_1_0
	lda	#>_DrawTextAdvanced_copyBuffer_10001_183
	adc	*(_DrawTextAdvanced_sloc0_1_0 + 1)
	sta	*(_DrawTextAdvanced_sloc1_1_0 + 1)
;	Raw cost for generated ic 25 : (13, 18.000000) count=8.913667
;	genPlus
;	genPlusIncr
	txa
	clc
	adc	*_DrawTextAdvanced_sloc1_1_0
	sta	*_DrawTextAdvanced_sloc1_1_0
	lda	#0x00
	adc	*(_DrawTextAdvanced_sloc1_1_0 + 1)
	sta	*(_DrawTextAdvanced_sloc1_1_0 + 1)
;	Raw cost for generated ic 27 : (12, 18.000000) count=8.913667
;	genPointerSet
	sty	*(REGTEMP+0)
	lda	#0x00
	tay
	sta	[*_DrawTextAdvanced_sloc1_1_0],y
	ldy	*(REGTEMP+0)
;	Raw cost for generated ic 28 : (9, 16.000000) count=8.913667
;	src/main.c: 225: for(uint8_t t=0;t<DIALOG_BOX_INNER_HEIGHT+1;t++){
;	genPlus
;	genPlusIncr
	lda	*_DrawTextAdvanced_sloc0_1_0
	clc
	adc	#0x1e
	sta	*_DrawTextAdvanced_sloc0_1_0
	bcc	00329$
	inc	*(_DrawTextAdvanced_sloc0_1_0 + 1)
00329$:
;	Raw cost for generated ic 347 : (11, 17.600000) count=8.913667
;	genPlus
;	genPlusIncr
	iny
;	Raw cost for generated ic 31 : (1, 2.000000) count=8.913667
;	genGoto
	jmp	00135$
;	Raw cost for generated ic 33 : (3, 3.000000) count=8.913667
;	genLabel
00139$:
;	Raw cost for generated ic 35 : (0, 0.000000) count=2.971223
;	src/main.c: 224: for(uint8_t k=0;k<INNER_DIALOGUE_BOX_WIDTH;k++){
;	genPlus
;	genPlusIncr
	inx
;	Raw cost for generated ic 37 : (1, 2.000000) count=2.971223
;	genGoto
	jmp	00138$
;	Raw cost for generated ic 39 : (3, 3.000000) count=2.971223
;	genLabel
00102$:
;	Raw cost for generated ic 40 : (0, 0.000000) count=0.992326
;	src/main.c: 232: uint8_t* vramAddress = get_winbkg_xy_addr(column,row);
;	Raw cost for generated ic 41 : (0, 0.000000) count=0.992326
;	Raw cost for generated ic 42 : (0, 0.000000) count=0.992326
;	genCall
;	genSend
	lda	#0x01
	ldx	#0x18
	jsr	_get_bkg_xy_addr
;	assignResultValue
	sta	_DrawTextAdvanced_vramAddress_10002_188
	stx	(_DrawTextAdvanced_vramAddress_10002_188 + 1)
;	Raw cost for generated ic 43 : (13, 18.000000) count=0.992326
;	src/main.c: 236: while((c=text[index])!='\0'){
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 193 : (0, 0.000000) count=0.992326
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 70 : (0, 0.000000) count=0.992326
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 55 : (0, 0.000000) count=0.992326
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 250 : (0, 0.000000) count=0.992326
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 286 : (0, 0.000000) count=0.992326
;	genLabel
00125$:
;	Raw cost for generated ic 45 : (0, 0.000000) count=2.912225
;	genPlus
;	genPlusIncr
	lda	_DrawTextAdvanced_text_10000_181
	clc
	adc	_DrawTextAdvanced_index_10001_183
	sta	*_DrawTextAdvanced_sloc1_1_0
	lda	(_DrawTextAdvanced_text_10000_181 + 1)
	adc	(_DrawTextAdvanced_index_10001_183 + 1)
	sta	*(_DrawTextAdvanced_sloc1_1_0 + 1)
;	Raw cost for generated ic 46 : (17, 24.000000) count=2.912225
;	genPointerGet
	ldy	#0x00
	lda	[*_DrawTextAdvanced_sloc1_1_0],y
;	Raw cost for generated ic 47 : (4, 7.000000) count=2.912225
;	genAssign
;	genAssignLit
;	genCopy
	sta	_DrawTextAdvanced_c_10002_188
;	Raw cost for generated ic 48 : (3, 4.000000) count=2.912225
;	genIfx
;	genIfxJump : z
	bne	00331$
	jmp	_HideDialgoueBox
00331$:
;	Raw cost for generated ic 49 : (5, 5.600000) count=2.912225
;	src/main.c: 238: uint8_t vramTile = GetTileForCharacter(c);
;	Raw cost for generated ic 52 : (0, 0.000000) count=2.184169
;	genCall
;	genSend
	lda	_DrawTextAdvanced_c_10002_188
	jsr	_GetTileForCharacter
;	assignResultValue
	sta	_DrawTextAdvanced_vramTile_20002_189
;	Raw cost for generated ic 53 : (9, 14.000000) count=2.184169
;	src/main.c: 241: if(loadedCharacters[vramTile]==255){
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
	stx	*(_DrawTextAdvanced_sloc1_1_0 + 1)
	lda	_DrawTextAdvanced_vramTile_20002_189
	sta	*_DrawTextAdvanced_sloc1_1_0
;	Raw cost for generated ic 56 : (9, 12.000000) count=2.184169
;	genPointerGet
;	setupDPTR
	clc
	lda	*_DrawTextAdvanced_sloc1_1_0
	adc	#<(_loadedCharacters+0)
	sta	*(DPTR+0)
	lda	*(_DrawTextAdvanced_sloc1_1_0 + 1)
	adc	#>(_loadedCharacters+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 57 : (17, 25.000000) count=2.184169
;	genCmpEQorNE
	cmp	#0xff
	bne	00104$
;	Raw cost for generated ic 58 : (7, 7.600000) count=2.184169
;	skipping generated iCode
;	Raw cost for generated ic 59 : (0, 0.000000) count=2.184169
;	src/main.c: 244: loadedCharacters[vramTile]=fontTilesStart+loadedCharacterCount++;
;	genAssign
;	genAssignLit
;	genCopy
	ldx	_loadedCharacterCount
;	Raw cost for generated ic 64 : (3, 4.000000) count=1.638127
;	genPlus
;	genPlusIncr
	txa
	clc
	adc	#0x01
	sta	_loadedCharacterCount
;	Raw cost for generated ic 65 : (7, 10.000000) count=1.638127
;	genPlus
;	genPlusIncr
	txa
	clc
	adc	_fontTilesStart
	sta	*_DrawTextAdvanced_sloc0_1_0
;	Raw cost for generated ic 68 : (7, 11.000000) count=1.638127
;	genPointerSet
;	setupDPTR
	clc
	lda	*_DrawTextAdvanced_sloc1_1_0
	adc	#<(_loadedCharacters+0)
	sta	*(DPTR+0)
	lda	*(_DrawTextAdvanced_sloc1_1_0 + 1)
	adc	#>(_loadedCharacters+0)
	sta	*(DPTR+1)
	lda	*_DrawTextAdvanced_sloc0_1_0
	sta	[DPTR],y
;	Raw cost for generated ic 69 : (17, 27.000000) count=1.638127
;	src/main.c: 247: set_native_tile_data(loadedCharacters[vramTile],1,Font_tiles+vramTile*TILE_SIZE_BYTES);
;	genCast
;	genCopy
	ldx	#0x00
	lda	_DrawTextAdvanced_vramTile_20002_189
;	Raw cost for generated ic 71 : (5, 6.000000) count=1.638127
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
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
;	Raw cost for generated ic 72 : (16, 34.000000) count=1.638127
;	genPlus
;	genPlusIncr
	clc
	adc	#_Font_tiles
	pha
	txa
	adc	#>_Font_tiles
	tax
	pla
;	Raw cost for generated ic 73 : (9, 17.000000) count=1.638127
;	genCast
;	genCopy
	sta	_set_bkg_native_data_PARM_3
	stx	(_set_bkg_native_data_PARM_3 + 1)
;	Raw cost for generated ic 74 : (6, 8.000000) count=1.638127
;	genCast
;	genCopy
	lda	*_DrawTextAdvanced_sloc0_1_0
;	Raw cost for generated ic 80 : (2, 3.000000) count=1.638127
;	../../../include/nes/nes.h: 1277: set_bkg_native_data(first_tile, nb_tiles, data);
;	genCast
;	genCopy
;	Raw cost for generated ic 90 : (0, 0.000000) count=1.638127
;	Raw cost for generated ic 91 : (0, 0.000000) count=1.638127
;	Raw cost for generated ic 92 : (0, 0.000000) count=1.638127
;	genCall
;	genSend
	ldx	#0x01
	jsr	_set_bkg_native_data
;	Raw cost for generated ic 94 : (5, 8.000000) count=1.638127
;	src/main.c: 247: set_native_tile_data(loadedCharacters[vramTile],1,Font_tiles+vramTile*TILE_SIZE_BYTES);
;	genLabel
00104$:
;	Raw cost for generated ic 122 : (0, 0.000000) count=2.184169
;	src/main.c: 253: set_vram_byte(vramAddress++,loadedCharacters[vramTile]);
;	genAssign
;	genAssignLit
;	genCopy
	ldx	(_DrawTextAdvanced_vramAddress_10002_188 + 1)
	lda	_DrawTextAdvanced_vramAddress_10002_188
;	Raw cost for generated ic 123 : (6, 8.000000) count=2.184169
;	genPlus
;	genPlusIncr
	inc	_DrawTextAdvanced_vramAddress_10002_188
	bne	00333$
	inc	(_DrawTextAdvanced_vramAddress_10002_188 + 1)
00333$:
;	Raw cost for generated ic 124 : (8, 14.600000) count=2.184169
;	genPointerGet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	setupDPTR
	clc
	lda	*_DrawTextAdvanced_sloc1_1_0
	adc	#<(_loadedCharacters+0)
	sta	*(DPTR+0)
	lda	*(_DrawTextAdvanced_sloc1_1_0 + 1)
	adc	#>(_loadedCharacters+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	_set_vram_byte_PARM_2
	ldx	*(REGTEMP+1)
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 128 : (28, 41.000000) count=2.184169
;	Raw cost for generated ic 129 : (0, 0.000000) count=2.184169
;	genCall
;	genSend
	jsr	_set_vram_byte
;	Raw cost for generated ic 131 : (3, 6.000000) count=2.184169
;	src/main.c: 261: if(rowCount<DIALOG_BOX_INNER_HEIGHT)copyBuffer[rowCount][copyBufferCount++] = loadedCharacters[vramTile];
;	Raw cost for generated ic 407 : (0, 0.000000) count=2.184169
;	Raw cost for generated ic 408 : (0, 0.000000) count=2.184169
;	genCall
;	genSend
	lda	_DrawTextAdvanced_rowCount_10001_183
	ldx	#0x1e
	jsr	__muluchar
;	assignResultValue
;	Raw cost for generated ic 409 : (8, 12.000000) count=2.184169
;	genPlus
;	genPlusIncr
	clc
	adc	#_DrawTextAdvanced_copyBuffer_10001_183
	sta	*_DrawTextAdvanced_sloc0_1_0
	txa
	adc	#>_DrawTextAdvanced_copyBuffer_10001_183
	sta	*(_DrawTextAdvanced_sloc0_1_0 + 1)
;	Raw cost for generated ic 138 : (10, 14.000000) count=2.184169
;	genAssign
;	genAssignLit
;	genCopy
	lda	_DrawTextAdvanced_copyBufferCount_10001_183
;	Raw cost for generated ic 139 : (3, 4.000000) count=2.184169
;	genPlus
;	genPlusIncr
	inc	_DrawTextAdvanced_copyBufferCount_10001_183
;	Raw cost for generated ic 140 : (3, 6.000000) count=2.184169
;	genPlus
;	genPlusIncr
	clc
	adc	*_DrawTextAdvanced_sloc0_1_0
	sta	*_DrawTextAdvanced_sloc0_1_0
	lda	#0x00
	adc	*(_DrawTextAdvanced_sloc0_1_0 + 1)
	sta	*(_DrawTextAdvanced_sloc0_1_0 + 1)
;	Raw cost for generated ic 143 : (11, 16.000000) count=2.184169
;	genPointerGet
;	setupDPTR
	clc
	lda	*_DrawTextAdvanced_sloc1_1_0
	adc	#<(_loadedCharacters+0)
	sta	*(DPTR+0)
	lda	*(_DrawTextAdvanced_sloc1_1_0 + 1)
	adc	#>(_loadedCharacters+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 146 : (17, 25.000000) count=2.184169
;	genPointerSet
	sta	[*_DrawTextAdvanced_sloc0_1_0],y
;	Raw cost for generated ic 147 : (2, 6.000000) count=2.184169
;	src/main.c: 263: index++;
;	genPlus
;	genPlusIncr
	inc	_DrawTextAdvanced_index_10001_183
	bne	00334$
	inc	(_DrawTextAdvanced_index_10001_183 + 1)
00334$:
;	Raw cost for generated ic 150 : (8, 14.600000) count=2.184169
;	src/main.c: 264: columnSize++;
;	genPlus
;	genPlusIncr
	inc	_DrawTextAdvanced_columnSize_10001_183
;	Raw cost for generated ic 153 : (3, 6.000000) count=2.184169
;	src/main.c: 267: if(BreakLineEarly(index,columnSize,text) || c=='.'){
;	genAssign
;	genAssignLit
;	genCopy
	lda	_DrawTextAdvanced_columnSize_10001_183
	sta	_BreakLineEarly_PARM_2
;	Raw cost for generated ic 156 : (6, 8.000000) count=2.184169
;	genAssign
;	genAssignLit
;	genCopy
	lda	(_DrawTextAdvanced_text_10000_181 + 1)
	sta	(_BreakLineEarly_PARM_3 + 1)
	lda	_DrawTextAdvanced_text_10000_181
	sta	_BreakLineEarly_PARM_3
;	Raw cost for generated ic 157 : (12, 16.000000) count=2.184169
;	Raw cost for generated ic 155 : (0, 0.000000) count=2.184169
;	genCall
;	genSend
	ldx	(_DrawTextAdvanced_index_10001_183 + 1)
	lda	_DrawTextAdvanced_index_10001_183
	jsr	_BreakLineEarly
;	assignResultValue
;	Raw cost for generated ic 158 : (9, 14.000000) count=2.184169
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00122$
;	Raw cost for generated ic 159 : (7, 7.600000) count=2.184169
;	genCmpEQorNE
	lda	_DrawTextAdvanced_c_10002_188
	cmp	#0x2e
	beq	00337$
	jmp	00123$
00337$:
;	Raw cost for generated ic 162 : (10, 11.600000) count=1.638127
;	skipping generated iCode
;	Raw cost for generated ic 163 : (0, 0.000000) count=1.638127
;	genLabel
00122$:
;	Raw cost for generated ic 165 : (0, 0.000000) count=1.774637
;	src/main.c: 269: rowCount+=LINE_SKIP;
;	genCast
;	genCopy
	lda	_DrawTextAdvanced_rowCount_10001_183
;	Raw cost for generated ic 166 : (3, 4.000000) count=1.774637
;	genPlus
;	genPlusIncr
	clc
	adc	#0x02
	sta	_DrawTextAdvanced_rowCount_10001_183
;	Raw cost for generated ic 167 : (6, 8.000000) count=1.774637
;	src/main.c: 272: copyBufferCount=0;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_DrawTextAdvanced_copyBufferCount_10001_183
;	Raw cost for generated ic 169 : (5, 6.000000) count=1.774637
;	src/main.c: 276: if(c=='.'||c=='?'){
;	genCmpEQorNE
	lda	_DrawTextAdvanced_c_10002_188
	cmp	#0x2e
	beq	00115$
;	Raw cost for generated ic 170 : (10, 11.600000) count=1.774637
;	skipping generated iCode
;	Raw cost for generated ic 171 : (0, 0.000000) count=1.774637
;	genCmpEQorNE
	lda	_DrawTextAdvanced_c_10002_188
	cmp	#0x3f
	bne	00116$
;	Raw cost for generated ic 174 : (10, 11.600000) count=1.330978
;	skipping generated iCode
;	Raw cost for generated ic 175 : (0, 0.000000) count=1.330978
;	genLabel
00115$:
;	Raw cost for generated ic 177 : (0, 0.000000) count=1.441893
;	src/main.c: 277: WaitForAButton();
;	genCall
	jsr	_WaitForAButton
;	Raw cost for generated ic 178 : (3, 6.000000) count=1.441893
;	src/main.c: 278: ClearDialogueBox();
;	genCall
	jsr	_ClearDialogueBox
;	Raw cost for generated ic 179 : (3, 6.000000) count=1.441893
;	src/main.c: 279: rowCount=0;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_DrawTextAdvanced_rowCount_10001_183
;	Raw cost for generated ic 180 : (5, 6.000000) count=1.441893
;	src/main.c: 282: for(uint8_t k=0;k<INNER_DIALOGUE_BOX_WIDTH;k++){
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 367 : (0, 0.000000) count=1.441893
;	genLabel
00144$:
;	Raw cost for generated ic 182 : (0, 0.000000) count=5.172993
;	genCmp
	cpx	#0x1e
	bcc	00340$
	jmp	00117$
00340$:
;	Raw cost for generated ic 183 : (7, 7.600000) count=5.172993
;	skipping generated iCode
;	Raw cost for generated ic 184 : (0, 0.000000) count=5.172993
;	src/main.c: 283: for(uint8_t t=0;t<DIALOG_BOX_INNER_HEIGHT+1;t++){
;	genAssign
;	genAssignLit
;	genCopy
	ldy	#0x00
;	Raw cost for generated ic 348 : (2, 2.000000) count=3.879744
;	genAssign
;	genAssignLit
	sty	*_DrawTextAdvanced_sloc1_1_0
	sty	*(_DrawTextAdvanced_sloc1_1_0 + 1)
;	Raw cost for generated ic 351 : (4, 6.000000) count=3.879744
;	genLabel
00141$:
;	Raw cost for generated ic 188 : (0, 0.000000) count=15.073043
;	genCmp
	cpy	#0x06
	bcs	00145$
;	Raw cost for generated ic 189 : (7, 7.600000) count=15.073043
;	skipping generated iCode
;	Raw cost for generated ic 190 : (0, 0.000000) count=15.073043
;	src/main.c: 284: copyBuffer[t][k]=0;
;	genPlus
;	genPlusIncr
	lda	#_DrawTextAdvanced_copyBuffer_10001_183
	clc
	adc	*_DrawTextAdvanced_sloc1_1_0
	sta	*_DrawTextAdvanced_sloc0_1_0
	lda	#>_DrawTextAdvanced_copyBuffer_10001_183
	adc	*(_DrawTextAdvanced_sloc1_1_0 + 1)
	sta	*(_DrawTextAdvanced_sloc0_1_0 + 1)
;	Raw cost for generated ic 195 : (13, 18.000000) count=11.304783
;	genPlus
;	genPlusIncr
	txa
	clc
	adc	*_DrawTextAdvanced_sloc0_1_0
	sta	*_DrawTextAdvanced_sloc0_1_0
	lda	#0x00
	adc	*(_DrawTextAdvanced_sloc0_1_0 + 1)
	sta	*(_DrawTextAdvanced_sloc0_1_0 + 1)
;	Raw cost for generated ic 197 : (12, 18.000000) count=11.304783
;	genPointerSet
	sty	*(REGTEMP+0)
	lda	#0x00
	tay
	sta	[*_DrawTextAdvanced_sloc0_1_0],y
	ldy	*(REGTEMP+0)
;	Raw cost for generated ic 198 : (9, 16.000000) count=11.304783
;	src/main.c: 283: for(uint8_t t=0;t<DIALOG_BOX_INNER_HEIGHT+1;t++){
;	genPlus
;	genPlusIncr
	lda	*_DrawTextAdvanced_sloc1_1_0
	clc
	adc	#0x1e
	sta	*_DrawTextAdvanced_sloc1_1_0
	bcc	00342$
	inc	*(_DrawTextAdvanced_sloc1_1_0 + 1)
00342$:
;	Raw cost for generated ic 352 : (11, 17.600000) count=11.304783
;	genPlus
;	genPlusIncr
	iny
;	Raw cost for generated ic 201 : (1, 2.000000) count=11.304783
;	genGoto
	jmp	00141$
;	Raw cost for generated ic 203 : (3, 3.000000) count=11.304783
;	genLabel
00145$:
;	Raw cost for generated ic 205 : (0, 0.000000) count=3.768261
;	src/main.c: 282: for(uint8_t k=0;k<INNER_DIALOGUE_BOX_WIDTH;k++){
;	genPlus
;	genPlusIncr
	inx
;	Raw cost for generated ic 207 : (1, 2.000000) count=3.768261
;	genGoto
	jmp	00144$
;	Raw cost for generated ic 209 : (3, 3.000000) count=3.768261
;	genLabel
00116$:
;	Raw cost for generated ic 212 : (0, 0.000000) count=0.332744
;	src/main.c: 291: else if( rowCount>=DIALOG_BOX_INNER_HEIGHT){
;	genCmp
	lda	_DrawTextAdvanced_rowCount_10001_183
	cmp	#0x05
	bcs	00343$
	jmp	00117$
00343$:
;	Raw cost for generated ic 213 : (10, 11.600000) count=0.332744
;	skipping generated iCode
;	Raw cost for generated ic 214 : (0, 0.000000) count=0.332744
;	src/main.c: 294: uint8_t shiftCount = rowCount-LINE_SKIP;
;	genCast
;	genCopy
	lda	_DrawTextAdvanced_rowCount_10001_183
;	Raw cost for generated ic 217 : (3, 4.000000) count=0.249558
;	genMinus
;	genMinusDec
	sec
	sbc	#0x02
	sta	_DrawTextAdvanced_shiftCount_70002_202
;	Raw cost for generated ic 218 : (6, 8.000000) count=0.249558
;	src/main.c: 296: for(uint8_t k=0;k<shiftCount;k++){
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_DrawTextAdvanced_sloc1_1_0
;	Raw cost for generated ic 371 : (4, 5.000000) count=0.249558
;	genLabel
00150$:
;	Raw cost for generated ic 221 : (0, 0.000000) count=0.903271
;	genCmp
	lda	*_DrawTextAdvanced_sloc1_1_0
	cmp	_DrawTextAdvanced_shiftCount_70002_202
	bcc	00344$
	jmp	00110$
00344$:
;	Raw cost for generated ic 222 : (10, 12.600000) count=0.903271
;	skipping generated iCode
;	Raw cost for generated ic 223 : (0, 0.000000) count=0.903271
;	src/main.c: 298: for(uint8_t t=0;t<DIALOG_BOX_INNER_HEIGHT;t++){
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_DrawTextAdvanced_sloc0_1_0
;	Raw cost for generated ic 353 : (4, 5.000000) count=0.677453
;	genLabel
00147$:
;	Raw cost for generated ic 227 : (0, 0.000000) count=2.638589
;	genCmp
	lda	*_DrawTextAdvanced_sloc0_1_0
	cmp	#0x05
	bcs	00109$
;	Raw cost for generated ic 228 : (9, 10.600000) count=2.638589
;	skipping generated iCode
;	Raw cost for generated ic 229 : (0, 0.000000) count=2.638589
;	src/main.c: 300: uint8_t copyBufferIndex = MIN(1+t+k,DIALOG_BOX_INNER_HEIGHT);
;	genCast
;	genCopy
	ldx	#0x00
	lda	*_DrawTextAdvanced_sloc0_1_0
;	Raw cost for generated ic 232 : (4, 5.000000) count=1.978942
;	genPlus
;	genPlusIncr
	clc
	adc	#0x01
	sta	*_DrawTextAdvanced_sloc2_1_0
	txa
	adc	#0x00
	sta	*(_DrawTextAdvanced_sloc2_1_0 + 1)
;	Raw cost for generated ic 233 : (10, 14.000000) count=1.978942
;	genCast
;	genCopy
	lda	*_DrawTextAdvanced_sloc1_1_0
;	Raw cost for generated ic 234 : (2, 3.000000) count=1.978942
;	genPlus
;	genPlusIncr
	clc
	adc	*_DrawTextAdvanced_sloc2_1_0
	pha
	txa
	adc	*(_DrawTextAdvanced_sloc2_1_0 + 1)
	tax
	pla
;	Raw cost for generated ic 235 : (9, 19.000000) count=1.978942
;	genCmp
	sec
	sbc	#0x05
	txa
	sbc	#0x00
	bvc	00347$
	bpl	00346$
	bmi	00160$
00347$:
	bpl	00160$
00346$:
;	Raw cost for generated ic 236 : (17, 21.400002) count=1.978942
;	skipping generated iCode
;	Raw cost for generated ic 237 : (0, 0.000000) count=1.978942
;	genCast
;	genCopy
	ldx	*_DrawTextAdvanced_sloc0_1_0
;	Raw cost for generated ic 238 : (2, 3.000000) count=1.484207
;	genPlus
;	genPlusIncr
	inx
;	Raw cost for generated ic 239 : (1, 2.000000) count=1.484207
;	genCast
;	genCopy
	lda	*_DrawTextAdvanced_sloc1_1_0
;	Raw cost for generated ic 240 : (2, 3.000000) count=1.484207
;	genPlus
;	genPlusIncr
	clc
	stx	*(REGTEMP+0)
	adc	*(REGTEMP+0)
	tay
;	Raw cost for generated ic 241 : (6, 10.000000) count=1.484207
;	genGoto
	jmp	00161$
;	Raw cost for generated ic 243 : (3, 3.000000) count=1.484207
;	genLabel
00160$:
;	Raw cost for generated ic 244 : (0, 0.000000) count=0.494736
;	genAssign
;	genAssignLit
;	genCopy
	ldy	#0x05
;	Raw cost for generated ic 245 : (2, 2.000000) count=0.494736
;	genLabel
00161$:
;	Raw cost for generated ic 246 : (0, 0.000000) count=1.978942
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 247 : (0, 0.000000) count=1.978942
;	src/main.c: 302: set_text_tiles(1,DIALOGUE_BOX_Y+1+t,INNER_DIALOGUE_BOX_WIDTH,1,copyBuffer[copyBufferIndex]);
;	genCast
;	genCopy
	lda	*_DrawTextAdvanced_sloc0_1_0
;	Raw cost for generated ic 248 : (2, 3.000000) count=1.978942
;	genPlus
;	genPlusIncr
	clc
	adc	#0x18
	sta	*_DrawTextAdvanced_sloc2_1_0
;	Raw cost for generated ic 249 : (5, 7.000000) count=1.978942
;	Raw cost for generated ic 410 : (0, 0.000000) count=1.978942
;	Raw cost for generated ic 411 : (0, 0.000000) count=1.978942
;	genCall
;	genSend
	tya
	ldx	#0x1e
	jsr	__muluchar
;	assignResultValue
;	Raw cost for generated ic 412 : (6, 10.000000) count=1.978942
;	genPlus
;	genPlusIncr
	clc
	adc	#_DrawTextAdvanced_copyBuffer_10001_183
	pha
	txa
	adc	#>_DrawTextAdvanced_copyBuffer_10001_183
	tax
	pla
;	Raw cost for generated ic 252 : (9, 17.000000) count=1.978942
;	genCast
;	genCopy
	sta	_set_bkg_tiles_PARM_5
	stx	(_set_bkg_tiles_PARM_5 + 1)
;	Raw cost for generated ic 253 : (6, 8.000000) count=1.978942
;	genAssign
;	genAssignLit
	ldx	#0x1e
	stx	_set_bkg_tiles_PARM_3
;	Raw cost for generated ic 256 : (5, 6.000000) count=1.978942
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_set_bkg_tiles_PARM_4
;	Raw cost for generated ic 257 : (5, 6.000000) count=1.978942
;	Raw cost for generated ic 254 : (0, 0.000000) count=1.978942
;	Raw cost for generated ic 255 : (0, 0.000000) count=1.978942
;	genCall
;	genSend
	txa
	ldx	*_DrawTextAdvanced_sloc2_1_0
	jsr	_set_bkg_tiles
;	Raw cost for generated ic 259 : (6, 11.000000) count=1.978942
;	src/main.c: 298: for(uint8_t t=0;t<DIALOG_BOX_INNER_HEIGHT;t++){
;	genPlus
;	genPlusIncr
	inc	*_DrawTextAdvanced_sloc0_1_0
;	Raw cost for generated ic 262 : (2, 5.000000) count=1.978942
;	genGoto
	jmp	00147$
;	Raw cost for generated ic 264 : (3, 3.000000) count=1.978942
;	genLabel
00109$:
;	Raw cost for generated ic 265 : (0, 0.000000) count=0.659647
;	src/main.c: 306: vsyncMultiple(LINE_SKIP_DELAY);
;	Raw cost for generated ic 266 : (0, 0.000000) count=0.659647
;	genCall
;	genSend
	lda	#0x07
	jsr	_vsyncMultiple
;	Raw cost for generated ic 267 : (5, 8.000000) count=0.659647
;	src/main.c: 296: for(uint8_t k=0;k<shiftCount;k++){
;	genPlus
;	genPlusIncr
	inc	*_DrawTextAdvanced_sloc1_1_0
;	Raw cost for generated ic 270 : (2, 5.000000) count=0.659647
;	genGoto
	jmp	00150$
;	Raw cost for generated ic 272 : (3, 3.000000) count=0.659647
;	genLabel
00110$:
;	Raw cost for generated ic 273 : (0, 0.000000) count=0.234000
;	src/main.c: 310: for(uint8_t k=0;k<INNER_DIALOGUE_BOX_WIDTH;k++){
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_DrawTextAdvanced_sloc2_1_0
;	Raw cost for generated ic 374 : (4, 5.000000) count=0.234000
;	genLabel
00156$:
;	Raw cost for generated ic 275 : (0, 0.000000) count=0.800072
;	genCmp
	lda	*_DrawTextAdvanced_sloc2_1_0
	cmp	#0x1e
	bcs	00112$
;	Raw cost for generated ic 276 : (9, 10.600000) count=0.800072
;	skipping generated iCode
;	Raw cost for generated ic 277 : (0, 0.000000) count=0.800072
;	src/main.c: 311: for(uint8_t t=0;t<DIALOG_BOX_INNER_HEIGHT;t++){
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 356 : (2, 2.000000) count=0.600054
;	genAssign
;	genAssignLit
	stx	*_DrawTextAdvanced_sloc1_1_0
	stx	*(_DrawTextAdvanced_sloc1_1_0 + 1)
;	Raw cost for generated ic 359 : (4, 6.000000) count=0.600054
;	genLabel
00153$:
;	Raw cost for generated ic 281 : (0, 0.000000) count=2.298269
;	genCmp
	cpx	#0x05
	bcs	00157$
;	Raw cost for generated ic 282 : (7, 7.600000) count=2.298269
;	skipping generated iCode
;	Raw cost for generated ic 283 : (0, 0.000000) count=2.298269
;	src/main.c: 312: copyBuffer[t][k]=0;
;	genPlus
;	genPlusIncr
	lda	#_DrawTextAdvanced_copyBuffer_10001_183
	clc
	adc	*_DrawTextAdvanced_sloc1_1_0
	sta	*_DrawTextAdvanced_sloc0_1_0
	lda	#>_DrawTextAdvanced_copyBuffer_10001_183
	adc	*(_DrawTextAdvanced_sloc1_1_0 + 1)
	sta	*(_DrawTextAdvanced_sloc0_1_0 + 1)
;	Raw cost for generated ic 288 : (13, 18.000000) count=1.723701
;	genPlus
;	genPlusIncr
	lda	*_DrawTextAdvanced_sloc0_1_0
	clc
	adc	*_DrawTextAdvanced_sloc2_1_0
	sta	*_DrawTextAdvanced_sloc0_1_0
	lda	*(_DrawTextAdvanced_sloc0_1_0 + 1)
	adc	#0x00
	sta	*(_DrawTextAdvanced_sloc0_1_0 + 1)
;	Raw cost for generated ic 290 : (13, 19.000000) count=1.723701
;	genPointerSet
	lda	#0x00
	tay
	sta	[*_DrawTextAdvanced_sloc0_1_0],y
;	Raw cost for generated ic 291 : (5, 10.000000) count=1.723701
;	src/main.c: 311: for(uint8_t t=0;t<DIALOG_BOX_INNER_HEIGHT;t++){
;	genPlus
;	genPlusIncr
	lda	*_DrawTextAdvanced_sloc1_1_0
	clc
	adc	#0x1e
	sta	*_DrawTextAdvanced_sloc1_1_0
	bcc	00351$
	inc	*(_DrawTextAdvanced_sloc1_1_0 + 1)
00351$:
;	Raw cost for generated ic 360 : (11, 17.600000) count=1.723701
;	genPlus
;	genPlusIncr
	inx
;	Raw cost for generated ic 294 : (1, 2.000000) count=1.723701
;	genGoto
	jmp	00153$
;	Raw cost for generated ic 296 : (3, 3.000000) count=1.723701
;	genLabel
00157$:
;	Raw cost for generated ic 298 : (0, 0.000000) count=0.574567
;	src/main.c: 310: for(uint8_t k=0;k<INNER_DIALOGUE_BOX_WIDTH;k++){
;	genPlus
;	genPlusIncr
	inc	*_DrawTextAdvanced_sloc2_1_0
;	Raw cost for generated ic 300 : (2, 5.000000) count=0.574567
;	genGoto
	jmp	00156$
;	Raw cost for generated ic 302 : (3, 3.000000) count=0.574567
;	genLabel
00112$:
;	Raw cost for generated ic 303 : (0, 0.000000) count=0.204856
;	src/main.c: 317: rowCount=LINE_SKIP;
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_DrawTextAdvanced_rowCount_10001_183
;	Raw cost for generated ic 304 : (5, 6.000000) count=0.204856
;	genLabel
00117$:
;	Raw cost for generated ic 306 : (0, 0.000000) count=1.581290
;	src/main.c: 322: vramAddress = get_winbkg_xy_addr(column,row+rowCount);
;	genPlus
;	genPlusIncr
	lda	_DrawTextAdvanced_rowCount_10001_183
	clc
	adc	#0x18
;	Raw cost for generated ic 307 : (6, 8.000000) count=1.581290
;	Raw cost for generated ic 308 : (0, 0.000000) count=1.581290
;	Raw cost for generated ic 309 : (0, 0.000000) count=1.581290
;	genCall
;	genSend
	tax
	lda	#0x01
	jsr	_get_bkg_xy_addr
;	assignResultValue
	sta	_DrawTextAdvanced_vramAddress_10002_188
	stx	(_DrawTextAdvanced_vramAddress_10002_188 + 1)
;	Raw cost for generated ic 310 : (12, 18.000000) count=1.581290
;	src/main.c: 324: columnSize=0;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_DrawTextAdvanced_columnSize_10001_183
;	Raw cost for generated ic 312 : (5, 6.000000) count=1.581290
;	src/main.c: 327: while(text[index]==' '){
;	genAssign
;	genAssignLit
;	genCopy
	ldx	(_DrawTextAdvanced_index_10001_183 + 1)
	lda	_DrawTextAdvanced_index_10001_183
;	Raw cost for generated ic 361 : (6, 8.000000) count=1.581290
;	genLabel
00119$:
;	Raw cost for generated ic 313 : (0, 0.000000) count=6.119635
;	genPlus
;	genPlusIncr
	pha
	clc
	adc	_DrawTextAdvanced_text_10000_181
	sta	*_DrawTextAdvanced_sloc2_1_0
	txa
	adc	(_DrawTextAdvanced_text_10000_181 + 1)
	sta	*(_DrawTextAdvanced_sloc2_1_0 + 1)
	pla
;	Raw cost for generated ic 314 : (14, 25.000000) count=6.119635
;	genPointerGet
	sta	*(REGTEMP+0)
	ldy	#0x00
	lda	[*_DrawTextAdvanced_sloc2_1_0],y
	tay
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 315 : (9, 15.000000) count=6.119635
;	genCmpEQorNE
	cpy	#0x20
	bne	00194$
;	Raw cost for generated ic 316 : (7, 7.600000) count=6.119635
;	skipping generated iCode
;	Raw cost for generated ic 317 : (0, 0.000000) count=6.119635
;	src/main.c: 328: index++;
;	genPlus
;	genPlusIncr
	clc
	adc	#0x01
	bcc	00119$
	inx
;	Raw cost for generated ic 321 : (6, 8.600000) count=4.589726
;	genGoto
	jmp	00119$
;	Raw cost for generated ic 323 : (3, 3.000000) count=4.589726
;	genLabel
00194$:
;	Raw cost for generated ic 362 : (0, 0.000000) count=1.529909
;	genAssign
;	genAssignLit
;	genCopy
	sta	_DrawTextAdvanced_index_10001_183
	stx	(_DrawTextAdvanced_index_10001_183 + 1)
;	Raw cost for generated ic 363 : (6, 8.000000) count=1.529909
;	genLabel
00123$:
;	Raw cost for generated ic 325 : (0, 0.000000) count=1.939440
;	src/main.c: 332: vsyncMultiple(TYPEWRITER_DELAY);
;	Raw cost for generated ic 326 : (0, 0.000000) count=1.939440
;	genCall
;	genSend
	lda	#0x02
	jsr	_vsyncMultiple
;	Raw cost for generated ic 327 : (5, 8.000000) count=1.939440
;	genGoto
	jmp	00125$
;	Raw cost for generated ic 328 : (3, 3.000000) count=1.939440
;	genLabel
;	Raw cost for generated ic 329 : (0, 0.000000) count=0.728056
;	src/main.c: 335: HideDialgoueBox();
;	genCall
;	Raw cost for generated ic 330 : (3, 6.000000) count=0.728056
;	genLabel
;	Raw cost for generated ic 331 : (0, 0.000000) count=0.728056
;	src/main.c: 337: }
;	genEndFunction
	jmp	_HideDialgoueBox
;	Raw cost for generated ic 332 : (1, 6.000000) count=0.728056
;------------------------------------------------------------
;Allocation info for local variables in function 'ClearScreen'
;------------------------------------------------------------
;	src/main.c: 341: void ClearScreen(void){
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function ClearScreen
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ClearScreen:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/main.c: 346: fill_bkg_rect(0,0,DEVICE_SCREEN_WIDTH,DEVICE_SCREEN_HEIGHT,0);
;	genAssign
;	genAssignLit
	ldx	#0x20
	stx	_fill_bkg_rect_PARM_3
;	Raw cost for generated ic 4 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x1e
	stx	_fill_bkg_rect_PARM_4
;	Raw cost for generated ic 5 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_fill_bkg_rect_PARM_5
;	Raw cost for generated ic 6 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	txa
;	Raw cost for generated ic 7 : (4, 8.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	src/main.c: 347: }
;	genEndFunction
	jmp	_fill_bkg_rect
;	Raw cost for generated ic 9 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;emptyTile     Allocated with name '_main_emptyTile_10001_221'
;i             Allocated to registers 
;__200010013   Allocated to registers 
;__200010014   Allocated to registers 
;__200010015   Allocated to registers 
;first_tile    Allocated to registers 
;nb_tiles      Allocated to registers 
;data          Allocated to registers 
;__200010017   Allocated to registers 
;__200010018   Allocated to registers 
;__200010019   Allocated to registers 
;first_tile    Allocated to registers 
;nb_tiles      Allocated to registers 
;data          Allocated to registers 
;------------------------------------------------------------
;	src/main.c: 349: void main(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/main.c: 351: DISPLAY_ON;
;	genCall
	jsr	_display_on
;	Raw cost for generated ic 2 : (3, 6.000000) count=1.000000
;	src/main.c: 352: SHOW_BKG;
;	genOr
	lda	_shadow_PPUMASK
	ora	#0x08
	sta	_shadow_PPUMASK
;	Raw cost for generated ic 3 : (8, 10.000000) count=1.000000
;	src/main.c: 358: fontTilesStart = DialogueBox_TILE_COUNT+1;
;	genAssign
;	genAssignLit
	ldx	#0x07
	stx	_fontTilesStart
;	Raw cost for generated ic 6 : (5, 6.000000) count=1.000000
;	src/main.c: 360: for(uint8_t i=0;i<TILE_SIZE_BYTES;i++)emptyTile[i]=0;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldy	#0x00
;	Raw cost for generated ic 126 : (2, 2.000000) count=1.000000
;	genLabel
00118$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=3.999997
;	genCmp
	cpy	#0x10
	bcs	00101$
;	Raw cost for generated ic 9 : (7, 7.600000) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 10 : (0, 0.000000) count=3.999997
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
	tya
;	Raw cost for generated ic 14 : (3, 4.000000) count=2.999997
;	genPointerSet
	sty	*(REGTEMP+0)
	tay
	txa
	sta	(_main_emptyTile_10001_221+0+0x0000),y
	ldy	*(REGTEMP+0)
;	Raw cost for generated ic 15 : (9, 14.000000) count=2.999997
;	genPlus
;	genPlusIncr
	iny
;	Raw cost for generated ic 18 : (1, 2.000000) count=2.999997
;	genGoto
	jmp	00118$
;	Raw cost for generated ic 20 : (3, 3.000000) count=2.999997
;	genLabel
00101$:
;	Raw cost for generated ic 21 : (0, 0.000000) count=0.999999
;	src/main.c: 362: set_native_tile_data(0,1,emptyTile);
;	genCast
;	genCopy
	lda	#>_main_emptyTile_10001_221
	sta	(_set_bkg_native_data_PARM_3 + 1)
	lda	#_main_emptyTile_10001_221
	sta	_set_bkg_native_data_PARM_3
;	Raw cost for generated ic 23 : (10, 12.000000) count=0.999999
;	../../../include/nes/nes.h: 1277: set_bkg_native_data(first_tile, nb_tiles, data);
;	Raw cost for generated ic 36 : (0, 0.000000) count=0.999999
;	Raw cost for generated ic 37 : (0, 0.000000) count=0.999999
;	genCall
;	genSend
	lda	#0x00
	ldx	#0x01
	jsr	_set_bkg_native_data
;	Raw cost for generated ic 39 : (7, 10.000000) count=0.999999
;	src/main.c: 364: ClearScreen();
;	genCall
	jsr	_ClearScreen
;	Raw cost for generated ic 67 : (3, 6.000000) count=0.999999
;	src/main.c: 366: set_native_tile_data(1,DialogueBox_TILE_COUNT,DialogueBox_tiles);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 68 : (0, 0.000000) count=0.999999
;	genCast
;	genCopy
	lda	#>_DialogueBox_tiles
	sta	(_set_bkg_native_data_PARM_3 + 1)
	lda	#_DialogueBox_tiles
	sta	_set_bkg_native_data_PARM_3
;	Raw cost for generated ic 69 : (10, 12.000000) count=0.999999
;	../../../include/nes/nes.h: 1277: set_bkg_native_data(first_tile, nb_tiles, data);
;	Raw cost for generated ic 82 : (0, 0.000000) count=0.999999
;	Raw cost for generated ic 83 : (0, 0.000000) count=0.999999
;	genCall
;	genSend
	lda	#0x01
	ldx	#0x06
	jsr	_set_bkg_native_data
;	Raw cost for generated ic 85 : (7, 10.000000) count=0.999999
;	src/main.c: 368: while(TRUE){
;	genLabel
00103$:
;	Raw cost for generated ic 115 : (0, 0.000000) count=68.918907
;	src/main.c: 372: DrawTextAdvanced("When the code reaches a period or question mark, it will pause and wait for you to press the A button for it to continue. Afterwards, It will start a new page and continue.  The code will automatically jump to a new line, when it cannot fully draw a word.  When both rows of text are full, the code will slide the current text upwards and continue. For every page, the code will dynamically populate VRAM. Only letters and characters used, will be loaded into VRAM.");
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 116 : (0, 0.000000) count=68.918907
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 117 : (0, 0.000000) count=68.918907
;	Raw cost for generated ic 118 : (0, 0.000000) count=68.918907
;	genCall
;	genSend
	ldx	#>___str_0
	lda	#___str_0
	jsr	_DrawTextAdvanced
;	Raw cost for generated ic 119 : (7, 10.000000) count=68.918907
;	genGoto
	jmp	00103$
;	Raw cost for generated ic 120 : (3, 3.000000) count=68.918907
;	genLabel
;	Raw cost for generated ic 122 : (0, 0.000000) count=0.000000
;	src/main.c: 375: }
;	genEndFunction
	rts
;	Raw cost for generated ic 123 : (1, 6.000000) count=0.000000
	.area _CODE
___str_0:
	.ascii "When the code reaches a period or question mark, it will pau"
	.ascii "se and wait for you to press the A button for it to continue"
	.ascii ". Afterwards, It will start a new page and continue.  The co"
	.ascii "de will automatically jump to a new line, when it cannot ful"
	.ascii "ly draw a word.  When both rows of text are full, the code w"
	.ascii "ill slide the current text upwards and continue. For every p"
	.ascii "age, the code will dynamically populate VRAM. Only letters a"
	.ascii "nd characters used, will be loaded into VRAM."
	.db 0x00
	.area _XINIT
__xinit__windowYPosition:
	.dw #0x00f0
__xinit__fontTilesStart:
	.db #0x00	; 0
__xinit__joypadCurrent:
	.db #0x00	; 0
__xinit__joypadPrevious:
	.db #0x00	; 0
__xinit__loadedCharacterCount:
	.db #0x00	; 0
	.area _CABS    (ABS)
