;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module main
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _duck_io_send_speech_cmd
	.globl _duck_io_send_cmd_and_buffer
	.globl _duck_io_laptop_init
	.globl _puts
	.globl _printf
	.globl _gotoxy
	.globl _vsync
	.globl _waitpadup
	.globl _joypad
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
;src/main.c:35: bool duck_io_send_speech_cmd(uint8_t speech_sample_num) {
;	---------------------------------
; Function duck_io_send_speech_cmd
; ---------------------------------
_duck_io_send_speech_cmd::
	ld	c, a
;src/main.c:37: duck_io_tx_buf[0] = speech_sample_num;
	ld	hl, #_duck_io_tx_buf
	ld	(hl), c
;src/main.c:38: duck_io_tx_buf_len = DUCK_IO_LEN_PLAY_SPEECH;
	ld	hl, #_duck_io_tx_buf_len
	ld	(hl), #0x01
;src/main.c:40: if (duck_io_send_cmd_and_buffer(DUCK_IO_CMD_PLAY_SPEECH)) {
	ld	a, #0x05
	call	_duck_io_send_cmd_and_buffer
	bit	0,a
;src/main.c:41: return true;
;src/main.c:43: return false;
	ld	a, #0x01
	ret	NZ
	xor	a, a
;src/main.c:45: }
	ret
;src/main.c:49: void main(void) {
;	---------------------------------
; Function main
; ---------------------------------
_main::
	dec	sp
;src/main.c:52: uint8_t speech_num = 1u;
	ldhl	sp,	#0
	ld	(hl), #0x01
;src/main.c:54: bool megaduck_laptop_init_ok = duck_io_laptop_init();
	call	_duck_io_laptop_init
	ld	c, a
;src/main.c:56: SPRITES_8x8;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfd
	ldh	(_LCDC_REG + 0), a
;src/main.c:57: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;src/main.c:58: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x40
	ldh	(_LCDC_REG + 0), a
;src/main.c:59: printf("Initializing..\n");
	push	bc
	ld	de, #___str_1
	call	_puts
	pop	bc
;src/main.c:61: if (!megaduck_laptop_init_ok) {
	bit	0, c
	jr	NZ, 00105$
;src/main.c:65: "or Failed to Initialize");
	ld	de, #___str_2
	push	de
	call	_printf
	pop	hl
;src/main.c:66: while(1) {
00102$:
;src/main.c:67: vsync();
	call	_vsync
	jr	00102$
00105$:
;src/main.c:78: "*UP/DOWN change num\n");
	ld	de, #___str_12
	call	_puts
;src/main.c:80: gotoxy(0,10); printf("Play Num:%d  ", speech_num);
	ld	hl, #0xa00
	push	hl
	call	_gotoxy
	pop	hl
	ld	de, #0x0001
	push	de
	ld	de, #___str_7
	push	de
	call	_printf
	add	sp, #4
;src/main.c:82: while(1) {
00122$:
;src/main.c:83: vsync();
	call	_vsync
;src/main.c:84: gamepad = joypad();
	call	_joypad
;src/main.c:90: if (sys_time & 0x01u) {
	ld	hl, #_sys_time
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	bit	0, c
	jr	Z, 00122$
;src/main.c:92: if (gamepad) {
	or	a, a
	jr	Z, 00122$
;src/main.c:80: gotoxy(0,10); printf("Play Num:%d  ", speech_num);
	ld	de, #___str_7
;src/main.c:94: switch (gamepad) {
	cp	a, #0x04
	jr	Z, 00106$
	cp	a, #0x08
	jr	Z, 00109$
	sub	a, #0x80
	jr	Z, 00112$
	jr	00116$
;src/main.c:95: case J_UP:
00106$:
;src/main.c:96: if (speech_num < DUCK_IO_SPEECH_CMD_MAX) speech_num++;
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x06
	jr	NC, 00108$
	inc	(hl)
00108$:
;src/main.c:97: gotoxy(0,10); printf("Play Num:%d  ", speech_num);
	push	de
	ld	hl, #0xa00
	push	hl
	call	_gotoxy
	pop	hl
	pop	de
	ldhl	sp,	#0
	ld	c, (hl)
	xor	a, a
	ld	b, a
	push	bc
	push	de
	call	_printf
	add	sp, #4
;src/main.c:98: break;
	jr	00116$
;src/main.c:100: case J_DOWN:
00109$:
;src/main.c:101: if (speech_num > DUCK_IO_SPEECH_CMD_MIN) speech_num--;
	ld	a, #0x01
	ldhl	sp,	#0
	sub	a, (hl)
	jr	NC, 00111$
	dec	(hl)
00111$:
;src/main.c:102: gotoxy(0,10); printf("Play Num:%d  ", speech_num);
	push	de
	ld	hl, #0xa00
	push	hl
	call	_gotoxy
	pop	hl
	pop	de
	ldhl	sp,	#0
	ld	c, (hl)
	xor	a, a
	ld	b, a
	push	bc
	push	de
	call	_printf
	add	sp, #4
;src/main.c:103: break;
	jr	00116$
;src/main.c:105: case J_START:
00112$:
;src/main.c:106: if (duck_io_send_speech_cmd(speech_num)) {
	ldhl	sp,	#0
	ld	a, (hl)
	call	_duck_io_send_speech_cmd
	bit	0,a
	jr	Z, 00114$
;src/main.c:107: gotoxy(0,11);
	ld	hl, #0xb00
	push	hl
	call	_gotoxy
	pop	hl
;src/main.c:108: printf("Speech OK  \n");
	ld	de, #___str_9
	call	_puts
	jr	00116$
00114$:
;src/main.c:110: gotoxy(0,11);
	ld	hl, #0xb00
	push	hl
	call	_gotoxy
	pop	hl
;src/main.c:111: printf("Speech FAIL\n");
	ld	de, #___str_11
	call	_puts
;src/main.c:114: }
00116$:
;src/main.c:117: waitpadup();
	call	_waitpadup
	jp	00122$
;src/main.c:121: }
	inc	sp
	ret
___str_1:
	.ascii "Initializing.."
	.db 0x00
___str_2:
	.ascii "Laptop not detected"
	.db 0x0a
	.ascii "or Failed to Initialize"
	.db 0x00
___str_7:
	.ascii "Play Num:%d  "
	.db 0x00
___str_9:
	.ascii "Speech OK  "
	.db 0x00
___str_11:
	.ascii "Speech FAIL"
	.db 0x00
___str_12:
	.ascii "Laptop Detected!"
	.db 0x0a
	.db 0x0a
	.ascii "Play built-in speech"
	.db 0x0a
	.db 0x0a
	.ascii "*START:start speech"
	.db 0x0a
	.ascii "*UP/DOWN change num"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
