;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module text_scroller
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _scanline_isr
	.globl _printf
	.globl _font_set
	.globl _font_load
	.globl _font_init
	.globl _fill_bkg_rect
	.globl _get_bkg_xy_addr
	.globl _set_vram_byte
	.globl _display_off
	.globl _vsync
	.globl _set_interrupts
	.globl _add_LCD
	.globl _scroller_next_char
	.globl _scroller_x
	.globl _scanline_offsets
	.globl _limit
	.globl _base
	.globl _scroller_vram_addr
	.globl _scroller_text
	.globl _scanline_offsets_tbl
	.globl _shake_tbl
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_scroller_vram_addr::
	.ds 2
_base::
	.ds 2
_limit::
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_scanline_offsets::
	.ds 2
_scroller_x::
	.ds 1
_scroller_next_char::
	.ds 2
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
;src/text_scroller.c:20: void scanline_isr(void) {
;	---------------------------------
; Function scanline_isr
; ---------------------------------
_scanline_isr::
;src/text_scroller.c:23: switch (LYC_REG) {
	ldh	a, (_LYC_REG + 0)
	or	a, a
	jr	Z, 00101$
	cp	a, #0x76
	jr	Z, 00102$
	sub	a, #0x7f
	jr	Z, 00103$
	ret
;src/text_scroller.c:24: case 0: 
00101$:
;src/text_scroller.c:25: SCX_REG = 0;
	xor	a, a
	ldh	(_SCX_REG + 0), a
;src/text_scroller.c:26: SCY_REG = 0;
	xor	a, a
	ldh	(_SCY_REG + 0), a
;src/text_scroller.c:27: LYC_REG = SCROLL_POS_PIX_START;
	ld	a, #0x76
	ldh	(_LYC_REG + 0), a
;src/text_scroller.c:28: break;
	ret
;src/text_scroller.c:29: case SCROLL_POS_PIX_START:
00102$:
;src/text_scroller.c:30: SCX_REG = scroller_x;
	ld	hl, #_scroller_x
	ld	a, (hl)
	ldh	(_SCX_REG + 0), a
;src/text_scroller.c:31: SCY_REG = shake_tbl[(scroller_x >> 1) & 7];
	ld	bc, #_shake_tbl+0
	ld	a, (hl)
	srl	a
	and	a, #0x07
	ld	l, a
	ld	h, #0x00
	add	hl, bc
	ld	a, (hl)
	ldh	(_SCY_REG + 0), a
;src/text_scroller.c:32: LYC_REG = SCROLL_POS_PIX_END;
	ld	a, #0x7f
	ldh	(_LYC_REG + 0), a
;src/text_scroller.c:33: break;
	ret
;src/text_scroller.c:34: case SCROLL_POS_PIX_END:
00103$:
;src/text_scroller.c:35: SCX_REG = SCY_REG = LYC_REG = 0;
	xor	a, a
	ldh	(_LYC_REG + 0), a
	xor	a, a
	ldh	(_SCY_REG + 0), a
	xor	a, a
	ldh	(_SCX_REG + 0), a
;src/text_scroller.c:37: }
;src/text_scroller.c:47: }
	ret
_shake_tbl:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
_scanline_offsets_tbl:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x00	; 0
;src/text_scroller.c:58: void main(void) {
;	---------------------------------
; Function main
; ---------------------------------
_main::
;src/text_scroller.c:59: DISPLAY_OFF;
	call	_display_off
;src/text_scroller.c:61: font_init();
	call	_font_init
;src/text_scroller.c:62: font_set(font_load(font_ibm));
	ld	de, #_font_ibm
	push	de
	call	_font_load
	pop	hl
	push	de
	call	_font_set
	pop	hl
;src/text_scroller.c:64: fill_bkg_rect(0, 0, DEVICE_SCREEN_WIDTH, DEVICE_SCREEN_HEIGHT, '*' - ' ');
	ld	hl, #0xa12
	push	hl
	ld	a, #0x14
	push	af
	inc	sp
	xor	a, a
	rrca
	push	af
	call	_fill_bkg_rect
	add	sp, #5
;src/text_scroller.c:65: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;src/text_scroller.c:67: printf(" Scrolling %d chars", sizeof(scroller_text) - 1);
	ld	de, #0x0168
	push	de
	ld	de, #___str_0
	push	de
	call	_printf
	add	sp, #4
;src/text_scroller.c:74: }
	di
;src/text_scroller.c:70: add_LCD(scanline_isr);
	ld	de, #_scanline_isr
	call	_add_LCD
;src/text_scroller.c:72: STAT_REG |= STATF_LYC; LYC_REG = 0;
	ldh	a, (_STAT_REG + 0)
	or	a, #0x02
	ldh	(_STAT_REG + 0), a
	xor	a, a
	ldh	(_LYC_REG + 0), a
	ei
;src/text_scroller.c:79: set_interrupts(VBL_IFLAG | LCD_IFLAG);
	ld	a, #0x03
	call	_set_interrupts
