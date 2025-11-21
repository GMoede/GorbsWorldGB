;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module main
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _duck_io_process_key_data
	.globl _duck_io_poll_keyboard
	.globl _duck_check_model
	.globl _duck_io_laptop_init
	.globl _puts
	.globl _printf
	.globl _putchar
	.globl _cls
	.globl _posy
	.globl _posx
	.globl _gotoxy
	.globl _set_sprite_data
	.globl _vsync
	.globl _keydata
	.globl _keyboard_read_ok
	.globl _cursor_y
	.globl _cursor_x
	.globl _cursor_tile
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_cursor_x::
	.ds 1
_cursor_y::
	.ds 1
_keyboard_read_ok::
	.ds 1
_keydata::
	.ds 2
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
;src/main.c:40: static void update_edit_cursor(int8_t delta_x, int8_t delta_y) {
;	---------------------------------
; Function update_edit_cursor
; ---------------------------------
_update_edit_cursor:
	ld	d, a
;src/main.c:41: gotoxy(posx() + delta_x, posy() + delta_y);
	push	de
	call	_posy
	ld	a, e
	pop	de
	add	a, e
	ld	e, a
	push	de
	call	_posx
	ld	a, e
	pop	de
	add	a, d
	ld	h, e
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_gotoxy
	pop	hl
;src/main.c:42: move_sprite(SPR_CURSOR, (posx() * 8) + DEVICE_SPRITE_PX_OFFSET_X, (posy() * 8) + DEVICE_SPRITE_PX_OFFSET_Y);
	call	_posy
	ld	a, e
	add	a, a
	add	a, a
	add	a, a
	add	a, #0x10
	ld	b, a
	push	bc
	call	_posx
	ld	a, e
	pop	bc
	add	a, a
	add	a, a
	add	a, a
	add	a, #0x08
	ld	c, a
;../../../include/gb/gb.h:1973: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;../../../include/gb/gb.h:1974: itm->y=y, itm->x=x;
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
;src/main.c:42: move_sprite(SPR_CURSOR, (posx() * 8) + DEVICE_SPRITE_PX_OFFSET_X, (posy() * 8) + DEVICE_SPRITE_PX_OFFSET_Y);
;src/main.c:43: }
	ret
_cursor_tile:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0xaa	; 170
	.db #0xaa	; 170
;src/main.c:47: static void use_key_data(char key) {
;	---------------------------------
; Function use_key_data
; ---------------------------------
_use_key_data:
;src/main.c:49: switch (key) {
	or	a, a
	ret	Z
	cp	a, #0x01
	jr	Z, 00102$
	cp	a, #0x02
	jr	Z, 00103$
	cp	a, #0x03
	jr	Z, 00105$
	cp	a, #0x04
	jr	Z, 00104$
	cp	a, #0x05
	jr	Z, 00106$
	cp	a, #0x08
	jr	Z, 00108$
	cp	a, #0x0d
	jr	Z, 00107$
	jr	00109$
;src/main.c:53: case KEY_ARROW_UP:    update_edit_cursor( 0, -1); break;
00102$:
	ld	e, #0xff
	xor	a, a
	jp	_update_edit_cursor
;src/main.c:54: case KEY_ARROW_DOWN:  update_edit_cursor( 0,  1); break;
00103$:
	ld	e, #0x01
	xor	a, a
	jp	_update_edit_cursor
;src/main.c:55: case KEY_ARROW_LEFT:  update_edit_cursor(-1,  0); break;
00104$:
	ld	e, #0x00
	ld	a, #0xff
	jp	_update_edit_cursor
;src/main.c:56: case KEY_ARROW_RIGHT: update_edit_cursor( 1,  0); break;
00105$:
	ld	e, #0x00
	ld	a, #0x01
	jp	_update_edit_cursor
;src/main.c:59: case KEY_HELP:
00106$:
;src/main.c:60: cls();
	call	_cls
;src/main.c:61: update_edit_cursor(1, 0);
	ld	e, #0x00
;src/main.c:62: break;
	ld	a, #0x01
	jp	_update_edit_cursor
;src/main.c:64: case KEY_ENTER:
00107$:
;src/main.c:65: gotoxy(0, posy() + 1);
	call	_posy
	ld	a, e
	inc	a
	ld	h, a
	ld	l, #0x00
	push	hl
	call	_gotoxy
	pop	hl
;src/main.c:66: update_edit_cursor(1, 0);
	ld	e, #0x00
;src/main.c:67: break;
	ld	a, #0x01
	jp	_update_edit_cursor
;src/main.c:69: case KEY_BACKSPACE:
00108$:
;src/main.c:70: gotoxy(posx() - 1, posy());
	call	_posy
	ld	b, e
	push	bc
	call	_posx
	pop	bc
	ld	a, e
	dec	a
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_gotoxy
	pop	hl
;src/main.c:71: putchar(' ');
	ld	a, #0x20
	push	af
	inc	sp
	call	_putchar
	inc	sp
;src/main.c:72: update_edit_cursor(-1, 0);
	ld	e, #0x00
;src/main.c:73: break;
	ld	a, #0xff
	jp	_update_edit_cursor
;src/main.c:76: default:
00109$:
;src/main.c:77: putchar(key);
	push	af
	inc	sp
	call	_putchar
	inc	sp
;src/main.c:78: update_edit_cursor(0, 0);
	xor	a, a
	ld	e, a
;src/main.c:80: }
;src/main.c:81: }
	jp	_update_edit_cursor
