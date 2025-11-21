;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module joytest
	
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
	.globl _main
	.globl _reset_object_pos
	.globl _draw_disabled
	.globl _draw_buttons
	.globl _fill_bkg_rect
	.globl _scroll_sprite
	.globl _move_sprite
	.globl _set_sprite_tile
	.globl _set_sprite_data
	.globl _set_bkg_based_tiles
	.globl _set_bkg_data
	.globl _vsync
	.globl _joypad_ex
	.globl _joypad_init
	.globl _joypad
	.globl _joy
	.globl _old_joy
	.globl _isSGB
	.globl _toggle
	.globl _joypads
	.globl _old_joypads
	.globl _draw_buttons_PARM_3
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
_draw_buttons_sloc0_1_0:
	.ds 1
_draw_disabled_sloc0_1_0:
	.ds 1
_main_sloc0_1_0:
	.ds 1
_main_sloc1_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_reset_object_pos_sloc0_1_0:
	.ds 1
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
_draw_buttons_PARM_3:
	.ds 1
_draw_buttons_x_10000_99:
	.ds 1
_draw_buttons_state_10000_99:
	.ds 1
_draw_disabled_y_10000_101:
	.ds 1
_old_joypads::
	.ds 5
_joypads::
	.ds 5
_main_j_60000_125:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area _DATA
_toggle::
	.ds 1
_isSGB::
	.ds 1
_old_joy::
	.ds 1
_joy::
	.ds 1
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
;Allocation info for local variables in function 'draw_buttons'
;------------------------------------------------------------
;sloc0         Allocated with name '_draw_buttons_sloc0_1_0'
;y             Allocated with name '_draw_buttons_PARM_3'
;x             Allocated with name '_draw_buttons_x_10000_99'
;state         Allocated with name '_draw_buttons_state_10000_99'
;------------------------------------------------------------
;	src/joytest.c: 13: void draw_buttons(uint8_t state, uint8_t x, uint8_t y) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function draw_buttons
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_draw_buttons:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_draw_buttons_state_10000_99
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	genReceive
	stx	_draw_buttons_x_10000_99
;	Raw cost for generated ic 3 : (3, 4.000000) count=1.000000
;	src/joytest.c: 14: set_bkg_based_tiles(x,      y, 2, 2, (state & J_UP)     ? pressed_buttons[0] : normal_buttons[0], 1);
;	genAnd
	lda	_draw_buttons_state_10000_99
	and	#0x08
;	genIfxJump : z
	beq	00103$
