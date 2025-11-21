;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module megaduck_keyboard
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _duck_io_scancode_to_ascii
	.globl _duck_io_send_cmd_and_receive_buffer
	.globl _key_previous
	.globl _key_repeat_previous
	.globl _key_pressed
	.globl _key_repeat_timeout
	.globl _key_repeat_allowed
	.globl _duck_io_poll_keyboard
	.globl _duck_io_process_key_data
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
_key_repeat_allowed::
	.ds 1
_key_repeat_timeout::
	.ds 1
_key_pressed::
	.ds 1
_key_repeat_previous::
	.ds 1
_key_previous::
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
;src/megaduck_keyboard.c:43: bool duck_io_poll_keyboard(duck_keyboard_data_t * key_data) {
;	---------------------------------
; Function duck_io_poll_keyboard
; ---------------------------------
_duck_io_poll_keyboard::
	dec	sp
	dec	sp
;src/megaduck_keyboard.c:45: if (duck_io_send_cmd_and_receive_buffer(DUCK_IO_CMD_GET_KEYS)) {
	push	de
	xor	a, a
	call	_duck_io_send_cmd_and_receive_buffer
	ld	e, a
	pop	bc
	bit	0, e
	jr	Z, 00104$
;src/megaduck_keyboard.c:46: if (duck_io_rx_buf_len == DUCK_IO_LEN_KBD_GET) {
	ld	a, (#_duck_io_rx_buf_len)
	sub	a, #0x02
	jr	NZ, 00104$
;src/megaduck_keyboard.c:47: key_data->flags     = duck_io_rx_buf[DUCK_IO_KBD_FLAGS];
	inc	sp
	inc	sp
	push	bc
	ld	a, (#_duck_io_rx_buf + 0)
	pop	hl
	push	hl
	ld	(hl), a
;src/megaduck_keyboard.c:48: key_data->scancode  = duck_io_rx_buf[DUCK_IO_KBD_KEYCODE];
	inc	bc
	ld	a, (#(_duck_io_rx_buf + 1) + 0)
	ld	(bc), a
;src/megaduck_keyboard.c:49: return true;
	ld	a, #0x01
	jr	00105$
00104$:
;src/megaduck_keyboard.c:52: return false;
	xor	a, a
00105$:
;src/megaduck_keyboard.c:53: }
	inc	sp
	inc	sp
	ret
;src/megaduck_keyboard.c:60: char duck_io_process_key_data(duck_keyboard_data_t * key_data, uint8_t megaduck_model) {
;	---------------------------------
; Function duck_io_process_key_data
; ---------------------------------
_duck_io_process_key_data::
	add	sp, #-4
	ldhl	sp,	#1
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	e, a
;src/megaduck_keyboard.c:62: key_previous = key_pressed;
	ld	a, (#_key_pressed)
	ld	(#_key_previous),a
;src/megaduck_keyboard.c:70: if ((key_data->flags & DUCK_IO_KEY_FLAG_KEY_REPEAT) && (key_repeat_allowed)) {
	ldhl	sp,	#1
	ld	a, (hl+)
	ld	c, a
	ld	a, (hl-)
	dec	hl
	ld	b, a
	ld	a, (bc)
	ld	(hl), a
	push	hl
	bit	0, (hl)
	pop	hl
	jr	Z, 00119$
	ld	hl, #_key_repeat_allowed
	bit	0, (hl)
	jr	Z, 00119$
;src/megaduck_keyboard.c:73: key_pressed = NO_KEY;
	xor	a, a
	ld	(#_key_pressed),a
;src/megaduck_keyboard.c:75: if (key_repeat_timeout) {
	ld	hl, #_key_repeat_timeout
	ld	a, (hl)
	or	a, a
	jr	Z, 00102$
;src/megaduck_keyboard.c:76: key_repeat_timeout--;
	dec	(hl)
	jr	00120$
00102$:
;src/megaduck_keyboard.c:80: key_pressed = key_repeat_previous;
	ld	a, (#_key_repeat_previous)
	ld	(#_key_pressed),a
;src/megaduck_keyboard.c:81: key_repeat_timeout = REPEAT_CONTINUE_THRESHOLD;
	ld	hl, #_key_repeat_timeout
	ld	(hl), #0x04
	jr	00120$
00119$:
;src/megaduck_keyboard.c:85: key_data->flags = key_data->flags;
	ldhl	sp,	#0
;src/megaduck_keyboard.c:86: uint8_t temp_key_scancode = key_data->scancode;
	ld	a, (hl+)
	ld	(bc), a
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	inc	hl
	ld	a, (hl)
	ldhl	sp,	#3
	ld	(hl), a
;src/megaduck_keyboard.c:89: if ((key_data->flags & (DUCK_IO_KEY_FLAG_CAPSLOCK | DUCK_IO_KEY_FLAG_SHIFT)) == DUCK_IO_KEY_FLAG_SHIFT)
	ldhl	sp,	#0
	ld	a, (hl)
	and	a, #0x06
	sub	a, #0x04
	jr	NZ, 00105$
;src/megaduck_keyboard.c:90: temp_key_scancode -= DUCK_IO_KEY_BASE;
	ldhl	sp,	#3
	ld	a, (hl)
	add	a, #0x80
	ld	(hl), a
00105$:
;src/megaduck_keyboard.c:92: key_pressed = duck_io_scancode_to_ascii(temp_key_scancode, megaduck_model);
	push	bc
	ldhl	sp,	#5
	ld	a, (hl)
	call	_duck_io_scancode_to_ascii
	pop	bc
	ld	hl, #_key_pressed
	ld	(hl), a
;src/megaduck_keyboard.c:95: if ((key_data->flags & (DUCK_IO_KEY_FLAG_CAPSLOCK | DUCK_IO_KEY_FLAG_SHIFT)) == DUCK_IO_KEY_FLAG_CAPSLOCK)
	ld	a, (bc)
	and	a, #0x06
	sub	a, #0x02
	jr	NZ, 00110$
;src/megaduck_keyboard.c:96: if ((key_pressed >= 'a') && (key_pressed <= 'z'))
	ld	a, (hl)
	sub	a, #0x61
	jr	C, 00110$
	ld	a, #0x7a
	sub	a, (hl)
	jr	C, 00110$
;src/megaduck_keyboard.c:97: key_pressed -= ('a' - 'A');
	ld	a, (hl)
	add	a, #0xe0
	ld	(hl), a
00110$:
;src/megaduck_keyboard.c:101: if (key_data->flags & DUCK_IO_KEY_FLAG_PRINTSCREEN_LEFT)
	ld	a, (bc)
	bit	3, a
	jr	Z, 00112$
;src/megaduck_keyboard.c:102: key_pressed = KEY_PRINTSCREEN;
	ld	hl, #_key_pressed
	ld	(hl), #0x06
00112$:
;src/megaduck_keyboard.c:107: if ((key_pressed >= ' ') ||
	ld	hl, #_key_pressed
;src/megaduck_keyboard.c:108: ((key_pressed >= KEY_ARROW_UP) && (key_pressed <= KEY_ARROW_LEFT))) {
	ld	a,(hl)
	cp	a,#0x20
	jr	NC, 00113$
	sub	a, #0x01
	jr	C, 00114$
	ld	a, #0x04
	sub	a, (hl)
	jr	C, 00114$
00113$:
;src/megaduck_keyboard.c:109: key_repeat_allowed = true;
	ld	hl, #_key_repeat_allowed
	ld	(hl), #0x01
;src/megaduck_keyboard.c:110: key_repeat_timeout = REPEAT_FIRST_THRESHOLD;
	ld	hl, #_key_repeat_timeout
	ld	(hl), #0x08
	jr	00115$
00114$:
;src/megaduck_keyboard.c:112: key_repeat_allowed = false;
	xor	a, a
	ld	(#_key_repeat_allowed),a
00115$:
;src/megaduck_keyboard.c:115: key_repeat_previous = key_pressed;
	ld	a, (#_key_pressed)
	ld	(#_key_repeat_previous),a
00120$:
;src/megaduck_keyboard.c:118: return key_pressed;
	ld	a, (_key_pressed)
;src/megaduck_keyboard.c:119: }
	add	sp, #4
	ret
	.area _CODE
	.area _INITIALIZER
__xinit__key_repeat_allowed:
	.db #0x00	;  0
__xinit__key_repeat_timeout:
	.db #0x00	; 0
__xinit__key_pressed:
	.db #0x00	; 0
__xinit__key_repeat_previous:
	.db #0x00	; 0
__xinit__key_previous:
	.db #0x00	; 0
	.area _CABS (ABS)
