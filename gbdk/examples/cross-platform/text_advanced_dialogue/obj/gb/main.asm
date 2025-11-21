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
	.globl _fill_win_rect
	.globl _fill_bkg_rect
	.globl _set_sprite_data
	.globl _set_win_tile_xy
	.globl _set_win_tiles
	.globl _get_win_xy_addr
	.globl _set_bkg_data
	.globl _set_vram_byte
	.globl _vsync
	.globl _joypad
	.globl _loadedCharacterCount
	.globl _joypadPrevious
	.globl _joypadCurrent
	.globl _fontTilesStart
	.globl _windowYPosition
	.globl _loadedCharacters
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
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
;src/main.c:54: move_win(7,windowYPosition);
	ld	a, (_windowYPosition)
	ld	c, a
;../../../include/gb/gb.h:1739: WX_REG=x, WY_REG=y;
	ld	a, #0x07
	ldh	(_WX_REG + 0), a
	ld	a, c
	ldh	(_WY_REG + 0), a
;src/main.c:54: move_win(7,windowYPosition);
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
;src/main.c:69: else if (character >= 'A' && character <= 'Z') vramTile = (character - 'A') + 1;
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
;src/main.c:70: else if (character >= '0' && character <= '9') vramTile = (character - '0') + 27;
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
	ld	e, c
	ld	a,#0x7a
	ld	d,a
	sub	a, c
	bit	7, e
	jr	Z, 00156$
	bit	7, d
	jr	NZ, 00157$
	cp	a, a
	jr	00157$
00156$:
	bit	7, d
	jr	Z, 00157$
	scf
00157$:
	jr	C, 00109$
	ld	a, #0x01
	ret
00109$:
;src/main.c:93: else if(character>='A'&&character<='Z')return TRUE;
	ld	a, c
	xor	a, #0x80
	sub	a, #0xc1
	jr	C, 00105$
	ld	e, c
	ld	a,#0x5a
	ld	d,a
	sub	a, c
	bit	7, e
	jr	Z, 00158$
	bit	7, d
	jr	NZ, 00159$
	cp	a, a
	jr	00159$
00158$:
	bit	7, d
	jr	Z, 00159$
	scf
00159$:
	jr	C, 00105$
	ld	a, #0x01
	ret
00105$:
;src/main.c:94: else if(character>='0'&&character<='9')return TRUE;
	ld	a, c
	xor	a, #0x80
	sub	a, #0xb0
	jr	C, 00110$
	ld	e, c
	ld	a,#0x39
	ld	d,a
	sub	a, c
	bit	7, e
	jr	Z, 00160$
	bit	7, d
	jr	NZ, 00161$
	cp	a, a
	jr	00161$
00160$:
	bit	7, d
	jr	Z, 00161$
	scf
00161$:
	jr	C, 00110$
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
	add	sp, #-5
	ldhl	sp,	#1
;src/main.c:101: char character = text[index++];
	ld	(hl+), a
	ld	c, e
	ld	b, d
	inc	de
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ld	c, a
;src/main.c:104: if(columnSize>=INNER_DIALOGUE_BOX_WIDTH)return TRUE;
	ldhl	sp,	#1
	ld	a, (hl)
	sub	a, #0x12
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
	ldhl	sp,	#1
	ld	a, (hl)
	inc	a
	ldhl	sp,	#4
;src/main.c:114: while((character=text[index++])!='\0'){
	ld	(hl-), a
	dec	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
00107$:
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	e, l
	ld	d, h
	inc	bc
	ld	a, (de)
	ldhl	sp,	#0
	ld	(hl), a
	or	a, a
	jr	Z, 00109$
;src/main.c:117: if(!IsAlphaNumeric(character))break;
	push	bc
	ld	a, (hl)
	call	_IsAlphaNumeric
	pop	bc
	or	a, a
	jr	Z, 00109$
;src/main.c:120: nextColumnSize++;
	ldhl	sp,	#4
	inc	(hl)
	jr	00107$
00109$:
;src/main.c:124: return nextColumnSize>INNER_DIALOGUE_BOX_WIDTH;
	ld	a, #0x12
	ldhl	sp,	#4
	sub	a, (hl)
	ld	a, #0x00
	rla
00110$:
;src/main.c:125: }   
	add	sp, #5
	pop	hl
	pop	bc
	jp	(hl)
