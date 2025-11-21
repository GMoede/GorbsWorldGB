;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module main
	
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
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_data::
	.ds 18
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_scrollpos::
	.ds 2
_datapos::
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
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;src/main.c:8: INCBIN(map_tiles, "res/map_tiles.bin")
;	---------------------------------
; Function __func_map_tiles
; ---------------------------------
	b___func_map_tiles	= 0
___func_map_tiles::
_map_tiles::
1$:
	.incbin "res/map_tiles.bin" 
2$:
	___size_map_tiles = (2$-1$) 
	.globl ___size_map_tiles 
	.local b___func_map_tiles 
	___bank_map_tiles = b___func_map_tiles 
	.globl ___bank_map_tiles 
;src/main.c:15: INCBIN(map_compressed, "res/map.bin.rle")
;	---------------------------------
; Function __func_map_compressed
; ---------------------------------
	b___func_map_compressed	= 0
___func_map_compressed::
_map_compressed::
1$:
	.incbin "res/map.bin.rle" 
2$:
	___size_map_compressed = (2$-1$) 
	.globl ___size_map_compressed 
	.local b___func_map_compressed 
	___bank_map_compressed = b___func_map_compressed 
	.globl ___bank_map_compressed 
;src/main.c:22: void main(void) {
;	---------------------------------
; Function main
; ---------------------------------
_main::
	dec	sp
;src/main.c:30: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;src/main.c:33: set_bkg_data(0, INCBIN_SIZE(map_tiles) >> 4, map_tiles);
	ld	bc, #_map_tiles+0
	ld	hl, #___size_map_tiles
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	bc
	push	hl
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_data
	add	sp, #4
;src/main.c:36: rle_init(map_compressed);
	ld	de, #_map_compressed
	call	_rle_init
;src/main.c:41: for (uint8_t i = 0; (i != DEVICE_SCREEN_WIDTH + 1); i++) {
	ld	c, #0x00
00111$:
	ld	a, c
	sub	a, #0x15
	jr	Z, 00101$
;src/main.c:42: rle_decompress(data, MAP_DATA_HEIGHT);
	push	bc
	ld	a, #0x12
	ld	de, #_data
	call	_rle_decompress
	pop	bc
;src/main.c:47: set_bkg_tiles(i & (DEVICE_SCREEN_BUFFER_WIDTH-1), 0, 1, MAP_DATA_HEIGHT, data);
	ld	a, c
	and	a, #0x1f
	ld	de, #_data
	push	de
	ld	h, #0x12
	push	hl
	inc	sp
	ld	h, #0x01
	push	hl
	inc	sp
	ld	h, #0x00
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_set_bkg_tiles
	add	sp, #6
;src/main.c:41: for (uint8_t i = 0; (i != DEVICE_SCREEN_WIDTH + 1); i++) {
	inc	c
	jr	00111$
00101$:
;src/main.c:51: datapos = 0;
	xor	a, a
	ld	(#_datapos),a
;src/main.c:52: scrollpos = 1;
	ld	hl, #_scrollpos
	ld	a, #0x01
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
;src/main.c:53: while(TRUE) {
00107$:
;src/main.c:55: vsync();
	call	_vsync
;src/main.c:60: scrollpos++;
	ld	hl, #_scrollpos
	inc	(hl)
	jr	NZ, 00152$
	inc	hl
	inc	(hl)
00152$:
;src/main.c:61: move_bkg(scrollpos, 0);
	ld	hl, #_scrollpos
	ld	a, (hl)
	ldh	(_SCX_REG + 0), a
;../../../include/gb/gb.h:1461: SCX_REG=x, SCY_REG=y;
	xor	a, a
	ldh	(_SCY_REG + 0), a
;src/main.c:65: if ((scrollpos & 0x07u) == 0) {
	ld	a, (hl+)
	ld	c, (hl)
	and	a, #0x07
	jr	NZ, 00107$
;src/main.c:69: datapos = (scrollpos >> 3);
	ld	hl, #_scrollpos
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
	ld	hl, #_datapos
	ld	(hl), c
;src/main.c:70: uint8_t map_x_column = (datapos + DEVICE_SCREEN_WIDTH) & (DEVICE_SCREEN_BUFFER_WIDTH-1);
	ld	a, (hl)
	add	a, #0x14
	and	a, #0x1f
	ldhl	sp,	#0
	ld	(hl), a
;src/main.c:75: if (!rle_decompress(data, MAP_DATA_HEIGHT)) {
	ld	a, #0x12
	ld	de, #_data
	call	_rle_decompress
	or	a, a
	jr	NZ, 00103$
;src/main.c:76: rle_init(map_compressed);
	ld	de, #_map_compressed
	call	_rle_init
;src/main.c:77: rle_decompress(data, MAP_DATA_HEIGHT);
	ld	a, #0x12
	ld	de, #_data
	call	_rle_decompress
00103$:
;src/main.c:83: set_bkg_tiles(map_x_column, 0, 1, MAP_DATA_HEIGHT, data);
	ld	de, #_data
	push	de
	ld	hl, #0x1201
	push	hl
	xor	a, a
	push	af
	inc	sp
	ldhl	sp,	#5
	ld	a, (hl)
	push	af
	inc	sp
	call	_set_bkg_tiles
	add	sp, #6
	jr	00107$
;src/main.c:86: }
	inc	sp
	ret
	.area _CODE
	.area _INITIALIZER
__xinit__scrollpos:
	.dw #0x0000
__xinit__datapos:
	.db #0x00	; 0
	.area _CABS (ABS)
