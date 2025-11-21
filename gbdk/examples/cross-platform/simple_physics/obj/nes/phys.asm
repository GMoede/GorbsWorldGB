;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module phys
	
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
	.globl _move_sprite
	.globl _set_sprite_tile
	.globl _set_sprite_data
	.globl _vsync
	.globl _joypad
	.globl _joy
	.globl _old_joy
	.globl _SpdY
	.globl _SpdX
	.globl _PosY
	.globl _PosX
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
	.ds 2
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
_PosX::
	.ds 2
_PosY::
	.ds 2
_SpdX::
	.ds 2
_SpdY::
	.ds 2
_old_joy::
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area _DATA
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
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc0         Allocated with name '_main_sloc0_1_0'
;------------------------------------------------------------
;	src/phys.c: 45: void main(void) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/phys.c: 51: set_sprite_data(0, 4, sprite_data);
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
;	src/phys.c: 54: set_sprite_tile(0, 0);
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x00
	tax
	jsr	_set_sprite_tile
;	Raw cost for generated ic 10 : (6, 10.000000) count=1.000000
;	src/phys.c: 57: SHOW_BKG; SHOW_SPRITES;
;	genOr
	lda	_shadow_PPUMASK
	ora	#0x08
	sta	_shadow_PPUMASK
;	Raw cost for generated ic 11 : (8, 10.000000) count=1.000000
;	genOr
	lda	_shadow_PPUMASK
	ora	#0x10
	sta	_shadow_PPUMASK
;	Raw cost for generated ic 13 : (8, 10.000000) count=1.000000
;	src/phys.c: 59: PosX = PosY = PIXELS_TO_SUBPIXELS(64);
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_PosY
	ldx	#0x04
	stx	(_PosY + 1)
;	Raw cost for generated ic 16 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_PosX
	ldx	#0x04
	stx	(_PosX + 1)
;	Raw cost for generated ic 18 : (10, 12.000000) count=1.000000
;	src/phys.c: 60: SpdX = SpdY = PIXELS_TO_SUBPIXELS(0);
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_SpdY
	stx	(_SpdY + 1)
;	Raw cost for generated ic 20 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	_SpdX
	stx	(_SpdX + 1)
