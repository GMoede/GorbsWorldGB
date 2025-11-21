;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module main
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _duck_io_get_rtc
	.globl _duck_io_set_rtc
	.globl _duck_io_laptop_init
	.globl _puts
	.globl _printf
	.globl _gotoxy
	.globl _vsync
	.globl _waitpadup
	.globl _joypad
	.globl _rtc
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_rtc::
	.ds 9
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
;src/main.c:20: static void use_rtc_data(duck_rtc_data_t * p_rtc) {
;	---------------------------------
; Function use_rtc_data
; ---------------------------------
_use_rtc_data:
	add	sp, #-32
	ld	c, e
	ld	b, d
;src/main.c:22: const char * ampm_str[] = {"am", "pm"};
	ldhl	sp,	#0
	ld	a, #<(___str_0)
	ld	(hl+), a
	ld	a, #>(___str_0)
	ld	(hl+), a
	ld	a, #<(___str_1)
	ld	(hl+), a
;src/main.c:23: const char * dow_str[]  = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
	ld	a, #>(___str_1)
	ld	(hl+), a
	ld	a, #<(___str_2)
	ld	(hl+), a
	ld	a, #>(___str_2)
	ld	(hl+), a
	ld	a, #<(___str_3)
	ld	(hl+), a
	ld	a, #>(___str_3)
	ld	(hl+), a
	ld	a, #<(___str_4)
	ld	(hl+), a
	ld	a, #>(___str_4)
	ld	(hl+), a
	ld	a, #<(___str_5)
	ld	(hl+), a
	ld	a, #>(___str_5)
	ld	(hl+), a
	ld	a, #<(___str_6)
	ld	(hl+), a
	ld	a, #>(___str_6)
	ld	(hl+), a
	ld	a, #<(___str_7)
	ld	(hl+), a
	ld	a, #>(___str_7)
	ld	(hl+), a
	ld	a, #<(___str_8)
	ld	(hl+), a
	ld	(hl), #>(___str_8)
;src/main.c:25: gotoxy(0,6);
	push	bc
	ld	hl, #0x600
	push	hl
	call	_gotoxy
	pop	hl
	pop	bc
;src/main.c:40: ampm_str[p_rtc->ampm] );
	ld	hl, #0x0005
	add	hl, bc
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	ld	e, l
	ld	d, h
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#18
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
;src/main.c:39: (uint16_t)p_rtc->sec,
	ld	hl, #0x0008
	add	hl, bc
	ld	a, (hl)
	ldhl	sp,	#20
	ld	(hl+), a
	ld	(hl), #0x00
;src/main.c:38: (uint16_t)p_rtc->min,
	ld	hl, #0x0007
	add	hl, bc
	ld	a, (hl)
	ldhl	sp,	#22
	ld	(hl+), a
	ld	(hl), #0x00
;src/main.c:37: (uint16_t)p_rtc->hour,
	ld	hl, #0x0006
	add	hl, bc
	ld	a, (hl)
	ldhl	sp,	#24
	ld	(hl+), a
	ld	(hl), #0x00
;src/main.c:35: (uint16_t)dow_str[p_rtc->weekday],
	ld	hl, #0x0004
	add	hl, bc
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	ld	e, l
	ld	d, h
	ld	hl, #4
	add	hl, sp
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#30
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	ldhl	sp,	#30
	ld	a, (hl)
	ldhl	sp,	#26
	ld	(hl), a
	ldhl	sp,	#31
	ld	a, (hl)
	ldhl	sp,	#27
	ld	(hl), a
;src/main.c:34: (uint16_t)p_rtc->day,
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ldhl	sp,	#28
	ld	(hl+), a
	ld	(hl), #0x00
;src/main.c:33: (uint16_t)p_rtc->mon,
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	a, (hl)
	ldhl	sp,	#30
	ld	(hl+), a
	ld	(hl), #0x00
;src/main.c:32: (uint16_t)p_rtc->year,
	ld	l, c
	ld	h, b
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
;src/main.c:31: "Time:  %d:%d:%d %s   \n",
	ldhl	sp,	#18
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	push	de
	ld	a, (hl+)
	inc	hl
	ld	e, a
	ld	d, #0x00
	push	de
	ld	a, (hl+)
	inc	hl
	ld	e, a
	ld	d, #0x00
	push	de
	ld	a, (hl+)
	inc	hl
	ld	e, a
	ld	d, #0x00
	push	de
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	push	de
	ld	a, (hl+)
	inc	hl
	ld	e, a
	ld	d, #0x00
	push	de
	ld	e, (hl)
	ld	d, #0x00
	push	de
	push	bc
	ld	de, #___str_9
	push	de
	call	_printf
;src/main.c:41: }
	add	sp, #50
	ret
___str_0:
	.ascii "am"
	.db 0x00
___str_1:
	.ascii "pm"
	.db 0x00
___str_2:
	.ascii "Sunday"
	.db 0x00
___str_3:
	.ascii "Monday"
	.db 0x00
___str_4:
	.ascii "Tuesday"
	.db 0x00
___str_5:
	.ascii "Wednesday"
	.db 0x00
___str_6:
	.ascii "Thursday"
	.db 0x00
___str_7:
	.ascii "Friday"
	.db 0x00
___str_8:
	.ascii "Saturday"
	.db 0x00
