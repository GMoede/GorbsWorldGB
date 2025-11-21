;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module main
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _DrawText
	.globl _GetCharacterVRamTile
	.globl _fill_bkg_rect
	.globl _set_bkg_data
	.globl _get_bkg_xy_addr
	.globl _set_vram_byte
	.globl _vsync
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
;src/main.c:7: uint8_t GetCharacterVRamTile(char character) {
;	---------------------------------
; Function GetCharacterVRamTile
; ---------------------------------
_GetCharacterVRamTile::
	ld	b, a
;src/main.c:9: uint8_t vramTile=0;
	ld	c, #0x00
;src/main.c:15: if      (character >= 'a' && character <= 'z') vramTile = (character - 'a') + 1;
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
	ld	a, b
	add	a, #0xa0
	ld	c, a
	jp	00121$
00120$:
;src/main.c:16: else if (character >= 'A' && character <= 'Z') vramTile = (character - 'A') + 1;
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
	ld	a, b
	add	a, #0xc0
	ld	c, a
	jr	00121$
00116$:
;src/main.c:17: else if (character >= '0' && character <= '9') vramTile = (character - '0') + 27;
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
	ld	a, b
	add	a, #0xeb
	ld	c, a
	jr	00121$
00112$:
;src/main.c:19: switch(character) {
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
;src/main.c:20: case '!': vramTile = 37; break;
00101$:
	ld	c, #0x25
	jr	00121$
;src/main.c:21: case ':': vramTile = 38; break;
00102$:
	ld	c, #0x26
	jr	00121$
;src/main.c:22: case '?': vramTile = 39; break;
00103$:
	ld	c, #0x27
	jr	00121$
;src/main.c:23: case '/': vramTile = 40; break;
00104$:
	ld	c, #0x28
	jr	00121$
;src/main.c:24: case '=': vramTile = 41; break;
00105$:
	ld	c, #0x29
	jr	00121$
;src/main.c:25: case ',': vramTile = 42; break;
00106$:
	ld	c, #0x2a
	jr	00121$
;src/main.c:26: case '.': vramTile = 43; break;
00107$:
	ld	c, #0x2b
	jr	00121$
;src/main.c:27: case '<': vramTile = 44; break;
00108$:
	ld	c, #0x2c
	jr	00121$
;src/main.c:28: case '>': vramTile = 45; break;
00109$:
	ld	c, #0x2d
;src/main.c:29: }
00121$:
;src/main.c:32: return vramTile;
	ld	a, c
;src/main.c:34: }
	ret
;src/main.c:36: void DrawText( char* text,uint8_t typewriterDelay){
;	---------------------------------
; Function DrawText
; ---------------------------------
_DrawText::
	add	sp, #-12
	ldhl	sp,	#4
	ld	(hl), e
	inc	hl
	ld	(hl), d
	dec	hl
	dec	hl
	ld	(hl), a
;src/main.c:42: uint8_t* vramAddress = get_bkg_xy_addr(column,row);
	xor	a, a
	rrca
	push	af
	call	_get_bkg_xy_addr
	pop	hl
	ldhl	sp,	#6
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;src/main.c:45: uint8_t columnIndex=0;
	ldhl	sp,	#8
;src/main.c:47: while(text[index]!='\0'){
	xor	a, a
	ld	(hl+), a
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	ld	(hl), a
00106$:
	ldhl	sp,#10
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#4
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#3
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#2
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
;src/main.c:49: char character = text[index];
;src/main.c:52: uint8_t vramTile = GetCharacterVRamTile(character);
	ld	(hl),a
	or	a,a
	jr	Z, 00112$
	call	_GetCharacterVRamTile
	ldhl	sp,	#0
	ld	(hl), a
;src/main.c:54: set_vram_byte(vramAddress++,vramTile);
	ldhl	sp,	#6
	ld	a, (hl)
	ldhl	sp,	#1
	ld	(hl), a
	ldhl	sp,	#7
	ld	a, (hl)
	ldhl	sp,	#2
	ld	(hl), a
	ldhl	sp,	#6
	inc	(hl)
	jr	NZ, 00157$
	inc	hl
	inc	(hl)
00157$:
	ldhl	sp,	#0
	ld	a, (hl+)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	call	_set_vram_byte
;src/main.c:60: index++;
	ldhl	sp,	#10
	inc	(hl)
	jr	NZ, 00158$
	inc	hl
	inc	(hl)
00158$:
;src/main.c:61: columnIndex++;
	ldhl	sp,	#8
	inc	(hl)
;src/main.c:64: if(columnIndex>=DEVICE_SCREEN_WIDTH){
	ld	a, (hl)
	sub	a, #0x14
	jr	C, 00102$
;src/main.c:67: vramAddress = get_bkg_xy_addr(column,++row);
	inc	hl
	inc	(hl)
	ld	h, (hl)
	ld	l, #0x00
	push	hl
	call	_get_bkg_xy_addr
	pop	hl
	ldhl	sp,	#6
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;src/main.c:69: columnIndex=0;
	ldhl	sp,	#8
	ld	(hl), #0x00
00102$:
;src/main.c:72: if(typewriterDelay>0){
	ldhl	sp,	#3
	ld	a, (hl)
	or	a, a
	jr	Z, 00106$
;src/main.c:76: for(uint8_t i=0;i<typewriterDelay;i++){
	ld	c, #0x00
00110$:
	ld	a, c
	ldhl	sp,	#3
	sub	a, (hl)
	jr	NC, 00106$
;src/main.c:78: vsync();
	call	_vsync
;src/main.c:76: for(uint8_t i=0;i<typewriterDelay;i++){
	inc	c
	jr	00110$
00112$:
;src/main.c:83: }
	add	sp, #12
	ret
;src/main.c:85: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
;src/main.c:87: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x40
	ldh	(_LCDC_REG + 0), a
;src/main.c:89: set_native_tile_data(0,Font_TILE_COUNT,Font_tiles);
;../../../include/gb/gb.h:2146: set_bkg_data(first_tile, nb_tiles, data);
	ld	de, #_Font_tiles
	push	de
	ld	hl, #0x2e00
	push	hl
	call	_set_bkg_data
	add	sp, #4
;src/main.c:91: fill_bkg_rect(0,0,DEVICE_SCREEN_WIDTH,DEVICE_SCREEN_HEIGHT,0);
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
;src/main.c:94: DrawText("This is a way to draw text on the screen in GBDK. The code will automatically jump to a new line, when it reaches the end of the row.",THREE_FRAMES);
	ld	a, #0x03
	ld	de, #___str_0
;src/main.c:95: }
	jp	_DrawText
___str_0:
	.ascii "This is a way to draw text on the screen in GBDK. The code w"
	.ascii "ill automatically jump to a new line, when it reaches the en"
	.ascii "d of the row."
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