;	Raw cost for generated ic 5 : (10, 11.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genAddrOf
	lda	#_pressed_buttons
	ldx	#>_pressed_buttons
;	Raw cost for generated ic 7 : (4, 4.000000) count=0.750000
;	genGoto
	jmp	00104$
;	Raw cost for generated ic 9 : (3, 3.000000) count=0.750000
;	genLabel
00103$:
;	Raw cost for generated ic 10 : (0, 0.000000) count=0.250000
;	genAddrOf
	lda	#_normal_buttons
	ldx	#>_normal_buttons
;	Raw cost for generated ic 11 : (4, 4.000000) count=0.250000
;	genLabel
00104$:
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	_set_bkg_based_tiles_PARM_5
	stx	(_set_bkg_based_tiles_PARM_5 + 1)
;	Raw cost for generated ic 14 : (6, 8.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_set_bkg_based_tiles_PARM_3
;	Raw cost for generated ic 17 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	_set_bkg_based_tiles_PARM_4
;	Raw cost for generated ic 18 : (3, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
	dex
	stx	_set_bkg_based_tiles_PARM_6
;	Raw cost for generated ic 20 : (4, 6.000000) count=1.000000
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	_draw_buttons_x_10000_99
	ldx	_draw_buttons_PARM_3
	jsr	_set_bkg_based_tiles
;	Raw cost for generated ic 21 : (9, 14.000000) count=1.000000
;	src/joytest.c: 15: set_bkg_based_tiles(x + 2,  y, 2, 2, (state & J_DOWN)   ? pressed_buttons[1] : normal_buttons[1], 1);
;	genCast
;	genCopy
	lda	_draw_buttons_x_10000_99
;	Raw cost for generated ic 22 : (5, 7.000000) count=1.000000
;	genPlus
;	genPlusIncr
	sta	*_draw_buttons_sloc0_1_0
	clc
	adc	#0x02
	tay
;	Raw cost for generated ic 23 : (6, 9.000000) count=1.000000
;	genAnd
	lda	_draw_buttons_state_10000_99
	and	#0x04
;	genIfxJump : z
	beq	00105$
;	Raw cost for generated ic 25 : (10, 11.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 26 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 27 : (0, 0.000000) count=0.750000
;	genPlus
;	genPlusIncr
	ldx	#>_pressed_buttons
	lda	#_pressed_buttons
	clc
	adc	#0x04
	bcc	00106$
	inx
;	Raw cost for generated ic 28 : (10, 12.600000) count=0.750000
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 30 : (3, 3.000000) count=0.750000
;	genLabel
00105$:
;	Raw cost for generated ic 31 : (0, 0.000000) count=0.250000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 32 : (0, 0.000000) count=0.250000
;	genPlus
;	genPlusIncr
	ldx	#>_normal_buttons
	lda	#_normal_buttons
	clc
	adc	#0x04
	bcc	00172$
	inx
00172$:
;	Raw cost for generated ic 33 : (10, 12.600000) count=0.250000
;	genLabel
00106$:
;	Raw cost for generated ic 35 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	_set_bkg_based_tiles_PARM_5
	stx	(_set_bkg_based_tiles_PARM_5 + 1)
;	Raw cost for generated ic 36 : (6, 8.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_set_bkg_based_tiles_PARM_3
;	Raw cost for generated ic 39 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	_set_bkg_based_tiles_PARM_4
;	Raw cost for generated ic 40 : (3, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
	dex
	stx	_set_bkg_based_tiles_PARM_6
;	Raw cost for generated ic 42 : (4, 6.000000) count=1.000000
;	Raw cost for generated ic 37 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 38 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tya
	ldx	_draw_buttons_PARM_3
	jsr	_set_bkg_based_tiles
;	Raw cost for generated ic 43 : (7, 12.000000) count=1.000000
;	src/joytest.c: 16: set_bkg_based_tiles(x + 4,  y, 2, 2, (state & J_LEFT)   ? pressed_buttons[2] : normal_buttons[2], 1);
;	genPlus
;	genPlusIncr
	lda	*_draw_buttons_sloc0_1_0
	clc
	adc	#0x04
	tay
;	Raw cost for generated ic 45 : (6, 9.000000) count=1.000000
;	genAnd
	lda	_draw_buttons_state_10000_99
	and	#0x02
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 47 : (10, 11.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 48 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 49 : (0, 0.000000) count=0.750000
;	genPlus
;	genPlusIncr
	ldx	#>_pressed_buttons
	lda	#_pressed_buttons
	clc
	adc	#0x08
	bcc	00108$
	inx
;	Raw cost for generated ic 50 : (10, 12.600000) count=0.750000
;	genGoto
	jmp	00108$
;	Raw cost for generated ic 52 : (3, 3.000000) count=0.750000
;	genLabel
00107$:
;	Raw cost for generated ic 53 : (0, 0.000000) count=0.250000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 54 : (0, 0.000000) count=0.250000
;	genPlus
;	genPlusIncr
	ldx	#>_normal_buttons
	lda	#_normal_buttons
	clc
	adc	#0x08
	bcc	00176$
	inx
00176$:
;	Raw cost for generated ic 55 : (10, 12.600000) count=0.250000
;	genLabel
00108$:
;	Raw cost for generated ic 57 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	_set_bkg_based_tiles_PARM_5
	stx	(_set_bkg_based_tiles_PARM_5 + 1)
;	Raw cost for generated ic 58 : (6, 8.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_set_bkg_based_tiles_PARM_3
;	Raw cost for generated ic 61 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	_set_bkg_based_tiles_PARM_4
;	Raw cost for generated ic 62 : (3, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
	dex
	stx	_set_bkg_based_tiles_PARM_6
;	Raw cost for generated ic 64 : (4, 6.000000) count=1.000000
;	Raw cost for generated ic 59 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 60 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tya
	ldx	_draw_buttons_PARM_3
	jsr	_set_bkg_based_tiles
;	Raw cost for generated ic 65 : (7, 12.000000) count=1.000000
;	src/joytest.c: 17: set_bkg_based_tiles(x + 6,  y, 2, 2, (state & J_RIGHT)  ? pressed_buttons[3] : normal_buttons[3], 1);
;	genPlus
;	genPlusIncr
	lda	*_draw_buttons_sloc0_1_0
	clc
	adc	#0x06
	tay
;	Raw cost for generated ic 67 : (6, 9.000000) count=1.000000
;	genAnd
	lda	_draw_buttons_state_10000_99
	and	#0x01
;	genIfxJump : z
	beq	00109$
;	Raw cost for generated ic 69 : (10, 11.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 70 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 71 : (0, 0.000000) count=0.750000
;	genPlus
;	genPlusIncr
	ldx	#>_pressed_buttons
	lda	#_pressed_buttons
	clc
	adc	#0x0c
	bcc	00110$
	inx
;	Raw cost for generated ic 72 : (10, 12.600000) count=0.750000
;	genGoto
	jmp	00110$
;	Raw cost for generated ic 74 : (3, 3.000000) count=0.750000
;	genLabel
00109$:
;	Raw cost for generated ic 75 : (0, 0.000000) count=0.250000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 76 : (0, 0.000000) count=0.250000
;	genPlus
;	genPlusIncr
	ldx	#>_normal_buttons
	lda	#_normal_buttons
	clc
	adc	#0x0c
	bcc	00180$
	inx
00180$:
;	Raw cost for generated ic 77 : (10, 12.600000) count=0.250000
;	genLabel
00110$:
;	Raw cost for generated ic 79 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	_set_bkg_based_tiles_PARM_5
	stx	(_set_bkg_based_tiles_PARM_5 + 1)
;	Raw cost for generated ic 80 : (6, 8.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_set_bkg_based_tiles_PARM_3
;	Raw cost for generated ic 83 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	_set_bkg_based_tiles_PARM_4
;	Raw cost for generated ic 84 : (3, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
	dex
	stx	_set_bkg_based_tiles_PARM_6
;	Raw cost for generated ic 86 : (4, 6.000000) count=1.000000
;	Raw cost for generated ic 81 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 82 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tya
	ldx	_draw_buttons_PARM_3
	jsr	_set_bkg_based_tiles
;	Raw cost for generated ic 87 : (7, 12.000000) count=1.000000
;	src/joytest.c: 18: set_bkg_based_tiles(x + 8,  y, 2, 2, (state & J_A)      ? pressed_buttons[4] : normal_buttons[4], 1);
;	genPlus
;	genPlusIncr
	lda	*_draw_buttons_sloc0_1_0
	clc
	adc	#0x08
	tay
;	Raw cost for generated ic 89 : (6, 9.000000) count=1.000000
;	genAnd
	bit	_draw_buttons_state_10000_99
;	genIfxJump : n
	bpl	00111$
;	Raw cost for generated ic 91 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 92 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 93 : (0, 0.000000) count=0.750000
;	genPlus
;	genPlusIncr
	ldx	#>_pressed_buttons
	lda	#_pressed_buttons
	clc
	adc	#0x10
	bcc	00112$
	inx
;	Raw cost for generated ic 94 : (10, 12.600000) count=0.750000
;	genGoto
	jmp	00112$
;	Raw cost for generated ic 96 : (3, 3.000000) count=0.750000
;	genLabel
00111$:
;	Raw cost for generated ic 97 : (0, 0.000000) count=0.250000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 98 : (0, 0.000000) count=0.250000
;	genPlus
;	genPlusIncr
	ldx	#>_normal_buttons
	lda	#_normal_buttons
	clc
	adc	#0x10
	bcc	00183$
	inx
00183$:
;	Raw cost for generated ic 99 : (10, 12.600000) count=0.250000
;	genLabel
00112$:
;	Raw cost for generated ic 101 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	_set_bkg_based_tiles_PARM_5
	stx	(_set_bkg_based_tiles_PARM_5 + 1)
;	Raw cost for generated ic 102 : (6, 8.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_set_bkg_based_tiles_PARM_3
;	Raw cost for generated ic 105 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	_set_bkg_based_tiles_PARM_4
;	Raw cost for generated ic 106 : (3, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
	dex
	stx	_set_bkg_based_tiles_PARM_6
;	Raw cost for generated ic 108 : (4, 6.000000) count=1.000000
;	Raw cost for generated ic 103 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 104 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tya
	ldx	_draw_buttons_PARM_3
	jsr	_set_bkg_based_tiles
;	Raw cost for generated ic 109 : (7, 12.000000) count=1.000000
;	src/joytest.c: 19: set_bkg_based_tiles(x + 10, y, 2, 2, (state & J_B)      ? pressed_buttons[5] : normal_buttons[5], 1);
;	genPlus
;	genPlusIncr
	lda	*_draw_buttons_sloc0_1_0
	clc
	adc	#0x0a
	tay
;	Raw cost for generated ic 111 : (6, 9.000000) count=1.000000
;	genAnd
	bit	_draw_buttons_state_10000_99
;	genIfxJump : v
	bvc	00113$
;	Raw cost for generated ic 113 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 114 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 115 : (0, 0.000000) count=0.750000
;	genPlus
;	genPlusIncr
	ldx	#>_pressed_buttons
	lda	#_pressed_buttons
	clc
	adc	#0x14
	bcc	00114$
	inx
;	Raw cost for generated ic 116 : (10, 12.600000) count=0.750000
;	genGoto
	jmp	00114$
;	Raw cost for generated ic 118 : (3, 3.000000) count=0.750000
;	genLabel
00113$:
;	Raw cost for generated ic 119 : (0, 0.000000) count=0.250000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 120 : (0, 0.000000) count=0.250000
;	genPlus
;	genPlusIncr
	ldx	#>_normal_buttons
	lda	#_normal_buttons
	clc
	adc	#0x14
	bcc	00186$
	inx
00186$:
;	Raw cost for generated ic 121 : (10, 12.600000) count=0.250000
;	genLabel
00114$:
;	Raw cost for generated ic 123 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	_set_bkg_based_tiles_PARM_5
	stx	(_set_bkg_based_tiles_PARM_5 + 1)
;	Raw cost for generated ic 124 : (6, 8.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_set_bkg_based_tiles_PARM_3
;	Raw cost for generated ic 127 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	_set_bkg_based_tiles_PARM_4
;	Raw cost for generated ic 128 : (3, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
	dex
	stx	_set_bkg_based_tiles_PARM_6
;	Raw cost for generated ic 130 : (4, 6.000000) count=1.000000
;	Raw cost for generated ic 125 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 126 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tya
	ldx	_draw_buttons_PARM_3
	jsr	_set_bkg_based_tiles
;	Raw cost for generated ic 131 : (7, 12.000000) count=1.000000
;	src/joytest.c: 20: set_bkg_based_tiles(x + 12, y, 2, 2, (state & J_START)  ? pressed_buttons[6] : normal_buttons[6], 1);
;	genPlus
;	genPlusIncr
	lda	*_draw_buttons_sloc0_1_0
	clc
	adc	#0x0c
	tay
;	Raw cost for generated ic 133 : (6, 9.000000) count=1.000000
;	genAnd
	lda	_draw_buttons_state_10000_99
	and	#0x10
;	genIfxJump : z
	beq	00115$
;	Raw cost for generated ic 135 : (10, 11.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 136 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 137 : (0, 0.000000) count=0.750000
;	genPlus
;	genPlusIncr
	ldx	#>_pressed_buttons
	lda	#_pressed_buttons
	clc
	adc	#0x18
	bcc	00116$
	inx
;	Raw cost for generated ic 138 : (10, 12.600000) count=0.750000
;	genGoto
	jmp	00116$
;	Raw cost for generated ic 140 : (3, 3.000000) count=0.750000
;	genLabel
00115$:
;	Raw cost for generated ic 141 : (0, 0.000000) count=0.250000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 142 : (0, 0.000000) count=0.250000
;	genPlus
;	genPlusIncr
	ldx	#>_normal_buttons
	lda	#_normal_buttons
	clc
	adc	#0x18
	bcc	00190$
	inx
00190$:
;	Raw cost for generated ic 143 : (10, 12.600000) count=0.250000
;	genLabel
00116$:
;	Raw cost for generated ic 145 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	_set_bkg_based_tiles_PARM_5
	stx	(_set_bkg_based_tiles_PARM_5 + 1)
;	Raw cost for generated ic 146 : (6, 8.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_set_bkg_based_tiles_PARM_3
;	Raw cost for generated ic 149 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	_set_bkg_based_tiles_PARM_4
;	Raw cost for generated ic 150 : (3, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
	dex
	stx	_set_bkg_based_tiles_PARM_6
;	Raw cost for generated ic 152 : (4, 6.000000) count=1.000000
;	Raw cost for generated ic 147 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 148 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tya
	ldx	_draw_buttons_PARM_3
	jsr	_set_bkg_based_tiles
;	Raw cost for generated ic 153 : (7, 12.000000) count=1.000000
;	src/joytest.c: 21: set_bkg_based_tiles(x + 14, y, 2, 2, (state & J_SELECT) ? pressed_buttons[7] : normal_buttons[7], 1);
;	genPlus
;	genPlusIncr
	lda	*_draw_buttons_sloc0_1_0
	clc
	adc	#0x0e
	tay
;	Raw cost for generated ic 155 : (6, 9.000000) count=1.000000
;	genAnd
	lda	_draw_buttons_state_10000_99
	and	#0x20
;	genIfxJump : z
	beq	00117$
;	Raw cost for generated ic 157 : (10, 11.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 158 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 159 : (0, 0.000000) count=0.750000
;	genPlus
;	genPlusIncr
	ldx	#>_pressed_buttons
	lda	#_pressed_buttons
	clc
	adc	#0x1c
	bcc	00118$
	inx
;	Raw cost for generated ic 160 : (10, 12.600000) count=0.750000
;	genGoto
	jmp	00118$
;	Raw cost for generated ic 162 : (3, 3.000000) count=0.750000
;	genLabel
00117$:
;	Raw cost for generated ic 163 : (0, 0.000000) count=0.250000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 164 : (0, 0.000000) count=0.250000
;	genPlus
;	genPlusIncr
	ldx	#>_normal_buttons
	lda	#_normal_buttons
	clc
	adc	#0x1c
	bcc	00194$
	inx
00194$:
;	Raw cost for generated ic 165 : (10, 12.600000) count=0.250000
;	genLabel
00118$:
;	Raw cost for generated ic 167 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	_set_bkg_based_tiles_PARM_5
	stx	(_set_bkg_based_tiles_PARM_5 + 1)
;	Raw cost for generated ic 168 : (6, 8.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_set_bkg_based_tiles_PARM_3
;	Raw cost for generated ic 171 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	_set_bkg_based_tiles_PARM_4
;	Raw cost for generated ic 172 : (3, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
	dex
	stx	_set_bkg_based_tiles_PARM_6
;	Raw cost for generated ic 174 : (4, 6.000000) count=1.000000
;	Raw cost for generated ic 169 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 170 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tya
	ldx	_draw_buttons_PARM_3
;	Raw cost for generated ic 175 : (7, 12.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 176 : (0, 0.000000) count=1.000000
;	src/joytest.c: 22: }
;	genEndFunction
	jmp	_set_bkg_based_tiles
;	Raw cost for generated ic 177 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'draw_disabled'
;------------------------------------------------------------
;sloc0         Allocated with name '_draw_disabled_sloc0_1_0'
;y             Allocated with name '_draw_disabled_y_10000_101'
;x             Allocated to registers a 
;------------------------------------------------------------
;	src/joytest.c: 24: void draw_disabled(uint8_t x, uint8_t y) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function draw_disabled
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_draw_disabled:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genReceive
	stx	_draw_disabled_y_10000_101
;	Raw cost for generated ic 3 : (3, 4.000000) count=1.000000
;	src/joytest.c: 25: set_bkg_based_tiles(x,      y, 2, 2, disabled_buttons[0], 1);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#>_disabled_buttons
	stx	(_set_bkg_based_tiles_PARM_5 + 1)
	ldx	#_disabled_buttons
	stx	_set_bkg_based_tiles_PARM_5
;	Raw cost for generated ic 5 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_set_bkg_based_tiles_PARM_3
;	Raw cost for generated ic 8 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	_set_bkg_based_tiles_PARM_4
;	Raw cost for generated ic 9 : (3, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
	dex
	stx	_set_bkg_based_tiles_PARM_6
;	Raw cost for generated ic 11 : (4, 6.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	genCall
	pha
;	genSend
	ldx	_draw_disabled_y_10000_101
	jsr	_set_bkg_based_tiles
	pla
;	Raw cost for generated ic 12 : (8, 17.000000) count=1.000000
;	src/joytest.c: 26: set_bkg_based_tiles(x + 2,  y, 2, 2, disabled_buttons[1], 1);
;	genCast
;	genCopy
;	Raw cost for generated ic 13 : (2, 3.000000) count=1.000000
;	genPlus
;	genPlusIncr
	sta	*_draw_disabled_sloc0_1_0
	clc
	adc	#0x02
;	Raw cost for generated ic 14 : (5, 7.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#>(_disabled_buttons + 0x0004)
	stx	(_set_bkg_based_tiles_PARM_5 + 1)
	ldx	#(_disabled_buttons + 0x0004)
	stx	_set_bkg_based_tiles_PARM_5
;	Raw cost for generated ic 17 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_set_bkg_based_tiles_PARM_3
;	Raw cost for generated ic 20 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	_set_bkg_based_tiles_PARM_4
;	Raw cost for generated ic 21 : (3, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
	dex
	stx	_set_bkg_based_tiles_PARM_6
;	Raw cost for generated ic 23 : (4, 6.000000) count=1.000000
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	_draw_disabled_y_10000_101
	jsr	_set_bkg_based_tiles
;	Raw cost for generated ic 24 : (6, 10.000000) count=1.000000
;	src/joytest.c: 27: set_bkg_based_tiles(x + 4,  y, 2, 2, disabled_buttons[2], 1);
;	genPlus
;	genPlusIncr
	lda	*_draw_disabled_sloc0_1_0
	clc
	adc	#0x04
;	Raw cost for generated ic 26 : (5, 7.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 28 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#>(_disabled_buttons + 0x0008)
	stx	(_set_bkg_based_tiles_PARM_5 + 1)
	ldx	#(_disabled_buttons + 0x0008)
	stx	_set_bkg_based_tiles_PARM_5
;	Raw cost for generated ic 29 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_set_bkg_based_tiles_PARM_3
;	Raw cost for generated ic 32 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	_set_bkg_based_tiles_PARM_4
;	Raw cost for generated ic 33 : (3, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
	dex
	stx	_set_bkg_based_tiles_PARM_6
;	Raw cost for generated ic 35 : (4, 6.000000) count=1.000000
;	Raw cost for generated ic 30 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 31 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	_draw_disabled_y_10000_101
	jsr	_set_bkg_based_tiles
;	Raw cost for generated ic 36 : (6, 10.000000) count=1.000000
;	src/joytest.c: 28: set_bkg_based_tiles(x + 6,  y, 2, 2, disabled_buttons[3], 1);
;	genPlus
;	genPlusIncr
	lda	*_draw_disabled_sloc0_1_0
	clc
	adc	#0x06
;	Raw cost for generated ic 38 : (5, 7.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 40 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#>(_disabled_buttons + 0x000c)
	stx	(_set_bkg_based_tiles_PARM_5 + 1)
	ldx	#(_disabled_buttons + 0x000c)
	stx	_set_bkg_based_tiles_PARM_5
;	Raw cost for generated ic 41 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_set_bkg_based_tiles_PARM_3
;	Raw cost for generated ic 44 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	_set_bkg_based_tiles_PARM_4
;	Raw cost for generated ic 45 : (3, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
	dex
	stx	_set_bkg_based_tiles_PARM_6
;	Raw cost for generated ic 47 : (4, 6.000000) count=1.000000
;	Raw cost for generated ic 42 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 43 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	_draw_disabled_y_10000_101
	jsr	_set_bkg_based_tiles
;	Raw cost for generated ic 48 : (6, 10.000000) count=1.000000
;	src/joytest.c: 29: set_bkg_based_tiles(x + 8,  y, 2, 2, disabled_buttons[4], 1);
;	genPlus
;	genPlusIncr
	lda	*_draw_disabled_sloc0_1_0
	clc
	adc	#0x08
;	Raw cost for generated ic 50 : (5, 7.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 52 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#>(_disabled_buttons + 0x0010)
	stx	(_set_bkg_based_tiles_PARM_5 + 1)
	ldx	#(_disabled_buttons + 0x0010)
	stx	_set_bkg_based_tiles_PARM_5
;	Raw cost for generated ic 53 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_set_bkg_based_tiles_PARM_3
;	Raw cost for generated ic 56 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	_set_bkg_based_tiles_PARM_4
;	Raw cost for generated ic 57 : (3, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
	dex
	stx	_set_bkg_based_tiles_PARM_6
;	Raw cost for generated ic 59 : (4, 6.000000) count=1.000000
;	Raw cost for generated ic 54 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 55 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	_draw_disabled_y_10000_101
	jsr	_set_bkg_based_tiles
;	Raw cost for generated ic 60 : (6, 10.000000) count=1.000000
;	src/joytest.c: 30: set_bkg_based_tiles(x + 10, y, 2, 2, disabled_buttons[5], 1);
;	genPlus
;	genPlusIncr
	lda	*_draw_disabled_sloc0_1_0
	clc
	adc	#0x0a
;	Raw cost for generated ic 62 : (5, 7.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 64 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#>(_disabled_buttons + 0x0014)
	stx	(_set_bkg_based_tiles_PARM_5 + 1)
	ldx	#(_disabled_buttons + 0x0014)
	stx	_set_bkg_based_tiles_PARM_5
;	Raw cost for generated ic 65 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_set_bkg_based_tiles_PARM_3
;	Raw cost for generated ic 68 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	_set_bkg_based_tiles_PARM_4
;	Raw cost for generated ic 69 : (3, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
	dex
	stx	_set_bkg_based_tiles_PARM_6
;	Raw cost for generated ic 71 : (4, 6.000000) count=1.000000
;	Raw cost for generated ic 66 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 67 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	_draw_disabled_y_10000_101
	jsr	_set_bkg_based_tiles
;	Raw cost for generated ic 72 : (6, 10.000000) count=1.000000
;	src/joytest.c: 31: set_bkg_based_tiles(x + 12, y, 2, 2, disabled_buttons[6], 1);
;	genPlus
;	genPlusIncr
	lda	*_draw_disabled_sloc0_1_0
	clc
	adc	#0x0c
;	Raw cost for generated ic 74 : (5, 7.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 76 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#>(_disabled_buttons + 0x0018)
	stx	(_set_bkg_based_tiles_PARM_5 + 1)
	ldx	#(_disabled_buttons + 0x0018)
	stx	_set_bkg_based_tiles_PARM_5
;	Raw cost for generated ic 77 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_set_bkg_based_tiles_PARM_3
;	Raw cost for generated ic 80 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	_set_bkg_based_tiles_PARM_4
;	Raw cost for generated ic 81 : (3, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
	dex
	stx	_set_bkg_based_tiles_PARM_6
;	Raw cost for generated ic 83 : (4, 6.000000) count=1.000000
;	Raw cost for generated ic 78 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 79 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	_draw_disabled_y_10000_101
	jsr	_set_bkg_based_tiles
;	Raw cost for generated ic 84 : (6, 10.000000) count=1.000000
;	src/joytest.c: 32: set_bkg_based_tiles(x + 14, y, 2, 2, disabled_buttons[7], 1);
;	genPlus
;	genPlusIncr
	lda	*_draw_disabled_sloc0_1_0
	clc
	adc	#0x0e
;	Raw cost for generated ic 86 : (5, 7.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 88 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#>(_disabled_buttons + 0x001c)
	stx	(_set_bkg_based_tiles_PARM_5 + 1)
	ldx	#(_disabled_buttons + 0x001c)
	stx	_set_bkg_based_tiles_PARM_5
;	Raw cost for generated ic 89 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_set_bkg_based_tiles_PARM_3
;	Raw cost for generated ic 92 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	_set_bkg_based_tiles_PARM_4
;	Raw cost for generated ic 93 : (3, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
	dex
	stx	_set_bkg_based_tiles_PARM_6
;	Raw cost for generated ic 95 : (4, 6.000000) count=1.000000
;	Raw cost for generated ic 90 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 91 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	_draw_disabled_y_10000_101
;	Raw cost for generated ic 96 : (6, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 97 : (0, 0.000000) count=1.000000
;	src/joytest.c: 33: }
;	genEndFunction
	jmp	_set_bkg_based_tiles
;	Raw cost for generated ic 98 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'reset_object_pos'
;------------------------------------------------------------
;i             Allocated to registers 
;sloc0         Allocated with name '_reset_object_pos_sloc0_1_0'
;------------------------------------------------------------
;	src/joytest.c: 35: void reset_object_pos(void) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function reset_object_pos
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_reset_object_pos:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/joytest.c: 36: for (uint8_t i = 0; i < 4; i++) {
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_reset_object_pos_sloc0_1_0
;	Raw cost for generated ic 27 : (4, 5.000000) count=1.000000
;	genLabel
00103$:
;	Raw cost for generated ic 3 : (0, 0.000000) count=3.999997
;	genCmp
	lda	*_reset_object_pos_sloc0_1_0
	cmp	#0x04
	bcs	00105$
;	Raw cost for generated ic 4 : (9, 10.600000) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 5 : (0, 0.000000) count=3.999997
;	src/joytest.c: 37: set_sprite_tile(i, i);
;	Raw cost for generated ic 8 : (0, 0.000000) count=2.999997
;	Raw cost for generated ic 9 : (0, 0.000000) count=2.999997
;	genCall
;	genSend
	lda	*_reset_object_pos_sloc0_1_0
	ldx	*_reset_object_pos_sloc0_1_0
	jsr	_set_sprite_tile
;	Raw cost for generated ic 10 : (7, 12.000000) count=2.999997
;	src/joytest.c: 39: DEVICE_SPRITE_PX_OFFSET_X + (i << 3) + ((DEVICE_SCREEN_PX_WIDTH - (4 * 8)) >> 1), 
;	genLeftShift
;	genLeftShiftLiteral
;	genlshOne
	lda	*_reset_object_pos_sloc0_1_0
	asl	a
	asl	a
	asl	a
;	Raw cost for generated ic 11 : (5, 9.000000) count=2.999997
;	genCast
;	genCopy
;	Raw cost for generated ic 12 : (0, 0.000000) count=2.999997
;	genPlus
;	genPlusIncr
	clc
	adc	#0x70
;	Raw cost for generated ic 13 : (3, 4.000000) count=2.999997
;	src/joytest.c: 41: );
;	genAssign
;	genAssignLit
	ldx	#0xa3
	stx	_move_sprite_PARM_3
;	Raw cost for generated ic 16 : (5, 6.000000) count=2.999997
;	Raw cost for generated ic 14 : (0, 0.000000) count=2.999997
;	Raw cost for generated ic 15 : (0, 0.000000) count=2.999997
;	genCall
;	genSend
	tax
	lda	*_reset_object_pos_sloc0_1_0
	jsr	_move_sprite
;	Raw cost for generated ic 17 : (6, 11.000000) count=2.999997
;	src/joytest.c: 36: for (uint8_t i = 0; i < 4; i++) {
;	genPlus
;	genPlusIncr
	inc	*_reset_object_pos_sloc0_1_0
;	Raw cost for generated ic 20 : (2, 5.000000) count=2.999997
;	genGoto
	jmp	00103$
;	Raw cost for generated ic 22 : (3, 3.000000) count=2.999997
;	genLabel
00105$:
;	Raw cost for generated ic 24 : (0, 0.000000) count=0.999999
;	src/joytest.c: 43: }
;	genEndFunction
	rts
;	Raw cost for generated ic 25 : (1, 6.000000) count=0.999999
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc0         Allocated with name '_main_sloc0_1_0'
;sloc1         Allocated with name '_main_sloc1_1_0'
;i             Allocated to registers 
;i             Allocated to registers 
;i             Allocated to registers 
;j             Allocated with name '_main_j_60000_125'
;------------------------------------------------------------
;	src/joytest.c: 51: void main(void) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/joytest.c: 54: for (uint8_t i = 4; i != 0; i--) vsync();
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x04
;	Raw cost for generated ic 244 : (2, 2.000000) count=1.000000
;	genLabel
00135$:
;	Raw cost for generated ic 3 : (0, 0.000000) count=3.999997
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00101$
;	Raw cost for generated ic 4 : (7, 7.600000) count=3.999997
;	genCall
	pha
	jsr	_vsync
	pla
;	Raw cost for generated ic 7 : (5, 13.000000) count=2.999997
;	genMinus
;	genMinusDec
	sec
	sbc	#0x01
;	Raw cost for generated ic 10 : (3, 4.000000) count=2.999997
;	genGoto
	jmp	00135$
;	Raw cost for generated ic 12 : (3, 3.000000) count=2.999997
;	genLabel
00101$:
;	Raw cost for generated ic 13 : (0, 0.000000) count=0.999999
;	src/joytest.c: 60: joypad_init(4, &joypads);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 14 : (0, 0.000000) count=0.999999
;	genCast
;	genCopy
	lda	#>_joypads
	sta	(_joypad_init_PARM_2 + 1)
	lda	#_joypads
	sta	_joypad_init_PARM_2
;	Raw cost for generated ic 15 : (10, 12.000000) count=0.999999
;	Raw cost for generated ic 16 : (0, 0.000000) count=0.999999
;	genCall
;	genSend
	lda	#0x04
	jsr	_joypad_init
;	Raw cost for generated ic 18 : (5, 8.000000) count=0.999999
;	src/joytest.c: 62: set_sprite_data(0, sizeof(sprite_data) >> 4, sprite_data);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 19 : (0, 0.000000) count=0.999999
;	genCast
;	genCopy
	lda	#>_sprite_data
	sta	(_set_sprite_data_PARM_3 + 1)
	lda	#_sprite_data
	sta	_set_sprite_data_PARM_3
;	Raw cost for generated ic 20 : (10, 12.000000) count=0.999999
;	Raw cost for generated ic 21 : (0, 0.000000) count=0.999999
;	Raw cost for generated ic 22 : (0, 0.000000) count=0.999999
;	genCall
;	genSend
	lda	#0x00
	ldx	#0x04
	jsr	_set_sprite_data
;	Raw cost for generated ic 24 : (7, 10.000000) count=0.999999
;	src/joytest.c: 63: set_bkg_data(1, sizeof(tiles_data) >> 4, tiles_data);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 25 : (0, 0.000000) count=0.999999
;	genCast
;	genCopy
	lda	#>_tiles_data
	sta	(_set_bkg_data_PARM_3 + 1)
	lda	#_tiles_data
	sta	_set_bkg_data_PARM_3
;	Raw cost for generated ic 26 : (10, 12.000000) count=0.999999
;	Raw cost for generated ic 27 : (0, 0.000000) count=0.999999
;	Raw cost for generated ic 28 : (0, 0.000000) count=0.999999
;	genCall
;	genSend
	lda	#0x01
	ldx	#0x5d
	jsr	_set_bkg_data
;	Raw cost for generated ic 30 : (7, 10.000000) count=0.999999
;	src/joytest.c: 64: fill_bkg_rect(0, 0, DEVICE_SCREEN_WIDTH, DEVICE_SCREEN_HEIGHT, 0);
;	genAssign
;	genAssignLit
	ldx	#0x20
	stx	_fill_bkg_rect_PARM_3
;	Raw cost for generated ic 33 : (5, 6.000000) count=0.999999
;	genAssign
;	genAssignLit
	ldx	#0x1e
	stx	_fill_bkg_rect_PARM_4
;	Raw cost for generated ic 34 : (5, 6.000000) count=0.999999
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_fill_bkg_rect_PARM_5
;	Raw cost for generated ic 35 : (5, 6.000000) count=0.999999
;	Raw cost for generated ic 31 : (0, 0.000000) count=0.999999
;	Raw cost for generated ic 32 : (0, 0.000000) count=0.999999
;	genCall
;	genSend
	txa
	jsr	_fill_bkg_rect
;	Raw cost for generated ic 36 : (4, 8.000000) count=0.999999
;	src/joytest.c: 66: if (isSGB) draw_disabled(0, 0); else draw_buttons(joy, 0, 0);
;	genIfx
	lda	_isSGB
;	genIfxJump : z
	beq	00103$
;	Raw cost for generated ic 37 : (8, 9.600000) count=0.999999
;	Raw cost for generated ic 40 : (0, 0.000000) count=0.749999
;	Raw cost for generated ic 41 : (0, 0.000000) count=0.749999
;	genCall
;	genSend
	lda	#0x00
	tax
	jsr	_draw_disabled
;	Raw cost for generated ic 42 : (6, 10.000000) count=0.749999
;	genGoto
	jmp	00150$
;	Raw cost for generated ic 43 : (3, 3.000000) count=0.749999
;	genLabel
00103$:
;	Raw cost for generated ic 44 : (0, 0.000000) count=0.249999
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_draw_buttons_PARM_3
;	Raw cost for generated ic 47 : (5, 6.000000) count=0.249999
;	Raw cost for generated ic 45 : (0, 0.000000) count=0.249999
;	Raw cost for generated ic 46 : (0, 0.000000) count=0.249999
;	genCall
;	genSend
	lda	_joy
	jsr	_draw_buttons
;	Raw cost for generated ic 48 : (6, 10.000000) count=0.249999
;	src/joytest.c: 68: for (uint8_t i = 0; i != 4; i++) {
;	genLabel
00150$:
;	Raw cost for generated ic 241 : (0, 0.000000) count=0.999998
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 67 : (0, 0.000000) count=0.999998
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_main_sloc0_1_0
;	Raw cost for generated ic 247 : (4, 5.000000) count=0.999998
;	genLabel
00138$:
;	Raw cost for generated ic 51 : (0, 0.000000) count=3.999972
;	genCmpEQorNE
	lda	*_main_sloc0_1_0
	cmp	#0x04
	beq	00108$
;	Raw cost for generated ic 52 : (9, 10.600000) count=3.999972
;	skipping generated iCode
;	Raw cost for generated ic 53 : (0, 0.000000) count=3.999972
;	src/joytest.c: 69: if (i <= (joypads.npads - 1)) {
;	genPointerGet
;	genDataPointerGet
	lda	_joypads
;	Raw cost for generated ic 58 : (3, 4.000000) count=2.999980
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 59 : (2, 2.000000) count=2.999980
;	genMinus
;	genMinusDec
	sec
	sbc	#0x01
	bcs	00267$
	dex
00267$:
;	Raw cost for generated ic 60 : (6, 8.600000) count=2.999980
;	genCast
	ldy	*_main_sloc0_1_0
	sty	*_main_sloc1_1_0
	ldy	#0x00
	sty	*(_main_sloc1_1_0 + 1)
;	Raw cost for generated ic 61 : (8, 11.000000) count=2.999980
;	genCmp
	sec
	sbc	*_main_sloc1_1_0
	txa
	sbc	*(_main_sloc1_1_0 + 1)
	bvs	00269$
	bpl	00268$
	bmi	00106$
00269$:
	bpl	00106$
00268$:
;	Raw cost for generated ic 62 : (17, 23.400002) count=2.999980
;	skipping generated iCode
;	Raw cost for generated ic 63 : (0, 0.000000) count=2.999980
;	src/joytest.c: 70: draw_buttons(joypads.joypads[i], 0, 4 + (i << 1)); 
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
	lda	*_main_sloc0_1_0
;	Raw cost for generated ic 69 : (4, 5.000000) count=2.249982
;	genPointerGet
	tax
	ldy	((_joypads + 0x0001)+0+0x0000),x
;	Raw cost for generated ic 70 : (4, 6.000000) count=2.249982
;	genLeftShift
;	genLeftShiftLiteral
;	genlshOne
	lda	*_main_sloc0_1_0
	asl	a
;	Raw cost for generated ic 71 : (3, 5.000000) count=2.249982
;	genCast
;	genCopy
;	Raw cost for generated ic 72 : (0, 0.000000) count=2.249982
;	genPlus
;	genPlusIncr
	clc
	adc	#0x04
	sta	_draw_buttons_PARM_3
;	Raw cost for generated ic 73 : (6, 8.000000) count=2.249982
;	Raw cost for generated ic 74 : (0, 0.000000) count=2.249982
;	Raw cost for generated ic 75 : (0, 0.000000) count=2.249982
;	genCall
;	genSend
	tya
	ldx	#0x00
	jsr	_draw_buttons
;	Raw cost for generated ic 77 : (6, 10.000000) count=2.249982
;	genGoto
	jmp	00139$
;	Raw cost for generated ic 78 : (3, 3.000000) count=2.249982
;	genLabel
00106$:
;	Raw cost for generated ic 79 : (0, 0.000000) count=0.749993
;	src/joytest.c: 72: draw_disabled(0, 4 + (i << 1));
;	genLeftShift
;	genLeftShiftLiteral
;	genlshOne
	lda	*_main_sloc0_1_0
	asl	a
;	Raw cost for generated ic 80 : (3, 5.000000) count=0.749993
;	genCast
;	genCopy
;	Raw cost for generated ic 81 : (0, 0.000000) count=0.749993
;	genPlus
;	genPlusIncr
	clc
	adc	#0x04
;	Raw cost for generated ic 82 : (3, 4.000000) count=0.749993
;	Raw cost for generated ic 83 : (0, 0.000000) count=0.749993
;	Raw cost for generated ic 84 : (0, 0.000000) count=0.749993
;	genCall
;	genSend
	tax
	lda	#0x00
	jsr	_draw_disabled
;	Raw cost for generated ic 85 : (6, 10.000000) count=0.749993
;	genLabel
00139$:
;	Raw cost for generated ic 87 : (0, 0.000000) count=2.999975
;	src/joytest.c: 68: for (uint8_t i = 0; i != 4; i++) {
;	genPlus
;	genPlusIncr
	inc	*_main_sloc0_1_0
;	Raw cost for generated ic 89 : (2, 5.000000) count=2.999975
;	genGoto
	jmp	00138$
;	Raw cost for generated ic 91 : (3, 3.000000) count=2.999975
;	genLabel
00108$:
;	Raw cost for generated ic 92 : (0, 0.000000) count=0.999992
;	src/joytest.c: 76: reset_object_pos();
;	genCall
	jsr	_reset_object_pos
;	Raw cost for generated ic 93 : (3, 6.000000) count=0.999992
;	src/joytest.c: 77: SHOW_SPRITES; SHOW_BKG;
;	genOr
	lda	_shadow_PPUMASK
	ora	#0x10
	sta	_shadow_PPUMASK
;	Raw cost for generated ic 94 : (8, 10.000000) count=0.999992
;	genOr
	lda	_shadow_PPUMASK
	ora	#0x08
	sta	_shadow_PPUMASK
;	Raw cost for generated ic 96 : (8, 10.000000) count=0.999992
;	src/joytest.c: 79: while(TRUE) {
;	genLabel
00132$:
;	Raw cost for generated ic 100 : (0, 0.000000) count=38.465435
;	src/joytest.c: 81: if (toggle = !toggle) {
;	genNot
	lda	_toggle
	eor	#0x01
;	Raw cost for generated ic 101 : (5, 6.000000) count=38.465435
;	genAssign
;	genAssignLit
;	genCopy
	tax
;	Raw cost for generated ic 102 : (1, 2.000000) count=38.465435
;	genAssign
;	genAssignLit
;	genCopy
	sta	_toggle
;	Raw cost for generated ic 103 : (3, 4.000000) count=38.465435
;	genIfx
;	genIfxJump : z
	beq	00129$
;	Raw cost for generated ic 104 : (5, 5.600000) count=38.465435
;	src/joytest.c: 83: if (!isSGB) {
;	genIfx
	lda	_isSGB
;	genIfxJump : z
	beq	00275$
	jmp	00130$
00275$:
;	Raw cost for generated ic 107 : (8, 9.600000) count=28.849075
;	src/joytest.c: 84: old_joy = joy, joy = joypad();
;	genAssign
;	genAssignLit
;	genCopy
	lda	_joy
	sta	_old_joy
;	Raw cost for generated ic 110 : (6, 9.000000) count=21.636808
;	genCall
	jsr	_joypad
;	assignResultValue
;	Raw cost for generated ic 112 : (3, 6.000000) count=21.636808
;	genAssign
;	genAssignLit
;	genCopy
	sta	_joy
;	Raw cost for generated ic 114 : (3, 5.000000) count=21.636808
;	src/joytest.c: 87: if (joy != old_joy) draw_buttons(joy, 0, 0);
;	genCmpEQorNE
	cmp	_old_joy
	beq	00110$
;	Raw cost for generated ic 115 : (8, 9.600000) count=21.636808
;	skipping generated iCode
;	Raw cost for generated ic 116 : (0, 0.000000) count=21.636808
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_draw_buttons_PARM_3
;	Raw cost for generated ic 121 : (5, 6.000000) count=16.227602
;	Raw cost for generated ic 119 : (0, 0.000000) count=16.227602
;	Raw cost for generated ic 120 : (0, 0.000000) count=16.227602
;	genCall
;	genSend
	jsr	_draw_buttons
;	Raw cost for generated ic 122 : (3, 6.000000) count=16.227602
;	genLabel
00110$:
;	Raw cost for generated ic 123 : (0, 0.000000) count=21.636808
;	src/joytest.c: 90: if (joy & J_START) reset_object_pos();
;	genCast
;	genCopy
	lda	_joy
;	Raw cost for generated ic 124 : (3, 4.000000) count=21.636808
;	genAnd
	and	#0x10
;	genIfxJump : z
	bne	00277$
	jmp	00130$
00277$:
;	Raw cost for generated ic 125 : (7, 7.600000) count=21.636808
;	skipping generated iCode
;	Raw cost for generated ic 126 : (0, 0.000000) count=21.636808
;	genCall
	jsr	_reset_object_pos
;	Raw cost for generated ic 129 : (3, 6.000000) count=16.227602
;	genGoto
	jmp	00130$
;	Raw cost for generated ic 132 : (3, 3.000000) count=16.227602
;	genLabel
00129$:
;	Raw cost for generated ic 133 : (0, 0.000000) count=9.616359
;	src/joytest.c: 93: old_joypads = joypads;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 134 : (0, 0.000000) count=9.616359
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 135 : (0, 0.000000) count=9.616359
;	genCast
;	genCopy
	lda	#>_joypads
	sta	(___memcpy_PARM_2 + 1)
	lda	#_joypads
	sta	___memcpy_PARM_2
;	Raw cost for generated ic 137 : (10, 12.000000) count=9.616359
;	genAssign
;	genAssignLit
	ldx	#0x05
	stx	___memcpy_PARM_3
	ldx	#0x00
	stx	(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 142 : (10, 12.000000) count=9.616359
;	Raw cost for generated ic 138 : (0, 0.000000) count=9.616359
;	genCall
;	genSend
	ldx	#>_old_joypads
	lda	#_old_joypads
	jsr	___memcpy
;	Raw cost for generated ic 143 : (7, 10.000000) count=9.616359
;	src/joytest.c: 94: joypad_ex(&joypads);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 146 : (0, 0.000000) count=9.616359
;	Raw cost for generated ic 147 : (0, 0.000000) count=9.616359
;	genCall
;	genSend
	ldx	#>_joypads
	lda	#_joypads
	jsr	_joypad_ex
;	Raw cost for generated ic 148 : (7, 10.000000) count=9.616359
;	src/joytest.c: 96: for (uint8_t i = 0; i < joypads.npads; i++) {
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 159 : (0, 0.000000) count=9.616359
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 165 : (0, 0.000000) count=9.616359
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_main_sloc1_1_0
;	Raw cost for generated ic 250 : (4, 5.000000) count=9.616359
;	genLabel
00141$:
;	Raw cost for generated ic 150 : (0, 0.000000) count=36.751163
;	genPointerGet
;	genDataPointerGet
	lda	_joypads
;	Raw cost for generated ic 153 : (3, 4.000000) count=36.751163
;	genCmp
	cmp	*_main_sloc1_1_0
	beq	00279$
	bcs	00278$
00279$:
	jmp	00130$
00278$:
;	Raw cost for generated ic 154 : (9, 11.200000) count=36.751163
;	skipping generated iCode
;	Raw cost for generated ic 155 : (0, 0.000000) count=36.751163
;	src/joytest.c: 97: uint8_t j = joypads.joypads[i];
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
	lda	*_main_sloc1_1_0
;	Raw cost for generated ic 161 : (4, 5.000000) count=27.563372
;	genPointerGet
	tay
	lda	((_joypads + 0x0001)+0+0x0000),y
	sta	_main_j_60000_125
;	Raw cost for generated ic 162 : (7, 10.000000) count=27.563372
;	src/joytest.c: 100: if (old_joypads.joypads[i] != j) draw_buttons(j, 0, 4 + (i << 1));
;	genAssign
;	genAssignLit
;	genCopy
	lda	*_main_sloc1_1_0
;	Raw cost for generated ic 167 : (2, 3.000000) count=27.563372
;	genPointerGet
	tay
	lda	((_old_joypads + 0x0001)+0+0x0000),y
;	Raw cost for generated ic 168 : (4, 6.000000) count=27.563372
;	genCmpEQorNE
	cmp	_main_j_60000_125
	beq	00116$
;	Raw cost for generated ic 169 : (8, 9.600000) count=27.563372
;	skipping generated iCode
;	Raw cost for generated ic 170 : (0, 0.000000) count=27.563372
;	genLeftShift
;	genLeftShiftLiteral
;	genlshOne
	lda	*_main_sloc1_1_0
	asl	a
;	Raw cost for generated ic 173 : (3, 5.000000) count=20.672527
;	genCast
;	genCopy
;	Raw cost for generated ic 174 : (0, 0.000000) count=20.672527
;	genPlus
;	genPlusIncr
	clc
	adc	#0x04
	sta	_draw_buttons_PARM_3
;	Raw cost for generated ic 175 : (6, 8.000000) count=20.672527
;	Raw cost for generated ic 176 : (0, 0.000000) count=20.672527
;	Raw cost for generated ic 177 : (0, 0.000000) count=20.672527
;	genCall
;	genSend
	lda	_main_j_60000_125
	jsr	_draw_buttons
;	Raw cost for generated ic 179 : (6, 10.000000) count=20.672527
;	genLabel
00116$:
;	Raw cost for generated ic 180 : (0, 0.000000) count=27.563372
;	src/joytest.c: 103: if (j & J_LEFT)  scroll_sprite(i, -1, 0);
;	genAnd
	lda	_main_j_60000_125
	and	#0x02
;	genIfxJump : z
	beq	00118$
;	Raw cost for generated ic 182 : (10, 11.600000) count=27.563372
;	skipping generated iCode
;	Raw cost for generated ic 183 : (0, 0.000000) count=27.563372
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_scroll_sprite_PARM_3
;	Raw cost for generated ic 188 : (5, 6.000000) count=20.672527
;	Raw cost for generated ic 186 : (0, 0.000000) count=20.672527
;	Raw cost for generated ic 187 : (0, 0.000000) count=20.672527
;	genCall
;	genSend
	lda	*_main_sloc1_1_0
	dex
	jsr	_scroll_sprite
;	Raw cost for generated ic 189 : (6, 11.000000) count=20.672527
;	genLabel
00118$:
;	Raw cost for generated ic 190 : (0, 0.000000) count=27.563372
;	src/joytest.c: 104: if (j & J_RIGHT) scroll_sprite(i, 1, 0);
;	genAnd
	lda	_main_j_60000_125
	and	#0x01
;	genIfxJump : z
	beq	00120$
;	Raw cost for generated ic 192 : (10, 11.600000) count=27.563372
;	skipping generated iCode
;	Raw cost for generated ic 193 : (0, 0.000000) count=27.563372
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_scroll_sprite_PARM_3
;	Raw cost for generated ic 198 : (5, 6.000000) count=20.672527
;	Raw cost for generated ic 196 : (0, 0.000000) count=20.672527
;	Raw cost for generated ic 197 : (0, 0.000000) count=20.672527
;	genCall
;	genSend
	lda	*_main_sloc1_1_0
	inx
	jsr	_scroll_sprite
;	Raw cost for generated ic 199 : (6, 11.000000) count=20.672527
;	genLabel
00120$:
;	Raw cost for generated ic 200 : (0, 0.000000) count=27.563372
;	src/joytest.c: 105: if (j & J_UP)    scroll_sprite(i, 0, -1);
;	genAnd
	lda	_main_j_60000_125
	and	#0x08
;	genIfxJump : z
	beq	00122$
;	Raw cost for generated ic 202 : (10, 11.600000) count=27.563372
;	skipping generated iCode
;	Raw cost for generated ic 203 : (0, 0.000000) count=27.563372
;	genAssign
;	genAssignLit
	ldx	#0xff
	stx	_scroll_sprite_PARM_3
;	Raw cost for generated ic 208 : (5, 6.000000) count=20.672527
;	Raw cost for generated ic 206 : (0, 0.000000) count=20.672527
;	Raw cost for generated ic 207 : (0, 0.000000) count=20.672527
;	genCall
;	genSend
	lda	*_main_sloc1_1_0
	inx
	jsr	_scroll_sprite
;	Raw cost for generated ic 209 : (6, 11.000000) count=20.672527
;	genLabel
00122$:
;	Raw cost for generated ic 210 : (0, 0.000000) count=27.563372
;	src/joytest.c: 106: if (j & J_DOWN)  scroll_sprite(i, 0, 1);
;	genAnd
	lda	_main_j_60000_125
	and	#0x04
;	genIfxJump : z
	beq	00124$
;	Raw cost for generated ic 212 : (10, 11.600000) count=27.563372
;	skipping generated iCode
;	Raw cost for generated ic 213 : (0, 0.000000) count=27.563372
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_scroll_sprite_PARM_3
;	Raw cost for generated ic 218 : (5, 6.000000) count=20.672527
;	Raw cost for generated ic 216 : (0, 0.000000) count=20.672527
;	Raw cost for generated ic 217 : (0, 0.000000) count=20.672527
;	genCall
;	genSend
	lda	*_main_sloc1_1_0
	dex
	jsr	_scroll_sprite
;	Raw cost for generated ic 219 : (6, 11.000000) count=20.672527
;	genLabel
00124$:
;	Raw cost for generated ic 220 : (0, 0.000000) count=27.563372
;	src/joytest.c: 109: if (j & J_START) reset_object_pos();
;	genAnd
	lda	_main_j_60000_125
	and	#0x10
;	genIfxJump : z
	beq	00142$
;	Raw cost for generated ic 222 : (10, 11.600000) count=27.563372
;	skipping generated iCode
;	Raw cost for generated ic 223 : (0, 0.000000) count=27.563372
;	genCall
	jsr	_reset_object_pos
;	Raw cost for generated ic 226 : (3, 6.000000) count=20.672527
;	genLabel
00142$:
;	Raw cost for generated ic 228 : (0, 0.000000) count=27.563372
;	src/joytest.c: 96: for (uint8_t i = 0; i < joypads.npads; i++) {
;	genPlus
;	genPlusIncr
	inc	*_main_sloc1_1_0
;	Raw cost for generated ic 230 : (2, 5.000000) count=27.563372
;	genGoto
	jmp	00141$
;	Raw cost for generated ic 232 : (3, 3.000000) count=27.563372
;	genLabel
00130$:
;	Raw cost for generated ic 234 : (0, 0.000000) count=38.036869
;	src/joytest.c: 113: vsync();
;	genCall
	jsr	_vsync
;	Raw cost for generated ic 235 : (3, 6.000000) count=38.036869
;	genGoto
	jmp	00132$
;	Raw cost for generated ic 236 : (3, 3.000000) count=38.036869
;	genLabel
;	Raw cost for generated ic 238 : (0, 0.000000) count=0.000000
;	src/joytest.c: 115: }
;	genEndFunction
	rts
;	Raw cost for generated ic 239 : (1, 6.000000) count=0.000000
	.area _CODE
	.area _XINIT
__xinit__toggle:
	.db #0x00	;  0
__xinit__isSGB:
	.db #0x00	;  0
__xinit__old_joy:
	.db #0xff	; 255
__xinit__joy:
	.db #0x00	; 0
	.area _CABS    (ABS)
