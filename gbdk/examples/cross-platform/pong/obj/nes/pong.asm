;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module pong
	
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
	.globl _HUD
	.globl _main
	.globl _init_pad
	.globl _printf
	.globl _gotoxy
	.globl _move_sprite
	.globl _set_sprite_tile
	.globl _set_sprite_data
	.globl _vsync
	.globl _joypad_ex
	.globl _joypad_init
	.globl _sprite_data
	.globl _spd_ballY
	.globl _spd_ballX
	.globl _ballY
	.globl _ballX
	.globl _player2_score
	.globl _player1_score
	.globl _player2
	.globl _player1
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
_init_pad_n_10000_110:
	.ds 1
_joypads::
	.ds 5
_player1::
	.ds 1
_player2::
	.ds 1
_player1_score::
	.ds 2
_player2_score::
	.ds 2
_ballX::
	.ds 1
_ballY::
	.ds 1
_spd_ballX::
	.ds 1
_spd_ballY::
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area _DATA
_sprite_data::
	.ds 64
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
;Allocation info for local variables in function 'init_pad'
;------------------------------------------------------------
;n             Allocated with name '_init_pad_n_10000_110'
;------------------------------------------------------------
;	src/pong.c: 16: void init_pad(uint8_t n) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function init_pad
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_init_pad:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	src/pong.c: 17: set_sprite_tile(n << 2, n);
;	genLeftShift
;	genLeftShiftLiteral
;	genlshOne
	sta	_init_pad_n_10000_110
	asl	a
	asl	a
;	Raw cost for generated ic 3 : (5, 8.000000) count=1.000000
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
	pha
;	genSend
	ldx	_init_pad_n_10000_110
	jsr	_set_sprite_tile
	pla
;	Raw cost for generated ic 6 : (8, 17.000000) count=1.000000
;	src/pong.c: 18: set_sprite_tile((n << 2) + 1, n);
;	genCast
;	genCopy
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genPlus
;	genPlusIncr
	pha
	clc
	adc	#0x01