;src/main.c:84: static void gfx_init(void) {
;	---------------------------------
; Function gfx_init
; ---------------------------------
_gfx_init:
;src/main.c:87: set_sprite_data(0,1,cursor_tile);
	ld	de, #_cursor_tile
	push	de
	xor	a, a
	inc	a
	push	af
	call	_set_sprite_data
	add	sp, #4
;../../../include/gb/gb.h:1887: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
;../../../include/gb/gb.h:2001: shadow_OAM[nb].y = 0;
	xor	a, a
	ld	(hl-), a
	dec	hl
	ld	(hl), #0x00
;src/main.c:91: SPRITES_8x8;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfd
	ldh	(_LCDC_REG + 0), a
;src/main.c:92: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;src/main.c:93: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x40
	ldh	(_LCDC_REG + 0), a
;src/main.c:94: }
	ret
;src/main.c:97: void main(void) {
;	---------------------------------
; Function main
; ---------------------------------
_main::
	dec	sp
;src/main.c:99: uint8_t megaduck_model = duck_check_model(); // This must be called before any vram tiles are loaded or cleared
	call	_duck_check_model
	ldhl	sp,	#0
	ld	(hl), a
;src/main.c:100: bool megaduck_laptop_init_ok = duck_io_laptop_init();
	call	_duck_io_laptop_init
	ld	c, a
;src/main.c:102: gfx_init();
	push	bc
	call	_gfx_init
;src/main.c:103: printf("Initializing..\n");
	ld	de, #___str_1
	call	_puts
	pop	bc
;src/main.c:105: if (!megaduck_laptop_init_ok) {
	bit	0, c
	jr	NZ, 00105$
;src/main.c:109: "or Failed to Initialize");
	ld	de, #___str_2
	push	de
	call	_printf
	pop	hl
;src/main.c:110: while(1) {
00102$:
;src/main.c:111: vsync();
	call	_vsync
	jr	00102$
00105$:
;src/main.c:117: printf("Laptop Detected! >%hu<\n", megaduck_model);
	ldhl	sp,	#0
	ld	c, (hl)
	ld	b, #0x00
	push	bc
	ld	de, #___str_3
	push	de
	call	_printf
	add	sp, #4
;src/main.c:121: if (megaduck_model == MEGADUCK_LAPTOP_SPANISH)
	ldhl	sp,	#0
	ld	a, (hl)
	dec	a
	jr	NZ, 00109$
;src/main.c:122: printf("Spanish model\n");
	ld	de, #___str_5
	call	_puts
	jr	00110$
00109$:
;src/main.c:123: else if (megaduck_model == MEGADUCK_LAPTOP_GERMAN)
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x02
	jr	NZ, 00110$
;src/main.c:124: printf("German model\n");
	ld	de, #___str_7
	call	_puts
00110$:
;src/main.c:127: update_edit_cursor(1,1);
	ld	a,#0x01
	ld	e,a
	call	_update_edit_cursor
;src/main.c:130: while(1) {
00116$:
;src/main.c:131: vsync();
	call	_vsync
;src/main.c:135: if (sys_time & 0x01u) {
	ld	a, (_sys_time)
	ld	hl, #_sys_time + 1
	ld	c, (hl)
	rrca
	jr	NC, 00116$
;src/main.c:137: if (duck_io_poll_keyboard(&keydata)) {
	ld	de, #_keydata
	call	_duck_io_poll_keyboard
	bit	0,a
	jr	Z, 00116$
;src/main.c:139: char current_key = duck_io_process_key_data(&keydata, megaduck_model);
	ldhl	sp,	#0
	ld	a, (hl)
	ld	de, #_keydata
	call	_duck_io_process_key_data
;src/main.c:141: use_key_data(current_key);
	call	_use_key_data
	jr	00116$
;src/main.c:145: }
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
___str_3:
	.ascii "Laptop Detected! >%hu<"
	.db 0x0a
	.db 0x00
___str_5:
	.ascii "Spanish model"
	.db 0x00
___str_7:
	.ascii "German model"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
