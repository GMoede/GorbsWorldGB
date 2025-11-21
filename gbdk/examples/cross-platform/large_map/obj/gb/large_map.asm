;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module large_map
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _init_camera
	.globl _set_camera
	.globl _set_bkg_palette
	.globl _set_bkg_submap
	.globl _set_bkg_data
	.globl _display_off
	.globl _vsync
	.globl _joypad
	.globl _redraw
	.globl _old_map_pos_y
	.globl _old_map_pos_x
	.globl _map_pos_y
	.globl _map_pos_x
	.globl _old_camera_y
	.globl _old_camera_x
	.globl _camera_y
	.globl _camera_x
	.globl _joy
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_joy::
	.ds 1
_camera_x::
	.ds 2
_camera_y::
	.ds 2
_old_camera_x::
	.ds 2
_old_camera_y::
	.ds 2
_map_pos_x::
	.ds 1
_map_pos_y::
	.ds 1
_old_map_pos_x::
	.ds 1
_old_map_pos_y::
	.ds 1
_redraw::
	.ds 1
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
;src/large_map.c:77: void set_camera(void)
;	---------------------------------
; Function set_camera
; ---------------------------------
_set_camera::
	dec	sp
;src/large_map.c:80: move_bkg(camera_x, WRAP_SCROLL_Y(camera_y + SCROLL_Y_OFFSET));
	ld	a, (_camera_y)
	ld	hl, #_camera_y + 1
	ld	b, (hl)
	ld	c, a
	ld	a, (#_camera_x)
	ldh	(_SCX_REG + 0), a
;../../../include/gb/gb.h:1461: SCX_REG=x, SCY_REG=y;
	ld	a, c
	ldh	(_SCY_REG + 0), a
;src/large_map.c:82: map_pos_y = (uint8_t)(camera_y >> 3u);
	ld	hl, #_camera_y
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
	ld	hl, #_map_pos_y
	ld	(hl), c
;src/large_map.c:83: if (map_pos_y != old_map_pos_y)
	ld	a, (hl)
	ld	hl, #_old_map_pos_y
	sub	a, (hl)
	jp	Z, 00107$
;src/large_map.c:87: set_submap_indices(
	ld	a, (_map_pos_x)
	ld	b, a
	ld	e, #0x00
	ld	a, #0x9c
	ld	hl, #_map_pos_x
	sub	a, (hl)
	ld	c, a
	ld	a, #0x9c
	sub	a, b
	ld	b, a
	sbc	a, a
	sub	a, e
	ld	l, a
	ld	e, l
	ld	d, #0x00
	ld	a, #0x15
	cp	a, b
	ld	a, #0x00
	sbc	a, l
	bit	7, e
	jr	Z, 00245$
	bit	7, d
	jr	NZ, 00246$
	cp	a, a
	jr	00246$
00245$:
	bit	7, d
	jr	Z, 00246$
	scf
00246$:
	ld	a, #0x00
	rla
	ldhl	sp,	#0
	ld	(hl), a
;src/large_map.c:85: if (camera_y < old_camera_y)
	ld	de, #_camera_y
	ld	hl, #_old_camera_y
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	jp	NC, 00104$
;src/large_map.c:87: set_submap_indices(
	ldhl	sp,	#0
	ld	a, (hl)
	or	a, a
	jr	Z, 00130$
	ld	b, #0x15
	jr	00131$
00130$:
	ld	b, c
00131$:
	ld	a, (_map_pos_y)
	ld	h, #0x9c
	push	hl
	inc	sp
	ld	de, #_bigmap_map
	push	de
	ld	h, #0x01
	ld	l, b
	push	hl
	push	af
	inc	sp
	ld	a, (_map_pos_x)
	push	af
	inc	sp
	call	_set_bkg_submap
	add	sp, #7
;src/large_map.c:94: set_submap_attributes(
	ld	bc, #_bigmap_map
	ld	a, (_map_pos_x)
	ld	e, a
	ld	d, #0x00
	ld	a, #0x9c
	sub	a, e
	ld	l, a
	sbc	a, a
	sub	a, d
	ld	h, a
	ld	e, h
	ld	d, #0x00
	ld	a, #0x15
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	bit	7, e
	jr	Z, 00247$
	bit	7, d
	jr	NZ, 00248$
	cp	a, a
	jr	00248$
00247$:
	bit	7, d
	jr	Z, 00248$
	scf
00248$:
	jr	NC, 00132$
	ld	d, #0x15
	jr	00133$
00132$:
	ld	a, #0x9c
	ld	hl, #_map_pos_x
	sub	a, (hl)
	ld	d, a
00133$:
	ld	a, (_map_pos_y)
	ld	h, a
	ld	a, (_map_pos_x)
	ld	e, a
;../../../include/gb/gb.h:1370: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;../../../include/gb/gb.h:1371: set_bkg_submap(x, y, w, h, map, map_w);
	ld	a, #0x9c
	push	af
	inc	sp
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	push	de
	inc	sp
	ld	l, e
	push	hl
	call	_set_bkg_submap
	add	sp, #7
;../../../include/gb/gb.h:1372: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;src/large_map.c:94: set_submap_attributes(
	jp	00105$
00104$:
;src/large_map.c:104: if ((bigmap_mapHeight - DEVICE_SCREEN_HEIGHT) > map_pos_y)
	ld	a, (#_map_pos_y)
	sub	a, #0x30
	jp	NC, 00105$
;src/large_map.c:106: set_submap_indices(
	ldhl	sp,	#0
	ld	a, (hl)
	or	a, a
	jr	Z, 00134$
	ld	b, #0x15
	jr	00135$
00134$:
	ld	b, c
00135$:
;src/large_map.c:74: return map_pos_y + DEVICE_SCREEN_HEIGHT;
	ld	a, (_map_pos_y)
	add	a, #0x12
;src/large_map.c:106: set_submap_indices(
	ld	h, #0x9c
	push	hl
	inc	sp
	ld	de, #_bigmap_map
	push	de
	ld	h, #0x01
	ld	l, b
	push	hl
	push	af
	inc	sp
	ld	a, (_map_pos_x)
	push	af
	inc	sp
	call	_set_bkg_submap
	add	sp, #7
;src/large_map.c:113: set_submap_attributes(
	ld	a, (_map_pos_x)
	ld	c, a
	ld	b, #0x00
	ld	a, #0x9c
	sub	a, c
	ld	c, a
	sbc	a, a
	sub	a, b
	ld	b, a
	ld	e, b
	ld	d, #0x00
	ld	a, #0x15
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	bit	7, e
	jr	Z, 00249$
	bit	7, d
	jr	NZ, 00250$
	cp	a, a
	jr	00250$
00249$:
	bit	7, d
	jr	Z, 00250$
	scf
00250$:
	jr	NC, 00136$
	ld	d, #0x15
	jr	00137$
00136$:
	ld	a, #0x9c
	ld	hl, #_map_pos_x
	sub	a, (hl)
	ld	d, a
00137$:
;src/large_map.c:74: return map_pos_y + DEVICE_SCREEN_HEIGHT;
	ld	a, (_map_pos_y)
	add	a, #0x12
	ld	c, a
;src/large_map.c:113: set_submap_attributes(
	ld	a, (_map_pos_x)
	ld	b, a
;../../../include/gb/gb.h:1370: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;../../../include/gb/gb.h:1371: set_bkg_submap(x, y, w, h, map, map_w);
	ld	a, #0x9c
	push	af
	inc	sp
	ld	hl, #_bigmap_map
	push	hl
	ld	a, #0x01
	push	af
	inc	sp
	ld	e, c
	push	de
	push	bc
	inc	sp
	call	_set_bkg_submap
	add	sp, #7
;../../../include/gb/gb.h:1372: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;src/large_map.c:113: set_submap_attributes(
00105$:
;src/large_map.c:122: old_map_pos_y = map_pos_y; 
	ld	a, (#_map_pos_y)
	ld	(#_old_map_pos_y),a
00107$:
;src/large_map.c:125: map_pos_x = (uint8_t)(camera_x >> 3u);
	ld	hl, #_camera_x
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
	ld	hl, #_map_pos_x
	ld	(hl), c
;src/large_map.c:126: if (map_pos_x != old_map_pos_x)
	ld	a, (hl)
	ld	hl, #_old_map_pos_x
	sub	a, (hl)
	jp	Z, 00114$
;src/large_map.c:130: set_submap_indices(
	ld	a, (_map_pos_y)
	ld	b, a
	ld	e, #0x00
	ld	a, #0x42
	ld	hl, #_map_pos_y
	sub	a, (hl)
	ld	c, a
	ld	a, #0x42
	sub	a, b
	ld	b, a
	sbc	a, a
	sub	a, e
	ld	l, a
	ld	e, l
	ld	d, #0x00
	ld	a, #0x13
	cp	a, b
	ld	a, #0x00
	sbc	a, l
	bit	7, e
	jr	Z, 00252$
	bit	7, d
	jr	NZ, 00253$
	cp	a, a
	jr	00253$
00252$:
	bit	7, d
	jr	Z, 00253$
	scf
00253$:
	ld	a, #0x00
	rla
	ld	b, a
;src/large_map.c:128: if (camera_x < old_camera_x)
	ld	de, #_camera_x
	ld	hl, #_old_camera_x
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	jp	NC, 00111$
;src/large_map.c:130: set_submap_indices(
	ld	a, b
	or	a, a
	jr	Z, 00138$
	ld	a, #0x13
	jr	00139$
00138$:
	ld	a, c
00139$:
	ld	hl, #_map_pos_x
	ld	b, (hl)
	ld	h, #0x9c
	push	hl
	inc	sp
	ld	de, #_bigmap_map
	push	de
	ld	h, a
	ld	l, #0x01
	push	hl
	ld	a, (_map_pos_y)
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_set_bkg_submap
	add	sp, #7
;src/large_map.c:137: set_submap_attributes(
	ld	a, (_map_pos_y)
	ld	c, a
	ld	b, #0x00
	ld	a, #0x42
	sub	a, c
	ld	c, a
	sbc	a, a
	sub	a, b
	ld	b, a
	ld	e, b
	ld	d, #0x00
	ld	a, #0x13
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	bit	7, e
	jr	Z, 00254$
	bit	7, d
	jr	NZ, 00255$
	cp	a, a
	jr	00255$
00254$:
	bit	7, d
	jr	Z, 00255$
	scf
00255$:
	jr	NC, 00140$
	ld	c, #0x13
	jr	00141$
00140$:
	ld	a, #0x42
	ld	hl, #_map_pos_y
	sub	a, (hl)
	ld	c, a
00141$:
	ld	a, (_map_pos_y)
	ld	hl, #_map_pos_x
	ld	e, (hl)
;../../../include/gb/gb.h:1370: VBK_REG = VBK_ATTRIBUTES;
	push	af
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
	pop	af
;../../../include/gb/gb.h:1371: set_bkg_submap(x, y, w, h, map, map_w);
	ld	h, #0x9c
	push	hl
	inc	sp
	ld	hl, #_bigmap_map
	push	hl
	ld	h, c
	push	hl
	inc	sp
	ld	h, #0x01
	push	hl
	inc	sp
	ld	d,a
	push	de
	call	_set_bkg_submap
	add	sp, #7
;../../../include/gb/gb.h:1372: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;src/large_map.c:137: set_submap_attributes(
	jp	00112$
00111$:
;src/large_map.c:147: if ((bigmap_mapWidth - DEVICE_SCREEN_WIDTH) > map_pos_x)
	ld	hl, #_map_pos_x
	ld	a, (hl)
	sub	a, #0x88
	jp	NC, 00112$
;src/large_map.c:149: set_submap_indices(
	ld	a, b
	or	a, a
	jr	Z, 00142$
	ld	b, #0x13
	jr	00143$
00142$:
	ld	b, c
00143$:
;src/large_map.c:60: return map_pos_x + DEVICE_SCREEN_WIDTH;
	ld	a, (_map_pos_x)
	add	a, #0x14
;src/large_map.c:149: set_submap_indices(
	ld	h, #0x9c
	push	hl
	inc	sp
	ld	de, #_bigmap_map
	push	de
	push	bc
	inc	sp
	ld	h, #0x01
	push	hl
	inc	sp
	ld	hl, #_map_pos_y
	ld	h, (hl)
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_set_bkg_submap
	add	sp, #7
;src/large_map.c:156: set_submap_attributes(
	ld	a, (_map_pos_y)
	ld	c, a
	ld	b, #0x00
	ld	a, #0x42
	sub	a, c
	ld	c, a
	sbc	a, a
	sub	a, b
	ld	b, a
	ld	e, b
	ld	d, #0x00
	ld	a, #0x13
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	bit	7, e
	jr	Z, 00256$
	bit	7, d
	jr	NZ, 00257$
	cp	a, a
	jr	00257$
00256$:
	bit	7, d
	jr	Z, 00257$
	scf
00257$:
	jr	NC, 00144$
	ld	c, #0x13
	jr	00145$
00144$:
	ld	a, #0x42
	ld	hl, #_map_pos_y
	sub	a, (hl)
	ld	c, a
00145$:
	ld	a, (_map_pos_y)
	ld	e, a
;src/large_map.c:60: return map_pos_x + DEVICE_SCREEN_WIDTH;
	ld	a, (_map_pos_x)
	add	a, #0x14
;../../../include/gb/gb.h:1370: VBK_REG = VBK_ATTRIBUTES;
	push	af
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
	pop	af
;../../../include/gb/gb.h:1371: set_bkg_submap(x, y, w, h, map, map_w);
	ld	h, #0x9c
	push	hl
	inc	sp
	ld	hl, #_bigmap_map
	push	hl
	ld	h, c
	push	hl
	inc	sp
	ld	h, #0x01
	push	hl
	inc	sp
	ld	h, e
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_set_bkg_submap
	add	sp, #7
;../../../include/gb/gb.h:1372: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;src/large_map.c:156: set_submap_attributes(
00112$:
;src/large_map.c:165: old_map_pos_x = map_pos_x;
	ld	a, (#_map_pos_x)
	ld	(#_old_map_pos_x),a
00114$:
;src/large_map.c:168: old_camera_x = camera_x, old_camera_y = camera_y;
	ld	a, (#_camera_x)
	ld	(#_old_camera_x),a
	ld	a, (#_camera_x + 1)
	ld	(#_old_camera_x + 1),a
	ld	a, (#_camera_y)
	ld	(#_old_camera_y),a
	ld	a, (#_camera_y + 1)
	ld	(#_old_camera_y + 1),a
;src/large_map.c:169: }
	inc	sp
	ret
;src/large_map.c:172: void init_camera(uint8_t x, uint8_t y) {
;	---------------------------------
; Function init_camera
; ---------------------------------
_init_camera::
	ld	b, a
	ld	c, e
;src/large_map.c:175: set_native_tile_data(0, bigmap_TILE_COUNT, bigmap_tiles);
;../../../include/gb/gb.h:2146: set_bkg_data(first_tile, nb_tiles, data);
	ld	de, #_bigmap_tiles
	push	de
	ld	hl, #0xea00
	push	hl
	call	_set_bkg_data
	add	sp, #4
;src/large_map.c:183: if (_cpu == CGB_TYPE) {
	ld	a, (#__cpu)
	sub	a, #0x11
	jr	NZ, 00102$
;src/large_map.c:184: set_bkg_palette(BKGF_CGB_PAL0, bigmap_PALETTE_COUNT, bigmap_palettes);
	push	bc
	ld	de, #_bigmap_palettes
	push	de
	ld	hl, #0x400
	push	hl
	call	_set_bkg_palette
	add	sp, #4
	pop	bc
00102$:
;src/large_map.c:192: camera_x = x;
	ld	hl, #_camera_x
	ld	a, b
	ld	(hl+), a
	ld	(hl), #0x00
;src/large_map.c:193: camera_y = y;
	ld	hl, #_camera_y
	ld	a, c
	ld	(hl+), a
	ld	(hl), #0x00
;src/large_map.c:195: if (camera_x > camera_max_x) camera_x = camera_max_x;
	ld	a, (_camera_x)
	ld	c, a
	ld	hl, #_camera_x + 1
	ld	b, (hl)
	ld	a, #0x40
	cp	a, c
	ld	a, #0x04
	sbc	a, b
	jr	NC, 00104$
	dec	hl
	ld	a, #0x40
	ld	(hl+), a
	ld	(hl), #0x04
00104$:
;src/large_map.c:196: if (camera_y > camera_max_y) camera_y = camera_max_y;
	ld	a, (_camera_y)
	ld	c, a
	ld	hl, #_camera_y + 1
	ld	b, (hl)
	ld	a, #0x80
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00106$
	dec	hl
	ld	a, #0x80
	ld	(hl+), a
	ld	(hl), #0x01
00106$:
;src/large_map.c:197: old_camera_x = camera_x; old_camera_y = camera_y;
	ld	a, (#_camera_x)
	ld	(#_old_camera_x),a
	ld	a, (#_camera_x + 1)
	ld	(#_old_camera_x + 1),a
	ld	a, (#_camera_y)
	ld	(#_old_camera_y),a
	ld	a, (#_camera_y + 1)
	ld	(#_old_camera_y + 1),a
;src/large_map.c:199: map_pos_x = camera_x >> 3;
	ld	hl, #_camera_x
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
	ld	hl, #_map_pos_x
	ld	(hl), c
;src/large_map.c:200: map_pos_y = camera_y >> 3;
	ld	hl, #_camera_y
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
	ld	hl, #_map_pos_y
	ld	(hl), c
;src/large_map.c:201: old_map_pos_x = old_map_pos_y = 255;
	ld	hl, #_old_map_pos_y
	ld	(hl), #0xff
	ld	hl, #_old_map_pos_x
	ld	(hl), #0xff
;src/large_map.c:202: move_bkg(camera_x, WRAP_SCROLL_Y(camera_y + SCROLL_Y_OFFSET));
	ld	a, (_camera_y)
	ld	hl, #_camera_y + 1
	ld	b, (hl)
	ld	c, a
	ld	a, (#_camera_x)
	ldh	(_SCX_REG + 0), a
;../../../include/gb/gb.h:1461: SCX_REG=x, SCY_REG=y;
	ld	a, c
	ldh	(_SCY_REG + 0), a
;src/large_map.c:205: set_submap_indices(
	ld	bc, #_bigmap_map+0
	ld	a, (_map_pos_y)
	ld	e, a
	ld	d, #0x00
	ld	a, #0x42
	sub	a, e
	ld	e, a
	sbc	a, a
	sub	a, d
	ld	d, a
	ld	a, #0x13
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00116$
	ld	d, #0x13
	jr	00117$
00116$:
	ld	a, #0x42
	ld	hl, #_map_pos_y
	sub	a, (hl)
	ld	d, a
00117$:
	ld	a, (_map_pos_x)
	ld	l, a
	ld	h, #0x00
	ld	a, #0x9c
	sub	a, l
	ld	e, a
	sbc	a, a
	sub	a, h
	ld	l, a
	ld	a, #0x15
	cp	a, e
	ld	a, #0x00
	sbc	a, l
	jr	NC, 00118$
	ld	a, #0x15
	jr	00119$
00118$:
	ld	a, #0x9c
	ld	hl, #_map_pos_x
	sub	a, (hl)
00119$:
	push	bc
	ld	h, #0x9c
	push	hl
	inc	sp
	push	bc
	push	de
	inc	sp
	push	af
	inc	sp
	ld	a, (_map_pos_y)
	ld	h, a
	ld	a, (_map_pos_x)
	ld	l, a
	push	hl
	call	_set_bkg_submap
	add	sp, #7
	pop	bc
;src/large_map.c:213: set_submap_attributes(
	ld	a, (_map_pos_y)
	ld	e, a
	ld	d, #0x00
	ld	a, #0x42
	sub	a, e
	ld	e, a
	sbc	a, a
	sub	a, d
	ld	d, a
	ld	a, #0x13
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00120$
	ld	e, #0x13
	jr	00121$
00120$:
	ld	a, #0x42
	ld	hl, #_map_pos_y
	sub	a, (hl)
	ld	e, a
00121$:
	ld	a, (_map_pos_x)
	ld	l, a
	ld	h, #0x00
	ld	a, #0x9c
	sub	a, l
	ld	l, a
	sbc	a, a
	sub	a, h
	ld	d, a
	ld	a, #0x15
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00122$
	ld	d, #0x15
	jr	00123$
00122$:
	ld	a, #0x9c
	ld	hl, #_map_pos_x
	sub	a, (hl)
	ld	d, a
00123$:
	ld	a, (_map_pos_y)
	ld	l, a
	ld	a, (_map_pos_x)
	ld	h, a
;../../../include/gb/gb.h:1370: VBK_REG = VBK_ATTRIBUTES;
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;../../../include/gb/gb.h:1371: set_bkg_submap(x, y, w, h, map, map_w);
	ld	a, #0x9c
	push	af
	inc	sp
	push	bc
	ld	a, e
	push	af
	inc	sp
	ld	e, l
	push	de
	push	hl
	inc	sp
	call	_set_bkg_submap
	add	sp, #7
;../../../include/gb/gb.h:1372: VBK_REG = VBK_TILES;
	xor	a, a
	ldh	(_VBK_REG + 0), a
;src/large_map.c:221: redraw = FALSE;
	xor	a, a
	ld	(#_redraw),a
;src/large_map.c:223: move_bkg(camera_x, WRAP_SCROLL_Y(camera_y + SCROLL_Y_OFFSET));
	ld	a, (_camera_y)
	ld	hl, #_camera_y + 1
	ld	c, (hl)
	ld	e, a
	ld	a, (#_camera_x)
	ldh	(_SCX_REG + 0), a
;../../../include/gb/gb.h:1461: SCX_REG=x, SCY_REG=y;
	ld	a, e
	ldh	(_SCY_REG + 0), a
;src/large_map.c:223: move_bkg(camera_x, WRAP_SCROLL_Y(camera_y + SCROLL_Y_OFFSET));
;src/large_map.c:230: }
	ret
;src/large_map.c:232: void main(void){
;	---------------------------------
; Function main
; ---------------------------------
_main::
;src/large_map.c:233: DISPLAY_OFF;
	call	_display_off
;src/large_map.c:234: init_camera(0, 0);
	xor	a, a
	ld	e, a
	call	_init_camera
;src/large_map.c:236: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;src/large_map.c:237: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
;src/large_map.c:238: while (TRUE) {
00123$:
;src/large_map.c:239: joy = joypad();
	call	_joypad
	ld	hl, #_joy
	ld	(hl), a
;src/large_map.c:241: if (joy & J_UP) {
	ld	c, (hl)
	bit	2, c
	jr	Z, 00108$
;src/large_map.c:242: if (camera_y) {
	ld	hl, #_camera_y + 1
	ld	a, (hl-)
	or	a, (hl)
	jr	Z, 00109$
;src/large_map.c:243: camera_y--;
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	ld	d, a
	dec	de
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;src/large_map.c:244: redraw = TRUE;
	ld	hl, #_redraw
	ld	(hl), #0x01
	jr	00109$
00108$:
;src/large_map.c:246: } else if (joy & J_DOWN) {
	bit	3, c
	jr	Z, 00109$
;src/large_map.c:247: if (camera_y < camera_max_y) {
	ld	a, (_camera_y)
	ld	b, a
	ld	hl, #_camera_y + 1
	ld	e, (hl)
	ld	a, b
	sub	a, #0x80
	ld	a, e
	sbc	a, #0x01
	jr	NC, 00109$
;src/large_map.c:248: camera_y++;
	dec	hl
	inc	(hl)
	jr	NZ, 00199$
	inc	hl
	inc	(hl)
00199$:
;src/large_map.c:249: redraw = TRUE;
	ld	hl, #_redraw
	ld	(hl), #0x01
00109$:
;src/large_map.c:253: if (joy & J_LEFT) {
	bit	1, c
	jr	Z, 00117$
;src/large_map.c:254: if (camera_x) {
	ld	hl, #_camera_x + 1
	ld	a, (hl-)
	or	a, (hl)
	jr	Z, 00118$
;src/large_map.c:255: camera_x--;
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	ld	d, a
	dec	de
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;src/large_map.c:256: redraw = TRUE;
	ld	hl, #_redraw
	ld	(hl), #0x01
	jr	00118$
00117$:
;src/large_map.c:258: } else if (joy & J_RIGHT) {
	bit	0, c
	jr	Z, 00118$
;src/large_map.c:259: if (camera_x < camera_max_x) {
	ld	a, (_camera_x)
	ld	c, a
	ld	hl, #_camera_x + 1
	ld	b, (hl)
	ld	a, c
	sub	a, #0x40
	ld	a, b
	sbc	a, #0x04
	jr	NC, 00118$
;src/large_map.c:260: camera_x++;
	dec	hl
	inc	(hl)
	jr	NZ, 00202$
	inc	hl
	inc	(hl)
00202$:
;src/large_map.c:261: redraw = TRUE;
	ld	hl, #_redraw
	ld	(hl), #0x01
00118$:
;src/large_map.c:264: if (redraw) {
	ld	a, (#_redraw)
	or	a, a
	jr	Z, 00120$
;src/large_map.c:265: vsync();
	call	_vsync
;src/large_map.c:266: set_camera();
	call	_set_camera
;src/large_map.c:267: redraw = FALSE;
	xor	a, a
	ld	(#_redraw),a
	jp	00123$
00120$:
;src/large_map.c:268: } else vsync();
	call	_vsync
;src/large_map.c:270: }
	jp	00123$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
