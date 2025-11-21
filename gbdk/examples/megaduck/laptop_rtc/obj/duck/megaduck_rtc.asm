;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module megaduck_rtc
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _duck_io_send_cmd_and_receive_buffer
	.globl _duck_io_send_cmd_and_buffer
	.globl _duck_io_set_rtc
	.globl _duck_io_get_rtc
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
;src/megaduck_rtc.c:12: static uint8_t bcd_to_u8(uint8_t i)
;	---------------------------------
; Function bcd_to_u8
; ---------------------------------
_bcd_to_u8:
;src/megaduck_rtc.c:14: return (i & 0xFu) + ((i >> 4) * 10u);
	push	af
	and	a, #0x0f
	ld	c, a
	pop	af
	swap	a
	and	a, #0x0f
	ld	e, a
	add	a, a
	add	a, a
	add	a, e
	add	a, a
	add	a, c
;src/megaduck_rtc.c:15: }
	ret
;src/megaduck_rtc.c:17: static uint8_t u8_to_bcd(uint8_t i)
;	---------------------------------
; Function u8_to_bcd
; ---------------------------------
_u8_to_bcd:
;src/megaduck_rtc.c:19: return (i % 10u) + ((i / 10u) << 4);
	ld	d, a
	push	de
	ld	e, #0x0a
	ld	a, d
	call	__moduchar
	pop	de
	push	bc
	ld	e, #0x0a
	ld	a, d
	call	__divuchar
	ld	a, c
	pop	bc
	swap	a
	and	a, #0xf0
	add	a, c
;src/megaduck_rtc.c:20: }
	ret
