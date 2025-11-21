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
	.globl _get_bkg_xy_addr
	.globl _set_vram_byte
	.globl _fill_rect_compat
	.globl _set_native_tile_data
	.globl _vsync
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
	ld	a, #0x7a
	sub	a, b
	jp	PO, 00230$
	xor	a, #0x80
00230$:
	jp	M, 00120$
	ld	a, b
	add	a, #0xa0
	ld	c, a
	jr	00121$
00120$:
;src/main.c:16: else if (character >= 'A' && character <= 'Z') vramTile = (character - 'A') + 1;
	ld	a, b
	xor	a, #0x80
	sub	a, #0xc1
	jr	C, 00116$
	ld	a, #0x5a
	sub	a, b
	jp	PO, 00231$
	xor	a, #0x80
00231$:
	jp	M, 00116$
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
	ld	a, #0x39
	sub	a, b
	jp	PO, 00232$
	xor	a, #0x80
00232$:
	jp	M, 00112$
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
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-13
	add	iy, sp
	ld	sp, iy
	ld	-6 (ix), l
	ld	-5 (ix), h
;src/main.c:42: uint8_t* vramAddress = get_bkg_xy_addr(column,row);
	ld	hl, #0x00
	push	hl
	call	_get_bkg_xy_addr
	ex	(sp), hl
;src/main.c:45: uint8_t columnIndex=0;
	ld	-4 (ix), #0x00
;src/main.c:47: while(text[index]!='\0'){
	ld	-3 (ix), #0x00
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
00106$:
	ld	a, -6 (ix)
	add	a, -2 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	adc	a, -1 (ix)
	ld	-7 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	or	a, a
	jp	Z, 00112$
;src/main.c:49: char character = text[index];
;src/main.c:52: uint8_t vramTile = GetCharacterVRamTile(character);
	ld	a, -7 (ix)
	call	_GetCharacterVRamTile
	ld	-11 (ix), a
;src/main.c:54: set_vram_byte(vramAddress++,vramTile);
	ld	a, -13 (ix)
	ld	-10 (ix), a
	ld	a, -12 (ix)
	ld	-9 (ix), a
	ld	a, -13 (ix)
	add	a, #0x01
	ld	-8 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-7 (ix), a
	ld	a, -11 (ix)
	push	af
	inc	sp
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	push	hl
	call	_set_vram_byte
;src/main.c:57: set_vram_byte(vramAddress++,0);
	ld	c, -8 (ix)
	ld	b, -7 (ix)
	ld	a, -8 (ix)
	add	a, #0x01
	ld	-13 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
	xor	a, a
	push	af
	inc	sp
	push	bc
	call	_set_vram_byte
;src/main.c:60: index++;
	inc	-2 (ix)
	jr	NZ, 00157$
	inc	-1 (ix)
00157$:
;src/main.c:61: columnIndex++;
	inc	-4 (ix)
;src/main.c:64: if(columnIndex>=DEVICE_SCREEN_WIDTH){
	ld	a, -4 (ix)
	sub	a, #0x14
	jr	C, 00102$
;src/main.c:67: vramAddress = get_bkg_xy_addr(column,++row);
	inc	-3 (ix)
	ld	h, -3 (ix)
	ld	l, #0x00
	push	hl
	call	_get_bkg_xy_addr
	ex	(sp), hl
;src/main.c:69: columnIndex=0;
	ld	-4 (ix), #0x00
00102$:
;src/main.c:72: if(typewriterDelay>0){
	ld	a, 4 (ix)
	or	a, a
	jp	Z, 00106$
;src/main.c:76: for(uint8_t i=0;i<typewriterDelay;i++){
	ld	c, #0x00
00110$:
	ld	a, c
	sub	a, 4 (ix)
	jp	NC, 00106$
;src/main.c:78: vsync();
	call	_vsync
;src/main.c:76: for(uint8_t i=0;i<typewriterDelay;i++){
	inc	c
	jr	00110$
00112$:
;src/main.c:83: }
	ld	sp, ix
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;src/main.c:85: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
;src/main.c:89: set_native_tile_data(0,Font_TILE_COUNT,Font_tiles);
	ld	hl, #_Font_tiles
	push	hl
	ld	de, #0x002e
	ld	hl, #0x0000
	call	_set_native_tile_data
;src/main.c:91: fill_bkg_rect(0,0,DEVICE_SCREEN_WIDTH,DEVICE_SCREEN_HEIGHT,0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x1214
	push	hl
	ld	hl, #0x00
	push	hl
	call	_fill_rect_compat
;src/main.c:94: DrawText("This is a way to draw text on the screen in GBDK. The code will automatically jump to a new line, when it reaches the end of the row.",THREE_FRAMES);
	ld	a, #0x03
	push	af
	inc	sp
	ld	hl, #___str_0
	call	_DrawText
;src/main.c:95: }
	ret
___str_0:
	.ascii "This is a way to draw text on the screen in GBDK. The code w"
	.ascii "ill automatically jump to a new line, when it reaches the en"
	.ascii "d of the row."
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