;src/text_scroller.c:82: base = (uint8_t *)((uint16_t)get_bkg_xy_addr(0, SCROLL_POS) & (DEVICE_SCREEN_MAP_ENTRY_SIZE==1?0xffe0:0xffc0));
	ld	hl, #0xf00
	push	hl
	call	_get_bkg_xy_addr
	pop	hl
	ld	a, e
	and	a, #0xe0
	ld	hl, #_base
	ld	(hl+), a
;src/text_scroller.c:83: limit = base + (DEVICE_SCREEN_BUFFER_WIDTH * DEVICE_SCREEN_MAP_ENTRY_SIZE);
	ld	a, d
	ld	(hl-), a
	ld	a, (hl)
	add	a, #0x20
	ld	(#_limit),a
	ld	a, (#_base + 1)
	adc	a, #0x00
	ld	(#_limit + 1),a
;src/text_scroller.c:85: scroller_vram_addr = base + ((DEVICE_SCREEN_X_OFFSET + DEVICE_SCREEN_WIDTH) * DEVICE_SCREEN_MAP_ENTRY_SIZE);
	ld	a, (#_base)
	add	a, #0x14
	ld	(#_scroller_vram_addr),a
	ld	a, (#_base + 1)
	adc	a, #0x00
	ld	(#_scroller_vram_addr + 1),a
;src/text_scroller.c:86: if (scroller_vram_addr >= limit) scroller_vram_addr = base;
	ld	de, #_scroller_vram_addr
	ld	hl, #_limit
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	jr	C, 00102$
	ld	a, (#_base)
	ld	(#_scroller_vram_addr),a
	ld	a, (#_base + 1)
	ld	(#_scroller_vram_addr + 1),a
00102$:
;src/text_scroller.c:88: set_vram_byte(scroller_vram_addr, *scroller_next_char - 0x20);
	ld	a, (_scroller_next_char)
	ld	hl, #_scroller_next_char + 1
	ld	h, (hl)
	ld	l, a
	ld	a, (hl)
	add	a, #0xe0
	ld	hl, #_scroller_vram_addr
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	call	_set_vram_byte
;src/text_scroller.c:90: while (1) {
00110$:
;src/text_scroller.c:91: scroller_x++;
	ld	hl, #_scroller_x
	inc	(hl)
;src/text_scroller.c:92: if ((scroller_x & 0x07) == 0) {
	ld	a, (hl)
	and	a, #0x07
	jr	NZ, 00108$
;src/text_scroller.c:94: scroller_next_char++;
	ld	hl, #_scroller_next_char
	inc	(hl)
	jr	NZ, 00153$
	inc	hl
	inc	(hl)
00153$:
;src/text_scroller.c:95: if (*scroller_next_char == 0) scroller_next_char = scroller_text;
	ld	a, (_scroller_next_char)
	ld	hl, #_scroller_next_char + 1
	ld	h, (hl)
	ld	l, a
	ld	a, (hl)
	or	a, a
	jr	NZ, 00104$
	ld	hl, #_scroller_next_char
	ld	a, #<(_scroller_text)
	ld	(hl+), a
	ld	(hl), #>(_scroller_text)
00104$:
;src/text_scroller.c:98: scroller_vram_addr += DEVICE_SCREEN_MAP_ENTRY_SIZE;
	ld	hl, #_scroller_vram_addr
	inc	(hl)
	jr	NZ, 00154$
	inc	hl
	inc	(hl)
00154$:
;src/text_scroller.c:99: if (scroller_vram_addr >= limit) scroller_vram_addr = base;
	ld	de, #_scroller_vram_addr
	ld	hl, #_limit
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	jr	C, 00106$
	ld	a, (#_base)
	ld	(#_scroller_vram_addr),a
	ld	a, (#_base + 1)
	ld	(#_scroller_vram_addr + 1),a
00106$:
;src/text_scroller.c:102: set_vram_byte(scroller_vram_addr, *scroller_next_char - 0x20);
	ld	a, (_scroller_next_char)
	ld	hl, #_scroller_next_char + 1
	ld	h, (hl)
	ld	l, a
	ld	a, (hl)
	add	a, #0xe0
	ld	hl, #_scroller_vram_addr
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	call	_set_vram_byte
00108$:
;src/text_scroller.c:104: vsync();        
	call	_vsync
;src/text_scroller.c:106: }
	jr	00110$
_scroller_text:
	.ascii "This is a text scroller demo for GBDK-2020. You can use idea"
	.ascii "s, that are shown in this demo, to make different parallax e"
	.ascii "ffects, scrolling of tilemaps which are larger than 32x32 ti"
	.ascii "les and TEXT SCROLLERS, of course! Need to write something e"
	.ascii "lse to make this text longer than 256 characters. The quick "
	.ascii "red fox jumps over the lazy brown dog. 0123456789.          "
	.db 0x00
___str_0:
	.ascii " Scrolling %d chars"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
__xinit__scanline_offsets:
	.dw _scanline_offsets_tbl
__xinit__scroller_x:
	.db #0x00	; 0
__xinit__scroller_next_char:
	.dw _scroller_text
	.area _CABS (ABS)
