;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module main
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _ClearScreen
	.globl _DrawTextAdvanced
	.globl _vsyncMultiple
	.globl _ResetLoadedCharacters
	.globl _HideDialgoueBox
	.globl _ShowDialgoueBox
	.globl _ClearDialogueBox
	.globl _WaitForAButton
	.globl _BreakLineEarly
	.globl _IsAlphaNumeric
	.globl _GetTileForCharacter
	.globl _MoveWindow
	.globl _get_bkg_xy_addr
	.globl _set_tile_xy
	.globl _set_vram_byte
	.globl _fill_rect_compat
	.globl _set_tile_map_compat
	.globl _set_native_tile_data
	.globl _joypad
	.globl _vsync
	.globl _loadedCharacterCount
	.globl _joypadPrevious
	.globl _joypadCurrent
	.globl _fontTilesStart
	.globl _windowYPosition
	.globl _loadedCharacters
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
_loadedCharacters::
	.ds 46
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_windowYPosition::
	.ds 2
_fontTilesStart::
	.ds 1
_joypadCurrent::
	.ds 1
_joypadPrevious::
	.ds 1
_loadedCharacterCount::
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
;src/main.c:50: void MoveWindow(void){
;	---------------------------------
; Function MoveWindow
; ---------------------------------
_MoveWindow::
;src/main.c:57: }
	ret
;src/main.c:60: uint8_t GetTileForCharacter(char character) {
;	---------------------------------
; Function GetTileForCharacter
; ---------------------------------
_GetTileForCharacter::
	ld	b, a
;src/main.c:62: uint8_t vramTile=0;
	ld	c, #0x00
;src/main.c:68: if      (character >= 'a' && character <= 'z') vramTile = (character - 'a') + 1;
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
;src/main.c:69: else if (character >= 'A' && character <= 'Z') vramTile = (character - 'A') + 1;
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
;src/main.c:70: else if (character >= '0' && character <= '9') vramTile = (character - '0') + 27;
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
;src/main.c:72: switch(character) {
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
;src/main.c:73: case '!': vramTile = 37; break;
00101$:
	ld	c, #0x25
	jr	00121$
;src/main.c:74: case ':': vramTile = 38; break;
00102$:
	ld	c, #0x26
	jr	00121$
;src/main.c:75: case '?': vramTile = 39; break;
00103$:
	ld	c, #0x27
	jr	00121$
;src/main.c:76: case '/': vramTile = 40; break;
00104$:
	ld	c, #0x28
	jr	00121$
;src/main.c:77: case '=': vramTile = 41; break;
00105$:
	ld	c, #0x29
	jr	00121$
;src/main.c:78: case ',': vramTile = 42; break;
00106$:
	ld	c, #0x2a
	jr	00121$
;src/main.c:79: case '.': vramTile = 43; break;
00107$:
	ld	c, #0x2b
	jr	00121$
;src/main.c:80: case '<': vramTile = 44; break;
00108$:
	ld	c, #0x2c
	jr	00121$
;src/main.c:81: case '>': vramTile = 45; break;
00109$:
	ld	c, #0x2d
;src/main.c:82: }
00121$:
;src/main.c:85: return vramTile;
	ld	a, c
;src/main.c:87: }
	ret
;src/main.c:89: uint8_t IsAlphaNumeric(char character){
;	---------------------------------
; Function IsAlphaNumeric
; ---------------------------------
_IsAlphaNumeric::
;src/main.c:92: if(character>='a'&&character<='z')return TRUE;
	ld	c, a
	xor	a, #0x80
	sub	a, #0xe1
	jr	C, 00109$
	ld	a, #0x7a
	sub	a, c
	jp	PO, 00156$
	xor	a, #0x80
00156$:
	jp	M, 00109$
	ld	a, #0x01
	ret
00109$:
;src/main.c:93: else if(character>='A'&&character<='Z')return TRUE;
	ld	a, c
	xor	a, #0x80
	sub	a, #0xc1
	jr	C, 00105$
	ld	a, #0x5a
	sub	a, c
	jp	PO, 00157$
	xor	a, #0x80
00157$:
	jp	M, 00105$
	ld	a, #0x01
	ret
00105$:
;src/main.c:94: else if(character>='0'&&character<='9')return TRUE;
	ld	a, c
	xor	a, #0x80
	sub	a, #0xb0
	jr	C, 00110$
	ld	a, #0x39
	sub	a, c
	jp	PO, 00158$
	xor	a, #0x80
00158$:
	jp	M, 00110$
	ld	a, #0x01
	ret
00110$:
;src/main.c:96: return FALSE;
	xor	a, a
;src/main.c:97: }
	ret
