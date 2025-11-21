;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module multiplayer
	
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
	.globl _sprite_data
	.globl _main
	.globl _scroll_sprite
	.globl _move_sprite
	.globl _set_sprite_tile
	.globl _set_sprite_data
	.globl _vsync
	.globl _joypad_ex
	.globl _joypad_init
	.globl _joypads
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
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_main_sloc0_1_0:
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
_joypads::
	.ds 5
_main_joy_40000_106:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area _DATA
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
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i             Allocated to registers 
;i             Allocated to registers 
;i             Allocated to registers 
;joy           Allocated with name '_main_joy_40000_106'
;i             Allocated to registers 
;sloc0         Allocated with name '_main_sloc0_1_0'
;------------------------------------------------------------
;	src/multiplayer.c: 14: void main(void) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/multiplayer.c: 15: set_sprite_data(0, 4, sprite_data);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_sprite_data
	sta	(_set_sprite_data_PARM_3 + 1)
	lda	#_sprite_data
	sta	_set_sprite_data_PARM_3
;	Raw cost for generated ic 3 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x00
	ldx	#0x04
	jsr	_set_sprite_data
;	Raw cost for generated ic 7 : (7, 10.000000) count=1.000000
;	src/multiplayer.c: 16: for (uint8_t i = 0; i < 4; i++) {
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_main_sloc0_1_0
;	Raw cost for generated ic 155 : (4, 5.000000) count=1.000000
;	genLabel
00119$:
;	Raw cost for generated ic 9 : (0, 0.000000) count=3.999997
;	genCmp
	lda	*_main_sloc0_1_0
	cmp	#0x04
	bcs	00101$
;	Raw cost for generated ic 10 : (9, 10.600000) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 11 : (0, 0.000000) count=3.999997
;	src/multiplayer.c: 17: set_sprite_tile(i, i);
;	Raw cost for generated ic 14 : (0, 0.000000) count=2.999997
;	Raw cost for generated ic 15 : (0, 0.000000) count=2.999997
;	genCall
;	genSend
	lda	*_main_sloc0_1_0
	ldx	*_main_sloc0_1_0
	jsr	_set_sprite_tile
;	Raw cost for generated ic 16 : (7, 12.000000) count=2.999997
;	src/multiplayer.c: 19: DEVICE_SPRITE_PX_OFFSET_X + (i << 3) + ((DEVICE_SCREEN_PX_WIDTH - (4 * 8)) / 2), 
;	genLeftShift
;	genLeftShiftLiteral
;	genlshOne
	lda	*_main_sloc0_1_0
	asl	a
	asl	a
	asl	a
;	Raw cost for generated ic 17 : (5, 9.000000) count=2.999997
;	genCast
;	genCopy
;	Raw cost for generated ic 18 : (0, 0.000000) count=2.999997
;	genPlus
;	genPlusIncr
	clc
	adc	#0x70
;	Raw cost for generated ic 19 : (3, 4.000000) count=2.999997
;	src/multiplayer.c: 20: DEVICE_SPRITE_PX_OFFSET_Y + ((DEVICE_SCREEN_PX_HEIGHT - 8) / 2));
;	genAssign
;	genAssignLit
	ldx	#0x73
	stx	_move_sprite_PARM_3
;	Raw cost for generated ic 22 : (5, 6.000000) count=2.999997
;	Raw cost for generated ic 20 : (0, 0.000000) count=2.999997
;	Raw cost for generated ic 21 : (0, 0.000000) count=2.999997
;	genCall
;	genSend
	tax
	lda	*_main_sloc0_1_0
	jsr	_move_sprite
