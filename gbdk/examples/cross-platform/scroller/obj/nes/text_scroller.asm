;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module text_scroller
	
;; Ordering of segments for the linker.
	.area _ZP      (PAG)
	.area _OSEG    (PAG, OVR)
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _CODE
	.area _XINIT
	.area _DATA
	.area _DATA
	.area _BSS
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scroller_text
	.globl _scanline_offsets_tbl
	.globl _shake_tbl
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
	.globl _display_on
	.globl _vsync
	.globl _set_interrupts
	.globl _add_LCD
	.globl _scroller_next_char
	.globl _scroller_x
	.globl _scanline_offsets
	.globl _limit
	.globl _base
	.globl _scroller_vram_addr
	.globl _OAMDMA
	.globl _PPUDATA
	.globl _PPUADDR
	.globl _PPUSCROLL
	.globl _OAMDATA
	.globl _OAMADDR
	.globl _PPUSTATUS
	.globl _PPUMASK
	.globl _PPUCTRL
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area _ZP      (PAG)
_main_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area _BSS
_PPUCTRL	=	0x2000
_PPUMASK	=	0x2001
_PPUSTATUS	=	0x2002
_OAMADDR	=	0x2003
_OAMDATA	=	0x2004
_PPUSCROLL	=	0x2005
_PPUADDR	=	0x2006
_PPUDATA	=	0x2007
_OAMDMA	=	0x4014
_scroller_vram_addr::
	.ds 2
_base::
	.ds 2
_limit::
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area _DATA
_scanline_offsets::
	.ds 2
_scroller_x::
	.ds 1
