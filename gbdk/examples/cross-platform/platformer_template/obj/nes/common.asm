;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module common
	
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
	.globl _hide_sprites_range
	.globl __switch_prg0
	.globl _fill_bkg_rect
	.globl _set_sprite_native_data
	.globl _set_bkg_native_data
	.globl _set_bkg_tiles
	.globl _display_off
	.globl _display_on
	.globl _vsync
	.globl _joypad
	.globl _set_bkg_palette
	.globl _joypadPrevious
	.globl _joypadCurrent
	.globl _ShowCentered_PARM_7
	.globl _ShowCentered_PARM_6
	.globl _ShowCentered_PARM_5
	.globl _ShowCentered_PARM_4
	.globl _ShowCentered_PARM_3
	.globl _setBKGPalettes_PARM_2
	.globl _OAMDMA
	.globl _PPUDATA
	.globl _PPUADDR
	.globl _PPUSCROLL
	.globl _OAMDATA
	.globl _OAMADDR
	.globl _PPUSTATUS
	.globl _PPUMASK
	.globl _PPUCTRL
	.globl _WaitForStartOrA
	.globl _setBKGPalettes
	.globl _ShowCentered
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area _ZP      (PAG)
_ShowCentered_sloc0_1_0:
	.ds 1
_ShowCentered_sloc1_1_0:
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
_setBKGPalettes_PARM_2:
	.ds 2
_ShowCentered_PARM_3:
	.ds 1
_ShowCentered_PARM_4:
	.ds 2
_ShowCentered_PARM_5:
	.ds 1
_ShowCentered_PARM_6:
	.ds 2
_ShowCentered_PARM_7:
	.ds 2
_ShowCentered_width_10000_136:
	.ds 1
_ShowCentered__previous_bank_10001_138:
	.ds 1
_ShowCentered_titleRow_10002_139:
	.ds 1
_ShowCentered_titleColumn_10002_139:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area _DATA
_joypadCurrent::
	.ds 1
_joypadPrevious::
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
;	src/common.c: 24: void setBKGPalettes(uint8_t count, const palette_color_t *palettes) NONBANKED{
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function setBKGPalettes
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_setBKGPalettes:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	src/common.c: 35: set_bkg_palette(0, count, palettes);
;	genAssign
;	genAssignLit
;	genCopy
	ldx	(_setBKGPalettes_PARM_2 + 1)
	stx	(_set_bkg_palette_PARM_3 + 1)
	ldx	_setBKGPalettes_PARM_2
	stx	_set_bkg_palette_PARM_3
;	Raw cost for generated ic 5 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tax
	lda	#0x00
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	src/common.c: 37: }
;	genEndFunction
	jmp	_set_bkg_palette