;	Raw cost for generated ic 22 : (6, 8.000000) count=1.000000
;	src/phys.c: 62: while(TRUE) {
;	genLabel
00132$:
;	Raw cost for generated ic 25 : (0, 0.000000) count=72.000000
;	src/phys.c: 64: INPUT_PROCESS;
;	genAssign
;	genAssignLit
;	genCopy
	lda	_joy
	sta	_old_joy
;	Raw cost for generated ic 26 : (6, 9.000000) count=72.000000
;	genCall
	jsr	_joypad
;	assignResultValue
	tax
;	Raw cost for generated ic 28 : (4, 8.000000) count=72.000000
;	genAssign
;	genAssignLit
;	genCopy
	stx	_joy
;	Raw cost for generated ic 30 : (3, 5.000000) count=72.000000
;	src/phys.c: 67: if (INPUT_KEY(J_UP)) {
;	genAnd
	txa
	and	#0x08
;	genIfxJump : z
	beq	00108$
;	Raw cost for generated ic 32 : (8, 9.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 33 : (0, 0.000000) count=72.000000
;	src/phys.c: 68: SpdY -= Y_ACCELERATION_IN_SUBPIXELS;
;	genCast
;	genCopy
	ldx	(_SpdY + 1)
	lda	_SpdY
;	Raw cost for generated ic 36 : (6, 8.000000) count=54.000000
;	genMinus
;	genMinusDec
	sec
	sbc	#0x02
	bcs	00222$
	dex
00222$:
;	Raw cost for generated ic 37 : (6, 8.600000) count=54.000000
;	genCast
;	genCopy
	sta	_SpdY
	stx	(_SpdY + 1)
;	Raw cost for generated ic 38 : (6, 8.000000) count=54.000000
;	src/phys.c: 69: if (SpdY < -MAX_Y_SPEED_IN_SUBPIXELS) SpdY = -MAX_Y_SPEED_IN_SUBPIXELS;
;	genCmp
	lda	_SpdY
	sec
	sbc	#0xc0
	lda	(_SpdY + 1)
	sbc	#0xff
	bvc	00224$
	bpl	00223$
	bmi	00109$
00224$:
	bpl	00109$
00223$:
;	Raw cost for generated ic 41 : (22, 27.400002) count=54.000000
;	skipping generated iCode
;	Raw cost for generated ic 42 : (0, 0.000000) count=54.000000
;	genAssign
;	genAssignLit
	ldx	#0xc0
	stx	_SpdY
	ldx	#0xff
	stx	(_SpdY + 1)
;	Raw cost for generated ic 46 : (10, 12.000000) count=40.500000
;	genGoto
	jmp	00109$
;	Raw cost for generated ic 48 : (3, 3.000000) count=40.500000
;	genLabel
00108$:
;	Raw cost for generated ic 49 : (0, 0.000000) count=18.000000
;	src/phys.c: 70: } else if (INPUT_KEY(J_DOWN)) {
;	genAnd
	txa
	and	#0x04
;	genIfxJump : z
	beq	00109$
;	Raw cost for generated ic 51 : (8, 9.600000) count=18.000000
;	skipping generated iCode
;	Raw cost for generated ic 52 : (0, 0.000000) count=18.000000
;	src/phys.c: 71: SpdY += Y_ACCELERATION_IN_SUBPIXELS;
;	genCast
;	genCopy
	ldx	(_SpdY + 1)
	lda	_SpdY
;	Raw cost for generated ic 55 : (6, 8.000000) count=13.500000
;	genPlus
;	genPlusIncr
	clc
	adc	#0x02
	bcc	00228$
	inx
00228$:
;	Raw cost for generated ic 56 : (6, 8.600000) count=13.500000
;	genCast
;	genCopy
;	Raw cost for generated ic 57 : (6, 8.000000) count=13.500000
;	src/phys.c: 72: if (SpdY > MAX_Y_SPEED_IN_SUBPIXELS) SpdY = MAX_Y_SPEED_IN_SUBPIXELS;
;	genCast
;	genCopy
	sta	_SpdY
	stx	(_SpdY + 1)
;	Raw cost for generated ic 60 : (6, 8.000000) count=13.500000
;	genCmp
	sta	*(REGTEMP+0)
	lda	#0x40
	sec
	sbc	*(REGTEMP+0)
	lda	#0x00
	stx	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	bvc	00230$
	bpl	00229$
	bmi	00109$
00230$:
	bpl	00109$
00229$:
;	Raw cost for generated ic 61 : (24, 31.400002) count=13.500000
;	skipping generated iCode
;	Raw cost for generated ic 62 : (0, 0.000000) count=13.500000
;	genAssign
;	genAssignLit
	ldx	#0x40
	stx	_SpdY
	ldx	#0x00
	stx	(_SpdY + 1)
;	Raw cost for generated ic 66 : (10, 12.000000) count=10.125000
;	genLabel
00109$:
;	Raw cost for generated ic 69 : (0, 0.000000) count=72.000000
;	src/phys.c: 74: if (INPUT_KEY(J_LEFT)) {
;	genCast
;	genCopy
	ldx	_joy
;	Raw cost for generated ic 70 : (3, 4.000000) count=72.000000
;	genAnd
	txa
	and	#0x02
;	genIfxJump : z
	beq	00117$
;	Raw cost for generated ic 71 : (8, 9.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 72 : (0, 0.000000) count=72.000000
;	src/phys.c: 75: SpdX -= X_ACCELERATION_IN_SUBPIXELS;
;	genCast
;	genCopy
	ldx	(_SpdX + 1)
	lda	_SpdX
;	Raw cost for generated ic 75 : (6, 8.000000) count=54.000000
;	genMinus
;	genMinusDec
	sec
	sbc	#0x02
	bcs	00234$
	dex
00234$:
;	Raw cost for generated ic 76 : (6, 8.600000) count=54.000000
;	genCast
;	genCopy
	sta	_SpdX
	stx	(_SpdX + 1)
;	Raw cost for generated ic 77 : (6, 8.000000) count=54.000000
;	src/phys.c: 76: if (SpdX < -MAX_X_SPEED_IN_SUBPIXELS) SpdX = -MAX_X_SPEED_IN_SUBPIXELS;
;	genCmp
	lda	_SpdX
	sec
	sbc	#0xc0
	lda	(_SpdX + 1)
	sbc	#0xff
	bvc	00236$
	bpl	00235$
	bmi	00118$
00236$:
	bpl	00118$
00235$:
;	Raw cost for generated ic 80 : (22, 27.400002) count=54.000000
;	skipping generated iCode
;	Raw cost for generated ic 81 : (0, 0.000000) count=54.000000
;	genAssign
;	genAssignLit
	ldx	#0xc0
	stx	_SpdX
	ldx	#0xff
	stx	(_SpdX + 1)
;	Raw cost for generated ic 85 : (10, 12.000000) count=40.500000
;	genGoto
	jmp	00118$
;	Raw cost for generated ic 87 : (3, 3.000000) count=40.500000
;	genLabel
00117$:
;	Raw cost for generated ic 88 : (0, 0.000000) count=18.000000
;	src/phys.c: 77: } else if (INPUT_KEY(J_RIGHT)) {
;	genAnd
	txa
	and	#0x01
;	genIfxJump : z
	beq	00118$
;	Raw cost for generated ic 90 : (8, 9.600000) count=18.000000
;	skipping generated iCode
;	Raw cost for generated ic 91 : (0, 0.000000) count=18.000000
;	src/phys.c: 78: SpdX += X_ACCELERATION_IN_SUBPIXELS;
;	genCast
;	genCopy
	ldx	(_SpdX + 1)
	lda	_SpdX
;	Raw cost for generated ic 94 : (6, 8.000000) count=13.500000
;	genPlus
;	genPlusIncr
	clc
	adc	#0x02
	bcc	00240$
	inx
00240$:
;	Raw cost for generated ic 95 : (6, 8.600000) count=13.500000
;	genCast
;	genCopy
;	Raw cost for generated ic 96 : (6, 8.000000) count=13.500000
;	src/phys.c: 79: if (SpdX > MAX_X_SPEED_IN_SUBPIXELS) SpdX = MAX_X_SPEED_IN_SUBPIXELS;
;	genCast
;	genCopy
	sta	_SpdX
	stx	(_SpdX + 1)
;	Raw cost for generated ic 99 : (6, 8.000000) count=13.500000
;	genCmp
	sta	*(REGTEMP+0)
	lda	#0x40
	sec
	sbc	*(REGTEMP+0)
	lda	#0x00
	stx	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	bvc	00242$
	bpl	00241$
	bmi	00118$
00242$:
	bpl	00118$
00241$:
;	Raw cost for generated ic 100 : (24, 31.400002) count=13.500000
;	skipping generated iCode
;	Raw cost for generated ic 101 : (0, 0.000000) count=13.500000
;	genAssign
;	genAssignLit
	ldx	#0x40
	stx	_SpdX
	ldx	#0x00
	stx	(_SpdX + 1)
;	Raw cost for generated ic 105 : (10, 12.000000) count=10.125000
;	genLabel
00118$:
;	Raw cost for generated ic 108 : (0, 0.000000) count=72.000000
;	src/phys.c: 82: if (INPUT_KEYPRESS(J_A)) {
;	genCast
;	genCopy
	ldx	#0x00
	lda	_old_joy
;	Raw cost for generated ic 109 : (5, 6.000000) count=72.000000
;	genCpl
	eor	#0xff
	sta	*_main_sloc0_1_0
	txa
	eor	#0xff
	sta	*(_main_sloc0_1_0 + 1)
;	Raw cost for generated ic 110 : (9, 12.000000) count=72.000000
;	genCast
;	genCopy
	lda	_joy
;	Raw cost for generated ic 111 : (3, 4.000000) count=72.000000
;	genAnd
	and	*_main_sloc0_1_0
	sta	*_main_sloc0_1_0
	txa
	and	*(_main_sloc0_1_0 + 1)
	sta	*(_main_sloc0_1_0 + 1)
;	Raw cost for generated ic 112 : (9, 14.000000) count=72.000000
;	genAnd
	bit	*_main_sloc0_1_0
;	genIfxJump : n
	bpl	00120$
;	Raw cost for generated ic 113 : (7, 8.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 114 : (0, 0.000000) count=72.000000
;	src/phys.c: 83: SpdY = -JUMP_ACCELERATION_IN_SUBPIXELS;
;	genAssign
;	genAssignLit
	ldx	#0xe0
	stx	_SpdY
	ldx	#0xff
	stx	(_SpdY + 1)
;	Raw cost for generated ic 118 : (10, 12.000000) count=54.000000
;	genLabel
00120$:
;	Raw cost for generated ic 119 : (0, 0.000000) count=72.000000
;	src/phys.c: 87: PosX += SpdX, PosY += SpdY;
;	genPlus
;	genPlusIncr
	lda	_PosX
	clc
	adc	_SpdX
	sta	_PosX
	lda	(_PosX + 1)
	adc	(_SpdX + 1)
	sta	(_PosX + 1)
;	Raw cost for generated ic 120 : (19, 26.000000) count=72.000000
;	genPlus
;	genPlusIncr
	lda	_PosY
	clc
	adc	_SpdY
	sta	_PosY
	lda	(_PosY + 1)
	adc	(_SpdY + 1)
	sta	(_PosY + 1)
;	Raw cost for generated ic 123 : (19, 26.000000) count=72.000000
;	src/phys.c: 90: move_sprite(0, SUBPIXELS_TO_PIXELS(PosX), SUBPIXELS_TO_PIXELS(PosY));
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	ldx	(_PosX + 1)
	lda	_PosX
	stx	*(REGTEMP+0)
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
;	Raw cost for generated ic 126 : (30, 50.000000) count=72.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 127 : (1, 2.000000) count=72.000000
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	tay 
	ldx	(_PosY + 1)
	lda	_PosY
	stx	*(REGTEMP+0)
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 128 : (30, 50.000000) count=72.000000
;	genCast
;	genCopy
	sta	_move_sprite_PARM_3
;	Raw cost for generated ic 129 : (3, 4.000000) count=72.000000
;	Raw cost for generated ic 130 : (0, 0.000000) count=72.000000
;	Raw cost for generated ic 131 : (0, 0.000000) count=72.000000
;	genCall
;	genSend
	lda	#0x00
	sty	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
	jsr	_move_sprite
;	Raw cost for generated ic 133 : (9, 14.000000) count=72.000000
;	src/phys.c: 93: if (SpdY < 0) SpdY++; else if (SpdY) SpdY--;
;	genCast
;	genCopy
	lda	(_SpdY + 1)
	sta	*(_main_sloc0_1_0 + 1)
	lda	_SpdY
	sta	*_main_sloc0_1_0
;	Raw cost for generated ic 134 : (10, 14.000000) count=72.000000
;	genCmp
	bit	*(_main_sloc0_1_0 + 1)
	bpl	00124$
;	Raw cost for generated ic 135 : (7, 8.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 136 : (0, 0.000000) count=72.000000
;	genPlus
;	genPlusIncr
	inc	_SpdY
	bne	00125$
	inc	(_SpdY + 1)
;	Raw cost for generated ic 140 : (8, 14.600000) count=54.000000
;	genGoto
	jmp	00125$
;	Raw cost for generated ic 143 : (3, 3.000000) count=54.000000
;	genLabel
00124$:
;	Raw cost for generated ic 144 : (0, 0.000000) count=18.000000
;	genIfx
	lda	(_SpdY + 1)
	ora	_SpdY
;	genIfxJump : z
	beq	00125$
;	Raw cost for generated ic 145 : (11, 13.600000) count=18.000000
;	genMinus
;	genMinusDec
	sec
	lda	_SpdY
	sbc	#0x01
	sta	_SpdY
	bcs	00249$
	dec	(_SpdY + 1)
00249$:
;	Raw cost for generated ic 149 : (14, 20.600000) count=13.500000
;	genLabel
00125$:
;	Raw cost for generated ic 153 : (0, 0.000000) count=72.000000
;	src/phys.c: 94: if (SpdX < 0) SpdX++; else if (SpdX) SpdX--;
;	genCast
;	genCopy
	lda	(_SpdX + 1)
	sta	*(_main_sloc0_1_0 + 1)
	lda	_SpdX
	sta	*_main_sloc0_1_0
;	Raw cost for generated ic 154 : (10, 14.000000) count=72.000000
;	genCmp
	bit	*(_main_sloc0_1_0 + 1)
	bpl	00129$
;	Raw cost for generated ic 155 : (7, 8.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 156 : (0, 0.000000) count=72.000000
;	genPlus
;	genPlusIncr
	inc	_SpdX
	bne	00130$
	inc	(_SpdX + 1)
;	Raw cost for generated ic 160 : (8, 14.600000) count=54.000000
;	genGoto
	jmp	00130$
;	Raw cost for generated ic 163 : (3, 3.000000) count=54.000000
;	genLabel
00129$:
;	Raw cost for generated ic 164 : (0, 0.000000) count=18.000000
;	genIfx
	lda	(_SpdX + 1)
	ora	_SpdX
;	genIfxJump : z
	beq	00130$
;	Raw cost for generated ic 165 : (11, 13.600000) count=18.000000
;	genMinus
;	genMinusDec
	sec
	lda	_SpdX
	sbc	#0x01
	sta	_SpdX
	bcs	00254$
	dec	(_SpdX + 1)
00254$:
;	Raw cost for generated ic 169 : (14, 20.600000) count=13.500000
;	genLabel
00130$:
;	Raw cost for generated ic 173 : (0, 0.000000) count=72.000000
;	src/phys.c: 97: vsync();
;	genCall
	jsr	_vsync
;	Raw cost for generated ic 174 : (3, 6.000000) count=72.000000
;	genGoto
	jmp	00132$
;	Raw cost for generated ic 175 : (3, 3.000000) count=72.000000
;	genLabel
;	Raw cost for generated ic 177 : (0, 0.000000) count=0.000000
;	src/phys.c: 99: }
;	genEndFunction
	rts
;	Raw cost for generated ic 178 : (1, 6.000000) count=0.000000
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
__xinit__joy:
	.db #0x00	; 0
	.area _CABS    (ABS)
