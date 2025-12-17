;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module gorb
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _updateGorb
	.globl _setupGorb
	.globl _initialAnimation
	.globl _set_sprite_data
	.globl _isIntroSpriteSelected
	.globl _flipGorb
	.globl _gorbDirection
	.globl _gorbMetasprite
	.globl _gorbY
	.globl _gorbX
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_gorbX::
	.ds 2
_gorbY::
	.ds 2
_gorbMetasprite::
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_gorbDirection::
	.ds 1
_flipGorb::
	.ds 1
_isIntroSpriteSelected::
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
;src/gorb.c:27: void initialAnimation(void)
;	---------------------------------
; Function initialAnimation
; ---------------------------------
_initialAnimation::
;src/gorb.c:29: set_sprite_data(0, gorbySleeping_TILE_COUNT, gorbySleeping_tiles);
	ld	de, #_gorbySleeping_tiles
	push	de
	ld	hl, #0x1000
	push	hl
	call	_set_sprite_data
	add	sp, #4
;src/gorb.c:30: gorbX = 80 << 4;
	ld	hl, #_gorbX
	xor	a, a
	ld	(hl+), a
	ld	(hl), #0x05
;src/gorb.c:31: gorbY = 40 << 4;
	ld	hl, #_gorbY
	ld	a, #0x80
	ld	(hl+), a
	ld	(hl), #0x02
;src/gorb.c:32: gorbMetasprite = gorbySleeping_metasprites[0];
	ld	de, #_gorbySleeping_metasprites
	ld	a, (de)
	ld	hl, #_gorbMetasprite
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
;src/gorb.c:36: }
	ret
;src/gorb.c:38: void setupGorb(void)
;	---------------------------------
; Function setupGorb
; ---------------------------------
_setupGorb::
;src/gorb.c:41: if (isIntroSequence)
	ld	a, (#_isIntroSequence)
	or	a, a
	jr	Z, 00102$
;src/gorb.c:43: set_sprite_data(0, gorbySleeping_TILE_COUNT, gorbySleeping_tiles);
	ld	de, #_gorbySleeping_tiles
	push	de
	ld	hl, #0x1000
	push	hl
	call	_set_sprite_data
	add	sp, #4
;src/gorb.c:44: gorbX = 67 << 4;
	ld	hl, #_gorbX
	ld	a, #0x30
	ld	(hl+), a
	ld	(hl), #0x04
;src/gorb.c:45: gorbY = 100 << 4;
	ld	hl, #_gorbY
	ld	a, #0x40
	ld	(hl+), a
	ld	(hl), #0x06
;src/gorb.c:46: gorbMetasprite = gorbySleeping_metasprites[0];
	ld	de, #_gorbySleeping_metasprites
	ld	a, (de)
	ld	hl, #_gorbMetasprite
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
;src/gorb.c:47: isIntroSpriteSelected = TRUE;
	ld	hl, #_isIntroSpriteSelected
	ld	(hl), #0x01
	ret
00102$:
;src/gorb.c:52: set_sprite_data(0, WalkingGorbDown_TILE_COUNT, WalkingGorbDown_tiles);
	ld	de, #_WalkingGorbDown_tiles
	push	de
	ld	hl, #0x2800
	push	hl
	call	_set_sprite_data
	add	sp, #4
;src/gorb.c:56: gorbX = 80 << 4;
	ld	hl, #_gorbX
	xor	a, a
	ld	(hl+), a
	ld	(hl), #0x05
;src/gorb.c:57: gorbY = 40 << 4;
	ld	hl, #_gorbY
	ld	a, #0x80
	ld	(hl+), a
	ld	(hl), #0x02
;src/gorb.c:60: gorbDirection = J_DOWN;
	ld	hl, #_gorbDirection
	ld	(hl), #0x08
;src/gorb.c:63: gorbMetasprite = WalkingGorbDown_metasprites[0];
	ld	de, #_WalkingGorbDown_metasprites
	ld	a, (de)
	ld	hl, #_gorbMetasprite
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
;src/gorb.c:65: }
	ret
;src/gorb.c:67: uint8_t updateGorb(void)
;	---------------------------------
; Function updateGorb
; ---------------------------------
_updateGorb::
	dec	sp
	dec	sp
