;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module common
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _drawTextCentered
	.globl _getPlayerInput
	.globl _strlen
	.globl _get_bkg_xy_addr
	.globl _set_vram_byte
	.globl _joypad
	.globl _increment
	.globl _isIntroSequence
	.globl _frameRealValue
	.globl _frameCounter
	.globl _joypadCurrent
	.globl _playerY
	.globl _playerX
	.globl _fourFrameLaggingAnimation
	.globl _updateFrameCounter
	.globl _getCharacterVRamTile
	.globl _drawText
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_playerX::
	.ds 2
_playerY::
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_joypadCurrent::
	.ds 1
_frameCounter::
	.ds 1
_frameRealValue::
	.ds 1
_isIntroSequence::
	.ds 1
_increment::
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
;src/common.c:23: void getPlayerInput(uint16_t *nextPlayerX, uint16_t *nextPlayerY, int8_t *directionX, int8_t *directionY)
;	---------------------------------
; Function getPlayerInput
; ---------------------------------
_getPlayerInput::
	add	sp, #-7
	ldhl	sp,	#5
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;src/common.c:27: uint8_t joypadCurrent = joypad();
	call	_joypad
	ldhl	sp,	#0
	ld	(hl), a
;src/common.c:29: *nextPlayerX = playerX;
	ldhl	sp,	#5
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (_playerX)
	ld	(de), a
	inc	de
	ld	a, (_playerX + 1)
	ld	(de), a
;src/common.c:30: *nextPlayerY = playerY;
	ld	e, c
	ld	d, b
	ld	a, (_playerY)
	ld	(de), a
	inc	de
	ld	a, (_playerY + 1)
	ld	(de), a
;src/common.c:31: *directionY = 0;
	ldhl	sp,	#11
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x00
;src/common.c:32: *directionX = 0;
	ldhl	sp,	#9
	ld	a, (hl)
	ldhl	sp,	#1
	ld	(hl), a
	ldhl	sp,	#10
	ld	a, (hl)
	ldhl	sp,	#2
	ld	(hl-), a
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x00
;src/common.c:34: if (joypadCurrent & J_RIGHT)
	push	hl
	ldhl	sp,	#2
	bit	0, (hl)
	pop	hl
	jr	Z, 00102$
;src/common.c:36: *nextPlayerX += 1;
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
	inc	de
	ld	a, (de)
	ld	h, a
	inc	hl
	ld	e, l
	ld	a, h
	ldhl	sp,	#3
	ld	(hl), e
	inc	hl
	ld	(hl+), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#3
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;src/common.c:37: *directionX = 1;
	ldhl	sp,	#1
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
00102$:
;src/common.c:39: if (joypadCurrent & J_LEFT)
	push	hl
	ldhl	sp,	#2
	bit	1, (hl)
	pop	hl
	jr	Z, 00104$
;src/common.c:41: *nextPlayerX -= 1;
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
	inc	de
	ld	a, (de)
	ld	e, l
	ld	d, a
	dec	de
	ldhl	sp,	#3
	ld	a, e
	ld	(hl+), a
	ld	a, d
	ld	(hl+), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#3
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;src/common.c:42: *directionX = -1;
	ldhl	sp,	#1
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0xff
00104$:
;src/common.c:44: if (joypadCurrent & J_DOWN)
	push	hl
	ldhl	sp,	#2
	bit	3, (hl)
	pop	hl
	jr	Z, 00106$
;src/common.c:46: *nextPlayerY += 1;
	ld	l, c
	ld	h, b
	ld	a,	(hl+)
	ld	h, (hl)
	ld	e, a
	ld	d, h
	inc	de
	ld	l, c
	ld	h, b
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;src/common.c:47: *directionY = 1;
	ldhl	sp,	#11
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
00106$:
;src/common.c:49: if (joypadCurrent & J_UP)
	push	hl
	ldhl	sp,	#2
	bit	2, (hl)
	pop	hl
	jr	Z, 00109$
;src/common.c:51: *nextPlayerY -= 1;
	ld	l, c
	ld	h, b
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	dec	hl
	ld	a, l
	ld	(bc), a
	inc	bc
	ld	a, h
	ld	(bc), a
;src/common.c:52: *directionY = -1;
	ldhl	sp,	#11
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0xff
00109$:
;src/common.c:54: }
	add	sp, #7
	pop	hl
	add	sp, #4
	jp	(hl)
