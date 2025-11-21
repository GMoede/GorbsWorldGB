;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module common
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _hide_sprites_range
	.globl _set_bkg_palette
	.globl _fill_bkg_rect
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _display_off
	.globl _vsync
	.globl _joypad
	.globl _joypadPrevious
	.globl _joypadCurrent
	.globl _WaitForStartOrA
	.globl _setBKGPalettes
	.globl _ShowCentered
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_joypadCurrent::
	.ds 1
_joypadPrevious::
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
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
;src/common.c:24: void setBKGPalettes(uint8_t count, const palette_color_t *palettes) NONBANKED{
;	---------------------------------
; Function setBKGPalettes
; ---------------------------------
_setBKGPalettes::
	ld	b, a
;src/common.c:31: if (_cpu == CGB_TYPE) {
	ld	a, (#__cpu)
	sub	a, #0x11
	ret	NZ
;src/common.c:32: set_bkg_palette(OAMF_CGB_PAL0, count, palettes);
	push	de
	push	bc
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_palette
	add	sp, #4
;src/common.c:37: }
	ret
;src/common.c:40: void ShowCentered(uint8_t width,uint8_t height,uint8_t bank, uint8_t* tileData, uint8_t tileCount, uint8_t* mapData, const palette_color_t* palettes) NONBANKED{
;	---------------------------------
; Function ShowCentered
; ---------------------------------
_ShowCentered::
	add	sp, #-5
	ldhl	sp,	#4
	ld	(hl), a
;src/common.c:43: DISPLAY_OFF;
	call	_display_off
;src/common.c:45: uint8_t _previous_bank = CURRENT_BANK;
	ldh	a, (__current_bank + 0)
	ldhl	sp,	#0
	ld	(hl), a
;src/common.c:49: hide_sprites_range(0,MAX_HARDWARE_SPRITES);
	push	de
	ld	e, #0x28
	xor	a, a
	call	_hide_sprites_range
	pop	de
;../../../include/gb/gb.h:1461: SCX_REG=x, SCY_REG=y;
	xor	a, a
	ldh	(_SCX_REG + 0), a
	xor	a, a
	ldh	(_SCY_REG + 0), a
;src/common.c:54: uint8_t titleRow = (DEVICE_SCREEN_HEIGHT-(height>>3))/2;
	ld	a, e
	swap	a
	rlca
	and	a, #0x1f
	ldhl	sp,	#1
	ld	(hl), a
	ld	c, (hl)
	ld	b, #0x00
	ld	a, #0x12
	sub	a, c
	ld	l, a
	sbc	a, a
	sub	a, b
	ld	h, a
	ld	c, l
	ld	b, h
	bit	7, h
	jr	Z, 00108$
	inc	hl
	ld	c, l
	ld	b, h
00108$:
	sra	b
	rr	c
	ldhl	sp,	#2
;src/common.c:55: uint8_t titleColumn = (DEVICE_SCREEN_WIDTH-(width>>3))/2;
	ld	a, c
	ld	(hl+), a
	inc	hl
	ld	a, (hl-)
	swap	a
	rlca
	and	a, #0x1f
	ld	(hl), a
	ld	c, (hl)
	ld	b, #0x00
	ld	a, #0x14
	sub	a, c
	ld	l, a
	sbc	a, a
	sub	a, b
	ld	h, a
	ld	c, l
	ld	b, h
	bit	7, h
	jr	Z, 00109$
	inc	hl
	ld	c, l
	ld	b, h
00109$:
	sra	b
	rr	c
;src/common.c:57: SWITCH_ROM(bank);
	ldhl	sp,	#7
	ld	a, (hl)
	ldh	(__current_bank + 0), a
	ld	(#_rROMB0),a
;src/common.c:59: setBKGPalettes(1,palettes);
	push	bc
	ldhl	sp,	#15
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, #0x01
	call	_setBKGPalettes
	pop	bc
;src/common.c:61: set_native_tile_data(0,tileCount,tileData);
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl)
;../../../include/gb/gb.h:2146: set_bkg_data(first_tile, nb_tiles, data);
	push	de
	ld	h, a
	ld	l, #0x00
	push	hl
	call	_set_bkg_data
	add	sp, #4
;src/common.c:62: fill_bkg_rect(0,0,DEVICE_SCREEN_WIDTH,DEVICE_SCREEN_HEIGHT,0);
	xor	a, a
	ld	h, a
	ld	l, #0x12
	push	hl
	ld	a, #0x14
	push	af
	inc	sp
	xor	a, a
	rrca
	push	af
	call	_fill_bkg_rect
	add	sp, #5
;src/common.c:63: set_bkg_tiles(titleColumn,titleRow,width>>3,height>>3,mapData);
	ldhl	sp,	#11
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ldhl	sp,	#3
	ld	a, (hl+)
	inc	hl
	push	af
	inc	sp
	ld	a, (hl-)
	ld	d, a
	ld	e, (hl)
	push	de
	ld	a, c
	push	af
	inc	sp
	call	_set_bkg_tiles
	add	sp, #6
;src/common.c:64: SWITCH_ROM(_previous_bank);
	ldhl	sp,	#0
	ld	a, (hl)
	ldh	(__current_bank + 0), a
	ld	a, (hl)
	ld	(#_rROMB0),a
;src/common.c:66: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
;src/common.c:67: }
	add	sp, #5
	pop	hl
	add	sp, #8
	jp	(hl)
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;src/common.c:9: void WaitForStartOrA(void){
;	---------------------------------
; Function WaitForStartOrA
; ---------------------------------
_WaitForStartOrA::
;src/common.c:10: while(1){
00108$:
;src/common.c:13: joypadPrevious = joypadCurrent;
	ld	a, (#_joypadCurrent)
	ld	(#_joypadPrevious),a
;src/common.c:14: joypadCurrent = joypad();
	call	_joypad
;src/common.c:16: if((joypadCurrent & J_START) && !(joypadPrevious & J_START))break;
	ld	(#_joypadCurrent),a
	ld	hl, #_joypadPrevious
	ld	c, (hl)
	bit	7, a
	jr	Z, 00102$
	bit	7, c
	ret	Z
00102$:
;src/common.c:17: if((joypadCurrent & J_A) && !(joypadPrevious & J_A))break;
	bit	4, a
	jr	Z, 00105$
	bit	4, c
	ret	Z
00105$:
;src/common.c:19: vsync();
	call	_vsync
;src/common.c:22: }
	jr	00108$
	.area _CODE
	.area _INITIALIZER
__xinit__joypadCurrent:
	.db #0x00	; 0
__xinit__joypadPrevious:
	.db #0x00	; 0
	.area _CABS (ABS)