;src/gorb.c:70: if (isIntroSequence)
	ld	a, (#_isIntroSequence)
	or	a, a
	jr	Z, 00102$
;src/gorb.c:72: gorbMetasprite = gorbySleeping_metasprites[frameRealValue];
	ld	bc, #_gorbySleeping_metasprites+0
	ld	a, (_frameRealValue)
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	hl, #_gorbMetasprite
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
;src/gorb.c:73: move_metasprite_ex(gorbMetasprite, 0, 0, 0, gorbX >> 4, gorbY >> 4);
	ld	hl, #_gorbY
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
	ld	a, (_gorbX)
	ld	b, a
	ld	hl, #_gorbX + 1
	ld	e, (hl)
	srl	e
	rr	b
	srl	e
	rr	b
	srl	e
	rr	b
	srl	e
	rr	b
	ld	l, b
;../gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	a, (_gorbMetasprite)
	ld	(___current_metasprite), a
	ld	a, (_gorbMetasprite + 1)
	ld	(___current_metasprite + 1), a
;../gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
;../gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	xor	a, a
	ld	(___current_base_tile), a
	ld	(___current_base_prop), a
;../gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	d, c
	ld	e, l
	xor	a, a
	call	___move_metasprite
;src/gorb.c:73: move_metasprite_ex(gorbMetasprite, 0, 0, 0, gorbX >> 4, gorbY >> 4);
00102$:
;src/gorb.c:78: uint8_t gorbLastDirection = gorbDirection;
	ld	a, (#_gorbDirection)
	ldhl	sp,	#1
	ld	(hl), a
;src/gorb.c:79: uint8_t gorbMoving = FALSE;
	ld	c, #0x00
;src/gorb.c:82: if (joypadCurrent & J_RIGHT)
	ld	a, (_joypadCurrent)
	ld	e, a
	bit	0, e
	jr	Z, 00104$
;src/gorb.c:84: gorbX += GORB_SPEED;
	ld	a, (_gorbX)
	ld	hl, #_gorbX + 1
	ld	h, (hl)
	ld	l, a
	ld	bc, #0x0008
	add	hl, bc
	ld	a, l
	ld	(_gorbX), a
	ld	a, h
	ld	(_gorbX + 1), a
;src/gorb.c:85: gorbDirection = J_RIGHT;
	ld	hl, #_gorbDirection
	ld	(hl), #0x01
;src/gorb.c:86: gorbMoving = TRUE;
	ld	c, #0x01
00104$:
;src/gorb.c:90: if (joypadCurrent & J_LEFT)
	bit	1, e
	jr	Z, 00106$
;src/gorb.c:92: gorbX -= GORB_SPEED;
	ld	a, (_gorbX)
	ld	hl, #_gorbX + 1
	ld	b, (hl)
	dec	hl
	add	a, #0xf8
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	(hl), c
	inc	hl
	ld	(hl), a
;src/gorb.c:93: gorbDirection = J_LEFT;
	ld	hl, #_gorbDirection
	ld	(hl), #0x02
;src/gorb.c:94: gorbMoving = TRUE;
	ld	c, #0x01
00106$:
;src/gorb.c:98: if (joypadCurrent & J_DOWN)
	bit	3, e
	jr	Z, 00108$
;src/gorb.c:100: gorbY += GORB_SPEED;
	ld	a, (_gorbY)
	ld	hl, #_gorbY + 1
	ld	h, (hl)
	ld	l, a
	ld	bc, #0x0008
	add	hl, bc
	ld	a, l
	ld	(_gorbY), a
	ld	a, h
	ld	(_gorbY + 1), a
;src/gorb.c:101: gorbDirection = J_DOWN;
	ld	hl, #_gorbDirection
	ld	(hl), #0x08
;src/gorb.c:102: gorbMoving = TRUE;
	ld	c, #0x01
00108$:
;src/gorb.c:106: if (joypadCurrent & J_UP)
	bit	2, e
	jr	Z, 00110$
;src/gorb.c:108: gorbY -= GORB_SPEED;
	ld	a, (_gorbY)
	ld	hl, #_gorbY + 1
	ld	b, (hl)
	dec	hl
	add	a, #0xf8
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	(hl), c
	inc	hl
	ld	(hl), a
;src/gorb.c:109: gorbDirection = J_UP;
	ld	hl, #_gorbDirection
	ld	(hl), #0x04
;src/gorb.c:110: gorbMoving = TRUE;
	ld	c, #0x01
00110$:
;src/gorb.c:114: if (gorbMoving)
	ld	a, c
	or	a, a
	jp	Z, 00124$
;src/gorb.c:116: isIntroSequence = FALSE;
	xor	a, a
	ld	(#_isIntroSequence),a
;src/gorb.c:118: if (gorbDirection != gorbLastDirection)
	ld	a, (#_gorbDirection)
	ldhl	sp,	#1
	sub	a, (hl)
	jr	Z, 00117$
;src/gorb.c:122: switch (gorbDirection)
	ld	a, (#_gorbDirection)
	dec	a
	jr	Z, 00112$
	ld	a,(#_gorbDirection)
	cp	a,#0x02
	jr	Z, 00113$
	cp	a,#0x04
	jr	Z, 00114$
	sub	a, #0x08
	jr	NZ, 00117$
;src/gorb.c:125: set_sprite_data(0, WalkingGorbDown_TILE_COUNT, WalkingGorbDown_tiles);
	ld	de, #_WalkingGorbDown_tiles
	push	de
	ld	hl, #0x2800
	push	hl
	call	_set_sprite_data
	add	sp, #4
;src/gorb.c:126: break;
	jr	00117$
;src/gorb.c:127: case J_RIGHT:
00112$:
;src/gorb.c:128: set_sprite_data(0, WalkingGorb_TILE_COUNT, WalkingGorb_tiles);
	ld	de, #_WalkingGorb_tiles
	push	de
	ld	hl, #0x1e00
	push	hl
	call	_set_sprite_data
	add	sp, #4
;src/gorb.c:129: break;
	jr	00117$
;src/gorb.c:130: case J_LEFT:
00113$:
;src/gorb.c:131: set_sprite_data(0, WalkingGorb_TILE_COUNT, WalkingGorb_tiles);
	ld	de, #_WalkingGorb_tiles
	push	de
	ld	hl, #0x1e00
	push	hl
	call	_set_sprite_data
	add	sp, #4
;src/gorb.c:132: break;
	jr	00117$
;src/gorb.c:133: case J_UP:
00114$:
;src/gorb.c:134: set_sprite_data(0, WalkingGorbUp_TILE_COUNT, WalkingGorbUp_tiles);
	ld	de, #_WalkingGorbUp_tiles
	push	de
	ld	hl, #0x2600
	push	hl
	call	_set_sprite_data
	add	sp, #4
;src/gorb.c:136: }
00117$:
;src/gorb.c:72: gorbMetasprite = gorbySleeping_metasprites[frameRealValue];
	ld	a, (_frameRealValue)
	ld	l, a
	ld	h, #0x00
;src/gorb.c:144: gorbMetasprite = WalkingGorbDown_metasprites[frameRealValue];
	add	hl, hl
	ld	c, l
	ld	b, h
;src/gorb.c:141: switch (gorbDirection)
	ld	a, (#_gorbDirection)
	dec	a
	jr	Z, 00119$
	ld	a,(#_gorbDirection)
	cp	a,#0x02
	jr	Z, 00120$
	cp	a,#0x04
	jr	Z, 00121$
	sub	a, #0x08
	jr	NZ, 00124$
;src/gorb.c:144: gorbMetasprite = WalkingGorbDown_metasprites[frameRealValue];
	ld	hl, #_WalkingGorbDown_metasprites
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	hl, #_gorbMetasprite
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
;src/gorb.c:145: flipGorb = FALSE;
	xor	a, a
	ld	(#_flipGorb),a
;src/gorb.c:146: break;
	jr	00124$
;src/gorb.c:147: case J_RIGHT:
00119$:
;src/gorb.c:148: gorbMetasprite = WalkingGorb_metasprites[frameRealValue];
	ld	hl, #_WalkingGorb_metasprites
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	hl, #_gorbMetasprite
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
;src/gorb.c:149: flipGorb = FALSE;
	xor	a, a
	ld	(#_flipGorb),a
;src/gorb.c:150: break;
	jr	00124$
;src/gorb.c:151: case J_LEFT:
00120$:
;src/gorb.c:152: gorbMetasprite = WalkingGorb_metasprites[frameRealValue];
	ld	hl, #_WalkingGorb_metasprites
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	hl, #_gorbMetasprite
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
;src/gorb.c:153: flipGorb = TRUE;
	ld	hl, #_flipGorb
	ld	(hl), #0x01
;src/gorb.c:154: break;
	jr	00124$
;src/gorb.c:155: case J_UP:
00121$:
;src/gorb.c:156: gorbMetasprite = WalkingGorbUp_metasprites[frameRealValue];
	ld	hl, #_WalkingGorbUp_metasprites
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	hl, #_gorbMetasprite
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
;src/gorb.c:157: flipGorb = FALSE;
	xor	a, a
	ld	(#_flipGorb),a
;src/gorb.c:159: }
00124$:
;src/gorb.c:73: move_metasprite_ex(gorbMetasprite, 0, 0, 0, gorbX >> 4, gorbY >> 4);
	ld	a, (_gorbY)
	ld	c, a
	ld	hl, #_gorbY + 1
	ld	d, (hl)
	srl	d
	rr	c
	srl	d
	rr	c
	srl	d
	rr	c
	srl	d
	rr	c
	ld	a, (_gorbX)
	ld	e, a
	ld	hl, #_gorbX + 1
	ld	b, (hl)
	srl	b
	rr	e
	srl	b
	rr	e
	srl	b
	rr	e
	srl	b
	rr	e
;../gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ld	a, (#_gorbMetasprite)
	ldhl	sp,	#0
	ld	(hl), a
	ld	a, (#_gorbMetasprite + 1)
	ldhl	sp,	#1
	ld	(hl), a
;src/gorb.c:166: return move_metasprite_vflip(gorbMetasprite, 0, 0, gorbX >> 4, gorbY >> 4);
;src/gorb.c:165: if (flipGorb)
	ld	a, (#_flipGorb)
	or	a, a
	jr	Z, 00126$
;src/gorb.c:166: return move_metasprite_vflip(gorbMetasprite, 0, 0, gorbX >> 4, gorbY >> 4);
;../gbdk/include/gb/metasprites.h:209: __current_metasprite = metasprite;
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(#___current_metasprite),a
	ldhl	sp,	#1
	ld	a, (hl)
	ld	(#___current_metasprite + 1),a
;../gbdk/include/gb/metasprites.h:210: __current_base_tile = base_tile;
;../gbdk/include/gb/metasprites.h:211: __current_base_prop = 0;
	xor	a, a
	ld	(#___current_base_tile), a
	ld	(#___current_base_prop),a
;../gbdk/include/gb/metasprites.h:212: return __move_metasprite_vflip(base_sprite, (y << 8) | (uint8_t)(x - 8u));
	ld	b, c
	ld	a, e
	add	a, #0xf8
	ld	e, a
	ld	d, b
	xor	a, a
	inc	sp
	inc	sp
	jp	___move_metasprite_vflip
;src/gorb.c:166: return move_metasprite_vflip(gorbMetasprite, 0, 0, gorbX >> 4, gorbY >> 4);
	jr	00131$
00126$:
;src/gorb.c:168: return move_metasprite_ex(gorbMetasprite, 0, 0, 0, gorbX >> 4, gorbY >> 4);
;../gbdk/include/gb/metasprites.h:160: __current_metasprite = metasprite;
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(#___current_metasprite),a
	ldhl	sp,	#1
	ld	a, (hl)
	ld	(#___current_metasprite + 1),a
;../gbdk/include/gb/metasprites.h:161: __current_base_tile = base_tile;
;../gbdk/include/gb/metasprites.h:162: __current_base_prop = base_prop;
	xor	a, a
	ld	(#___current_base_tile), a
	ld	(#___current_base_prop),a
;../gbdk/include/gb/metasprites.h:163: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	d, c
	xor	a, a
	inc	sp
	inc	sp
	jp	___move_metasprite
;src/gorb.c:168: return move_metasprite_ex(gorbMetasprite, 0, 0, 0, gorbX >> 4, gorbY >> 4);
00131$:
;src/gorb.c:169: }
	inc	sp
	inc	sp
	ret
	.area _CODE
	.area _INITIALIZER
__xinit__gorbDirection:
	.db #0x00	; 0
__xinit__flipGorb:
	.db #0x00	; 0
__xinit__isIntroSpriteSelected:
	.db #0x00	; 0
	.area _CABS (ABS)