_scroller_next_char::
	.ds 2
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
;------------------------------------------------------------
;Allocation info for local variables in function 'scanline_isr'
;------------------------------------------------------------
;	src/text_scroller.c: 20: void scanline_isr(void) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function scanline_isr
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_scanline_isr:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/text_scroller.c: 23: switch (LYC_REG) {
;	genAssign
;	genAssignLit
;	genCopy
	lda	__lcd_scanline
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	genCmpEQorNE
	beq	00101$
;	Raw cost for generated ic 3 : (5, 5.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCmpEQorNE
	cmp	#0x76
	beq	00102$
;	Raw cost for generated ic 5 : (7, 7.600000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=0.750000
;	genCmpEQorNE
	cmp	#0x7f
	beq	00103$
;	Raw cost for generated ic 7 : (7, 7.600000) count=0.562500
;	skipping generated iCode
;	Raw cost for generated ic 8 : (0, 0.000000) count=0.562500
;	genGoto
	rts
;	Raw cost for generated ic 9 : (3, 3.000000) count=0.421875
;	src/text_scroller.c: 24: case 0: 
;	genLabel
00101$:
;	Raw cost for generated ic 10 : (0, 0.000000) count=0.250000
;	src/text_scroller.c: 25: SCX_REG = 0;
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
	stx	_bkg_scroll_x
;	Raw cost for generated ic 11 : (5, 7.000000) count=0.250000
;	src/text_scroller.c: 26: SCY_REG = 0;
;	genAssign
;	genAssignLit
;	genCopy
	stx	_bkg_scroll_y
;	Raw cost for generated ic 12 : (3, 5.000000) count=0.250000
;	src/text_scroller.c: 27: LYC_REG = SCROLL_POS_PIX_START;
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x76
	stx	__lcd_scanline
;	Raw cost for generated ic 13 : (5, 6.000000) count=0.250000
;	src/text_scroller.c: 28: break;
;	genGoto
	rts
;	Raw cost for generated ic 14 : (3, 3.000000) count=0.250000
;	src/text_scroller.c: 29: case SCROLL_POS_PIX_START:
;	genLabel
00102$:
;	Raw cost for generated ic 15 : (0, 0.000000) count=0.187500
;	src/text_scroller.c: 30: SCX_REG = scroller_x;
;	genAssign
;	genAssignLit
;	genCopy
	lda	_scroller_x
	sta	_bkg_scroll_x
;	Raw cost for generated ic 16 : (6, 9.000000) count=0.187500
;	src/text_scroller.c: 31: SCY_REG = shake_tbl[(scroller_x >> 1) & 7];
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 17 : (0, 0.000000) count=0.187500
;	genRightShift
;	genRightShiftLiteral
;	genrshOne
	lda	_scroller_x
	lsr	a
;	Raw cost for generated ic 18 : (4, 6.000000) count=0.187500
;	genCast
;	genCopy
;	Raw cost for generated ic 19 : (0, 0.000000) count=0.187500
;	genAnd
	and	#0x07
;	Raw cost for generated ic 20 : (2, 2.000000) count=0.187500
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 21 : (2, 2.000000) count=0.187500
;	genPointerGet
	tay
	lda	(_shake_tbl+0+0x0000),y
	sta	_bkg_scroll_y
;	Raw cost for generated ic 22 : (7, 11.000000) count=0.187500
;	src/text_scroller.c: 32: LYC_REG = SCROLL_POS_PIX_END;
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x7f
	stx	__lcd_scanline
;	Raw cost for generated ic 24 : (5, 6.000000) count=0.187500
;	src/text_scroller.c: 33: break;
;	genGoto
	rts
;	Raw cost for generated ic 25 : (3, 3.000000) count=0.187500
;	src/text_scroller.c: 34: case SCROLL_POS_PIX_END:
;	genLabel
00103$:
;	Raw cost for generated ic 26 : (0, 0.000000) count=0.140625
;	src/text_scroller.c: 35: SCX_REG = SCY_REG = LYC_REG = 0;
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
	stx	__lcd_scanline
;	Raw cost for generated ic 27 : (5, 6.000000) count=0.140625
;	genAssign
;	genAssignLit
;	genCopy
	stx	_bkg_scroll_y
;	Raw cost for generated ic 28 : (3, 5.000000) count=0.140625
;	genAssign
;	genAssignLit
;	genCopy
	stx	_bkg_scroll_x
;	Raw cost for generated ic 29 : (3, 5.000000) count=0.140625
;	src/text_scroller.c: 37: }
;	genLabel
;	Raw cost for generated ic 32 : (0, 0.000000) count=1.000000
;	src/text_scroller.c: 47: }
;	genEndFunction
	rts
;	Raw cost for generated ic 33 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc0         Allocated with name '_main_sloc0_1_0'
;------------------------------------------------------------
;	src/text_scroller.c: 58: void main(void) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/text_scroller.c: 59: DISPLAY_OFF;
;	genCall
	jsr	_display_off
;	Raw cost for generated ic 2 : (3, 6.000000) count=1.000000
;	src/text_scroller.c: 61: font_init();
;	genCall
	jsr	_font_init
;	Raw cost for generated ic 3 : (3, 6.000000) count=1.000000
;	src/text_scroller.c: 62: font_set(font_load(font_ibm));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_font_ibm
	lda	#_font_ibm
	jsr	_font_load
;	assignResultValue
;	Raw cost for generated ic 7 : (7, 10.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_font_set
;	Raw cost for generated ic 9 : (3, 6.000000) count=1.000000
;	src/text_scroller.c: 64: fill_bkg_rect(0, 0, DEVICE_SCREEN_WIDTH, DEVICE_SCREEN_HEIGHT, '*' - ' ');
;	genAssign
;	genAssignLit
	ldx	#0x20
	stx	_fill_bkg_rect_PARM_3
;	Raw cost for generated ic 12 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x1e
	stx	_fill_bkg_rect_PARM_4
;	Raw cost for generated ic 13 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x0a
	stx	_fill_bkg_rect_PARM_5
;	Raw cost for generated ic 14 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x00
	tax
	jsr	_fill_bkg_rect
;	Raw cost for generated ic 15 : (6, 10.000000) count=1.000000
;	src/text_scroller.c: 65: DISPLAY_ON;
;	genCall
	jsr	_display_on
;	Raw cost for generated ic 16 : (3, 6.000000) count=1.000000
;	src/text_scroller.c: 67: printf(" Scrolling %d chars", sizeof(scroller_text) - 1);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#0x01
	pha
	lda	#0x68
	pha
;	Raw cost for generated ic 19 : (6, 10.000000) count=1.000000
;	genIpush
	lda	#>___str_0
	pha
	lda	#___str_0
	pha
;	Raw cost for generated ic 20 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 21 : (7, 22.000000) count=1.000000
;	src/text_scroller.c: 74: }
;	genCritical
	php
	sei
;	Raw cost for generated ic 22 : (2, 5.000000) count=1.000000
;	src/text_scroller.c: 70: add_LCD(scanline_isr);
;	Raw cost for generated ic 23 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>(_scanline_isr)
	lda	#(_scanline_isr)
	jsr	_add_LCD
;	Raw cost for generated ic 24 : (7, 10.000000) count=1.000000
;	genEndCritical
	plp
;	Raw cost for generated ic 25 : (1, 4.000000) count=1.000000
;	src/text_scroller.c: 79: set_interrupts(VBL_IFLAG | LCD_IFLAG);
;	Raw cost for generated ic 26 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x03
	jsr	_set_interrupts
;	Raw cost for generated ic 27 : (5, 8.000000) count=1.000000
;	src/text_scroller.c: 81: HIDE_LEFT_COLUMN;    
;	genAnd
	lda	_shadow_PPUMASK
	and	#0xf9
	sta	_shadow_PPUMASK
;	Raw cost for generated ic 28 : (8, 10.000000) count=1.000000
;	src/text_scroller.c: 82: base = (uint8_t *)((uint16_t)get_bkg_xy_addr(0, SCROLL_POS) & (DEVICE_SCREEN_MAP_ENTRY_SIZE==1?0xffe0:0xffc0));
;	Raw cost for generated ic 30 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 31 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x00
	ldx	#0x0f
	jsr	_get_bkg_xy_addr
;	assignResultValue
;	Raw cost for generated ic 32 : (7, 10.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 33 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 34 : (0, 0.000000) count=1.000000
;	genAnd
	and	#0xe0
;	Raw cost for generated ic 35 : (2, 2.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 36 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	sta	*_main_sloc0_1_0
	stx	*(_main_sloc0_1_0 + 1)
	sta	_base
	stx	(_base + 1)
;	Raw cost for generated ic 38 : (10, 14.000000) count=1.000000
;	src/text_scroller.c: 83: limit = base + (DEVICE_SCREEN_BUFFER_WIDTH * DEVICE_SCREEN_MAP_ENTRY_SIZE);
;	genPlus
;	genPlusIncr
	ldx	*(_main_sloc0_1_0 + 1)
	lda	*_main_sloc0_1_0
	clc
	adc	#0x20
	bcc	00144$
	inx
00144$:
;	Raw cost for generated ic 39 : (10, 14.600000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	sta	_limit
	stx	(_limit + 1)
;	Raw cost for generated ic 41 : (6, 8.000000) count=1.000000
;	src/text_scroller.c: 85: scroller_vram_addr = base + ((DEVICE_SCREEN_X_OFFSET + DEVICE_SCREEN_WIDTH) * DEVICE_SCREEN_MAP_ENTRY_SIZE);
;	genAssign
;	genAssignLit
;	genCopy
	sta	_scroller_vram_addr
	stx	(_scroller_vram_addr + 1)
;	Raw cost for generated ic 44 : (6, 8.000000) count=1.000000
;	src/text_scroller.c: 86: if (scroller_vram_addr >= limit) scroller_vram_addr = base;
;	genCmp
	lda	_scroller_vram_addr
	sec
	sbc	_limit
	lda	(_scroller_vram_addr + 1)
	sbc	(_limit + 1)
	bcc	00102$
;	Raw cost for generated ic 45 : (18, 23.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 46 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	*(_main_sloc0_1_0 + 1)
	sta	(_scroller_vram_addr + 1)
	lda	*_main_sloc0_1_0
	sta	_scroller_vram_addr
;	Raw cost for generated ic 49 : (10, 14.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 51 : (0, 0.000000) count=1.000000
;	src/text_scroller.c: 88: set_vram_byte(scroller_vram_addr, *scroller_next_char - 0x20);
;	genPointerGet
;	setupDPTR
	lda	_scroller_next_char
	sta	*(DPTR+0)
	lda	(_scroller_next_char + 1)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 53 : (14, 21.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 54 : (0, 0.000000) count=1.000000
;	genMinus
;	genMinusDec
	sec
	sbc	#0x20
	sta	_set_vram_byte_PARM_2
;	Raw cost for generated ic 55 : (6, 8.000000) count=1.000000
;	Raw cost for generated ic 56 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	(_scroller_vram_addr + 1)
	lda	_scroller_vram_addr
	jsr	_set_vram_byte
;	Raw cost for generated ic 58 : (9, 14.000000) count=1.000000
;	src/text_scroller.c: 90: while (1) {
;	genLabel
00110$:
;	Raw cost for generated ic 61 : (0, 0.000000) count=72.000000
;	src/text_scroller.c: 91: scroller_x++;
;	genPlus
;	genPlusIncr
	inc	_scroller_x
;	Raw cost for generated ic 63 : (3, 7.000000) count=72.000000
;	src/text_scroller.c: 92: if ((scroller_x & 0x07) == 0) {
;	genCast
;	genCopy
	lda	_scroller_x
;	Raw cost for generated ic 66 : (3, 4.000000) count=72.000000
;	genAnd
	and	#0x07
;	genIfxJump : z
	bne	00108$
;	Raw cost for generated ic 67 : (7, 7.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 68 : (0, 0.000000) count=72.000000
;	src/text_scroller.c: 94: scroller_next_char++;
;	genPlus
;	genPlusIncr
	inc	_scroller_next_char
	bne	00147$
	inc	(_scroller_next_char + 1)
00147$:
;	Raw cost for generated ic 72 : (8, 14.600000) count=54.000000
;	src/text_scroller.c: 95: if (*scroller_next_char == 0) scroller_next_char = scroller_text;
;	genPointerGet
;	setupDPTR
	lda	_scroller_next_char
	sta	*(DPTR+0)
	lda	(_scroller_next_char + 1)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 76 : (14, 21.000000) count=54.000000
;	genIfx
;	genIfxJump : z
	bne	00104$
;	Raw cost for generated ic 77 : (5, 5.600000) count=54.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 80 : (0, 0.000000) count=40.500000
;	genCast
;	genCopy
	lda	#>_scroller_text
	sta	(_scroller_next_char + 1)
	lda	#_scroller_text
	sta	_scroller_next_char
;	Raw cost for generated ic 81 : (10, 12.000000) count=40.500000
;	genLabel
00104$:
;	Raw cost for generated ic 84 : (0, 0.000000) count=54.000000
;	src/text_scroller.c: 98: scroller_vram_addr += DEVICE_SCREEN_MAP_ENTRY_SIZE;
;	genPlus
;	genPlusIncr
	inc	_scroller_vram_addr
	bne	00150$
	inc	(_scroller_vram_addr + 1)
00150$:
;	Raw cost for generated ic 85 : (8, 14.600000) count=54.000000
;	src/text_scroller.c: 99: if (scroller_vram_addr >= limit) scroller_vram_addr = base;
;	genCmp
	lda	_scroller_vram_addr
	sec
	sbc	_limit
	lda	(_scroller_vram_addr + 1)
	sbc	(_limit + 1)
	bcc	00106$
;	Raw cost for generated ic 88 : (18, 23.600000) count=54.000000
;	skipping generated iCode
;	Raw cost for generated ic 89 : (0, 0.000000) count=54.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	(_base + 1)
	sta	(_scroller_vram_addr + 1)
	lda	_base
	sta	_scroller_vram_addr
;	Raw cost for generated ic 92 : (12, 16.000000) count=40.500000
;	genLabel
00106$:
;	Raw cost for generated ic 94 : (0, 0.000000) count=54.000000
;	src/text_scroller.c: 102: set_vram_byte(scroller_vram_addr, *scroller_next_char - 0x20);
;	genPointerGet
;	setupDPTR
	lda	_scroller_next_char
	sta	*(DPTR+0)
	lda	(_scroller_next_char + 1)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 96 : (14, 21.000000) count=54.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 97 : (0, 0.000000) count=54.000000
;	genMinus
;	genMinusDec
	sec
	sbc	#0x20
	sta	_set_vram_byte_PARM_2
;	Raw cost for generated ic 98 : (6, 8.000000) count=54.000000
;	Raw cost for generated ic 99 : (0, 0.000000) count=54.000000
;	genCall
;	genSend
	ldx	(_scroller_vram_addr + 1)
	lda	_scroller_vram_addr
	jsr	_set_vram_byte
;	Raw cost for generated ic 101 : (9, 14.000000) count=54.000000
;	genLabel
00108$:
;	Raw cost for generated ic 102 : (0, 0.000000) count=72.000000
;	src/text_scroller.c: 104: vsync();        
;	genCall
	jsr	_vsync
;	Raw cost for generated ic 103 : (3, 6.000000) count=72.000000
;	genGoto
	jmp	00110$
;	Raw cost for generated ic 104 : (3, 3.000000) count=72.000000
;	genLabel
;	Raw cost for generated ic 106 : (0, 0.000000) count=0.000000
;	src/text_scroller.c: 106: }
;	genEndFunction
	rts
;	Raw cost for generated ic 107 : (1, 6.000000) count=0.000000
	.area _CODE
_shake_tbl:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0xef	; 239
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
	.area _XINIT
__xinit__scanline_offsets:
	.dw _scanline_offsets_tbl
__xinit__scroller_x:
	.db #0x00	; 0
__xinit__scroller_next_char:
	.dw _scroller_text
	.area _CABS    (ABS)