;src/common.c:89: void fourFrameLaggingAnimation(void){
;	---------------------------------
; Function fourFrameLaggingAnimation
; ---------------------------------
_fourFrameLaggingAnimation::
;src/common.c:90: increment = 2;
	ld	hl, #_increment
	ld	(hl), #0x02
;src/common.c:91: frameCounter += increment;
	ld	hl, #_frameCounter
	inc	(hl)
	inc	(hl)
;src/common.c:92: frameRealValue = frameCounter >> 4;
	ld	a, (hl)
	swap	a
	and	a, #0x0f
	ld	hl, #_frameRealValue
;src/common.c:94: if (frameRealValue >= 4 && frameRealValue <= 5)
	ld	(hl), a
	sub	a, #0x04
	jr	C, 00110$
	ld	a, #0x05
	sub	a, (hl)
	jr	C, 00110$
;src/common.c:96: frameRealValue = 3;
	ld	(hl), #0x03
	ret
00110$:
;src/common.c:98: else if (frameRealValue >= 10)
	ld	hl, #_frameRealValue
	ld	a, (hl)
	sub	a, #0x0a
	jr	C, 00107$
;src/common.c:100: frameRealValue = 0;
	ld	(hl), #0x00
;src/common.c:101: frameCounter = 0;
	xor	a, a
	ld	(#_frameCounter),a
	ret
00107$:
;src/common.c:103: else if (frameRealValue >= 9){
	ld	hl, #_frameRealValue
	ld	a, (hl)
	sub	a, #0x09
	jr	C, 00104$
;src/common.c:104: frameRealValue = 0;
	ld	(hl), #0x00
	ret
00104$:
;src/common.c:106: else if (frameRealValue >= 6)
	ld	hl, #_frameRealValue
	ld	a, (hl)
	sub	a, #0x06
	ret	C
;src/common.c:108: frameRealValue = 8 - frameRealValue;
	ld	a, #0x08
	sub	a, (hl)
	ld	(hl), a
;src/common.c:110: }
	ret
;src/common.c:116: void updateFrameCounter(void)
;	---------------------------------
; Function updateFrameCounter
; ---------------------------------
_updateFrameCounter::
;src/common.c:119: if (isIntroSequence)
	ld	a, (#_isIntroSequence)
	or	a, a
;src/common.c:121: fourFrameLaggingAnimation();
	jp	NZ, _fourFrameLaggingAnimation
;src/common.c:125: increment = 3;
	ld	hl, #_increment
	ld	(hl), #0x03
;src/common.c:126: frameCounter += increment;
	ld	hl, #_frameCounter
	inc	(hl)
	inc	(hl)
	inc	(hl)
;src/common.c:127: frameRealValue = frameCounter >> 4;
	ld	a, (hl)
	swap	a
	and	a, #0x0f
	ld	hl, #_frameRealValue
;src/common.c:128: if (frameRealValue >= 10)
	ld	(hl), a
	sub	a, #0x0a
	ret	C
;src/common.c:130: frameRealValue = 0;
	ld	(hl), #0x00
;src/common.c:131: frameCounter = 0;
	xor	a, a
	ld	(#_frameCounter),a
;src/common.c:134: }
	ret
;src/common.c:136: uint8_t getCharacterVRamTile(char character)
;	---------------------------------
; Function getCharacterVRamTile
; ---------------------------------
_getCharacterVRamTile::
	ld	b, a
;src/common.c:139: uint8_t vramTile = 0;
	ld	c, #0x00
;src/common.c:144: if (character >= 'a' && character <= 'z')
	ld	a, b
	xor	a, #0x80
	sub	a, #0xe1
	jr	C, 00120$
	ld	e, b
	ld	a,#0x7a
	ld	d,a
	sub	a, b
	bit	7, e
	jr	Z, 00230$
	bit	7, d
	jr	NZ, 00231$
	cp	a, a
	jr	00231$
00230$:
	bit	7, d
	jr	Z, 00231$
	scf
00231$:
	jr	C, 00120$
;src/common.c:145: vramTile = (character - 'a') + 1;
	ld	a, b
	add	a, #0xa0
	ld	c, a
	jp	00121$
00120$:
;src/common.c:146: else if (character >= 'A' && character <= 'Z')
	ld	a, b
	xor	a, #0x80
	sub	a, #0xc1
	jr	C, 00116$
	ld	e, b
	ld	a,#0x5a
	ld	d,a
	sub	a, b
	bit	7, e
	jr	Z, 00232$
	bit	7, d
	jr	NZ, 00233$
	cp	a, a
	jr	00233$
00232$:
	bit	7, d
	jr	Z, 00233$
	scf
00233$:
	jr	C, 00116$
;src/common.c:147: vramTile = (character - 'A') + 1;
	ld	a, b
	add	a, #0xc0
	ld	c, a
	jr	00121$
00116$:
;src/common.c:148: else if (character >= '0' && character <= '9')
	ld	a, b
	xor	a, #0x80
	sub	a, #0xb0
	jr	C, 00112$
	ld	e, b
	ld	a,#0x39
	ld	d,a
	sub	a, b
	bit	7, e
	jr	Z, 00234$
	bit	7, d
	jr	NZ, 00235$
	cp	a, a
	jr	00235$
00234$:
	bit	7, d
	jr	Z, 00235$
	scf
00235$:
	jr	C, 00112$
;src/common.c:149: vramTile = (character - '0') + 27;
	ld	a, b
	add	a, #0xeb
	ld	c, a
	jr	00121$
00112$:
;src/common.c:152: switch (character)
	ld	a,b
	cp	a,#0x21
	jr	Z, 00101$
	cp	a,#0x2c
	jr	Z, 00106$
	cp	a,#0x2e
	jr	Z, 00107$
	cp	a,#0x2f
	jr	Z, 00104$
	cp	a,#0x3a
	jr	Z, 00102$
	cp	a,#0x3c
	jr	Z, 00108$
	cp	a,#0x3d
	jr	Z, 00105$
	cp	a,#0x3e
	jr	Z, 00109$
	sub	a, #0x3f
	jr	Z, 00103$
	jr	00121$
;src/common.c:154: case '!':
00101$:
;src/common.c:155: vramTile = 37;
	ld	c, #0x25
;src/common.c:156: break;
	jr	00121$
;src/common.c:157: case ':':
00102$:
;src/common.c:158: vramTile = 38;
	ld	c, #0x26
;src/common.c:159: break;
	jr	00121$
;src/common.c:160: case '?':
00103$:
;src/common.c:161: vramTile = 39;
	ld	c, #0x27
;src/common.c:162: break;
	jr	00121$
;src/common.c:163: case '/':
00104$:
;src/common.c:164: vramTile = 40;
	ld	c, #0x28
;src/common.c:165: break;
	jr	00121$
;src/common.c:166: case '=':
00105$:
;src/common.c:167: vramTile = 41;
	ld	c, #0x29
;src/common.c:168: break;
	jr	00121$
;src/common.c:169: case ',':
00106$:
;src/common.c:170: vramTile = 42;
	ld	c, #0x2a
;src/common.c:171: break;
	jr	00121$
;src/common.c:172: case '.':
00107$:
;src/common.c:173: vramTile = 43;
	ld	c, #0x2b
;src/common.c:174: break;
	jr	00121$
;src/common.c:175: case '<':
00108$:
;src/common.c:176: vramTile = 44;
	ld	c, #0x2c
;src/common.c:177: break;
	jr	00121$
;src/common.c:178: case '>':
00109$:
;src/common.c:179: vramTile = 45;
	ld	c, #0x2d
;src/common.c:181: }
00121$:
;src/common.c:184: return vramTile + splashscreen3_TILE_COUNT;
	ld	a, c
	add	a, #0xb3
;src/common.c:185: }
	ret
;src/common.c:187: void drawTextCentered(uint8_t row, char *text)
;	---------------------------------
; Function drawTextCentered
; ---------------------------------
_drawTextCentered::
	add	sp, #-3
	ldhl	sp,	#2
	ld	(hl), a
	inc	sp
	inc	sp
;src/common.c:189: uint16_t column = (20 - strlen(text)) / 2;
	push	de
	push	de
	call	_strlen
	pop	hl
	ld	a, #0x14
	sub	a, e
	ld	l, a
	sbc	a, a
	sub	a, d
	ld	h, a
	ld	c, l
	ld	b, h
	bit	7, h
	jr	Z, 00103$
	inc	hl
	ld	c, l
	ld	b, h
00103$:
	sra	b
	rr	c
;src/common.c:190: drawText(row, column, text);
	pop	de
	push	de
	push	de
	ld	e, c
	ldhl	sp,	#4
	ld	a, (hl)
	call	_drawText
;src/common.c:191: }
	add	sp, #3
	ret