;	Raw cost for generated ic 9 : (6, 13.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tay
	ldx	_init_pad_n_10000_110
	jsr	_set_sprite_tile
	pla
;	Raw cost for generated ic 12 : (9, 19.000000) count=1.000000
;	src/pong.c: 19: set_sprite_tile((n << 2) + 2, n);
;	genPlus
;	genPlusIncr
	clc
	adc	#0x02
;	Raw cost for generated ic 15 : (3, 4.000000) count=1.000000
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	_init_pad_n_10000_110
;	Raw cost for generated ic 18 : (6, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	src/pong.c: 20: }
;	genEndFunction
	jmp	_set_sprite_tile
;	Raw cost for generated ic 20 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc0         Allocated with name '_main_sloc0_1_0'
;__300000009   Allocated to registers 
;__300000010   Allocated to registers 
;__300000011   Allocated to registers x 
;n             Allocated to registers 
;x             Allocated to registers 
;y             Allocated to registers a 
;__300000013   Allocated to registers 
;__300000014   Allocated to registers 
;__300000015   Allocated to registers x 
;n             Allocated to registers 
;x             Allocated to registers 
;y             Allocated to registers a 
;------------------------------------------------------------
;	src/pong.c: 51: void main(void) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/pong.c: 56: set_sprite_data(0, 4, sprite_data);
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
;	src/pong.c: 59: init_pad(0);
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x00
	jsr	_init_pad
;	Raw cost for generated ic 9 : (5, 8.000000) count=1.000000
;	src/pong.c: 60: init_pad(1);
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x01
	jsr	_init_pad
;	Raw cost for generated ic 11 : (5, 8.000000) count=1.000000
;	src/pong.c: 63: set_sprite_tile(3, 2);
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x03
	ldx	#0x02
	jsr	_set_sprite_tile
;	Raw cost for generated ic 14 : (7, 10.000000) count=1.000000
;	src/pong.c: 66: SHOW_BKG; SHOW_SPRITES;
;	genOr
	lda	_shadow_PPUMASK
	ora	#0x08
	sta	_shadow_PPUMASK
;	Raw cost for generated ic 15 : (8, 10.000000) count=1.000000
;	genOr
	lda	_shadow_PPUMASK
	ora	#0x10
	sta	_shadow_PPUMASK
;	Raw cost for generated ic 17 : (8, 10.000000) count=1.000000
;	src/pong.c: 69: if (joypad_init(2, &joypads) != 2) {
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_joypads
	sta	(_joypad_init_PARM_2 + 1)
	lda	#_joypads
	sta	_joypad_init_PARM_2
;	Raw cost for generated ic 20 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x02
	jsr	_joypad_init
;	assignResultValue
;	Raw cost for generated ic 23 : (5, 8.000000) count=1.000000
;	genCmpEQorNE
	cmp	#0x02
	beq	00102$
;	Raw cost for generated ic 24 : (7, 7.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	src/pong.c: 70: printf("Device must support\nat least two joypads");
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 28 : (0, 0.000000) count=0.750000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 29 : (0, 0.000000) count=0.750000
;	genIpush
	lda	#>___str_0
	pha
	lda	#___str_0
	pha
;	Raw cost for generated ic 30 : (6, 10.000000) count=0.750000
;	genCall
	jsr	_printf
	pla
	pla
;	Raw cost for generated ic 31 : (5, 14.000000) count=0.750000
;	src/pong.c: 71: return;
;	genRet
	rts
;	Raw cost for generated ic 32 : (3, 3.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 33 : (0, 0.000000) count=1.000000
;	src/pong.c: 75: player1 = 64, player2 = 64;
;	genAssign
;	genAssignLit
	ldx	#0x40
	stx	_player1
;	Raw cost for generated ic 35 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	_player2
;	Raw cost for generated ic 37 : (3, 4.000000) count=1.000000
;	src/pong.c: 76: player1_score = player2_score = 0;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_player2_score
	stx	(_player2_score + 1)
;	Raw cost for generated ic 39 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	_player1_score
	stx	(_player1_score + 1)
;	Raw cost for generated ic 41 : (6, 8.000000) count=1.000000
;	src/pong.c: 79: printf(HUD, player1_score, player2_score);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 42 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 43 : (0, 0.000000) count=1.000000
;	genIpush
	txa
	pha
	pha
;	Raw cost for generated ic 44 : (3, 8.000000) count=1.000000
;	genIpush
	pha
	pha
;	Raw cost for generated ic 45 : (2, 6.000000) count=1.000000
;	genIpush
	lda	#>_HUD
	pha
	lda	#_HUD
	pha
;	Raw cost for generated ic 46 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 47 : (9, 30.000000) count=1.000000
;	src/pong.c: 82: ballX = INITBALLX, ballY = INITBALLY;
;	genAssign
;	genAssignLit
	ldx	#0x54
	stx	_ballX
;	Raw cost for generated ic 49 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x48
	stx	_ballY
;	Raw cost for generated ic 51 : (5, 6.000000) count=1.000000
;	src/pong.c: 83: spd_ballX = 1, spd_ballY = 1;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_spd_ballX
;	Raw cost for generated ic 53 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	_spd_ballY
;	Raw cost for generated ic 55 : (3, 4.000000) count=1.000000
;	src/pong.c: 85: while(1) {
;	genLabel
00143$:
;	Raw cost for generated ic 58 : (0, 0.000000) count=72.000000
;	src/pong.c: 87: joypad_ex(&joypads);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 60 : (0, 0.000000) count=72.000000
;	Raw cost for generated ic 61 : (0, 0.000000) count=72.000000
;	genCall
;	genSend
	ldx	#>_joypads
	lda	#_joypads
	jsr	_joypad_ex
;	Raw cost for generated ic 62 : (7, 10.000000) count=72.000000
;	src/pong.c: 90: if (joypads.joy0 & J_UP) {
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 64 : (0, 0.000000) count=72.000000
;	genPointerGet
;	genDataPointerGet
	ldx	(_joypads + 0x0001)
;	Raw cost for generated ic 65 : (3, 4.000000) count=72.000000
;	genAnd
	txa
	and	#0x08
;	genIfxJump : z
	beq	00110$
;	Raw cost for generated ic 67 : (8, 9.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 68 : (0, 0.000000) count=72.000000
;	src/pong.c: 91: player1 -= 2;
;	genCast
;	genCopy
	lda	_player1
;	Raw cost for generated ic 71 : (3, 4.000000) count=54.000000
;	genMinus
;	genMinusDec
	sec
	sbc	#0x02
;	Raw cost for generated ic 72 : (6, 8.000000) count=54.000000
;	src/pong.c: 92: if (player1 < YMIN) player1 = YMIN;
;	genCmp
	sta	_player1
	cmp	#0x1c
	bcs	00111$
;	Raw cost for generated ic 75 : (10, 11.600000) count=54.000000
;	skipping generated iCode
;	Raw cost for generated ic 76 : (0, 0.000000) count=54.000000
;	genAssign
;	genAssignLit
	ldx	#0x1c
	stx	_player1
;	Raw cost for generated ic 80 : (5, 6.000000) count=40.500000
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 82 : (3, 3.000000) count=40.500000
;	genLabel
00110$:
;	Raw cost for generated ic 83 : (0, 0.000000) count=18.000000
;	src/pong.c: 93: } else if (joypads.joy0 & J_DOWN) {
;	genAnd
	txa
	and	#0x04
;	genIfxJump : z
	beq	00111$
;	Raw cost for generated ic 88 : (8, 9.600000) count=18.000000
;	skipping generated iCode
;	Raw cost for generated ic 89 : (0, 0.000000) count=18.000000
;	src/pong.c: 94: player1 += 2;
;	genCast
;	genCopy
	lda	_player1
;	Raw cost for generated ic 92 : (3, 4.000000) count=13.500000
;	genPlus
;	genPlusIncr
	clc
	adc	#0x02
;	Raw cost for generated ic 93 : (6, 8.000000) count=13.500000
;	src/pong.c: 95: if (player1 > YMAX) player1 = YMAX;            
;	genCmp
	sta	_player1
	cmp	#0x64
	beq	00111$
	bcc	00111$
;	Raw cost for generated ic 96 : (12, 14.200001) count=13.500000
;	skipping generated iCode
;	Raw cost for generated ic 97 : (0, 0.000000) count=13.500000
;	genAssign
;	genAssignLit
	ldx	#0x64
	stx	_player1
;	Raw cost for generated ic 101 : (5, 6.000000) count=10.125000
;	genLabel
00111$:
;	Raw cost for generated ic 104 : (0, 0.000000) count=72.000000
;	src/pong.c: 97: draw_pad(0, PLAYER1_X, player1);
;	genAssign
;	genAssignLit
;	genCopy
	ldx	_player1
;	Raw cost for generated ic 105 : (3, 4.000000) count=72.000000
;	genAssign
;	genAssignLit
;	genCopy
	txa
;	Raw cost for generated ic 108 : (1, 2.000000) count=72.000000
;	src/pong.c: 24: move_sprite(n << 2, x, y);
;	genAssign
;	genAssignLit
;	genCopy
	stx	_move_sprite_PARM_3
;	Raw cost for generated ic 114 : (3, 4.000000) count=72.000000
;	Raw cost for generated ic 112 : (0, 0.000000) count=72.000000
;	Raw cost for generated ic 113 : (0, 0.000000) count=72.000000
;	genCall
	pha
;	genSend
	lda	#0x00
	tax
	jsr	_move_sprite
	pla
;	Raw cost for generated ic 115 : (8, 17.000000) count=72.000000
;	src/pong.c: 25: move_sprite((n << 2) + 1, x, y + 8);
;	genCast
;	genCopy
;	Raw cost for generated ic 119 : (0, 0.000000) count=72.000000
;	genPlus
;	genPlusIncr
	pha
	clc
	adc	#0x08
	sta	_move_sprite_PARM_3
;	Raw cost for generated ic 120 : (8, 15.000000) count=72.000000
;	Raw cost for generated ic 121 : (0, 0.000000) count=72.000000
;	Raw cost for generated ic 122 : (0, 0.000000) count=72.000000
;	genCall
;	genSend
	lda	#0x01
	ldx	#0x00
	jsr	_move_sprite
	pla
;	Raw cost for generated ic 124 : (9, 17.000000) count=72.000000
;	src/pong.c: 26: move_sprite((n << 2) + 2, x, y + 16);
;	genPlus
;	genPlusIncr
	clc
	adc	#0x10
	sta	_move_sprite_PARM_3
;	Raw cost for generated ic 129 : (6, 8.000000) count=72.000000
;	Raw cost for generated ic 130 : (0, 0.000000) count=72.000000
;	Raw cost for generated ic 131 : (0, 0.000000) count=72.000000
;	genCall
;	genSend
	lda	#0x02
	ldx	#0x00
	jsr	_move_sprite
;	Raw cost for generated ic 133 : (7, 10.000000) count=72.000000
;	src/pong.c: 100: if (joypads.joy1 & J_UP) {
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 136 : (0, 0.000000) count=72.000000
;	genPointerGet
;	genDataPointerGet
	ldx	(_joypads + 0x0002)
;	Raw cost for generated ic 137 : (3, 4.000000) count=72.000000
;	genAnd
	txa
	and	#0x08
;	genIfxJump : z
	beq	00119$
;	Raw cost for generated ic 139 : (8, 9.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 140 : (0, 0.000000) count=72.000000
;	src/pong.c: 101: player2 -= 2;
;	genCast
;	genCopy
	lda	_player2
;	Raw cost for generated ic 143 : (3, 4.000000) count=54.000000
;	genMinus
;	genMinusDec
	sec
	sbc	#0x02
;	Raw cost for generated ic 144 : (6, 8.000000) count=54.000000
;	src/pong.c: 102: if (player2 < YMIN) player2 = YMIN;
;	genCmp
	sta	_player2
	cmp	#0x1c
	bcs	00120$
;	Raw cost for generated ic 147 : (10, 11.600000) count=54.000000
;	skipping generated iCode
;	Raw cost for generated ic 148 : (0, 0.000000) count=54.000000
;	genAssign
;	genAssignLit
	ldx	#0x1c
	stx	_player2
;	Raw cost for generated ic 152 : (5, 6.000000) count=40.500000
;	genGoto
	jmp	00120$
;	Raw cost for generated ic 154 : (3, 3.000000) count=40.500000
;	genLabel
00119$:
;	Raw cost for generated ic 155 : (0, 0.000000) count=18.000000
;	src/pong.c: 103: } else if (joypads.joy1 & J_DOWN) {
;	genAnd
	txa
	and	#0x04
;	genIfxJump : z
	beq	00120$
;	Raw cost for generated ic 160 : (8, 9.600000) count=18.000000
;	skipping generated iCode
;	Raw cost for generated ic 161 : (0, 0.000000) count=18.000000
;	src/pong.c: 104: player2 += 2;
;	genCast
;	genCopy
	lda	_player2
;	Raw cost for generated ic 164 : (3, 4.000000) count=13.500000
;	genPlus
;	genPlusIncr
	clc
	adc	#0x02
;	Raw cost for generated ic 165 : (6, 8.000000) count=13.500000
;	src/pong.c: 105: if (player2 > YMAX) player2 = YMAX;            
;	genCmp
	sta	_player2
	cmp	#0x64
	beq	00120$
	bcc	00120$
;	Raw cost for generated ic 168 : (12, 14.200001) count=13.500000
;	skipping generated iCode
;	Raw cost for generated ic 169 : (0, 0.000000) count=13.500000
;	genAssign
;	genAssignLit
	ldx	#0x64
	stx	_player2
;	Raw cost for generated ic 173 : (5, 6.000000) count=10.125000
;	genLabel
00120$:
;	Raw cost for generated ic 176 : (0, 0.000000) count=72.000000
;	src/pong.c: 107: draw_pad(1, PLAYER2_X, player2);
;	genAssign
;	genAssignLit
;	genCopy
	ldx	_player2
;	Raw cost for generated ic 177 : (3, 4.000000) count=72.000000
;	genAssign
;	genAssignLit
;	genCopy
	txa
;	Raw cost for generated ic 180 : (1, 2.000000) count=72.000000
;	src/pong.c: 24: move_sprite(n << 2, x, y);
;	genAssign
;	genAssignLit
;	genCopy
	stx	_move_sprite_PARM_3
;	Raw cost for generated ic 186 : (3, 4.000000) count=72.000000
;	Raw cost for generated ic 184 : (0, 0.000000) count=72.000000
;	Raw cost for generated ic 185 : (0, 0.000000) count=72.000000
;	genCall
	pha
;	genSend
	lda	#0x04
	ldx	#0xf8
	jsr	_move_sprite
	pla
;	Raw cost for generated ic 187 : (9, 17.000000) count=72.000000
;	src/pong.c: 25: move_sprite((n << 2) + 1, x, y + 8);
;	genCast
;	genCopy
;	Raw cost for generated ic 191 : (0, 0.000000) count=72.000000
;	genPlus
;	genPlusIncr
	pha
	clc
	adc	#0x08
	sta	_move_sprite_PARM_3
;	Raw cost for generated ic 192 : (8, 15.000000) count=72.000000
;	Raw cost for generated ic 193 : (0, 0.000000) count=72.000000
;	Raw cost for generated ic 194 : (0, 0.000000) count=72.000000
;	genCall
;	genSend
	lda	#0x05
	ldx	#0xf8
	jsr	_move_sprite
	pla
;	Raw cost for generated ic 196 : (9, 17.000000) count=72.000000
;	src/pong.c: 26: move_sprite((n << 2) + 2, x, y + 16);
;	genPlus
;	genPlusIncr
	clc
	adc	#0x10
	sta	_move_sprite_PARM_3
;	Raw cost for generated ic 201 : (6, 8.000000) count=72.000000
;	Raw cost for generated ic 202 : (0, 0.000000) count=72.000000
;	Raw cost for generated ic 203 : (0, 0.000000) count=72.000000
;	genCall
;	genSend
	lda	#0x06
	ldx	#0xf8
	jsr	_move_sprite
;	Raw cost for generated ic 205 : (7, 10.000000) count=72.000000
;	src/pong.c: 110: ballX += spd_ballX, ballY += spd_ballY;
;	genCast
;	genCopy
	lda	_ballX
;	Raw cost for generated ic 207 : (3, 4.000000) count=72.000000
;	genPlus
;	genPlusIncr
	clc
	adc	_spd_ballX
	sta	_ballX
;	Raw cost for generated ic 208 : (7, 10.000000) count=72.000000
;	genCast
;	genCopy
	lda	_ballY
;	Raw cost for generated ic 211 : (3, 4.000000) count=72.000000
;	genPlus
;	genPlusIncr
	clc
	adc	_spd_ballY
;	Raw cost for generated ic 212 : (7, 10.000000) count=72.000000
;	src/pong.c: 112: if ((ballY < YMIN) || (ballY > (YMAX + 24))) {
;	genCmp
	sta	_ballY
	cmp	#0x1c
	bcc	00121$
;	Raw cost for generated ic 215 : (10, 11.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 216 : (0, 0.000000) count=72.000000
;	genCmp
	lda	_ballY
	cmp	#0x7c
	beq	00122$
	bcc	00122$
;	Raw cost for generated ic 219 : (12, 14.200001) count=54.000000
;	skipping generated iCode
;	Raw cost for generated ic 220 : (0, 0.000000) count=54.000000
;	genLabel
00121$:
;	Raw cost for generated ic 222 : (0, 0.000000) count=58.500000
;	src/pong.c: 113: spd_ballY = -spd_ballY; 
;	genUminus
	lda	_spd_ballY
	eor	#0xff
	clc
	adc	#0x01
	sta	_spd_ballY
;	Raw cost for generated ic 223 : (11, 14.000000) count=58.500000
;	genLabel
00122$:
;	Raw cost for generated ic 226 : (0, 0.000000) count=72.000000
;	src/pong.c: 116: if (ballX < (PLAYER1_X + 8)) {
;	genCmp
	lda	_ballX
	cmp	#0x08
	bcs	00135$
;	Raw cost for generated ic 227 : (10, 11.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 228 : (0, 0.000000) count=72.000000
;	src/pong.c: 117: if ((ballY > player1) && (ballY < (player1 + 24)) && (spd_ballX < 0)) 
;	genCmp
	lda	_ballY
	cmp	_player1
	beq	00295$
	bcs	00294$
00295$:
	jmp	00136$
00294$:
;	Raw cost for generated ic 231 : (13, 16.200001) count=54.000000
;	skipping generated iCode
;	Raw cost for generated ic 232 : (0, 0.000000) count=54.000000
;	genCast
;	genCopy
	ldx	#0x00
	lda	_player1
;	Raw cost for generated ic 235 : (5, 6.000000) count=40.500000
;	genPlus
;	genPlusIncr
	clc
	adc	#0x18
	sta	*_main_sloc0_1_0
	txa
	adc	#0x00
	sta	*(_main_sloc0_1_0 + 1)
;	Raw cost for generated ic 236 : (10, 14.000000) count=40.500000
;	genCast
;	genCopy
	lda	_ballY
;	Raw cost for generated ic 237 : (3, 4.000000) count=40.500000
;	genCmp
	sec
	sbc	*_main_sloc0_1_0
	txa
	sbc	*(_main_sloc0_1_0 + 1)
	bvc	00297$
	bpl	00296$
	bmi	00136$
00297$:
	bpl	00136$
00296$:
;	Raw cost for generated ic 238 : (17, 23.400002) count=40.500000
;	skipping generated iCode
;	Raw cost for generated ic 239 : (0, 0.000000) count=40.500000
;	genCmp
	bit	_spd_ballX
	bpl	00136$
;	Raw cost for generated ic 242 : (8, 9.600000) count=30.375000
;	skipping generated iCode
;	Raw cost for generated ic 243 : (0, 0.000000) count=30.375000
;	src/pong.c: 118: spd_ballX = -spd_ballX;
;	genUminus
	lda	_spd_ballX
	eor	#0xff
	clc
	adc	#0x01
	sta	_spd_ballX
;	Raw cost for generated ic 246 : (11, 14.000000) count=22.781250
;	genGoto
	jmp	00136$
;	Raw cost for generated ic 250 : (3, 3.000000) count=22.781250
;	genLabel
00135$:
;	Raw cost for generated ic 251 : (0, 0.000000) count=18.000000
;	src/pong.c: 119: } else if (ballX > (PLAYER2_X - 8)) {
;	genCmp
	lda	_ballX
	cmp	#0xf0
	beq	00136$
	bcc	00136$
;	Raw cost for generated ic 252 : (12, 14.200001) count=18.000000
;	skipping generated iCode
;	Raw cost for generated ic 253 : (0, 0.000000) count=18.000000
;	src/pong.c: 120: if ((ballY > player2) && (ballY < (player2 + 24)) && (spd_ballX > 0)) 
;	genCmp
	lda	_ballY
	cmp	_player2
	beq	00136$
	bcc	00136$
;	Raw cost for generated ic 256 : (13, 16.200001) count=13.500000
;	skipping generated iCode
;	Raw cost for generated ic 257 : (0, 0.000000) count=13.500000
;	genCast
;	genCopy
	ldx	#0x00
	lda	_player2
;	Raw cost for generated ic 260 : (5, 6.000000) count=10.125000
;	genPlus
;	genPlusIncr
	clc
	adc	#0x18
	sta	*_main_sloc0_1_0
	txa
	adc	#0x00
	sta	*(_main_sloc0_1_0 + 1)
;	Raw cost for generated ic 261 : (10, 14.000000) count=10.125000
;	genCast
;	genCopy
	lda	_ballY
;	Raw cost for generated ic 262 : (3, 4.000000) count=10.125000
;	genCmp
	sec
	sbc	*_main_sloc0_1_0
	txa
	sbc	*(_main_sloc0_1_0 + 1)
	bvc	00305$
	bpl	00304$
	bmi	00136$
00305$:
	bpl	00136$
00304$:
;	Raw cost for generated ic 263 : (17, 23.400002) count=10.125000
;	skipping generated iCode
;	Raw cost for generated ic 264 : (0, 0.000000) count=10.125000
;	genCmp
	txa
	sec
	sbc	_spd_ballX
	bvc	00308$
	bpl	00307$
	bmi	00136$
00308$:
	bpl	00136$
00307$:
;	Raw cost for generated ic 267 : (16, 21.400002) count=7.593750
;	skipping generated iCode
;	Raw cost for generated ic 268 : (0, 0.000000) count=7.593750
;	src/pong.c: 121: spd_ballX = -spd_ballX;
;	genUminus
	lda	_spd_ballX
	eor	#0xff
	clc
	adc	#0x01
	sta	_spd_ballX
;	Raw cost for generated ic 271 : (11, 14.000000) count=5.695312
;	genLabel
00136$:
;	Raw cost for generated ic 276 : (0, 0.000000) count=72.000000
;	src/pong.c: 124: if (ballX <= PLAYER1_X) {
;	genIfx
	lda	_ballX
;	genIfxJump : z
	bne	00140$
;	Raw cost for generated ic 277 : (8, 9.600000) count=72.000000
;	src/pong.c: 126: ballX = INITBALLX, ballY = INITBALLY;
;	genAssign
;	genAssignLit
	ldx	#0x54
	stx	_ballX
;	Raw cost for generated ic 281 : (5, 6.000000) count=54.000000
;	genAssign
;	genAssignLit
	ldx	#0x48
	stx	_ballY
;	Raw cost for generated ic 283 : (5, 6.000000) count=54.000000
;	src/pong.c: 127: spd_ballX = -spd_ballX;
;	genUminus
	lda	_spd_ballX
	eor	#0xff
	clc
	adc	#0x01
	sta	_spd_ballX
;	Raw cost for generated ic 284 : (11, 14.000000) count=54.000000
;	src/pong.c: 128: player2_score++;
;	genPlus
;	genPlusIncr
	inc	_player2_score
	bne	00312$
	inc	(_player2_score + 1)
00312$:
;	Raw cost for generated ic 288 : (8, 14.600000) count=54.000000
;	src/pong.c: 129: gotoxy(0, 0); printf(HUD, player1_score, player2_score);
;	Raw cost for generated ic 291 : (0, 0.000000) count=54.000000
;	Raw cost for generated ic 292 : (0, 0.000000) count=54.000000
;	genCall
;	genSend
	lda	#0x00
	tax
	jsr	_gotoxy
;	Raw cost for generated ic 293 : (6, 10.000000) count=54.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 295 : (0, 0.000000) count=54.000000
;	genIpush
	lda	(_player2_score + 1)
	pha
	lda	_player2_score
	pha
;	Raw cost for generated ic 296 : (8, 14.000000) count=54.000000
;	genIpush
	lda	(_player1_score + 1)
	pha
	lda	_player1_score
	pha
;	Raw cost for generated ic 297 : (8, 14.000000) count=54.000000
;	genIpush
	lda	#>_HUD
	pha
	lda	#_HUD
	pha
;	Raw cost for generated ic 298 : (6, 10.000000) count=54.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 299 : (9, 30.000000) count=54.000000
;	genGoto
	jmp	00141$
;	Raw cost for generated ic 300 : (3, 3.000000) count=54.000000
;	genLabel
00140$:
;	Raw cost for generated ic 301 : (0, 0.000000) count=18.000000
;	src/pong.c: 130: } else if (ballX > PLAYER2_X) {
;	genCmp
	lda	_ballX
	cmp	#0xf8
	beq	00141$
	bcc	00141$
;	Raw cost for generated ic 302 : (12, 14.200001) count=18.000000
;	skipping generated iCode
;	Raw cost for generated ic 303 : (0, 0.000000) count=18.000000
;	src/pong.c: 132: ballX = INITBALLX, ballY = INITBALLY;
;	genAssign
;	genAssignLit
	ldx	#0x54
	stx	_ballX
;	Raw cost for generated ic 307 : (5, 6.000000) count=13.500000
;	genAssign
;	genAssignLit
	ldx	#0x48
	stx	_ballY
;	Raw cost for generated ic 309 : (5, 6.000000) count=13.500000
;	src/pong.c: 133: spd_ballX = -spd_ballX;
;	genUminus
	lda	_spd_ballX
	eor	#0xff
	clc
	adc	#0x01
	sta	_spd_ballX
;	Raw cost for generated ic 310 : (11, 14.000000) count=13.500000
;	src/pong.c: 134: player1_score++;
;	genPlus
;	genPlusIncr
	inc	_player1_score
	bne	00315$
	inc	(_player1_score + 1)
00315$:
;	Raw cost for generated ic 314 : (8, 14.600000) count=13.500000
;	src/pong.c: 135: gotoxy(0, 0); printf(HUD, player1_score, player2_score);
;	Raw cost for generated ic 317 : (0, 0.000000) count=13.500000
;	Raw cost for generated ic 318 : (0, 0.000000) count=13.500000
;	genCall
;	genSend
	lda	#0x00
	tax
	jsr	_gotoxy
;	Raw cost for generated ic 319 : (6, 10.000000) count=13.500000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 321 : (0, 0.000000) count=13.500000
;	genIpush
	lda	(_player2_score + 1)
	pha
	lda	_player2_score
	pha
;	Raw cost for generated ic 322 : (8, 14.000000) count=13.500000
;	genIpush
	lda	(_player1_score + 1)
	pha
	lda	_player1_score
	pha
;	Raw cost for generated ic 323 : (8, 14.000000) count=13.500000
;	genIpush
	lda	#>_HUD
	pha
	lda	#_HUD
	pha
;	Raw cost for generated ic 324 : (6, 10.000000) count=13.500000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 325 : (9, 30.000000) count=13.500000
;	genLabel
00141$:
;	Raw cost for generated ic 327 : (0, 0.000000) count=72.000000
;	src/pong.c: 138: move_sprite(3, ballX, ballY);
;	genAssign
;	genAssignLit
;	genCopy
	lda	_ballY
	sta	_move_sprite_PARM_3
;	Raw cost for generated ic 330 : (6, 8.000000) count=72.000000
;	Raw cost for generated ic 328 : (0, 0.000000) count=72.000000
;	Raw cost for generated ic 329 : (0, 0.000000) count=72.000000
;	genCall
;	genSend
	lda	#0x03
	ldx	_ballX
	jsr	_move_sprite
;	Raw cost for generated ic 331 : (8, 12.000000) count=72.000000
;	src/pong.c: 141: vsync();
;	genCall
	jsr	_vsync
;	Raw cost for generated ic 332 : (3, 6.000000) count=72.000000
;	genGoto
	jmp	00143$
;	Raw cost for generated ic 333 : (3, 3.000000) count=72.000000
;	genLabel
;	Raw cost for generated ic 335 : (0, 0.000000) count=0.000000
;	src/pong.c: 143: }
;	genEndFunction
	rts
;	Raw cost for generated ic 336 : (1, 6.000000) count=0.000000
	.area _CODE
_HUD:
	.ascii " p1: %d   p2: %d"
	.db 0x00
___str_0:
	.ascii "Device must support"
	.db 0x0a
	.ascii "at least two joypads"
	.db 0x00
	.area _XINIT
__xinit__sprite_data:
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
	.area _CABS    (ABS)
