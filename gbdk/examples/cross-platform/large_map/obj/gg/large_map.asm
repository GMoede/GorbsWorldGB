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
	.globl _set_tile_submap
	.globl _set_native_tile_data
	.globl _set_palette
	.globl _joypad
	.globl _vsync
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
_GG_STATE	=	0x0000
_GG_EXT_7BIT	=	0x0001
_GG_EXT_CTL	=	0x0002
_GG_SIO_SEND	=	0x0003
_GG_SIO_RECV	=	0x0004
_GG_SIO_CTL	=	0x0005
_GG_SOUND_PAN	=	0x0006
_MEMORY_CTL	=	0x003e
_JOY_CTL	=	0x003f
_VCOUNTER	=	0x007e
_PSG	=	0x007f
_HCOUNTER	=	0x007f
_VDP_DATA	=	0x00be
_VDP_CMD	=	0x00bf
_VDP_STATUS	=	0x00bf
_JOY_PORT1	=	0x00dc
_JOY_PORT2	=	0x00dd
_FMADDRESS	=	0x00f0
_FMDATA	=	0x00f1
_AUDIOCTRL	=	0x00f2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_RAM_CONTROL	=	0xfffc
_GLASSES_3D	=	0xfff8
_MAP_FRAME0	=	0xfffd
_MAP_FRAME1	=	0xfffe
_MAP_FRAME2	=	0xffff
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
;src/large_map.c:80: move_bkg(camera_x, WRAP_SCROLL_Y(camera_y + SCROLL_Y_OFFSET));
	ld	de, #0x00e0
	ld	hl, (_camera_y)
	call	__moduint
	ld	a, (_camera_x)
;../../../include/sms/sms.h:223: __WRITE_VDP_REG(VDP_RSCX, -x);
	ld	hl, #_shadow_VDP_RSCX
	neg
	ld	(hl), a
	di
	ld	a, (_shadow_VDP_RSCX+0)
	out	(_VDP_CMD), a
	ld	a, #0x88
	out	(_VDP_CMD), a
	ei
;../../../include/sms/sms.h:224: __WRITE_VDP_REG(VDP_RSCY, y);
	ld	iy, #_shadow_VDP_RSCY
	ld	0 (iy), e
	di
	ld	a, (_shadow_VDP_RSCY+0)
	out	(_VDP_CMD), a
	ld	a, #0x89
	out	(_VDP_CMD), a
	ei
