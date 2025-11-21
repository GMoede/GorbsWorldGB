;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module snes_joypads
	
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
	.globl _gotoxy
	.globl _font_load
	.globl _font_init
	.globl _display_on
	.globl _vsync
	.globl _joypad_ex
	.globl _joypad_init
	.globl _printf
	.globl _putchar
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
_main_sloc1_1_0:
	.ds 1
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
_joypads::
	.ds 5
_main_joy_40000_118:
	.ds 1
_main_joy_s_40000_118:
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
;sloc0         Allocated with name '_main_sloc0_1_0'
;sloc1         Allocated with name '_main_sloc1_1_0'
;ibm_font      Allocated to registers 
;i             Allocated to registers 
;y             Allocated to registers 
;joy           Allocated with name '_main_joy_40000_118'
;joy_s         Allocated with name '_main_joy_s_40000_118'
;------------------------------------------------------------
;	snes_joypads.c: 45: void main(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	snes_joypads.c: 50: font_init();
;	genCall
	jsr	_font_init
;	Raw cost for generated ic 2 : (3, 6.000000) count=1.000000
;	snes_joypads.c: 51: ibm_font = font_load(font_ibm);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_font_ibm
	lda	#_font_ibm
	jsr	_font_load
;	Raw cost for generated ic 6 : (7, 10.000000) count=1.000000
;	snes_joypads.c: 53: joypad_init(4, &joypads);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_joypads
	sta	(_joypad_init_PARM_2 + 1)
	lda	#_joypads
	sta	_joypad_init_PARM_2
;	Raw cost for generated ic 9 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x04
	jsr	_joypad_init
;	Raw cost for generated ic 12 : (5, 8.000000) count=1.000000
;	snes_joypads.c: 54: DISPLAY_ON;
;	genCall
	jsr	_display_on
;	Raw cost for generated ic 13 : (3, 6.000000) count=1.000000
;	snes_joypads.c: 55: while(TRUE)
;	genLabel
00103$:
;	Raw cost for generated ic 16 : (0, 0.000000) count=18.750000
;	snes_joypads.c: 58: joypad_ex(&joypads);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 18 : (0, 0.000000) count=18.750000
;	Raw cost for generated ic 19 : (0, 0.000000) count=18.750000
;	genCall
;	genSend
	ldx	#>_joypads
	lda	#_joypads
	jsr	_joypad_ex
;	Raw cost for generated ic 20 : (7, 10.000000) count=18.750000
;	snes_joypads.c: 60: for(i = 0; i < 2; i++)
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 100 : (0, 0.000000) count=18.750000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 96 : (0, 0.000000) count=18.750000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 113 : (0, 0.000000) count=18.750000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 109 : (0, 0.000000) count=18.750000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 27 : (0, 0.000000) count=18.750000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 44 : (0, 0.000000) count=18.750000
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_main_sloc0_1_0
	stx	*(_main_sloc0_1_0 + 1)
;	Raw cost for generated ic 202 : (6, 8.000000) count=18.750000
;	genLabel
00105$:
;	Raw cost for generated ic 22 : (0, 0.000000) count=72.000000
;	snes_joypads.c: 62: int y = 4 + 2*i;
;	genCast
;	genCopy
	lda	*_main_sloc0_1_0
;	Raw cost for generated ic 201 : (2, 3.000000) count=72.000000
;	genLeftShift
;	genLeftShiftLiteral
;	genlshOne
	asl	a
;	Raw cost for generated ic 23 : (1, 2.000000) count=72.000000
;	genPlus
;	genPlusIncr
	clc
	adc	#0x04
	sta	*_main_sloc1_1_0
;	Raw cost for generated ic 24 : (5, 7.000000) count=72.000000
;	snes_joypads.c: 63: uint8_t joy = joypads.joypads[i];     // Common NES/SNES bits
;	genAssign
;	genAssignLit
;	genCopy
	ldx	*(_main_sloc0_1_0 + 1)
	lda	*_main_sloc0_1_0
;	Raw cost for generated ic 29 : (4, 6.000000) count=72.000000
;	genPointerGet
;	setupDPTR
	clc
	adc	#<((_joypads + 0x0001)+0)
	sta	*(DPTR+0)
	txa
	adc	#>((_joypads + 0x0001)+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 30 : (14, 21.000000) count=72.000000
;	genCast
;	genCopy
	sta	_main_joy_40000_118
;	Raw cost for generated ic 31 : (3, 4.000000) count=72.000000
;	snes_joypads.c: 64: uint8_t joy_s = joypads.joypads[i+2]; // SNES additional bits
;	genCast
;	genCopy
	lda	*_main_sloc0_1_0
;	Raw cost for generated ic 34 : (2, 3.000000) count=72.000000
;	genPlus
;	genPlusIncr
	clc
	adc	#0x02
;	Raw cost for generated ic 35 : (3, 4.000000) count=72.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 37 : (2, 2.000000) count=72.000000
;	genPointerGet
	tay
	lda	((_joypads + 0x0001)+0+0x0000),y
;	Raw cost for generated ic 38 : (4, 6.000000) count=72.000000
;	genCast
;	genCopy
	sta	_main_joy_s_40000_118
;	Raw cost for generated ic 39 : (3, 4.000000) count=72.000000
;	snes_joypads.c: 65: gotoxy(1, y);
;	Raw cost for generated ic 41 : (0, 0.000000) count=72.000000
;	Raw cost for generated ic 42 : (0, 0.000000) count=72.000000
;	genCall
;	genSend
	lda	#0x01
	ldx	*_main_sloc1_1_0
	jsr	_gotoxy
;	Raw cost for generated ic 43 : (7, 11.000000) count=72.000000
;	snes_joypads.c: 66: printf("JOY%d: ", i);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 45 : (0, 0.000000) count=72.000000
;	genIpush
	lda	*(_main_sloc0_1_0 + 1)
	pha
	lda	*_main_sloc0_1_0
	pha
;	Raw cost for generated ic 46 : (6, 12.000000) count=72.000000
;	genIpush
	lda	#>___str_0
	pha
	lda	#___str_0
	pha
;	Raw cost for generated ic 47 : (6, 10.000000) count=72.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 48 : (7, 22.000000) count=72.000000
;	snes_joypads.c: 67: putchar((joy & J_LEFT)   ? 'l' : ' ');
;	genAnd
	lda	_main_joy_40000_118
	and	#0x02
;	genIfxJump : z
	beq	00109$
;	Raw cost for generated ic 50 : (10, 11.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 51 : (0, 0.000000) count=72.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x6c
;	Raw cost for generated ic 52 : (2, 2.000000) count=54.000000
;	genGoto
	jmp	00110$
;	Raw cost for generated ic 53 : (3, 3.000000) count=54.000000
;	genLabel
00109$:
;	Raw cost for generated ic 54 : (0, 0.000000) count=18.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x20
;	Raw cost for generated ic 55 : (2, 2.000000) count=18.000000
;	genLabel
00110$:
;	Raw cost for generated ic 56 : (0, 0.000000) count=72.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 57 : (0, 0.000000) count=72.000000
;	Raw cost for generated ic 58 : (0, 0.000000) count=72.000000
;	genCall
;	genSend
	jsr	_putchar
;	Raw cost for generated ic 59 : (3, 6.000000) count=72.000000
;	snes_joypads.c: 68: putchar((joy & J_RIGHT)  ? 'r' : ' ');
;	genAnd
	lda	_main_joy_40000_118
	and	#0x01
;	genIfxJump : z
	beq	00111$
;	Raw cost for generated ic 61 : (10, 11.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 62 : (0, 0.000000) count=72.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x72
;	Raw cost for generated ic 63 : (2, 2.000000) count=54.000000
;	genGoto
	jmp	00112$
;	Raw cost for generated ic 64 : (3, 3.000000) count=54.000000
;	genLabel
00111$:
;	Raw cost for generated ic 65 : (0, 0.000000) count=18.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x20
;	Raw cost for generated ic 66 : (2, 2.000000) count=18.000000
;	genLabel
00112$:
;	Raw cost for generated ic 67 : (0, 0.000000) count=72.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 68 : (0, 0.000000) count=72.000000
;	Raw cost for generated ic 69 : (0, 0.000000) count=72.000000
;	genCall
;	genSend
	jsr	_putchar
;	Raw cost for generated ic 70 : (3, 6.000000) count=72.000000
;	snes_joypads.c: 69: putchar((joy & J_UP)     ? 'u' : ' ');
;	genAnd
	lda	_main_joy_40000_118
	and	#0x08
;	genIfxJump : z
	beq	00113$
;	Raw cost for generated ic 72 : (10, 11.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 73 : (0, 0.000000) count=72.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x75
;	Raw cost for generated ic 74 : (2, 2.000000) count=54.000000
;	genGoto
	jmp	00114$
;	Raw cost for generated ic 75 : (3, 3.000000) count=54.000000
;	genLabel
00113$:
;	Raw cost for generated ic 76 : (0, 0.000000) count=18.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x20
;	Raw cost for generated ic 77 : (2, 2.000000) count=18.000000
;	genLabel
00114$:
;	Raw cost for generated ic 78 : (0, 0.000000) count=72.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 79 : (0, 0.000000) count=72.000000
;	Raw cost for generated ic 80 : (0, 0.000000) count=72.000000
;	genCall
;	genSend
	jsr	_putchar
;	Raw cost for generated ic 81 : (3, 6.000000) count=72.000000
;	snes_joypads.c: 70: putchar((joy & J_DOWN)   ? 'd' : ' ');
;	genAnd
	lda	_main_joy_40000_118
	and	#0x04
;	genIfxJump : z
	beq	00115$
;	Raw cost for generated ic 83 : (10, 11.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 84 : (0, 0.000000) count=72.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x64
;	Raw cost for generated ic 85 : (2, 2.000000) count=54.000000
;	genGoto
	jmp	00116$
;	Raw cost for generated ic 86 : (3, 3.000000) count=54.000000
;	genLabel
00115$:
;	Raw cost for generated ic 87 : (0, 0.000000) count=18.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x20
;	Raw cost for generated ic 88 : (2, 2.000000) count=18.000000
;	genLabel
00116$:
;	Raw cost for generated ic 89 : (0, 0.000000) count=72.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 90 : (0, 0.000000) count=72.000000
;	Raw cost for generated ic 91 : (0, 0.000000) count=72.000000
;	genCall
;	genSend
	jsr	_putchar
;	Raw cost for generated ic 92 : (3, 6.000000) count=72.000000
;	snes_joypads.c: 71: printf( (joy & J_SELECT) ? "SELECT " : "       ");
;	genAnd
	lda	_main_joy_40000_118
	and	#0x20
;	genIfxJump : z
	beq	00117$
;	Raw cost for generated ic 94 : (10, 11.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 95 : (0, 0.000000) count=72.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#>___str_1
	lda	#___str_1
;	Raw cost for generated ic 97 : (4, 4.000000) count=54.000000
;	genGoto
	jmp	00118$
;	Raw cost for generated ic 98 : (3, 3.000000) count=54.000000
;	genLabel
00117$:
;	Raw cost for generated ic 99 : (0, 0.000000) count=18.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#>___str_2
	lda	#___str_2
;	Raw cost for generated ic 101 : (4, 4.000000) count=18.000000
;	genLabel
00118$:
;	Raw cost for generated ic 102 : (0, 0.000000) count=72.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 103 : (0, 0.000000) count=72.000000
;	genIpush
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 104 : (7, 14.000000) count=72.000000
;	genCall
	jsr	_printf
	pla
	pla
;	Raw cost for generated ic 105 : (5, 14.000000) count=72.000000
;	snes_joypads.c: 72: printf( (joy & J_START)  ? "START "  : "      ");
;	genAnd
	lda	_main_joy_40000_118
	and	#0x10
;	genIfxJump : z
	beq	00119$
;	Raw cost for generated ic 107 : (10, 11.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 108 : (0, 0.000000) count=72.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#>___str_3
	lda	#___str_3
;	Raw cost for generated ic 110 : (4, 4.000000) count=54.000000
;	genGoto
	jmp	00120$
;	Raw cost for generated ic 111 : (3, 3.000000) count=54.000000
;	genLabel
00119$:
;	Raw cost for generated ic 112 : (0, 0.000000) count=18.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#>___str_4
	lda	#___str_4
;	Raw cost for generated ic 114 : (4, 4.000000) count=18.000000
;	genLabel
00120$:
;	Raw cost for generated ic 115 : (0, 0.000000) count=72.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 116 : (0, 0.000000) count=72.000000
;	genIpush
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 117 : (7, 14.000000) count=72.000000
;	genCall
	jsr	_printf
	pla
	pla
;	Raw cost for generated ic 118 : (5, 14.000000) count=72.000000
;	snes_joypads.c: 73: putchar((joy & JS_Y)     ? 'Y' : ' ');
;	genAnd
	bit	_main_joy_40000_118
;	genIfxJump : v
	bvc	00121$
;	Raw cost for generated ic 120 : (8, 9.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 121 : (0, 0.000000) count=72.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x59
;	Raw cost for generated ic 122 : (2, 2.000000) count=54.000000
;	genGoto
	jmp	00122$
;	Raw cost for generated ic 123 : (3, 3.000000) count=54.000000
;	genLabel
00121$:
;	Raw cost for generated ic 124 : (0, 0.000000) count=18.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x20
;	Raw cost for generated ic 125 : (2, 2.000000) count=18.000000
;	genLabel
00122$:
;	Raw cost for generated ic 126 : (0, 0.000000) count=72.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 127 : (0, 0.000000) count=72.000000
;	Raw cost for generated ic 128 : (0, 0.000000) count=72.000000
;	genCall
;	genSend
	jsr	_putchar
;	Raw cost for generated ic 129 : (3, 6.000000) count=72.000000
;	snes_joypads.c: 74: putchar((joy & JS_B)     ? 'B' : ' ');
;	genAnd
	bit	_main_joy_40000_118
;	genIfxJump : n
	bpl	00123$
;	Raw cost for generated ic 131 : (8, 9.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 132 : (0, 0.000000) count=72.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x42
;	Raw cost for generated ic 133 : (2, 2.000000) count=54.000000
;	genGoto
	jmp	00124$
;	Raw cost for generated ic 134 : (3, 3.000000) count=54.000000
;	genLabel
00123$:
;	Raw cost for generated ic 135 : (0, 0.000000) count=18.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x20
;	Raw cost for generated ic 136 : (2, 2.000000) count=18.000000
;	genLabel
00124$:
;	Raw cost for generated ic 137 : (0, 0.000000) count=72.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 138 : (0, 0.000000) count=72.000000
;	Raw cost for generated ic 139 : (0, 0.000000) count=72.000000
;	genCall
;	genSend
	jsr	_putchar
;	Raw cost for generated ic 140 : (3, 6.000000) count=72.000000
;	snes_joypads.c: 75: putchar((joy_s & JS_X)   ? 'X' : ' ');
;	genAnd
	bit	_main_joy_s_40000_118
;	genIfxJump : v
	bvc	00125$
;	Raw cost for generated ic 142 : (8, 9.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 143 : (0, 0.000000) count=72.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x58
;	Raw cost for generated ic 144 : (2, 2.000000) count=54.000000
;	genGoto
	jmp	00126$
;	Raw cost for generated ic 145 : (3, 3.000000) count=54.000000
;	genLabel
00125$:
;	Raw cost for generated ic 146 : (0, 0.000000) count=18.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x20
;	Raw cost for generated ic 147 : (2, 2.000000) count=18.000000
;	genLabel
00126$:
;	Raw cost for generated ic 148 : (0, 0.000000) count=72.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 149 : (0, 0.000000) count=72.000000
;	Raw cost for generated ic 150 : (0, 0.000000) count=72.000000
;	genCall
;	genSend
	jsr	_putchar
;	Raw cost for generated ic 151 : (3, 6.000000) count=72.000000
;	snes_joypads.c: 76: putchar((joy_s & JS_A)   ? 'A' : ' ');
;	genAnd
	bit	_main_joy_s_40000_118
;	genIfxJump : n
	bpl	00127$
;	Raw cost for generated ic 153 : (8, 9.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 154 : (0, 0.000000) count=72.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x41
;	Raw cost for generated ic 155 : (2, 2.000000) count=54.000000
;	genGoto
	jmp	00128$
;	Raw cost for generated ic 156 : (3, 3.000000) count=54.000000
;	genLabel
00127$:
;	Raw cost for generated ic 157 : (0, 0.000000) count=18.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x20
;	Raw cost for generated ic 158 : (2, 2.000000) count=18.000000
;	genLabel
00128$:
;	Raw cost for generated ic 159 : (0, 0.000000) count=72.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 160 : (0, 0.000000) count=72.000000
;	Raw cost for generated ic 161 : (0, 0.000000) count=72.000000
;	genCall
;	genSend
	jsr	_putchar
;	Raw cost for generated ic 162 : (3, 6.000000) count=72.000000
;	snes_joypads.c: 77: putchar((joy_s & JS_L)   ? 'L' : ' ');
;	genAnd
	lda	_main_joy_s_40000_118
	and	#0x20
;	genIfxJump : z
	beq	00129$
;	Raw cost for generated ic 164 : (10, 11.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 165 : (0, 0.000000) count=72.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x4c
;	Raw cost for generated ic 166 : (2, 2.000000) count=54.000000
;	genGoto
	jmp	00130$
;	Raw cost for generated ic 167 : (3, 3.000000) count=54.000000
;	genLabel
00129$:
;	Raw cost for generated ic 168 : (0, 0.000000) count=18.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x20
;	Raw cost for generated ic 169 : (2, 2.000000) count=18.000000
;	genLabel
00130$:
;	Raw cost for generated ic 170 : (0, 0.000000) count=72.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 171 : (0, 0.000000) count=72.000000
;	Raw cost for generated ic 172 : (0, 0.000000) count=72.000000
;	genCall
;	genSend
	jsr	_putchar
;	Raw cost for generated ic 173 : (3, 6.000000) count=72.000000
;	snes_joypads.c: 78: putchar((joy_s & JS_R)   ? 'R' : ' ');
;	genAnd
	lda	_main_joy_s_40000_118
	and	#0x10
;	genIfxJump : z
	beq	00131$
;	Raw cost for generated ic 175 : (10, 11.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 176 : (0, 0.000000) count=72.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x52
;	Raw cost for generated ic 177 : (2, 2.000000) count=54.000000
;	genGoto
	jmp	00132$
;	Raw cost for generated ic 178 : (3, 3.000000) count=54.000000
;	genLabel
00131$:
;	Raw cost for generated ic 179 : (0, 0.000000) count=18.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x20
;	Raw cost for generated ic 180 : (2, 2.000000) count=18.000000
;	genLabel
00132$:
;	Raw cost for generated ic 181 : (0, 0.000000) count=72.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 182 : (0, 0.000000) count=72.000000
;	Raw cost for generated ic 183 : (0, 0.000000) count=72.000000
;	genCall
;	genSend
	jsr	_putchar
;	Raw cost for generated ic 184 : (3, 6.000000) count=72.000000
;	snes_joypads.c: 60: for(i = 0; i < 2; i++)
;	genPlus
;	genPlusIncr
	inc	*_main_sloc0_1_0
	bne	00244$
	inc	*(_main_sloc0_1_0 + 1)
00244$:
;	Raw cost for generated ic 187 : (6, 12.600000) count=72.000000
;	genCmp
	lda	*_main_sloc0_1_0
	sec
	sbc	#0x02
	lda	*(_main_sloc0_1_0 + 1)
	sbc	#0x00
	bvs	00246$
	bpl	00245$
	bmi	00247$
00246$:
	bmi	00245$
00247$:
	jmp	00105$
00245$:
;	Raw cost for generated ic 189 : (20, 25.400002) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 190 : (0, 0.000000) count=72.000000
;	snes_joypads.c: 81: vsync();
;	genCall
	jsr	_vsync
;	Raw cost for generated ic 193 : (3, 6.000000) count=18.000000
;	genGoto
	jmp	00103$
;	Raw cost for generated ic 194 : (3, 3.000000) count=18.000000
;	genLabel
;	Raw cost for generated ic 196 : (0, 0.000000) count=0.000000
;	snes_joypads.c: 83: }
;	genEndFunction
	rts
;	Raw cost for generated ic 197 : (1, 6.000000) count=0.000000
	.area _CODE
___str_0:
	.ascii "JOY%d: "
	.db 0x00
___str_1:
	.ascii "SELECT "
	.db 0x00
___str_2:
	.ascii "       "
	.db 0x00
___str_3:
	.ascii "START "
	.db 0x00
___str_4:
	.ascii "      "
	.db 0x00
	.area _XINIT
	.area _CABS    (ABS)