;src/megaduck_rtc.c:47: bool duck_io_set_rtc(duck_rtc_data_t * p_rtc) {
;	---------------------------------
; Function duck_io_set_rtc
; ---------------------------------
_duck_io_set_rtc::
	ld	c, e
	ld	b, d
;src/megaduck_rtc.c:52: if (p_rtc->year < 2000u) year_to_send = p_rtc->year - 1900u;
	ld	l, c
	ld	h, b
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	e, l
	ld	d, h
	ld	a, e
	sub	a, #0xd0
	ld	a, d
	sbc	a, #0x07
	jr	NC, 00102$
	ld	a, l
	add	a, #0x94
	ld	e, a
	jr	00103$
00102$:
;src/megaduck_rtc.c:53: else                           year_to_send = p_rtc->year - 2000u;
	ld	a, l
	add	a, #0x30
	ld	e, a
00103$:
;src/megaduck_rtc.c:55: duck_io_tx_buf[0] = u8_to_bcd(year_to_send);
	push	bc
	ld	a, e
	call	_u8_to_bcd
	pop	bc
	ld	(#_duck_io_tx_buf),a
;src/megaduck_rtc.c:56: duck_io_tx_buf[1] = u8_to_bcd(p_rtc->mon);
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	a, (hl)
	push	bc
	call	_u8_to_bcd
	pop	bc
	ld	(#(_duck_io_tx_buf + 1)),a
;src/megaduck_rtc.c:57: duck_io_tx_buf[2] = u8_to_bcd(p_rtc->day);
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	push	bc
	call	_u8_to_bcd
	pop	bc
	ld	(#(_duck_io_tx_buf + 2)),a
;src/megaduck_rtc.c:58: duck_io_tx_buf[3] = u8_to_bcd(p_rtc->weekday);
	ld	hl, #0x0004
	add	hl, bc
	ld	a, (hl)
	push	bc
	call	_u8_to_bcd
	pop	bc
	ld	(#(_duck_io_tx_buf + 3)),a
;src/megaduck_rtc.c:60: duck_io_tx_buf[4] = p_rtc->ampm;
	ld	hl, #0x0005
	add	hl, bc
	ld	a, (hl)
	ld	(#(_duck_io_tx_buf + 4)),a
;src/megaduck_rtc.c:61: duck_io_tx_buf[5] = p_rtc->hour;
	ld	hl, #0x0006
	add	hl, bc
	ld	a, (hl)
	ld	(#(_duck_io_tx_buf + 5)),a
;src/megaduck_rtc.c:62: duck_io_tx_buf[6] = p_rtc->min;
	ld	hl, #0x0007
	add	hl, bc
	ld	a, (hl)
	ld	(#(_duck_io_tx_buf + 6)),a
;src/megaduck_rtc.c:63: duck_io_tx_buf[7] = p_rtc->sec;
	ld	hl, #0x0008
	add	hl, bc
	ld	a, (hl)
	ld	(#(_duck_io_tx_buf + 7)),a
;src/megaduck_rtc.c:65: duck_io_tx_buf_len = DUCK_IO_LEN_RTC_SET;
	ld	hl, #_duck_io_tx_buf_len
	ld	(hl), #0x08
;src/megaduck_rtc.c:67: if (duck_io_send_cmd_and_buffer(DUCK_IO_CMD_SET_RTC)) {
	ld	a, #0x0b
	call	_duck_io_send_cmd_and_buffer
	bit	0,a
;src/megaduck_rtc.c:68: return true;
;src/megaduck_rtc.c:70: return false;
	ld	a, #0x01
	ret	NZ
	xor	a, a
;src/megaduck_rtc.c:72: }
	ret
;src/megaduck_rtc.c:79: bool duck_io_get_rtc(duck_rtc_data_t * p_rtc) {
;	---------------------------------
; Function duck_io_get_rtc
; ---------------------------------
_duck_io_get_rtc::
	add	sp, #-3
	ldhl	sp,	#1
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;src/megaduck_rtc.c:81: if (duck_io_send_cmd_and_receive_buffer(DUCK_IO_CMD_GET_RTC)) {
	ld	a, #0x0c
	call	_duck_io_send_cmd_and_receive_buffer
	bit	0,a
	jp	Z, 00107$
;src/megaduck_rtc.c:82: if (duck_io_rx_buf_len == DUCK_IO_LEN_RTC_GET) {
	ld	a, (#_duck_io_rx_buf_len)
	sub	a, #0x08
	jp	NZ, 00107$
;src/megaduck_rtc.c:92: p_rtc->year = bcd_to_u8(duck_io_rx_buf[DUCK_IO_RTC_YEAR]);
	ldhl	sp,	#1
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, (#_duck_io_rx_buf + 0)
	push	bc
	call	_bcd_to_u8
	pop	bc
	ld	e, a
	ld	d, #0x00
	ld	l, c
	ld	h, b
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;src/megaduck_rtc.c:93: if (p_rtc->year >= 92) p_rtc->year += 1900u;
	ldhl	sp,	#0
	ld	(hl), e
	ld	l, c
	ld	h, b
	ld	a,	(hl+)
	ld	h, (hl)
	ld	e, a
	ld	d, h
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x5c
	jr	C, 00102$
	ld	hl, #0x076c
	add	hl, de
	ld	a, l
	ld	(bc), a
	inc	bc
	ld	a, h
	ld	(bc), a
	jr	00103$
00102$:
;src/megaduck_rtc.c:94: else                p_rtc->year += 2000u;
	ld	hl, #0x07d0
	add	hl, de
	ld	a, l
	ld	(bc), a
	inc	bc
	ld	a, h
	ld	(bc), a
00103$:
;src/megaduck_rtc.c:96: p_rtc->mon     = bcd_to_u8(duck_io_rx_buf[DUCK_IO_RTC_MON]);
	ldhl	sp,	#1
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	inc	bc
	ld	a, (#(_duck_io_rx_buf + 1) + 0)
	push	bc
	call	_bcd_to_u8
	pop	bc
	ld	(bc), a
;src/megaduck_rtc.c:97: p_rtc->day     = bcd_to_u8(duck_io_rx_buf[DUCK_IO_RTC_DAY]);
	ldhl	sp,	#1
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	inc	de
	inc	de
	inc	de
	ld	a, (#_duck_io_rx_buf + 2)
	push	bc
	push	de
	call	_bcd_to_u8
	pop	de
	pop	bc
	ld	(de), a
;src/megaduck_rtc.c:98: p_rtc->mon     = bcd_to_u8(duck_io_rx_buf[DUCK_IO_RTC_MON]);
	ld	a, (#(_duck_io_rx_buf + 1) + 0)
	push	bc
	call	_bcd_to_u8
	pop	bc
	ld	(bc), a
;src/megaduck_rtc.c:99: p_rtc->weekday = bcd_to_u8(duck_io_rx_buf[DUCK_IO_RTC_WEEKDAY]);
	ldhl	sp,#1
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0004
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (#(_duck_io_rx_buf + 3) + 0)
	push	bc
	call	_bcd_to_u8
	pop	bc
	ld	(bc), a
;src/megaduck_rtc.c:101: p_rtc->ampm    = bcd_to_u8(duck_io_rx_buf[DUCK_IO_RTC_AMPM]);
	ldhl	sp,#1
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0005
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (#(_duck_io_rx_buf + 4) + 0)
	push	bc
	call	_bcd_to_u8
	pop	bc
	ld	(bc), a
;src/megaduck_rtc.c:102: p_rtc->hour    = bcd_to_u8(duck_io_rx_buf[DUCK_IO_RTC_HOUR]);
	ldhl	sp,#1
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0006
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (#(_duck_io_rx_buf + 5) + 0)
	push	bc
	call	_bcd_to_u8
	pop	bc
	ld	(bc), a
;src/megaduck_rtc.c:103: p_rtc->min     = bcd_to_u8(duck_io_rx_buf[DUCK_IO_RTC_MIN]);
	ldhl	sp,#1
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0007
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (#(_duck_io_rx_buf + 6) + 0)
	push	bc
	call	_bcd_to_u8
	pop	bc
	ld	(bc), a
;src/megaduck_rtc.c:104: p_rtc->sec     = bcd_to_u8(duck_io_rx_buf[DUCK_IO_RTC_SEC]);
	ldhl	sp,#1
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0008
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (#(_duck_io_rx_buf + 7) + 0)
	push	bc
	call	_bcd_to_u8
	pop	bc
	ld	(bc), a
;src/megaduck_rtc.c:105: return true;
	ld	a, #0x01
	jr	00108$
00107$:
;src/megaduck_rtc.c:108: return false;
	xor	a, a
00108$:
;src/megaduck_rtc.c:109: }
	add	sp, #3
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