;	Raw cost for generated ic 23 : (6, 11.000000) count=2.999997
;	src/multiplayer.c: 16: for (uint8_t i = 0; i < 4; i++) {
;	genPlus
;	genPlusIncr
	inc	*_main_sloc0_1_0
;	Raw cost for generated ic 26 : (2, 5.000000) count=2.999997
;	genGoto
	jmp	00119$
;	Raw cost for generated ic 28 : (3, 3.000000) count=2.999997
;	genLabel
00101$:
;	Raw cost for generated ic 29 : (0, 0.000000) count=0.999999
;	src/multiplayer.c: 22: SHOW_SPRITES;
;	genOr
	lda	_shadow_PPUMASK
	ora	#0x10
	sta	_shadow_PPUMASK
;	Raw cost for generated ic 30 : (8, 10.000000) count=0.999999
;	src/multiplayer.c: 26: for (uint8_t i = 4; i != 0; i--) vsync();
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x04
;	Raw cost for generated ic 158 : (2, 2.000000) count=0.999999
;	genLabel
00122$:
;	Raw cost for generated ic 33 : (0, 0.000000) count=3.999993
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 34 : (7, 7.600000) count=3.999993
;	genCall
	pha
	jsr	_vsync
	pla
;	Raw cost for generated ic 37 : (5, 13.000000) count=2.999994
;	genMinus
;	genMinusDec
	sec
	sbc	#0x01
;	Raw cost for generated ic 40 : (3, 4.000000) count=2.999994
;	genGoto
	jmp	00122$
;	Raw cost for generated ic 42 : (3, 3.000000) count=2.999994
;	genLabel
00102$:
;	Raw cost for generated ic 43 : (0, 0.000000) count=0.999998
;	src/multiplayer.c: 29: joypad_init(4, &joypads);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 44 : (0, 0.000000) count=0.999998
;	genCast
;	genCopy
	lda	#>_joypads
	sta	(_joypad_init_PARM_2 + 1)
	lda	#_joypads
	sta	_joypad_init_PARM_2
;	Raw cost for generated ic 45 : (10, 12.000000) count=0.999998
;	Raw cost for generated ic 46 : (0, 0.000000) count=0.999998
;	genCall
;	genSend
	lda	#0x04
	jsr	_joypad_init
;	Raw cost for generated ic 48 : (5, 8.000000) count=0.999998
;	src/multiplayer.c: 31: while(1) {
;	genLabel
00116$:
;	Raw cost for generated ic 51 : (0, 0.000000) count=11.249851
;	src/multiplayer.c: 33: joypad_ex(&joypads);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 53 : (0, 0.000000) count=11.249851
;	Raw cost for generated ic 54 : (0, 0.000000) count=11.249851
;	genCall
;	genSend
	ldx	#>_joypads
	lda	#_joypads
	jsr	_joypad_ex
;	Raw cost for generated ic 55 : (7, 10.000000) count=11.249851
;	src/multiplayer.c: 35: for (uint8_t i = 0; i < joypads.npads; i++) {
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 66 : (0, 0.000000) count=11.249851
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_main_sloc0_1_0
;	Raw cost for generated ic 161 : (4, 5.000000) count=11.249851
;	genLabel
00125$:
;	Raw cost for generated ic 57 : (0, 0.000000) count=43.079407
;	genPointerGet
;	genDataPointerGet
	lda	_joypads
;	Raw cost for generated ic 60 : (3, 4.000000) count=43.079407
;	genCmp
	cmp	*_main_sloc0_1_0
	beq	00111$
	bcc	00111$
;	Raw cost for generated ic 61 : (9, 11.200000) count=43.079407
;	skipping generated iCode
;	Raw cost for generated ic 62 : (0, 0.000000) count=43.079407
;	src/multiplayer.c: 36: uint8_t joy = joypads.joypads[i];
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
	lda	*_main_sloc0_1_0
;	Raw cost for generated ic 68 : (4, 5.000000) count=32.309555
;	genPointerGet
	tay
	lda	((_joypads + 0x0001)+0+0x0000),y
;	Raw cost for generated ic 69 : (4, 6.000000) count=32.309555
;	genCast
;	genCopy
;	Raw cost for generated ic 70 : (3, 4.000000) count=32.309555
;	src/multiplayer.c: 37: if (joy & J_LEFT) scroll_sprite(i, -1, 0);
;	genAnd
	sta	_main_joy_40000_106
	and	#0x02
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 72 : (10, 11.600000) count=32.309555
;	skipping generated iCode
;	Raw cost for generated ic 73 : (0, 0.000000) count=32.309555
;	genAssign
;	genAssignLit
	stx	_scroll_sprite_PARM_3
;	Raw cost for generated ic 78 : (3, 4.000000) count=24.232166
;	Raw cost for generated ic 76 : (0, 0.000000) count=24.232166
;	Raw cost for generated ic 77 : (0, 0.000000) count=24.232166
;	genCall
;	genSend
	lda	*_main_sloc0_1_0
	dex
	jsr	_scroll_sprite
;	Raw cost for generated ic 79 : (6, 11.000000) count=24.232166
;	genLabel
00104$:
;	Raw cost for generated ic 80 : (0, 0.000000) count=32.309555
;	src/multiplayer.c: 38: if (joy & J_RIGHT) scroll_sprite(i, 1, 0);
;	genAnd
	lda	_main_joy_40000_106
	and	#0x01
;	genIfxJump : z
	beq	00106$
;	Raw cost for generated ic 82 : (10, 11.600000) count=32.309555
;	skipping generated iCode
;	Raw cost for generated ic 83 : (0, 0.000000) count=32.309555
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_scroll_sprite_PARM_3
;	Raw cost for generated ic 88 : (5, 6.000000) count=24.232166
;	Raw cost for generated ic 86 : (0, 0.000000) count=24.232166
;	Raw cost for generated ic 87 : (0, 0.000000) count=24.232166
;	genCall
;	genSend
	lda	*_main_sloc0_1_0
	inx
	jsr	_scroll_sprite
;	Raw cost for generated ic 89 : (6, 11.000000) count=24.232166
;	genLabel
00106$:
;	Raw cost for generated ic 90 : (0, 0.000000) count=32.309555
;	src/multiplayer.c: 39: if (joy & J_UP) scroll_sprite(i, 0, -1);
;	genAnd
	lda	_main_joy_40000_106
	and	#0x08
;	genIfxJump : z
	beq	00108$
;	Raw cost for generated ic 92 : (10, 11.600000) count=32.309555
;	skipping generated iCode
;	Raw cost for generated ic 93 : (0, 0.000000) count=32.309555
;	genAssign
;	genAssignLit
	ldx	#0xff
	stx	_scroll_sprite_PARM_3
;	Raw cost for generated ic 98 : (5, 6.000000) count=24.232166
;	Raw cost for generated ic 96 : (0, 0.000000) count=24.232166
;	Raw cost for generated ic 97 : (0, 0.000000) count=24.232166
;	genCall
;	genSend
	lda	*_main_sloc0_1_0
	inx
	jsr	_scroll_sprite
;	Raw cost for generated ic 99 : (6, 11.000000) count=24.232166
;	genLabel
00108$:
;	Raw cost for generated ic 100 : (0, 0.000000) count=32.309555
;	src/multiplayer.c: 40: if (joy & J_DOWN) scroll_sprite(i, 0, 1);
;	genAnd
	lda	_main_joy_40000_106
	and	#0x04
;	genIfxJump : z
	beq	00126$
;	Raw cost for generated ic 102 : (10, 11.600000) count=32.309555
;	skipping generated iCode
;	Raw cost for generated ic 103 : (0, 0.000000) count=32.309555
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_scroll_sprite_PARM_3
;	Raw cost for generated ic 108 : (5, 6.000000) count=24.232166
;	Raw cost for generated ic 106 : (0, 0.000000) count=24.232166
;	Raw cost for generated ic 107 : (0, 0.000000) count=24.232166
;	genCall
;	genSend
	lda	*_main_sloc0_1_0
	dex
	jsr	_scroll_sprite
;	Raw cost for generated ic 109 : (6, 11.000000) count=24.232166
;	genLabel
00126$:
;	Raw cost for generated ic 111 : (0, 0.000000) count=32.309555
;	src/multiplayer.c: 35: for (uint8_t i = 0; i < joypads.npads; i++) {
;	genPlus
;	genPlusIncr
	inc	*_main_sloc0_1_0
;	Raw cost for generated ic 113 : (2, 5.000000) count=32.309555
;	genGoto
	jmp	00125$
;	Raw cost for generated ic 115 : (3, 3.000000) count=32.309555
;	genLabel
00111$:
;	Raw cost for generated ic 116 : (0, 0.000000) count=10.769852
;	src/multiplayer.c: 43: if (joypads.joy0 & J_START) {
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 118 : (0, 0.000000) count=10.769852
;	genPointerGet
;	genDataPointerGet
	lda	(_joypads + 0x0001)
;	Raw cost for generated ic 119 : (3, 4.000000) count=10.769852
;	genAnd
	and	#0x10
;	genIfxJump : z
	beq	00114$
;	Raw cost for generated ic 121 : (7, 7.600000) count=10.769852
;	skipping generated iCode
;	Raw cost for generated ic 122 : (0, 0.000000) count=10.769852
;	src/multiplayer.c: 44: for (uint8_t i = 0; i < 4; i++) move_sprite(i, (i << 3) + 64, 64);
;	genAssign
;	genAssignLit
;	genCopy
	ldy	#0x00
;	Raw cost for generated ic 164 : (2, 2.000000) count=8.077389
;	genLabel
00128$:
;	Raw cost for generated ic 126 : (0, 0.000000) count=30.869558
;	genCmp
	cpy	#0x04
	bcs	00114$
;	Raw cost for generated ic 127 : (7, 7.600000) count=30.869558
;	skipping generated iCode
;	Raw cost for generated ic 128 : (0, 0.000000) count=30.869558
;	genLeftShift
;	genLeftShiftLiteral
;	genlshOne
	tya
	asl	a
	asl	a
	asl	a
;	Raw cost for generated ic 131 : (4, 8.000000) count=23.152168
;	genCast
;	genCopy
;	Raw cost for generated ic 132 : (0, 0.000000) count=23.152168
;	genPlus
;	genPlusIncr
	clc
	adc	#0x40
;	Raw cost for generated ic 133 : (3, 4.000000) count=23.152168
;	genAssign
;	genAssignLit
	ldx	#0x40
	stx	_move_sprite_PARM_3
;	Raw cost for generated ic 136 : (5, 6.000000) count=23.152168
;	Raw cost for generated ic 134 : (0, 0.000000) count=23.152168
;	Raw cost for generated ic 135 : (0, 0.000000) count=23.152168
;	genCall
	sta	*(REGTEMP+0)
	tya
	pha
	lda	*(REGTEMP+0)
;	genSend
	tax
	tya
	jsr	_move_sprite
	sta	*(REGTEMP+0)
	pla
	tay
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 137 : (17, 33.000000) count=23.152168
;	genPlus
;	genPlusIncr
	iny
;	Raw cost for generated ic 140 : (1, 2.000000) count=23.152168
;	genGoto
	jmp	00128$
;	Raw cost for generated ic 142 : (3, 3.000000) count=23.152168
;	genLabel
00114$:
;	Raw cost for generated ic 144 : (0, 0.000000) count=10.409852
;	src/multiplayer.c: 46: vsync();
;	genCall
	jsr	_vsync
;	Raw cost for generated ic 145 : (3, 6.000000) count=10.409852
;	genGoto
	jmp	00116$
;	Raw cost for generated ic 146 : (3, 3.000000) count=10.409852
;	genLabel
;	Raw cost for generated ic 148 : (0, 0.000000) count=0.000000
;	src/multiplayer.c: 48: }
;	genEndFunction
	rts
;	Raw cost for generated ic 149 : (1, 6.000000) count=0.000000
	.area _CODE
_sprite_data:
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x7e	; 126
	.db #0x99	; 153
	.db #0xff	; 255
	.db #0xa9	; 169
	.db #0xff	; 255
	.db #0x89	; 137
	.db #0xff	; 255
	.db #0x89	; 137
	.db #0xff	; 255
	.db #0x42	; 66	'B'
	.db #0x7e	; 126
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x7e	; 126
	.db #0xb9	; 185
	.db #0xff	; 255
	.db #0x89	; 137
	.db #0xff	; 255
	.db #0x91	; 145
	.db #0xff	; 255
	.db #0xb9	; 185
	.db #0xff	; 255
	.db #0x42	; 66	'B'
	.db #0x7e	; 126
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x7e	; 126
	.db #0x99	; 153
	.db #0xff	; 255
	.db #0x89	; 137
	.db #0xff	; 255
	.db #0x99	; 153
	.db #0xff	; 255
	.db #0x89	; 137
	.db #0xff	; 255
	.db #0x5a	; 90	'Z'
	.db #0x7e	; 126
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x7e	; 126
	.db #0xa9	; 169
	.db #0xff	; 255
	.db #0xa9	; 169
	.db #0xff	; 255
	.db #0xb9	; 185
	.db #0xff	; 255
	.db #0x89	; 137
	.db #0xff	; 255
	.db #0x42	; 66	'B'
	.db #0x7e	; 126
	.db #0x3c	; 60
	.db #0x3c	; 60
	.area _XINIT
	.area _CABS    (ABS)