;src/common.c:193: void drawText(uint8_t column, uint8_t row, char *text)
;	---------------------------------
; Function drawText
; ---------------------------------
_drawText::
	dec	sp
	dec	sp
	ld	b, e
;src/common.c:197: uint8_t *vramAddress = get_bkg_xy_addr(column, row);
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_get_bkg_xy_addr
	add	sp, #4
	push	de
;src/common.c:201: while (text[index] != '\0')
	ld	bc, #0x0000
00101$:
	ldhl	sp,	#4
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (de)
	or	a, a
	jr	Z, 00104$
;src/common.c:204: char character = text[index];
;src/common.c:208: uint8_t vramTile = getCharacterVRamTile(character);
	push	bc
	call	_getCharacterVRamTile
	pop	bc
;src/common.c:210: set_vram_byte(vramAddress++, vramTile);
	pop	de
	push	de
	ldhl	sp,	#0
	inc	(hl)
	jr	NZ, 00121$
	inc	hl
	inc	(hl)
00121$:
	call	_set_vram_byte
;src/common.c:212: index++;
	inc	bc
	jr	00101$
00104$:
;src/common.c:214: }
	inc	sp
	inc	sp
	pop	hl
	pop	af
	jp	(hl)
	.area _CODE
	.area _INITIALIZER
__xinit__joypadCurrent:
	.db #0x00	; 0
__xinit__frameCounter:
	.db #0x00	; 0
__xinit__frameRealValue:
	.db #0x00	; 0
__xinit__isIntroSequence:
	.db #0x01	; 1
__xinit__increment:
	.db #0x01	; 1
	.area _CABS (ABS)
