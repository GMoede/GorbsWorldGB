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
;src/main.c:6: uint8_t GetCharacterVRamTile(char character) {
;	---------------------------------
; Function GetCharacterVRamTile
; ---------------------------------
_GetCharacterVRamTile::
	ld	b, a
;src/main.c:8: uint8_t vramTile=0;
	ld	c, #0x00
;src/main.c:14: if      (character >= 'a' && character <= 'z') vramTile = (character - 'a') + 1;
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
;src/main.c:15: else if (character >= 'A' && character <= 'Z') vramTile = (character - 'A') + 1;
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
;src/main.c:16: else if (character >= '0' && character <= '9') vramTile = (character - '0') + 27;
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
;src/main.c:18: switch(character) {
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
;src/main.c:19: case '!': vramTile = 37; break;
00101$:
	ld	c, #0x25
	jr	00121$
;src/main.c:20: case ':': vramTile = 38; break;
00102$:
	ld	c, #0x26
	jr	00121$
;src/main.c:21: case '?': vramTile = 39; break;
00103$:
	ld	c, #0x27
	jr	00121$
;src/main.c:22: case '/': vramTile = 40; break;
00104$:
	ld	c, #0x28
	jr	00121$
;src/main.c:23: case '=': vramTile = 41; break;
00105$:
	ld	c, #0x29
	jr	00121$
;src/main.c:24: case ',': vramTile = 42; break;
00106$:
	ld	c, #0x2a
	jr	00121$
;src/main.c:25: case '.': vramTile = 43; break;
00107$:
	ld	c, #0x2b
	jr	00121$
;src/main.c:26: case '<': vramTile = 44; break;
00108$:
	ld	c, #0x2c
	jr	00121$
;src/main.c:27: case '>': vramTile = 45; break;
00109$:
	ld	c, #0x2d
;src/main.c:28: }
00121$:
;src/main.c:31: return vramTile;
	ld	a, c
;src/main.c:33: }
	ret
;src/main.c:35: void DrawText(uint8_t column, uint8_t row, char* text){
;	---------------------------------
; Function DrawText
; ---------------------------------
_DrawText::
	dec	sp
	dec	sp
	ld	b, e
;src/main.c:38: uint8_t* vramAddress = get_bkg_xy_addr(column,row);
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_get_bkg_xy_addr
	add	sp, #4
	push	de
;src/main.c:42: while(text[index]!='\0'){
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
;src/main.c:44: char character = text[index];
;src/main.c:48: uint8_t vramTile = GetCharacterVRamTile(character);
	push	bc
	call	_GetCharacterVRamTile
	pop	bc
;src/main.c:50: set_vram_byte(vramAddress++,vramTile);
	pop	de
	push	de
	ldhl	sp,	#0
	inc	(hl)
	jr	NZ, 00121$
	inc	hl
	inc	(hl)
00121$:
	call	_set_vram_byte
;src/main.c:56: index++;
	inc	bc
	jr	00101$
00104$:
;src/main.c:59: }
	inc	sp
	inc	sp
	pop	hl
	pop	af
	jp	(hl)
;src/main.c:61: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
;src/main.c:63: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
;src/main.c:65: set_native_tile_data(0,Font_TILE_COUNT,Font_tiles);
;../../../include/gb/gb.h:2146: set_bkg_data(first_tile, nb_tiles, data);
	ld	de, #_Font_tiles
	push	de
	ld	hl, #0x2e00
	push	hl
	call	_set_bkg_data
	add	sp, #4
;src/main.c:67: fill_bkg_rect(0,0,DEVICE_SCREEN_WIDTH,DEVICE_SCREEN_HEIGHT,0);
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
;src/main.c:70: DrawText(1,1,"GBDK Text Example");
	ld	de, #___str_0
	push	de
	ld	a,#0x01
	ld	e,a
	call	_DrawText
;src/main.c:71: }
	ret
___str_0:
	.ascii "GBDK Text Example"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