___str_9:
	.ascii "Year:  %d  "
	.db 0x0a
	.ascii "Month: %d  "
	.db 0x0a
	.ascii "Day:   %d  "
	.db 0x0a
	.ascii "DoW:   %s  "
	.db 0x0a
	.ascii "Time:  %d:%d:%d %s   "
	.db 0x0a
	.db 0x00
;src/main.c:45: static void send_some_rtc_data(duck_rtc_data_t * p_rtc) {
;	---------------------------------
; Function send_some_rtc_data
; ---------------------------------
_send_some_rtc_data:
;src/main.c:49: p_rtc->year    = 1993u;
	ld	l, e
	ld	h, d
	ld	a, #0xc9
	ld	(hl+), a
	ld	(hl), #0x07
;src/main.c:50: p_rtc->mon     = 6u; // June
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	(hl), #0x06
;src/main.c:51: p_rtc->day     = 1u; // 1st
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	inc	hl
	ld	(hl), #0x01
;src/main.c:52: p_rtc->weekday = 2u; // Tuesday
	ld	hl, #0x0004
	add	hl, de
	ld	(hl), #0x02
;src/main.c:54: p_rtc->ampm    = 0u; // AM
	ld	hl, #0x0005
	add	hl, de
	ld	(hl), #0x00
;src/main.c:55: p_rtc->hour    = 0u;
	ld	hl, #0x0006
	add	hl, de
	ld	(hl), #0x00
;src/main.c:56: p_rtc->min     = 0u;
	ld	hl, #0x0007
	add	hl, de
	ld	(hl), #0x00
;src/main.c:57: p_rtc->sec     = 0u;
	ld	hl, #0x0008
	add	hl, de
	ld	(hl), #0x00
;src/main.c:59: gotoxy(0,12);
	push	de
	ld	hl, #0xc00
	push	hl
	call	_gotoxy
	pop	hl
	pop	de
;src/main.c:61: if (duck_io_set_rtc(p_rtc)) {
	call	_duck_io_set_rtc
	bit	0,a
	jr	Z, 00102$
;src/main.c:62: printf("Send RTC: Success");
	ld	de, #___str_10
	push	de
	call	_printf
	pop	hl
	ret
00102$:
;src/main.c:65: printf("Send RTC: Failed!");
	ld	de, #___str_11
	push	de
	call	_printf
	pop	hl
;src/main.c:67: }
	ret
___str_10:
	.ascii "Send RTC: Success"
	.db 0x00
___str_11:
	.ascii "Send RTC: Failed!"
	.db 0x00
;src/main.c:70: void main(void) {
;	---------------------------------
; Function main
; ---------------------------------
_main::
;src/main.c:74: bool megaduck_laptop_init_ok = duck_io_laptop_init();
	call	_duck_io_laptop_init
	ld	c, a
;src/main.c:76: SPRITES_8x8;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfd
	ldh	(_LCDC_REG + 0), a
;src/main.c:77: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;src/main.c:78: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x40
	ldh	(_LCDC_REG + 0), a
;src/main.c:79: printf("Initializing..\n");
	push	bc
	ld	de, #___str_13
	call	_puts
	pop	bc
;src/main.c:81: if (!megaduck_laptop_init_ok) {
	bit	0, c
	jr	NZ, 00105$
;src/main.c:85: "or Failed to Initialize");
	ld	de, #___str_14
	push	de
	call	_printf
	pop	hl
;src/main.c:86: while(1) {
00102$:
;src/main.c:87: vsync();
	call	_vsync
	jr	00102$
00105$:
;src/main.c:92: printf("Laptop Detected!\n");
	ld	de, #___str_16
	call	_puts
;src/main.c:94: printf("\n*SELECT to Send RTC\n Sys rom defaults");
	ld	de, #___str_17
	push	de
	call	_printf
	pop	hl
;src/main.c:96: while(1) {
00114$:
;src/main.c:97: vsync();
	call	_vsync
;src/main.c:98: gamepad = joypad();
	call	_joypad
	ld	c, a
;src/main.c:102: if (sys_time & 0x01u) {
	ld	a, (_sys_time)
	ld	hl, #_sys_time + 1
	ld	b, (hl)
	rrca
	jr	NC, 00114$
;src/main.c:106: if (gamepad & J_SELECT) {
	bit	6, c
	jr	Z, 00109$
;src/main.c:107: send_some_rtc_data(&rtc);
	ld	de, #_rtc
	call	_send_some_rtc_data
;src/main.c:110: waitpadup();
	call	_waitpadup
	jr	00114$
00109$:
;src/main.c:113: if (duck_io_get_rtc(&rtc)) {
	ld	de, #_rtc
	push	de
	call	_duck_io_get_rtc
	ld	c, a
	pop	de
	bit	0, c
	jr	Z, 00114$
;src/main.c:114: use_rtc_data(&rtc);
	call	_use_rtc_data
;src/main.c:119: }
	jr	00114$
___str_13:
	.ascii "Initializing.."
	.db 0x00
___str_14:
	.ascii "Laptop not detected"
	.db 0x0a
	.ascii "or Failed to Initialize"
	.db 0x00
___str_16:
	.ascii "Laptop Detected!"
	.db 0x00
___str_17:
	.db 0x0a
	.ascii "*SELECT to Send RTC"
	.db 0x0a
	.ascii " Sys rom defaults"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