;src/main.c:99: uint8_t BreakLineEarly(uint16_t index, uint8_t columnSize, char* text){
;	---------------------------------
; Function BreakLineEarly
; ---------------------------------
_BreakLineEarly::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/main.c:101: char character = text[index++];
	ld	c, l
	ld	b, h
	inc	hl
	ex	(sp), hl
	ld	l, 5 (ix)
	ld	h, 6 (ix)
	add	hl, bc
	ld	c, (hl)
;src/main.c:104: if(columnSize>=INNER_DIALOGUE_BOX_WIDTH)return TRUE;
	ld	a, 4 (ix)
	sub	a, #0x1e
	jr	C, 00102$
	ld	a, #0x01
	jr	00110$
00102$:
;src/main.c:107: if(IsAlphaNumeric(character))return FALSE;
	ld	a, c
	call	_IsAlphaNumeric
	or	a, a
	jr	Z, 00104$
	xor	a, a
	jr	00110$
00104$:
;src/main.c:111: uint8_t nextColumnSize=columnSize+1;
	ld	c, 4 (ix)
	inc	c
;src/main.c:114: while((character=text[index++])!='\0'){
	pop	de
	push	de
00107$:
	ld	l, 5 (ix)
	ld	h, 6 (ix)
	add	hl, de
	inc	de
	ld	a, (hl)
	ld	b, a
	or	a, a
	jr	Z, 00109$
;src/main.c:117: if(!IsAlphaNumeric(character))break;
	push	bc
	push	de
	ld	a, b
	call	_IsAlphaNumeric
	pop	de
	pop	bc
	or	a, a
	jr	Z, 00109$
;src/main.c:120: nextColumnSize++;
	inc	c
	jr	00107$
00109$:
;src/main.c:124: return nextColumnSize>INNER_DIALOGUE_BOX_WIDTH;
	ld	a, #0x1e
	sub	a, c
	ld	a, #0x00
	rla
00110$:
;src/main.c:125: }   
	ld	sp, ix
	pop	ix
	pop	hl
	pop	bc
	inc	sp
	jp	(hl)
;src/main.c:128: void WaitForAButton(void){
;	---------------------------------
; Function WaitForAButton
; ---------------------------------
_WaitForAButton::
;src/main.c:129: while(TRUE){
00105$:
;src/main.c:131: joypadPrevious=joypadCurrent;
	ld	a, (_joypadCurrent+0)
	ld	(_joypadPrevious+0), a
;src/main.c:132: joypadCurrent = joypad();
	call	_joypad
	ld	a, l
	ld	(_joypadCurrent+0), a
;src/main.c:134: if((joypadCurrent & J_A) && !(joypadPrevious & J_A))break;
	ld	a, (_joypadCurrent)
	bit	5, a
	jr	Z, 00105$
	ld	a, (_joypadPrevious)
	bit	5, a
	jr	NZ, 00105$
;src/main.c:137: }
	ret
;src/main.c:139: void ClearDialogueBox(void){
;	---------------------------------
; Function ClearDialogueBox
; ---------------------------------
_ClearDialogueBox::
;src/main.c:142: fill_winbkg_rect(1,DIALOGUE_BOX_Y+1,DEVICE_SCREEN_WIDTH-2,DIALOG_BOX_HEIGHT-2,0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x51e
	push	hl
	ld	hl, #0x1201
	push	hl
	call	_fill_rect_compat
;src/main.c:145: fill_winbkg_rect(1,DIALOGUE_BOX_Y,DEVICE_SCREEN_WIDTH-2,1,2);
	ld	hl, #0x0002
	push	hl
	ld	hl, #0x11e
	push	hl
	ld	hl, #0x1101
	push	hl
	call	_fill_rect_compat
;src/main.c:146: set_winbkg_tile_xy(DEVICE_SCREEN_WIDTH-1,DIALOGUE_BOX_Y+DIALOG_BOX_HEIGHT-1,6);
	ld	hl, #0x617
	push	hl
	ld	a, #0x1f
	push	af
	inc	sp
	call	_set_tile_xy
;src/main.c:147: fill_winbkg_rect(1,DIALOGUE_BOX_Y+DIALOG_BOX_HEIGHT-1,DEVICE_SCREEN_WIDTH-2,1,2);
	ld	hl, #0x0002
	push	hl
	ld	hl, #0x11e
	push	hl
	ld	hl, #0x1701
	push	hl
	call	_fill_rect_compat
;src/main.c:150: fill_winbkg_rect(0,DIALOGUE_BOX_Y+1,1,DIALOG_BOX_HEIGHT-2,4);
	ld	hl, #0x0004
	push	hl
	ld	hl, #0x501
	push	hl
	ld	hl, #0x1200
	push	hl
	call	_fill_rect_compat
;src/main.c:151: fill_winbkg_rect(DEVICE_SCREEN_WIDTH-1,DIALOGUE_BOX_Y+1,1,DIALOG_BOX_HEIGHT-2,4);
	ld	hl, #0x0004
	push	hl
	ld	hl, #0x501
	push	hl
	ld	hl, #0x121f
	push	hl
	call	_fill_rect_compat
;src/main.c:154: set_winbkg_tile_xy(0,DIALOGUE_BOX_Y,1);
	ld	hl, #0x111
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_set_tile_xy
;src/main.c:155: set_winbkg_tile_xy(DEVICE_SCREEN_WIDTH-1,DIALOGUE_BOX_Y,3);
	ld	hl, #0x311
	push	hl
	ld	a, #0x1f
	push	af
	inc	sp
	call	_set_tile_xy
;src/main.c:158: set_winbkg_tile_xy(0,DIALOGUE_BOX_Y+DIALOG_BOX_HEIGHT-1,5);
	ld	hl, #0x517
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_set_tile_xy
;src/main.c:159: set_winbkg_tile_xy(DEVICE_SCREEN_WIDTH-1,DIALOGUE_BOX_Y+DIALOG_BOX_HEIGHT-1,6);
	ld	hl, #0x617
	push	hl
	ld	a, #0x1f
	push	af
	inc	sp
	call	_set_tile_xy
;src/main.c:160: }
	ret
;src/main.c:162: void ShowDialgoueBox(void){
;	---------------------------------
; Function ShowDialgoueBox
; ---------------------------------
_ShowDialgoueBox::
;src/main.c:164: ClearDialogueBox();
	call	_ClearDialogueBox
;src/main.c:168: while(windowYPosition>desiredWindowPosition){
00101$:
	ld	a, #0x88
	ld	iy, #_windowYPosition
	cp	a, 0 (iy)
	ld	a, #0x00
	sbc	a, 1 (iy)
	jp	PO, 00120$
	xor	a, #0x80
00120$:
	ret	P
;src/main.c:170: windowYPosition-=4;
	ld	hl, (_windowYPosition)
	ld	a, l
	add	a, #0xfc
	ld	l, a
	ld	a, h
	adc	a, #0xff
	ld	h, a
	ld	(_windowYPosition), hl
;src/main.c:171: MoveWindow();
	call	_MoveWindow
;src/main.c:172: vsync();
	call	_vsync
;src/main.c:174: }
	jr	00101$
;src/main.c:176: void HideDialgoueBox(void){
;	---------------------------------
; Function HideDialgoueBox
; ---------------------------------
_HideDialgoueBox::
;src/main.c:180: while(windowYPosition<desiredWindowPosition){
00101$:
	ld	a, (_windowYPosition+0)
	sub	a, #0xc0
	ld	a, (_windowYPosition+1)
	rla
	ccf
	rra
	sbc	a, #0x80
	ret	NC
;src/main.c:182: windowYPosition+=4;
	ld	hl, (_windowYPosition)
	ld	bc, #0x0004
	add	hl, bc
	ld	(_windowYPosition), hl
;src/main.c:183: MoveWindow();
	call	_MoveWindow
;src/main.c:184: vsync();
	call	_vsync
;src/main.c:186: }
	jr	00101$
;src/main.c:188: void ResetLoadedCharacters(void){
;	---------------------------------
; Function ResetLoadedCharacters
; ---------------------------------
_ResetLoadedCharacters::
;src/main.c:190: loadedCharacterCount=1;
	ld	hl, #_loadedCharacterCount
	ld	(hl), #0x01
;src/main.c:193: for(uint8_t i=0;i<45;i++)loadedCharacters[i]=255;
	ld	c, #0x00
00103$:
	ld	a, c
	sub	a, #0x2d
	ret	NC
	ld	hl, #_loadedCharacters
	ld	b, #0x00
	add	hl, bc
	ld	(hl), #0xff
	inc	c
;src/main.c:194: }
	jr	00103$
;src/main.c:196: void vsyncMultiple(uint8_t count){
;	---------------------------------
; Function vsyncMultiple
; ---------------------------------
_vsyncMultiple::
	ld	c, a
;src/main.c:199: for(uint8_t i=0;i<count;i++){
	ld	b, #0x00
00103$:
	ld	a, b
	sub	a, c
	ret	NC
;src/main.c:201: vsync();
	call	_vsync
;src/main.c:199: for(uint8_t i=0;i<count;i++){
	inc	b
;src/main.c:203: }
	jr	00103$
;src/main.c:205: void DrawTextAdvanced(char* text){
;	---------------------------------
; Function DrawTextAdvanced
; ---------------------------------
_DrawTextAdvanced::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-190
	add	iy, sp
	ld	sp, iy
	ld	-7 (ix), l
	ld	-6 (ix), h
;src/main.c:210: ShowDialgoueBox();
	call	_ShowDialgoueBox
;src/main.c:212: ResetLoadedCharacters();
	call	_ResetLoadedCharacters
;src/main.c:214: uint16_t index=0;
	xor	a, a
	ld	-5 (ix), a
	ld	-4 (ix), a
;src/main.c:215: uint8_t columnSize=0;
	ld	-1 (ix), #0x00
;src/main.c:216: uint8_t rowCount=0;
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0x00
;src/main.c:221: uint8_t copyBufferCount=0;
	ld	-3 (ix), #0x00
;src/main.c:224: for(uint8_t k=0;k<INNER_DIALOGUE_BOX_WIDTH;k++){
	ld	c, #0x00
00132$:
	ld	a, c
	sub	a, #0x1e
	jr	NC, 00102$
;src/main.c:225: for(uint8_t t=0;t<DIALOG_BOX_INNER_HEIGHT+1;t++){
	ld	-2 (ix), #0x00
00129$:
	ld	a, -2 (ix)
	sub	a, #0x06
	jr	NC, 00133$
;src/main.c:226: copyBuffer[t][k]=0;
	ld	e, -2 (ix)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	ex	de, hl
	ld	hl, #1
	add	hl, sp
	add	hl, de
	ld	e, c
	ld	d, #0x00
	add	hl, de
	ld	(hl), #0x00
;src/main.c:225: for(uint8_t t=0;t<DIALOG_BOX_INNER_HEIGHT+1;t++){
	inc	-2 (ix)
	jr	00129$
00133$:
;src/main.c:224: for(uint8_t k=0;k<INNER_DIALOGUE_BOX_WIDTH;k++){
	inc	c
	jr	00132$
00102$:
;src/main.c:232: uint8_t* vramAddress = get_winbkg_xy_addr(column,row);
	ld	hl, #0x1201
	push	hl
	call	_get_bkg_xy_addr
	ld	-9 (ix), l
	ld	-8 (ix), h
;src/main.c:236: while((c=text[index])!='\0'){
00125$:
	ld	a, -7 (ix)
	add	a, -5 (ix)
	ld	c, a
	ld	a, -6 (ix)
	adc	a, -4 (ix)
	ld	l, c
	ld	h, a
	ld	c, (hl)
	ld	-2 (ix), c
	ld	a, c
	or	a, a
	jp	Z, 00127$
;src/main.c:238: uint8_t vramTile = GetTileForCharacter(c);
	ld	a, -2 (ix)
	call	_GetTileForCharacter
;src/main.c:241: if(loadedCharacters[vramTile]==255){
	ld	e, a
	add	a,#<(_loadedCharacters)
	ld	c, a
	ld	a, #>(_loadedCharacters)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	inc	a
	jr	NZ, 00104$
;src/main.c:244: loadedCharacters[vramTile]=fontTilesStart+loadedCharacterCount++;
	ld	a, (_loadedCharacterCount)
	ld	d, a
	ld	hl, #_loadedCharacterCount
	inc	(hl)
	ld	hl, #_fontTilesStart
	ld	a, d
	add	a, (hl)
	ld	l, a
	ld	(bc), a
;src/main.c:247: set_native_tile_data(loadedCharacters[vramTile],1,Font_tiles+vramTile*TILE_SIZE_BYTES);
	ld	d, #0x00
	ex	de, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	ld	a, e
	add	a, #<(_Font_tiles)
	ld	e, a
	ld	a, d
	adc	a, #>(_Font_tiles)
	ld	d, a
	ld	h, #0x00
	push	bc
	push	de
	ld	de, #0x0001
	call	_set_native_tile_data
	pop	bc
00104$:
;src/main.c:253: set_vram_byte(vramAddress++,loadedCharacters[vramTile]);
	ld	a, (bc)
	ld	e, -9 (ix)
	ld	d, -8 (ix)
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	inc	hl
	push	hl
	push	bc
	push	af
	inc	sp
	push	de
	call	_set_vram_byte
	pop	bc
	pop	hl
;src/main.c:256: set_vram_byte(vramAddress++,0);
	ld	e, l
	ld	d, h
	inc	hl
	ld	-9 (ix), l
	ld	-8 (ix), h
	push	bc
	xor	a, a
	push	af
	inc	sp
	push	de
	call	_set_vram_byte
	pop	bc
;src/main.c:261: if(rowCount<DIALOG_BOX_INNER_HEIGHT)copyBuffer[rowCount][copyBufferCount++] = loadedCharacters[vramTile];
	ld	hl, #0
	add	hl, sp
	ld	e, (hl)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	ex	de, hl
	push	de
	ld	hl, #3
	add	hl, sp
	add	hl, de
	pop	de
	ex	de, hl
	ld	a, -3 (ix)
	inc	-3 (ix)
	ld	l, a
	ld	h, #0x00
	add	hl, de
	ld	a, (bc)
	ld	(hl), a
;src/main.c:263: index++;
	inc	-5 (ix)
	jr	NZ, 00344$
	inc	-4 (ix)
00344$:
;src/main.c:264: columnSize++;
	inc	-1 (ix)
;src/main.c:267: if(BreakLineEarly(index,columnSize,text) || c=='.'){
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	push	hl
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	call	_BreakLineEarly
	ld	b, a
	ld	a, -2 (ix)
	sub	a, #0x2e
	ld	a, #0x01
	jr	Z, 00346$
	xor	a, a
00346$:
	ld	c, a
	ld	a, b
	or	a, a
	jr	NZ, 00122$
	or	a, c
	jp	Z, 00123$
00122$:
;src/main.c:269: rowCount+=LINE_SKIP;
	ld	iy, #0
	add	iy, sp
	ld	a, 0 (iy)
	add	a, #0x02
	ld	0 (iy), a
;src/main.c:272: copyBufferCount=0;
	ld	-3 (ix), #0x00
;src/main.c:276: if(c=='.'||c=='?'){
	ld	a, c
	or	a, a
	jr	NZ, 00115$
	ld	a, -2 (ix)
	sub	a, #0x3f
	jr	NZ, 00116$
00115$:
;src/main.c:277: WaitForAButton();
	call	_WaitForAButton
;src/main.c:278: ClearDialogueBox();
	call	_ClearDialogueBox
;src/main.c:279: rowCount=0;
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0x00
;src/main.c:282: for(uint8_t k=0;k<INNER_DIALOGUE_BOX_WIDTH;k++){
	ld	c, #0x00
00138$:
	ld	a, c
	sub	a, #0x1e
	jp	NC, 00117$
;src/main.c:283: for(uint8_t t=0;t<DIALOG_BOX_INNER_HEIGHT+1;t++){
	ld	-1 (ix), #0x00
00135$:
	ld	a, -1 (ix)
	sub	a, #0x06
	jr	NC, 00139$
;src/main.c:284: copyBuffer[t][k]=0;
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	ex	de, hl
	ld	hl, #1
	add	hl, sp
	add	hl, de
	ld	e, c
	ld	d, #0x00
	add	hl, de
	ld	(hl), #0x00
;src/main.c:283: for(uint8_t t=0;t<DIALOG_BOX_INNER_HEIGHT+1;t++){
	inc	-1 (ix)
	jr	00135$
00139$:
;src/main.c:282: for(uint8_t k=0;k<INNER_DIALOGUE_BOX_WIDTH;k++){
	inc	c
	jr	00138$
00116$:
;src/main.c:291: else if( rowCount>=DIALOG_BOX_INNER_HEIGHT){
	ld	iy, #0
	add	iy, sp
	ld	a, 0 (iy)
	sub	a, #0x05
	jp	C, 00117$
;src/main.c:294: uint8_t shiftCount = rowCount-LINE_SKIP;
	ld	a, 0 (iy)
	add	a, #0xfe
	ld	-9 (ix), a
;src/main.c:296: for(uint8_t k=0;k<shiftCount;k++){
	ld	-2 (ix), #0x00
00144$:
	ld	a, -2 (ix)
	sub	a, -9 (ix)
	jr	NC, 00110$
;src/main.c:298: for(uint8_t t=0;t<DIALOG_BOX_INNER_HEIGHT;t++){
	ld	-1 (ix), #0x00
00141$:
	ld	a, -1 (ix)
	sub	a, #0x05
	jr	NC, 00109$
;src/main.c:300: uint8_t copyBufferIndex = MIN(1+t+k,DIALOG_BOX_INNER_HEIGHT);
	ld	c, -1 (ix)
	ld	b, #0x00
	inc	bc
	ld	l, -2 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	c, l
	ld	a, -1 (ix)
	ld	-8 (ix), a
	ld	a, c
	sub	a, #0x05
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00154$
	ld	a, -8 (ix)
	inc	a
	ld	c, -2 (ix)
	add	a, c
	ld	c, a
	jr	00155$
00154$:
	ld	c, #0x05
00155$:
;src/main.c:302: set_text_tiles(1,DIALOGUE_BOX_Y+1+t,INNER_DIALOGUE_BOX_WIDTH,1,copyBuffer[copyBufferIndex]);
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ex	de, hl
	ld	hl, #1
	add	hl, sp
	add	hl, de
	ex	de, hl
	ld	a, -8 (ix)
	add	a, #0x12
	push	de
	ld	h, #0x01
	push	hl
	inc	sp
	ld	h, #0x1e
	push	hl
	inc	sp
	ld	h, a
	ld	l, #0x01
	push	hl
	call	_set_tile_map_compat
;src/main.c:298: for(uint8_t t=0;t<DIALOG_BOX_INNER_HEIGHT;t++){
	inc	-1 (ix)
	jr	00141$
00109$:
;src/main.c:306: vsyncMultiple(LINE_SKIP_DELAY);
	ld	a, #0x07
	call	_vsyncMultiple
;src/main.c:296: for(uint8_t k=0;k<shiftCount;k++){
	inc	-2 (ix)
	jr	00144$
00110$:
;src/main.c:310: for(uint8_t k=0;k<INNER_DIALOGUE_BOX_WIDTH;k++){
	ld	c, #0x00
00150$:
	ld	a, c
	sub	a, #0x1e
	jr	NC, 00112$
;src/main.c:311: for(uint8_t t=0;t<DIALOG_BOX_INNER_HEIGHT;t++){
	ld	b, #0x00
00147$:
	ld	a, b
	sub	a, #0x05
	jr	NC, 00151$
;src/main.c:312: copyBuffer[t][k]=0;
	ld	e, b
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	ex	de, hl
	ld	hl, #1
	add	hl, sp
	add	hl, de
	ld	e, c
	ld	d, #0x00
	add	hl, de
	ld	(hl), #0x00
;src/main.c:311: for(uint8_t t=0;t<DIALOG_BOX_INNER_HEIGHT;t++){
	inc	b
	jr	00147$
00151$:
;src/main.c:310: for(uint8_t k=0;k<INNER_DIALOGUE_BOX_WIDTH;k++){
	inc	c
	jr	00150$
00112$:
;src/main.c:317: rowCount=LINE_SKIP;
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0x02
00117$:
;src/main.c:322: vramAddress = get_winbkg_xy_addr(column,row+rowCount);
	ld	hl, #0
	add	hl, sp
	ld	a, (hl)
	add	a, #0x12
	ld	h, a
	ld	l, #0x01
	push	hl
	call	_get_bkg_xy_addr
	ld	-9 (ix), l
	ld	-8 (ix), h
;src/main.c:324: columnSize=0;
	ld	-1 (ix), #0x00
;src/main.c:327: while(text[index]==' '){
	ld	e, -5 (ix)
	ld	d, -4 (ix)
00119$:
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	add	hl, de
	ld	a, (hl)
	sub	a, #0x20
	jr	NZ, 00186$
;src/main.c:328: index++;
	inc	de
	jr	00119$
00186$:
	ld	-5 (ix), e
	ld	-4 (ix), d
00123$:
;src/main.c:332: vsyncMultiple(TYPEWRITER_DELAY);
	ld	a, #0x02
	call	_vsyncMultiple
	jp	00125$
00127$:
;src/main.c:335: HideDialgoueBox();
	call	_HideDialgoueBox
;src/main.c:337: }
	ld	sp, ix
	pop	ix
	ret
;src/main.c:341: void ClearScreen(void){
;	---------------------------------
; Function ClearScreen
; ---------------------------------
_ClearScreen::
;src/main.c:346: fill_bkg_rect(0,0,DEVICE_SCREEN_WIDTH,DEVICE_SCREEN_HEIGHT,0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x1820
	push	hl
	ld	hl, #0x00
	push	hl
	call	_fill_rect_compat
;src/main.c:347: }
	ret
;src/main.c:349: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	ld	hl, #-32
	add	hl, sp
	ld	sp, hl
;src/main.c:351: DISPLAY_ON;
	ld	a, (_shadow_VDP_R1+0)
	or	a, #0x40
	ld	(_shadow_VDP_R1+0), a
	di
	ld	a, (_shadow_VDP_R1+0)
	out	(_VDP_CMD), a
	ld	a, #0x81
	out	(_VDP_CMD), a
	ei
;src/main.c:358: fontTilesStart = DialogueBox_TILE_COUNT+1;
	ld	hl, #_fontTilesStart
	ld	(hl), #0x07
;src/main.c:360: for(uint8_t i=0;i<TILE_SIZE_BYTES;i++)emptyTile[i]=0;
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, #0x00
00106$:
	ld	a, c
	sub	a, #0x20
	jr	NC, 00101$
	ld	l, c
	ld	h, #0x00
	add	hl, de
	ld	(hl), #0x00
	inc	c
	jr	00106$
00101$:
;src/main.c:362: set_native_tile_data(0,1,emptyTile);
	push	de
	ld	de, #0x0001
	ld	hl, #0x0000
	call	_set_native_tile_data
;src/main.c:364: ClearScreen();
	call	_ClearScreen
;src/main.c:366: set_native_tile_data(1,DialogueBox_TILE_COUNT,DialogueBox_tiles);
	ld	hl, #_DialogueBox_tiles
	push	hl
	ld	de, #0x0006
	ld	hl, #0x0001
	call	_set_native_tile_data
;src/main.c:368: while(TRUE){
00103$:
;src/main.c:372: DrawTextAdvanced("When the code reaches a period or question mark, it will pause and wait for you to press the A button for it to continue. Afterwards, It will start a new page and continue.  The code will automatically jump to a new line, when it cannot fully draw a word.  When both rows of text are full, the code will slide the current text upwards and continue. For every page, the code will dynamically populate VRAM. Only letters and characters used, will be loaded into VRAM.");
	ld	hl, #___str_0
	call	_DrawTextAdvanced
	jr	00103$
;src/main.c:375: }
	ld	hl, #32
	add	hl, sp
	ld	sp, hl
	ret
___str_0:
	.ascii "When the code reaches a period or question mark, it will pau"
	.ascii "se and wait for you to press the A button for it to continue"
	.ascii ". Afterwards, It will start a new page and continue.  The co"
	.ascii "de will automatically jump to a new line, when it cannot ful"
	.ascii "ly draw a word.  When both rows of text are full, the code w"
	.ascii "ill slide the current text upwards and continue. For every p"
	.ascii "age, the code will dynamically populate VRAM. Only letters a"
	.ascii "nd characters used, will be loaded into VRAM."
	.db 0x00
	.area _CODE
	.area _INITIALIZER
__xinit__windowYPosition:
	.dw #0x00c0
__xinit__fontTilesStart:
	.db #0x00	; 0
__xinit__joypadCurrent:
	.db #0x00	; 0
__xinit__joypadPrevious:
	.db #0x00	; 0
__xinit__loadedCharacterCount:
	.db #0x00	; 0
	.area _CABS (ABS)
