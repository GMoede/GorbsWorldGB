;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module main
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _drawText
	.globl _updateFrameCounter
	.globl _setupGorb
	.globl _updateGorb
	.globl _hide_sprites_range
	.globl _set_sprite_palette
	.globl _set_bkg_palette
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _joypad
	.globl _main
	.globl _setupBackground
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
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;src/main.c:15: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
;src/main.c:17: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
;src/main.c:18: SHOW_BKG; //HIDE_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;src/main.c:19: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;src/main.c:20: SPRITES_8x16;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x04
	ldh	(_LCDC_REG + 0), a
;src/main.c:22: setupBackground();
	call	_setupBackground
;src/main.c:24: set_sprite_palette(0, WalkingGorb_PALETTE_COUNT, WalkingGorb_palettes);
	ld	de, #_WalkingGorb_palettes
	push	de
	xor	a, a
	inc	a
	push	af
	call	_set_sprite_palette
	add	sp, #4
;src/main.c:26: setupGorb();
	call	_setupGorb
;src/main.c:29: set_native_tile_data(splashscreen3_TILE_COUNT, Font_TILE_COUNT, Font_tiles);
;../gbdk/include/gb/gb.h:2146: set_bkg_data(first_tile, nb_tiles, data);
	ld	de, #_Font_tiles
	push	de
	ld	hl, #0x2eb3
	push	hl
	call	_set_bkg_data
	add	sp, #4
;src/main.c:32: drawText(1, 1, "Press Start");
	ld	de, #___str_0
	push	de
	ld	a,#0x01
	ld	e,a
	call	_drawText
;src/main.c:34: while (1)
00102$:
;src/main.c:38: joypadCurrent = joypad();
	call	_joypad
	ld	(#_joypadCurrent),a
;src/main.c:40: updateFrameCounter();
	call	_updateFrameCounter
;src/main.c:44: lastSprite += updateGorb();
	call	_updateGorb
;src/main.c:51: hide_sprites_range(lastSprite, 40);
	ld	e, #0x28
	call	_hide_sprites_range
;src/main.c:61: wait_vbl_done();
	call	_wait_vbl_done
;src/main.c:63: }
	jr	00102$
___str_0:
	.ascii "Press Start"
	.db 0x00
;src/main.c:65: void setupBackground(void)
;	---------------------------------
; Function setupBackground
; ---------------------------------
_setupBackground::
;src/main.c:68: set_bkg_data(0, splashscreen3_TILE_COUNT, splashscreen3_tiles);
	ld	de, #_splashscreen3_tiles
	push	de
	ld	hl, #0xb300
	push	hl
	call	_set_bkg_data
	add	sp, #4
;src/main.c:72: set_bkg_tiles(0, 0, 20, 18, splashscreen3_map);
	ld	de, #_splashscreen3_map
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;src/main.c:75: set_bkg_palette(0, 8, splashscreen3_palettes);
	ld	de, #_splashscreen3_palettes
	push	de
	ld	hl, #0x800
	push	hl
	call	_set_bkg_palette
	add	sp, #4
;src/main.c:79: VBK_REG = 1;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;src/main.c:80: set_bkg_tiles(0, 0, 20, 18, splashscreen3_map_attributes);
	ld	de, #_splashscreen3_map_attributes
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;src/main.c:83: VBK_REG = 0;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;src/main.c:84: }
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