;	Raw cost for generated ic 8 : (1, 6.000000) count=1.000000
;	src/common.c: 40: void ShowCentered(uint8_t width,uint8_t height,uint8_t bank, uint8_t* tileData, uint8_t tileCount, uint8_t* mapData, const palette_color_t* palettes) NONBANKED{
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function ShowCentered
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ShowCentered:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_ShowCentered_width_10000_136
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	genReceive
	txa
;	Raw cost for generated ic 3 : (1, 2.000000) count=1.000000
;	src/common.c: 43: DISPLAY_OFF;
;	genCall
	pha
	jsr	_display_off
	pla
;	Raw cost for generated ic 4 : (5, 13.000000) count=1.000000
;	src/common.c: 45: uint8_t _previous_bank = CURRENT_BANK;
;	genAssign
;	genAssignLit
;	genCopy
	ldx	__current_bank
	stx	_ShowCentered__previous_bank_10001_138
;	Raw cost for generated ic 5 : (6, 8.000000) count=1.000000
;	src/common.c: 49: hide_sprites_range(0,MAX_HARDWARE_SPRITES);
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	genCall
	pha
;	genSend
	lda	#0x00
	ldx	#0x40
	jsr	_hide_sprites_range
	pla
;	Raw cost for generated ic 8 : (9, 17.000000) count=1.000000
;	../../../include/nes/nes.h: 975: bkg_scroll_x = (uint8_t)x;
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
	stx	_bkg_scroll_x
;	Raw cost for generated ic 13 : (5, 7.000000) count=1.000000
;	../../../include/nes/nes.h: 976: bkg_scroll_y = (uint8_t)(y >= 240 ? (y - 240) : y);
;	genAssign
;	genAssignLit
;	genCopy
	stx	_bkg_scroll_y
;	Raw cost for generated ic 25 : (3, 5.000000) count=1.000000
;	src/common.c: 54: uint8_t titleRow = (DEVICE_SCREEN_HEIGHT-(height>>3))/2;
;	genRightShift
;	genRightShiftLiteral
;	genrshOne
	lsr	a
	lsr	a
	lsr	a
;	Raw cost for generated ic 27 : (5, 9.000000) count=1.000000
;	genCast
;	genCopy
	sta	*_ShowCentered_sloc0_1_0
;	Raw cost for generated ic 28 : (2, 3.000000) count=1.000000
;	genMinus
;	genMinusDec
	sta	*(REGTEMP+0)
	lda	#0x1e
	sec
	sbc	*(REGTEMP+0)
	sta	*_ShowCentered_sloc1_1_0
	txa
	sbc	#0x00
	sta	*(_ShowCentered_sloc1_1_0 + 1)
;	Raw cost for generated ic 29 : (14, 20.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldx	*(_ShowCentered_sloc1_1_0 + 1)
	lda	*_ShowCentered_sloc1_1_0
;	Raw cost for generated ic 30 : (4, 6.000000) count=1.000000
;	genCmp
	bit	*(_ShowCentered_sloc1_1_0 + 1)
	bpl	00112$
;	Raw cost for generated ic 31 : (7, 8.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 32 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
	txa
;	Raw cost for generated ic 34 : (3, 4.000000) count=0.750000
;	genLabel
00112$:
;	Raw cost for generated ic 35 : (0, 0.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	stx	*(REGTEMP+0)
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 36 : (9, 15.000000) count=1.000000
;	genCast
;	genCopy
	sta	_ShowCentered_titleRow_10002_139
;	Raw cost for generated ic 37 : (3, 4.000000) count=1.000000
;	src/common.c: 55: uint8_t titleColumn = (DEVICE_SCREEN_WIDTH-(width>>3))/2;
;	genRightShift
;	genRightShiftLiteral
;	genrshOne
	lda	_ShowCentered_width_10000_136
	lsr	a
	lsr	a
	lsr	a
	sta	*_ShowCentered_sloc1_1_0
;	Raw cost for generated ic 39 : (8, 13.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
	lda	*_ShowCentered_sloc1_1_0
;	Raw cost for generated ic 40 : (4, 5.000000) count=1.000000
;	genMinus
;	genMinusDec
	sta	*(REGTEMP+0)
	lda	#0x20
	sec
	sbc	*(REGTEMP+0)
	pha
	txa
	sbc	#0x00
	tax
	pla
;	Raw cost for generated ic 41 : (13, 23.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	stx	*(REGTEMP+0)
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 48 : (9, 15.000000) count=1.000000
;	genCast
;	genCopy
	sta	_ShowCentered_titleColumn_10002_139
;	Raw cost for generated ic 49 : (3, 4.000000) count=1.000000
;	src/common.c: 57: SWITCH_ROM(bank);
;	Raw cost for generated ic 51 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	_ShowCentered_PARM_3
	jsr	__switch_prg0
;	Raw cost for generated ic 52 : (6, 10.000000) count=1.000000
;	src/common.c: 59: setBKGPalettes(1,palettes);
;	genAssign
;	genAssignLit
;	genCopy
	lda	(_ShowCentered_PARM_7 + 1)
	sta	(_setBKGPalettes_PARM_2 + 1)
	lda	_ShowCentered_PARM_7
	sta	_setBKGPalettes_PARM_2
;	Raw cost for generated ic 54 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 53 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x01
	jsr	_setBKGPalettes
;	Raw cost for generated ic 55 : (5, 8.000000) count=1.000000
;	src/common.c: 61: set_native_tile_data(0,tileCount,tileData);
;	genAssign
;	genAssignLit
;	genCopy
	lda	(_ShowCentered_PARM_4 + 1)
	sta	(_set_bkg_native_data_PARM_3 + 1)
	lda	_ShowCentered_PARM_4
	sta	_set_bkg_native_data_PARM_3
;	Raw cost for generated ic 56 : (12, 16.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	_ShowCentered_PARM_5
;	Raw cost for generated ic 57 : (3, 4.000000) count=1.000000
;	../../../include/nes/nes.h: 1277: set_bkg_native_data(first_tile, nb_tiles, data);
;	Raw cost for generated ic 68 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 69 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tax
	lda	#0x00
	jsr	_set_bkg_native_data
;	Raw cost for generated ic 71 : (6, 10.000000) count=1.000000
;	src/common.c: 62: fill_bkg_rect(0,0,DEVICE_SCREEN_WIDTH,DEVICE_SCREEN_HEIGHT,0);
;	genAssign
;	genAssignLit
	ldx	#0x20
	stx	_fill_bkg_rect_PARM_3
;	Raw cost for generated ic 101 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x1e
	stx	_fill_bkg_rect_PARM_4
;	Raw cost for generated ic 102 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_fill_bkg_rect_PARM_5
;	Raw cost for generated ic 103 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 99 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 100 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	txa
	jsr	_fill_bkg_rect
;	Raw cost for generated ic 104 : (4, 8.000000) count=1.000000
;	src/common.c: 63: set_bkg_tiles(titleColumn,titleRow,width>>3,height>>3,mapData);
;	genAssign
;	genAssignLit
;	genCopy
	lda	*_ShowCentered_sloc1_1_0
	sta	_set_bkg_tiles_PARM_3
;	Raw cost for generated ic 109 : (5, 7.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	*_ShowCentered_sloc0_1_0
	sta	_set_bkg_tiles_PARM_4
;	Raw cost for generated ic 110 : (5, 7.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	(_ShowCentered_PARM_6 + 1)
	sta	(_set_bkg_tiles_PARM_5 + 1)
	lda	_ShowCentered_PARM_6
	sta	_set_bkg_tiles_PARM_5
;	Raw cost for generated ic 111 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 107 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 108 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	_ShowCentered_titleColumn_10002_139
	ldx	_ShowCentered_titleRow_10002_139
	jsr	_set_bkg_tiles
;	Raw cost for generated ic 112 : (9, 14.000000) count=1.000000
;	src/common.c: 64: SWITCH_ROM(_previous_bank);
;	Raw cost for generated ic 113 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	_ShowCentered__previous_bank_10001_138
	jsr	__switch_prg0
;	Raw cost for generated ic 114 : (6, 10.000000) count=1.000000
;	src/common.c: 66: DISPLAY_ON;
;	genCall
;	Raw cost for generated ic 115 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 116 : (0, 0.000000) count=1.000000
;	src/common.c: 67: }
;	genEndFunction
	jmp	_display_on
;	Raw cost for generated ic 117 : (1, 6.000000) count=1.000000
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;------------------------------------------------------------
;Allocation info for local variables in function 'WaitForStartOrA'
;------------------------------------------------------------
;	src/common.c: 9: void WaitForStartOrA(void){
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function WaitForStartOrA
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_WaitForStartOrA:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/common.c: 10: while(1){
;	genLabel
00108$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=2.942521
;	src/common.c: 13: joypadPrevious = joypadCurrent;
;	genAssign
;	genAssignLit
;	genCopy
	lda	_joypadCurrent
	sta	_joypadPrevious
;	Raw cost for generated ic 5 : (6, 8.000000) count=2.942521
;	src/common.c: 14: joypadCurrent = joypad();
;	genCall
	jsr	_joypad
;	assignResultValue
;	Raw cost for generated ic 7 : (3, 6.000000) count=2.942521
;	genAssign
;	genAssignLit
;	genCopy
	sta	_joypadCurrent
;	Raw cost for generated ic 9 : (3, 4.000000) count=2.942521
;	src/common.c: 16: if((joypadCurrent & J_START) && !(joypadPrevious & J_START))break;
;	genAnd
	and	#0x10
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 11 : (7, 7.600000) count=2.942521
;	skipping generated iCode
;	Raw cost for generated ic 12 : (0, 0.000000) count=2.942521
;	genCast
;	genCopy
	lda	_joypadPrevious
;	Raw cost for generated ic 15 : (3, 4.000000) count=2.206891
;	genAnd
	and	#0x10
;	genIfxJump : z
	beq	00110$
;	Raw cost for generated ic 16 : (7, 7.600000) count=2.206891
;	skipping generated iCode
;	Raw cost for generated ic 17 : (0, 0.000000) count=2.206891
;	genLabel
00102$:
;	Raw cost for generated ic 21 : (0, 0.000000) count=2.390799
;	src/common.c: 17: if((joypadCurrent & J_A) && !(joypadPrevious & J_A))break;
;	genCast
;	genCopy
	lda	_joypadCurrent
;	Raw cost for generated ic 22 : (3, 4.000000) count=2.390799
;	genAnd
	and	#0x80
;	genIfxJump : z
	beq	00105$
;	Raw cost for generated ic 23 : (7, 7.600000) count=2.390799
;	skipping generated iCode
;	Raw cost for generated ic 24 : (0, 0.000000) count=2.390799
;	genCast
;	genCopy
	lda	_joypadPrevious
;	Raw cost for generated ic 27 : (3, 4.000000) count=1.793097
;	genAnd
	and	#0x80
;	genIfxJump : z
	beq	00110$
;	Raw cost for generated ic 28 : (7, 7.600000) count=1.793097
;	skipping generated iCode
;	Raw cost for generated ic 29 : (0, 0.000000) count=1.793097
;	genLabel
00105$:
;	Raw cost for generated ic 33 : (0, 0.000000) count=1.942521
;	src/common.c: 19: vsync();
;	genCall
	jsr	_vsync
;	Raw cost for generated ic 34 : (3, 6.000000) count=1.942521
;	genGoto
	jmp	00108$
;	Raw cost for generated ic 35 : (3, 3.000000) count=1.942521
;	genLabel
00110$:
;	Raw cost for generated ic 37 : (0, 0.000000) count=0.999997
;	src/common.c: 22: }
;	genEndFunction
	rts
;	Raw cost for generated ic 38 : (1, 6.000000) count=0.999997
;------------------------------------------------------------
;Allocation info for local variables in function 'setBKGPalettes'
;------------------------------------------------------------
;palettes      Allocated with name '_setBKGPalettes_PARM_2'
;count         Allocated to registers a 
;------------------------------------------------------------
;------------------------------------------------------------
;Allocation info for local variables in function 'ShowCentered'
;------------------------------------------------------------
;sloc0         Allocated with name '_ShowCentered_sloc0_1_0'
;sloc1         Allocated with name '_ShowCentered_sloc1_1_0'
;bank          Allocated with name '_ShowCentered_PARM_3'
;tileData      Allocated with name '_ShowCentered_PARM_4'
;tileCount     Allocated with name '_ShowCentered_PARM_5'
;mapData       Allocated with name '_ShowCentered_PARM_6'
;palettes      Allocated with name '_ShowCentered_PARM_7'
;height        Allocated to registers a 
;width         Allocated with name '_ShowCentered_width_10000_136'
;_previous_bank Allocated with name '_ShowCentered__previous_bank_10001_138'
;__200010009   Allocated to registers 
;__200010010   Allocated to registers 
;x             Allocated to registers 
;y             Allocated to registers 
;titleRow      Allocated with name '_ShowCentered_titleRow_10002_139'
;titleColumn   Allocated with name '_ShowCentered_titleColumn_10002_139'
;__200020012   Allocated to registers 
;__200020013   Allocated to registers a 
;__200020014   Allocated to registers 
;first_tile    Allocated to registers 
;nb_tiles      Allocated to registers 
;data          Allocated to registers 
;------------------------------------------------------------
	.area _CODE
	.area _XINIT
__xinit__joypadCurrent:
	.db #0x00	; 0
__xinit__joypadPrevious:
	.db #0x00	; 0
	.area _CABS    (ABS)