;src/large_map.c:82: map_pos_y = (uint8_t)(camera_y >> 3u);
	ld	hl, (_camera_y)
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	ld	(#_map_pos_y), a
;src/large_map.c:83: if (map_pos_y != old_map_pos_y)
	ld	a, (_map_pos_y+0)
	ld	hl, #_old_map_pos_y
	sub	a, (hl)
	jp	Z, 00107$
;src/large_map.c:87: set_submap_indices(
	ld	a, (_map_pos_x)
	ld	e, a
	ld	d, #0x00
	ld	hl, #_map_pos_x
	ld	a, #0x9c
	sub	a, (hl)
	ld	c, a
	ld	hl, #0x009c
	cp	a, a
	sbc	hl, de
	ld	a, #0x15
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 00201$
	xor	a, #0x80
00201$:
	rlca
	and	a,#0x01
	ld	b, a
;src/large_map.c:85: if (camera_y < old_camera_y)
	ld	hl, #_old_camera_y
	ld	a, (_camera_y+0)
	sub	a, (hl)
	inc	hl
	ld	a, (_camera_y+1)
	sbc	a, (hl)
	jr	NC, 00104$
;src/large_map.c:87: set_submap_indices(
	ld	de, #_bigmap_map+0
	ld	a, b
	or	a, a
	jr	Z, 00122$
	ld	b, #0x15
	jr	00123$
00122$:
	ld	b, c
00123$:
	ld	a, (_map_pos_y)
	push	de
	ld	h, #0x9c
	push	hl
	inc	sp
	ld	h, #0x01
	ld	l, b
	push	hl
	push	af
	inc	sp
	ld	a, (_map_pos_x)
	push	af
	inc	sp
	call	_set_tile_submap
	jr	00105$
00104$:
;src/large_map.c:104: if ((bigmap_mapHeight - DEVICE_SCREEN_HEIGHT) > map_pos_y)
	ld	a, (_map_pos_y+0)
	sub	a, #0x30
	jr	NC, 00105$
;src/large_map.c:106: set_submap_indices(
	ld	de, #_bigmap_map+0
	ld	a, b
	or	a, a
	jr	Z, 00124$
	ld	b, #0x15
	jr	00125$
00124$:
	ld	b, c
00125$:
;src/large_map.c:74: return map_pos_y + DEVICE_SCREEN_HEIGHT;
	ld	a, (_map_pos_y)
	add	a, #0x12
;src/large_map.c:106: set_submap_indices(
	push	de
	ld	h, #0x9c
	push	hl
	inc	sp
	ld	h, #0x01
	ld	l, b
	push	hl
	push	af
	inc	sp
	ld	a, (_map_pos_x)
	push	af
	inc	sp
	call	_set_tile_submap
00105$:
;src/large_map.c:122: old_map_pos_y = map_pos_y; 
	ld	a, (_map_pos_y+0)
	ld	(_old_map_pos_y+0), a
00107$:
;src/large_map.c:125: map_pos_x = (uint8_t)(camera_x >> 3u);
	ld	hl, (_camera_x)
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	ld	(#_map_pos_x), a
;src/large_map.c:126: if (map_pos_x != old_map_pos_x)
	ld	a, (_map_pos_x+0)
	ld	hl, #_old_map_pos_x
	sub	a, (hl)
	jp	Z, 00114$
;src/large_map.c:130: set_submap_indices(
	ld	a, (_map_pos_y)
	ld	e, a
	ld	d, #0x00
	ld	hl, #_map_pos_y
	ld	a, #0x42
	sub	a, (hl)
	ld	c, a
	ld	hl, #0x0042
	cp	a, a
	sbc	hl, de
	ld	a, #0x13
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 00203$
	xor	a, #0x80
00203$:
	rlca
	and	a,#0x01
	ld	e, a
;src/large_map.c:128: if (camera_x < old_camera_x)
	ld	hl, #_old_camera_x
	ld	a, (_camera_x+0)
	sub	a, (hl)
	inc	hl
	ld	a, (_camera_x+1)
	sbc	a, (hl)
	jr	NC, 00111$
;src/large_map.c:130: set_submap_indices(
	ld	a, e
	or	a, a
	jr	Z, 00126$
	ld	c, #0x13
00126$:
	ld	a, (_map_pos_x)
	ld	b, a
	ld	hl, #_bigmap_map
	push	hl
	ld	a, #0x9c
	push	af
	inc	sp
	ld	h, c
	ld	l, #0x01
	push	hl
	ld	a, (_map_pos_y)
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_set_tile_submap
	jr	00112$
00111$:
;src/large_map.c:147: if ((bigmap_mapWidth - DEVICE_SCREEN_WIDTH) > map_pos_x)
	ld	a, (_map_pos_x+0)
	sub	a, #0x88
	jr	NC, 00112$
;src/large_map.c:149: set_submap_indices(
	ld	a, e
	or	a, a
	jr	Z, 00128$
	ld	c, #0x13
00128$:
;src/large_map.c:60: return map_pos_x + DEVICE_SCREEN_WIDTH;
	ld	a, (_map_pos_x)
	add	a, #0x14
	ld	e, a
;src/large_map.c:149: set_submap_indices(
	ld	hl, #_bigmap_map
	push	hl
	ld	a, #0x9c
	push	af
	inc	sp
	ld	h, c
	ld	l, #0x01
	push	hl
	ld	a, (_map_pos_y)
	ld	d,a
	push	de
	call	_set_tile_submap
00112$:
;src/large_map.c:165: old_map_pos_x = map_pos_x;
	ld	a, (_map_pos_x+0)
	ld	(_old_map_pos_x+0), a
00114$:
;src/large_map.c:168: old_camera_x = camera_x, old_camera_y = camera_y;
	ld	hl, (_camera_x)
	ld	(_old_camera_x), hl
	ld	hl, (_camera_y)
	ld	(_old_camera_y), hl
;src/large_map.c:169: }
	ret
;src/large_map.c:172: void init_camera(uint8_t x, uint8_t y) {
;	---------------------------------
; Function init_camera
; ---------------------------------
_init_camera::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	ld	-1 (ix), a
	ld	-2 (ix), l
;src/large_map.c:175: set_native_tile_data(0, bigmap_TILE_COUNT, bigmap_tiles);
	ld	hl, #_bigmap_tiles
	push	hl
	ld	de, #0x00d9
	ld	hl, #0x0000
	call	_set_native_tile_data
;src/large_map.c:179: __WRITE_VDP_REG(VDP_R2, R2_MAP_0x3800);
	ld	iy, #_shadow_VDP_R2
	ld	0 (iy), #0xff
	di
	ld	a, #0xff
	out	(_VDP_CMD), a
	ld	a, #0x82
	out	(_VDP_CMD), a
	ei
;src/large_map.c:180: __WRITE_VDP_REG(VDP_R5, R5_SAT_0x3F00);
	ld	iy, #_shadow_VDP_R5
	ld	0 (iy), #0xff
	di
	ld	a, #0xff
	out	(_VDP_CMD), a
	ld	a, #0x85
	out	(_VDP_CMD), a
	ei
;src/large_map.c:181: set_palette(0, bigmap_PALETTE_COUNT, bigmap_palettes);
	ld	hl, #_bigmap_palettes
	push	hl
	ld	hl, #0x100
	push	hl
	call	_set_palette
;src/large_map.c:192: camera_x = x;
	ld	a, -1 (ix)
	ld	(_camera_x+0), a
	xor	a, a
	ld	(_camera_x+1), a
;src/large_map.c:193: camera_y = y;
	ld	a, -2 (ix)
	ld	(_camera_y+0), a
	xor	a, a
	ld	(_camera_y+1), a
;src/large_map.c:195: if (camera_x > camera_max_x) camera_x = camera_max_x;
	ld	hl, (_camera_x)
	ld	a, #0x40
	cp	a, l
	ld	a, #0x04
	sbc	a, h
	jr	NC, 00102$
	ld	hl, #0x0440
	ld	(_camera_x), hl
00102$:
;src/large_map.c:196: if (camera_y > camera_max_y) camera_y = camera_max_y;
	ld	hl, (_camera_y)
	ld	a, #0x80
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jr	NC, 00104$
	ld	hl, #0x0180
	ld	(_camera_y), hl
00104$:
;src/large_map.c:197: old_camera_x = camera_x; old_camera_y = camera_y;
	ld	hl, (_camera_x)
	ld	(_old_camera_x), hl
	ld	hl, (_camera_y)
	ld	(_old_camera_y), hl
;src/large_map.c:199: map_pos_x = camera_x >> 3;
	ld	hl, (_camera_x)
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	ld	(#_map_pos_x), a
;src/large_map.c:200: map_pos_y = camera_y >> 3;
	ld	hl, (_camera_y)
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	ld	(#_map_pos_y), a
;src/large_map.c:201: old_map_pos_x = old_map_pos_y = 255;
	ld	hl, #_old_map_pos_y
	ld	(hl), #0xff
	ld	hl, #_old_map_pos_x
	ld	(hl), #0xff
;src/large_map.c:202: move_bkg(camera_x, WRAP_SCROLL_Y(camera_y + SCROLL_Y_OFFSET));
	ld	de, #0x00e0
	ld	hl, (_camera_y)
	call	__moduint
	ld	a, (_camera_x)
;../../../include/sms/sms.h:223: __WRITE_VDP_REG(VDP_RSCX, -x);
	ld	hl, #_shadow_VDP_RSCX
	neg
	ld	(hl), a
	di
	ld	a, (_shadow_VDP_RSCX+0)
	out	(_VDP_CMD), a
	ld	a, #0x88
	out	(_VDP_CMD), a
	ei
;../../../include/sms/sms.h:224: __WRITE_VDP_REG(VDP_RSCY, y);
	ld	iy, #_shadow_VDP_RSCY
	ld	0 (iy), e
	di
	ld	a, (_shadow_VDP_RSCY+0)
	out	(_VDP_CMD), a
	ld	a, #0x89
	out	(_VDP_CMD), a
	ei
;src/large_map.c:205: set_submap_indices(
	ld	bc, #_bigmap_map+0
	ld	a, (_map_pos_y)
	ld	e, a
	ld	d, #0x00
	ld	hl, #0x0042
	cp	a, a
	sbc	hl, de
	ld	a, #0x13
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	NC, 00109$
	ld	d, #0x13
	jr	00110$
00109$:
	ld	hl, #_map_pos_y
	ld	a, #0x42
	sub	a, (hl)
	ld	d, a
00110$:
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
	jr	NC, 00111$
	ld	a, #0x15
	jr	00112$
00111$:
	ld	hl, #_map_pos_x
	ld	a, #0x9c
	sub	a, (hl)
00112$:
	push	bc
	ld	h, #0x9c
	ld	l, d
	push	hl
	push	af
	inc	sp
	ld	a, (_map_pos_y)
	ld	h, a
	ld	a, (_map_pos_x)
	ld	l, a
	push	hl
	call	_set_tile_submap
;src/large_map.c:221: redraw = FALSE;
	xor	a, a
	ld	(_redraw+0), a
;src/large_map.c:223: move_bkg(camera_x, WRAP_SCROLL_Y(camera_y + SCROLL_Y_OFFSET));
	ld	de, #0x00e0
	ld	hl, (_camera_y)
	call	__moduint
	ld	a, (_camera_x)
	ld	hl, #_shadow_VDP_RSCX
	neg
	ld	(hl), a
	di
	ld	a, (_shadow_VDP_RSCX+0)
	out	(_VDP_CMD), a
	ld	a, #0x88
	out	(_VDP_CMD), a
	ei
;../../../include/sms/sms.h:224: __WRITE_VDP_REG(VDP_RSCY, y);
	ld	iy, #_shadow_VDP_RSCY
	ld	0 (iy), e
	di
	ld	a, (_shadow_VDP_RSCY+0)
	out	(_VDP_CMD), a
	ld	a, #0x89
	out	(_VDP_CMD), a
	ei
;src/large_map.c:223: move_bkg(camera_x, WRAP_SCROLL_Y(camera_y + SCROLL_Y_OFFSET));
;src/large_map.c:230: }
	ld	sp, ix
	pop	ix
	ret
;src/large_map.c:232: void main(void){
;	---------------------------------
; Function main
; ---------------------------------
_main::
;../../../include/sms/sms.h:254: __WRITE_VDP_REG(VDP_R1, __READ_VDP_REG(VDP_R1) &= (~R1_DISP_ON));
	ld	a, (_shadow_VDP_R1+0)
	and	a, #0xbf
	ld	(_shadow_VDP_R1+0), a
	di
	ld	a, (_shadow_VDP_R1+0)
	out	(_VDP_CMD), a
	ld	a, #0x81
	out	(_VDP_CMD), a
	ei
;src/large_map.c:234: init_camera(0, 0);
	xor	a, a
	ld	l, a
	call	_init_camera
;src/large_map.c:237: DISPLAY_ON;
	ld	a, (_shadow_VDP_R1+0)
	or	a, #0x40
	ld	(_shadow_VDP_R1+0), a
	di
	ld	a, (_shadow_VDP_R1+0)
	out	(_VDP_CMD), a
	ld	a, #0x81
	out	(_VDP_CMD), a
	ei
;src/large_map.c:238: while (TRUE) {
00123$:
;src/large_map.c:239: joy = joypad();
	call	_joypad
	ld	a, l
	ld	(_joy+0), a
;src/large_map.c:241: if (joy & J_UP) {
	ld	a, (_joy)
	ld	e, a
	bit	0, e
	jr	Z, 00108$
;src/large_map.c:242: if (camera_y) {
	ld	a, (_camera_y+1)
	ld	hl, #_camera_y
	or	a, (hl)
	jr	Z, 00109$
;src/large_map.c:243: camera_y--;
	ld	hl, (_camera_y)
	dec	hl
	ld	(_camera_y), hl
;src/large_map.c:244: redraw = TRUE;
	ld	hl, #_redraw
	ld	(hl), #0x01
	jr	00109$
00108$:
;src/large_map.c:246: } else if (joy & J_DOWN) {
	bit	1, e
	jr	Z, 00109$
;src/large_map.c:247: if (camera_y < camera_max_y) {
	ld	hl, (_camera_y)
	ld	a, l
	sub	a, #0x80
	ld	a, h
	sbc	a, #0x01
	jr	NC, 00109$
;src/large_map.c:248: camera_y++;
	ld	hl, (_camera_y)
	inc	hl
	ld	(_camera_y), hl
;src/large_map.c:249: redraw = TRUE;
	ld	hl, #_redraw
	ld	(hl), #0x01
00109$:
;src/large_map.c:253: if (joy & J_LEFT) {
	bit	2, e
	jr	Z, 00117$
;src/large_map.c:254: if (camera_x) {
	ld	a, (_camera_x+1)
	ld	hl, #_camera_x
	or	a, (hl)
	jr	Z, 00118$
;src/large_map.c:255: camera_x--;
	ld	hl, (_camera_x)
	dec	hl
	ld	(_camera_x), hl
;src/large_map.c:256: redraw = TRUE;
	ld	hl, #_redraw
	ld	(hl), #0x01
	jr	00118$
00117$:
;src/large_map.c:258: } else if (joy & J_RIGHT) {
	bit	3, e
	jr	Z, 00118$
;src/large_map.c:259: if (camera_x < camera_max_x) {
	ld	hl, (_camera_x)
	ld	de, #0x0440
	cp	a, a
	sbc	hl, de
	jr	NC, 00118$
;src/large_map.c:260: camera_x++;
	ld	hl, (_camera_x)
	inc	hl
	ld	(_camera_x), hl
;src/large_map.c:261: redraw = TRUE;
	ld	hl, #_redraw
	ld	(hl), #0x01
00118$:
;src/large_map.c:264: if (redraw) {
	ld	a, (_redraw+0)
	or	a, a
	jr	Z, 00120$
;src/large_map.c:265: vsync();
	call	_vsync
;src/large_map.c:266: set_camera();
	call	_set_camera
;src/large_map.c:267: redraw = FALSE;
	xor	a, a
	ld	(_redraw+0), a
	jp	00123$
00120$:
;src/large_map.c:268: } else vsync();
	call	_vsync
;src/large_map.c:270: }
	jp	00123$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
