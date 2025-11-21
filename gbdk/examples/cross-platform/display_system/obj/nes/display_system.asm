;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module display_system
	
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
	.globl _get_system_name
	.globl _gotoxy
	.globl _font_load
	.globl _font_init
	.globl _display_on
	.globl _vsync
	.globl _printf
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
;Allocation info for local variables in function 'get_system_name'
;------------------------------------------------------------
;system        Allocated to registers a 
;------------------------------------------------------------
;	src/display_system.c: 18: const char* get_system_name(uint8_t system)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function get_system_name
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_get_system_name:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	src/display_system.c: 20: switch(system)
;	genCmpEQorNE
	cmp	#0x00
	beq	00101$
;	Raw cost for generated ic 3 : (7, 7.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCmpEQorNE
	cmp	#0x01
	beq	00102$
;	Raw cost for generated ic 5 : (7, 7.600000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=0.750000
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 7 : (3, 3.000000) count=0.562500
;	src/display_system.c: 22: case SYSTEM_60HZ:
;	genLabel
00101$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=0.250000
;	src/display_system.c: 23: return "60 Hz";
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 9 : (0, 0.000000) count=0.250000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 10 : (0, 0.000000) count=0.250000
;	genRet
	ldx	#>___str_0
	lda	#___str_0
	rts
;	Raw cost for generated ic 11 : (7, 7.000000) count=0.250000
;	src/display_system.c: 24: case SYSTEM_50HZ:
;	genLabel
00102$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=0.437500
;	src/display_system.c: 30: if((_SYSTEM & 0xC0) == SYSTEM_BITS_DENDY)
;	genCast
;	genCopy
	lda	__SYSTEM
;	Raw cost for generated ic 13 : (3, 4.000000) count=0.437500
;	genAnd
	and	#0xc0
;	Raw cost for generated ic 14 : (2, 2.000000) count=0.437500
;	genCmpEQorNE
	cmp	#0x80
	bne	00104$
;	Raw cost for generated ic 15 : (7, 7.600000) count=0.437500
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=0.437500
;	src/display_system.c: 31: return "50 Hz (Dendy-like)";
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 19 : (0, 0.000000) count=0.328125
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 20 : (0, 0.000000) count=0.328125
;	genRet
	ldx	#>___str_1
	lda	#___str_1
	rts
;	Raw cost for generated ic 21 : (7, 7.000000) count=0.328125
;	genLabel
00104$:
;	Raw cost for generated ic 23 : (0, 0.000000) count=0.437500
;	src/display_system.c: 33: return "50 Hz";
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 24 : (0, 0.000000) count=0.437500
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 25 : (0, 0.000000) count=0.437500
;	genRet
	ldx	#>___str_2
	lda	#___str_2
	rts
;	Raw cost for generated ic 26 : (7, 7.000000) count=0.437500
;	src/display_system.c: 37: default:
;	genLabel
00106$:
;	Raw cost for generated ic 28 : (0, 0.000000) count=1.000000
;	src/display_system.c: 38: return "Unknown";
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 29 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 30 : (0, 0.000000) count=1.000000
;	genRet
	ldx	#>___str_3
	lda	#___str_3
;	Raw cost for generated ic 31 : (4, 4.000000) count=1.000000
;	src/display_system.c: 39: }
;	genLabel
;	Raw cost for generated ic 33 : (0, 0.000000) count=1.000000
;	src/display_system.c: 40: }
;	genEndFunction
	rts
;	Raw cost for generated ic 34 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;__200000009   Allocated to registers a 
;ibm_font      Allocated to registers 
;system        Allocated to registers 
;------------------------------------------------------------
;	src/display_system.c: 42: void main(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/display_system.c: 45: uint8_t system = get_system();
;	genIfx
	lda	__SYSTEM
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 2 : (8, 9.600000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 5 : (2, 2.000000) count=0.750000
;	genGoto
	jmp	00104$
;	Raw cost for generated ic 6 : (3, 3.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=0.250000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x01
;	Raw cost for generated ic 9 : (2, 2.000000) count=0.250000
;	genLabel
00104$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	src/display_system.c: 47: font_init();
;	genCall
	pha
	jsr	_font_init
	pla
;	Raw cost for generated ic 14 : (5, 13.000000) count=1.000000
;	src/display_system.c: 48: ibm_font = font_load(font_ibm);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	genCall
	pha
;	genSend
	ldx	#>_font_ibm
	lda	#_font_ibm
	jsr	_font_load
	pla
;	Raw cost for generated ic 18 : (9, 17.000000) count=1.000000
;	src/display_system.c: 49: DISPLAY_ON;
;	genCall
	pha
	jsr	_display_on
;	Raw cost for generated ic 20 : (5, 13.000000) count=1.000000
;	src/display_system.c: 50: gotoxy(4, 4);
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x04
	tax
	jsr	_gotoxy
	pla
;	Raw cost for generated ic 23 : (8, 17.000000) count=1.000000
;	src/display_system.c: 51: printf("System: %s", get_system_name(system));
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_get_system_name
;	assignResultValue
;	Raw cost for generated ic 25 : (3, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 26 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 27 : (0, 0.000000) count=1.000000
;	genIpush
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 28 : (7, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_4
	pha
	lda	#___str_4
	pha
;	Raw cost for generated ic 29 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 30 : (7, 22.000000) count=1.000000
;	src/display_system.c: 52: vsync();
;	genCall
;	Raw cost for generated ic 31 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 32 : (0, 0.000000) count=1.000000
;	src/display_system.c: 53: }
;	genEndFunction
	jmp	_vsync
;	Raw cost for generated ic 33 : (1, 6.000000) count=1.000000
	.area _CODE
___str_0:
	.ascii "60 Hz"
	.db 0x00
___str_1:
	.ascii "50 Hz (Dendy-like)"
	.db 0x00
___str_2:
	.ascii "50 Hz"
	.db 0x00
___str_3:
	.ascii "Unknown"
	.db 0x00
___str_4:
	.ascii "System: %s"
	.db 0x00
	.area _XINIT
	.area _CABS    (ABS)