;src/main.c:128: void WaitForAButton(void){
;	---------------------------------
; Function WaitForAButton
; ---------------------------------
_WaitForAButton::
;src/main.c:129: while(TRUE){
00105$:
;src/main.c:131: joypadPrevious=joypadCurrent;
	ld	a, (#_joypadCurrent)
	ld	(#_joypadPrevious),a
;src/main.c:132: joypadCurrent = joypad();
	call	_joypad
	ld	hl, #_joypadCurrent
	ld	(hl), a
;src/main.c:134: if((joypadCurrent & J_A) && !(joypadPrevious & J_A))break;
	bit	4, (hl)
	jr	Z, 00105$
	ld	a, (_joypadPrevious)
	bit	4, a
	jr	NZ, 00105$
;src/main.c:137: }
	ret
;src/main.c:139: void ClearDialogueBox(void){
;	---------------------------------
; Function ClearDialogueBox
; ---------------------------------
_ClearDialogueBox::
;src/main.c:142: fill_winbkg_rect(1,DIALOGUE_BOX_Y+1,DEVICE_SCREEN_WIDTH-2,DIALOG_BOX_HEIGHT-2,0);
	xor	a, a
	ld	h, a
	ld	l, #0x05
	push	hl
	ld	hl, #0x1201
	push	hl
	ld	a, #0x01
	push	af
	inc	sp
	call	_fill_win_rect
	add	sp, #5
;src/main.c:145: fill_winbkg_rect(1,DIALOGUE_BOX_Y,DEVICE_SCREEN_WIDTH-2,1,2);
	ld	hl, #0x201
	push	hl
	ld	a, #0x12
	push	af
	inc	sp
	ld	hl, #0x01
	push	hl
	call	_fill_win_rect
	add	sp, #5
;src/main.c:146: set_winbkg_tile_xy(DEVICE_SCREEN_WIDTH-1,DIALOGUE_BOX_Y+DIALOG_BOX_HEIGHT-1,6);
	ld	a, #0x06
	push	af
	inc	sp
	ld	e, #0x06
	ld	a, #0x13
	call	_set_win_tile_xy
;src/main.c:147: fill_winbkg_rect(1,DIALOGUE_BOX_Y+DIALOG_BOX_HEIGHT-1,DEVICE_SCREEN_WIDTH-2,1,2);
	ld	hl, #0x201
	push	hl
	ld	hl, #0x1206
	push	hl
	ld	a, #0x01
	push	af
	inc	sp
	call	_fill_win_rect
	add	sp, #5
;src/main.c:150: fill_winbkg_rect(0,DIALOGUE_BOX_Y+1,1,DIALOG_BOX_HEIGHT-2,4);
	ld	hl, #0x405
	push	hl
	ld	hl, #0x101
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_fill_win_rect
	add	sp, #5
;src/main.c:151: fill_winbkg_rect(DEVICE_SCREEN_WIDTH-1,DIALOGUE_BOX_Y+1,1,DIALOG_BOX_HEIGHT-2,4);
	ld	hl, #0x405
	push	hl
	ld	hl, #0x101
	push	hl
	ld	a, #0x13
	push	af
	inc	sp
	call	_fill_win_rect
	add	sp, #5
;src/main.c:154: set_winbkg_tile_xy(0,DIALOGUE_BOX_Y,1);
	ld	a, #0x01
	push	af
	inc	sp
	xor	a, a
	ld	e, a
	call	_set_win_tile_xy
;src/main.c:155: set_winbkg_tile_xy(DEVICE_SCREEN_WIDTH-1,DIALOGUE_BOX_Y,3);
	ld	a, #0x03
	push	af
	inc	sp
	ld	e, #0x00
	ld	a, #0x13
	call	_set_win_tile_xy
;src/main.c:158: set_winbkg_tile_xy(0,DIALOGUE_BOX_Y+DIALOG_BOX_HEIGHT-1,5);
	ld	a, #0x05
	push	af
	inc	sp
	ld	e, #0x06
	xor	a, a
	call	_set_win_tile_xy
;src/main.c:159: set_winbkg_tile_xy(DEVICE_SCREEN_WIDTH-1,DIALOGUE_BOX_Y+DIALOG_BOX_HEIGHT-1,6);
	ld	a, #0x06
	push	af
	inc	sp
	ld	e, #0x06
	ld	a, #0x13
	call	_set_win_tile_xy
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
	ld	hl, #_windowYPosition
	ld	a, #0x58
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	ld	a, #0x00
	ld	d, a
	bit	7, (hl)
	jr	Z, 00120$
	bit	7, d
	jr	NZ, 00121$
	cp	a, a
	jr	00121$
00120$:
	bit	7, d
	jr	Z, 00121$
	scf
00121$:
	ret	NC
;src/main.c:170: windowYPosition-=4;
	ld	a, (_windowYPosition)
	ld	hl, #_windowYPosition + 1
	ld	c, (hl)
	dec	hl
	add	a, #0xfc
	ld	b, a
	ld	a, c
	adc	a, #0xff
	ld	(hl), b
	inc	hl
	ld	(hl), a
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
	ld	hl, #_windowYPosition
	ld	a, (hl+)
	sub	a, #0x90
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a, #0x00
	bit	7,a
	jr	Z, 00120$
	bit	7, d
	jr	NZ, 00121$
	cp	a, a
	jr	00121$
00120$:
	bit	7, d
	jr	Z, 00121$
	scf
00121$:
	ret	NC
;src/main.c:182: windowYPosition+=4;
	ld	a, (_windowYPosition)
	ld	c, a
	ld	hl, #_windowYPosition + 1
	ld	a, (hl-)
	ld	b, a
	inc	bc
	inc	bc
	inc	bc
	inc	bc
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
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
	add	sp, #-118
	ldhl	sp,	#111
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;src/main.c:210: ShowDialgoueBox();
	call	_ShowDialgoueBox
;src/main.c:212: ResetLoadedCharacters();
	call	_ResetLoadedCharacters
;src/main.c:214: uint16_t index=0;
	xor	a, a
	ldhl	sp,	#113
	ld	(hl+), a
	ld	(hl), a
;src/main.c:215: uint8_t columnSize=0;
	ldhl	sp,	#110
	ld	(hl), #0x00
;src/main.c:216: uint8_t rowCount=0;
	ldhl	sp,	#0
	ld	(hl), #0x00
;src/main.c:221: uint8_t copyBufferCount=0;
	ldhl	sp,	#115
	ld	(hl), #0x00
;src/main.c:224: for(uint8_t k=0;k<INNER_DIALOGUE_BOX_WIDTH;k++){
	ld	c, #0x00
00136$:
	ld	a, c
	sub	a, #0x12
	jr	NC, 00102$
;src/main.c:225: for(uint8_t t=0;t<DIALOG_BOX_INNER_HEIGHT+1;t++){
	ld	b, #0x00
00133$:
	ld	a, b
	sub	a, #0x06
	jr	NC, 00137$
;src/main.c:226: copyBuffer[t][k]=0;
	ld	e, b
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	push	hl
	ld	hl, #3
	add	hl, sp
	ld	e, l
	ld	d, h
	pop	hl
	add	hl, de
	ld	e, c
	ld	d, #0x00
	add	hl, de
	ld	(hl), #0x00
;src/main.c:225: for(uint8_t t=0;t<DIALOG_BOX_INNER_HEIGHT+1;t++){
	inc	b
	jr	00133$
00137$:
;src/main.c:224: for(uint8_t k=0;k<INNER_DIALOGUE_BOX_WIDTH;k++){
	inc	c
	jr	00136$
00102$:
;src/main.c:232: uint8_t* vramAddress = get_winbkg_xy_addr(column,row);
	ld	hl, #0x101
	push	hl
	call	_get_win_xy_addr
	pop	hl
	ldhl	sp,	#116
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;src/main.c:236: while((c=text[index])!='\0'){
00125$:
	ldhl	sp,#111
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ld	e, a
	ldhl	sp,	#109
	ld	a,e
;src/main.c:238: uint8_t vramTile = GetTileForCharacter(c);
	ld	(hl),a
	or	a,a
	jp	Z,00127$
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
	ld	a, d
	ld	hl, #_fontTilesStart
	add	a, (hl)
	ld	d, a
	ld	(bc), a
;src/main.c:247: set_native_tile_data(loadedCharacters[vramTile],1,Font_tiles+vramTile*TILE_SIZE_BYTES);
	xor	a, a
	ld	l, e
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_Font_tiles
	add	hl, de
	pop	de
	ld	a, d
;../../../include/gb/gb.h:2146: set_bkg_data(first_tile, nb_tiles, data);
	push	hl
	ld	h, #0x01
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_set_bkg_data
	add	sp, #4
;src/main.c:247: set_native_tile_data(loadedCharacters[vramTile],1,Font_tiles+vramTile*TILE_SIZE_BYTES);
00104$:
;src/main.c:253: set_vram_byte(vramAddress++,loadedCharacters[vramTile]);
	ld	a, (bc)
	ldhl	sp,	#116
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	hl
	inc	(hl)
	jr	NZ, 00350$
	inc	hl
	inc	(hl)
00350$:
	call	_set_vram_byte
;src/main.c:261: if(rowCount<DIALOG_BOX_INNER_HEIGHT)copyBuffer[rowCount][copyBufferCount++] = loadedCharacters[vramTile];
	ldhl	sp,	#0
	ld	e, (hl)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	push	hl
	push	af
	ld	hl, #5
	add	hl, sp
	pop	af
	ld	a, l
	pop	hl
	add	a, l
	ld	e, a
	push	hl
	push	af
	ld	hl, #5
	add	hl, sp
	pop	af
	ld	a, h
	pop	hl
	adc	a, h
	ld	d, a
	ldhl	sp,	#115
	ld	a, (hl)
	inc	(hl)
	ld	l, a
	ld	h, #0x00
	add	hl, de
	ld	a, (bc)
	ld	(hl), a
;src/main.c:263: index++;
	ldhl	sp,	#113
	inc	(hl)
	jr	NZ, 00351$
	inc	hl
	inc	(hl)
00351$:
;src/main.c:264: columnSize++;
	ldhl	sp,	#110
	inc	(hl)
;src/main.c:267: if(BreakLineEarly(index,columnSize,text) || c=='.'){
	inc	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	dec	hl
	ld	d, a
	push	de
	ld	a, (hl)
	ldhl	sp,	#115
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	call	_BreakLineEarly
	ld	c, a
	ldhl	sp,	#109
	ld	a, (hl)
	sub	a, #0x2e
	ld	a, #0x01
	jr	Z, 00353$
	xor	a, a
00353$:
	ld	e, a
	ld	a, c
	or	a, a
	jr	NZ, 00122$
	or	a, e
	jp	Z, 00123$
00122$:
;src/main.c:269: rowCount+=LINE_SKIP;
	ldhl	sp,	#0
	ld	a, (hl)
	add	a, #0x02
	ld	(hl), a
;src/main.c:272: copyBufferCount=0;
	ldhl	sp,	#115
	ld	(hl), #0x00
;src/main.c:276: if(c=='.'||c=='?'){
	ld	a, e
	or	a, a
	jr	NZ, 00115$
	ldhl	sp,	#109
	ld	a, (hl)
	sub	a, #0x3f
	jr	NZ, 00116$
00115$:
;src/main.c:277: WaitForAButton();
	call	_WaitForAButton
;src/main.c:278: ClearDialogueBox();
	call	_ClearDialogueBox
;src/main.c:279: rowCount=0;
	ldhl	sp,	#0
	ld	(hl), #0x00
;src/main.c:282: for(uint8_t k=0;k<INNER_DIALOGUE_BOX_WIDTH;k++){
	ld	c, #0x00
00142$:
	ld	a, c
	sub	a, #0x12
	jp	NC, 00117$
;src/main.c:283: for(uint8_t t=0;t<DIALOG_BOX_INNER_HEIGHT+1;t++){
	ld	b, #0x00
00139$:
	ld	a, b
	sub	a, #0x06
	jr	NC, 00143$
;src/main.c:284: copyBuffer[t][k]=0;
	ld	e, b
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	push	hl
	ld	hl, #3
	add	hl, sp
	ld	e, l
	ld	d, h
	pop	hl
	add	hl, de
	ld	e, c
	ld	d, #0x00
	add	hl, de
	ld	(hl), #0x00
;src/main.c:283: for(uint8_t t=0;t<DIALOG_BOX_INNER_HEIGHT+1;t++){
	inc	b
	jr	00139$
00143$:
;src/main.c:282: for(uint8_t k=0;k<INNER_DIALOGUE_BOX_WIDTH;k++){
	inc	c
	jr	00142$
00116$:
;src/main.c:291: else if( rowCount>=DIALOG_BOX_INNER_HEIGHT){
	ldhl	sp,	#0
;src/main.c:294: uint8_t shiftCount = rowCount-LINE_SKIP;
	ld	a,(hl)
	cp	a,#0x05
	jp	C,00117$
	add	a, #0xfe
	ldhl	sp,	#109
	ld	(hl), a
;src/main.c:296: for(uint8_t k=0;k<shiftCount;k++){
	ldhl	sp,	#116
	ld	(hl), #0x00
00148$:
	ldhl	sp,	#116
	ld	a, (hl)
	ldhl	sp,	#109
	sub	a, (hl)
	jr	NC, 00110$
;src/main.c:298: for(uint8_t t=0;t<DIALOG_BOX_INNER_HEIGHT;t++){
	ldhl	sp,	#117
	ld	(hl), #0x00
00145$:
	ldhl	sp,	#117
	ld	a, (hl)
	sub	a, #0x05
	jr	NC, 00109$
;src/main.c:300: uint8_t copyBufferIndex = MIN(1+t+k,DIALOG_BOX_INNER_HEIGHT);
	ld	a, (hl-)
	ld	c, a
	xor	a, a
	ld	b, a
	inc	bc
	ld	a, (hl+)
	ld	e, #0x00
	add	a, c
	ld	c, a
	ld	a, e
	adc	a, b
	ld	b, a
	ld	a, (hl)
	inc	a
	ldhl	sp,	#110
	ld	(hl), a
	ld	a, c
	sub	a, #0x05
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00158$
	ldhl	sp,	#116
	ld	a, (hl)
	ldhl	sp,	#110
	add	a, (hl)
	ld	c, a
	jr	00159$
00158$:
	ld	c, #0x05
00159$:
;src/main.c:302: set_text_tiles(1,DIALOGUE_BOX_Y+1+t,INNER_DIALOGUE_BOX_WIDTH,1,copyBuffer[copyBufferIndex]);
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, #1
	add	hl, sp
	add	hl, bc
	push	hl
	ld	hl, #0x112
	push	hl
	ldhl	sp,	#114
	ld	h, (hl)
	ld	l, #0x01
	push	hl
	call	_set_win_tiles
	add	sp, #6
;src/main.c:298: for(uint8_t t=0;t<DIALOG_BOX_INNER_HEIGHT;t++){
	ldhl	sp,	#117
	inc	(hl)
	jr	00145$
00109$:
;src/main.c:306: vsyncMultiple(LINE_SKIP_DELAY);
	ld	a, #0x07
	call	_vsyncMultiple
;src/main.c:296: for(uint8_t k=0;k<shiftCount;k++){
	ldhl	sp,	#116
	inc	(hl)
	jr	00148$
00110$:
;src/main.c:310: for(uint8_t k=0;k<INNER_DIALOGUE_BOX_WIDTH;k++){
	ld	c, #0x00
00154$:
	ld	a, c
	sub	a, #0x12
	jr	NC, 00112$
;src/main.c:311: for(uint8_t t=0;t<DIALOG_BOX_INNER_HEIGHT;t++){
	ld	b, #0x00
00151$:
	ld	a, b
	sub	a, #0x05
	jr	NC, 00155$
;src/main.c:312: copyBuffer[t][k]=0;
	ld	e, b
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	push	hl
	ld	hl, #3
	add	hl, sp
	ld	e, l
	ld	d, h
	pop	hl
	add	hl, de
	ld	e, c
	ld	d, #0x00
	add	hl, de
	ld	(hl), #0x00
;src/main.c:311: for(uint8_t t=0;t<DIALOG_BOX_INNER_HEIGHT;t++){
	inc	b
	jr	00151$
00155$:
;src/main.c:310: for(uint8_t k=0;k<INNER_DIALOGUE_BOX_WIDTH;k++){
	inc	c
	jr	00154$
00112$:
;src/main.c:317: rowCount=LINE_SKIP;
	ldhl	sp,	#0
	ld	(hl), #0x02
00117$:
;src/main.c:322: vramAddress = get_winbkg_xy_addr(column,row+rowCount);
	ldhl	sp,	#0
	ld	a, (hl)
	inc	a
	ld	h, a
	ld	l, #0x01
	push	hl
	call	_get_win_xy_addr
	pop	hl
	ldhl	sp,	#116
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;src/main.c:324: columnSize=0;
	ldhl	sp,	#110
	ld	(hl), #0x00
;src/main.c:327: while(text[index]==' '){
	ldhl	sp,	#113
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
00119$:
	ldhl	sp,	#111
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (de)
	sub	a, #0x20
	jr	NZ, 00191$
;src/main.c:328: index++;
	inc	bc
	jr	00119$
00191$:
	ldhl	sp,	#113
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
00123$:
;src/main.c:332: vsyncMultiple(TYPEWRITER_DELAY);
	ld	a, #0x02
	call	_vsyncMultiple
	jp	00125$
00127$:
;src/main.c:335: HideDialgoueBox();
	call	_HideDialgoueBox
;src/main.c:337: }
	add	sp, #118
	ret
;src/main.c:341: void ClearScreen(void){
;	---------------------------------
; Function ClearScreen
; ---------------------------------
_ClearScreen::
;src/main.c:344: fill_win_rect(0,0,DEVICE_SCREEN_WIDTH,DEVICE_SCREEN_HEIGHT,0);
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
	call	_fill_win_rect
	add	sp, #5
;src/main.c:346: fill_bkg_rect(0,0,DEVICE_SCREEN_WIDTH,DEVICE_SCREEN_HEIGHT,0);
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
;src/main.c:347: }
	ret
;src/main.c:349: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	add	sp, #-16
;src/main.c:351: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
;src/main.c:352: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;src/main.c:355: SHOW_WIN;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x20
	ldh	(_LCDC_REG + 0), a
;src/main.c:358: fontTilesStart = DialogueBox_TILE_COUNT+1;
	ld	hl, #_fontTilesStart
	ld	(hl), #0x07
;src/main.c:360: for(uint8_t i=0;i<TILE_SIZE_BYTES;i++)emptyTile[i]=0;
	ldhl	sp,	#0
	ld	c, l
	ld	b, h
	ld	e, #0x00
00114$:
	ld	a, e
	sub	a, #0x10
	jr	NC, 00101$
	ld	l, e
	ld	h, #0x00
	add	hl, bc
	ld	(hl), #0x00
	inc	e
	jr	00114$
00101$:
;src/main.c:362: set_native_tile_data(0,1,emptyTile);
;../../../include/gb/gb.h:2146: set_bkg_data(first_tile, nb_tiles, data);
	push	bc
	xor	a, a
	inc	a
	push	af
	call	_set_bkg_data
	add	sp, #4
;src/main.c:364: ClearScreen();
	call	_ClearScreen
;src/main.c:366: set_native_tile_data(1,DialogueBox_TILE_COUNT,DialogueBox_tiles);
;../../../include/gb/gb.h:2146: set_bkg_data(first_tile, nb_tiles, data);
	ld	de, #_DialogueBox_tiles
	push	de
	ld	hl, #0x601
	push	hl
	call	_set_bkg_data
	add	sp, #4
;src/main.c:368: while(TRUE){
00103$:
;src/main.c:372: DrawTextAdvanced("When the code reaches a period or question mark, it will pause and wait for you to press the A button for it to continue. Afterwards, It will start a new page and continue.  The code will automatically jump to a new line, when it cannot fully draw a word.  When both rows of text are full, the code will slide the current text upwards and continue. For every page, the code will dynamically populate VRAM. Only letters and characters used, will be loaded into VRAM.");
	ld	de, #___str_0
	call	_DrawTextAdvanced
	jr	00103$
;src/main.c:375: }
	add	sp, #16
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
	.dw #0x0090
__xinit__fontTilesStart:
	.db #0x00	; 0
__xinit__joypadCurrent:
	.db #0x00	; 0
__xinit__joypadPrevious:
	.db #0x00	; 0
__xinit__loadedCharacterCount:
	.db #0x00	; 0
	.area _CABS (ABS)
