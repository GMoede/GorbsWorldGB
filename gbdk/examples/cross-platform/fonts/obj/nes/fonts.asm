;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module fonts
	
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
	.globl _font_color
	.globl _font_set
	.globl _font_load
	.globl _font_init
	.globl _get_mode
	.globl _mode
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
_main_ibm_font_10000_115:
	.ds 2
_main_italic_font_10000_115:
	.ds 2
_main_min_font_10000_115:
	.ds 2
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
;ibm_font      Allocated with name '_main_ibm_font_10000_115'
;italic_font   Allocated with name '_main_italic_font_10000_115'
;min_font      Allocated with name '_main_min_font_10000_115'
;i             Allocated to registers 
;------------------------------------------------------------
;	src/fonts.c: 17: void main(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/fonts.c: 28: font_init();
;	genCall
	jsr	_font_init
;	Raw cost for generated ic 2 : (3, 6.000000) count=1.000000
;	src/fonts.c: 31: ibm_font = font_load(font_ibm);  /* 96 tiles */
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
;	assignResultValue
	sta	_main_ibm_font_10000_115
	stx	(_main_ibm_font_10000_115 + 1)
;	Raw cost for generated ic 6 : (13, 18.000000) count=1.000000
;	src/fonts.c: 32: italic_font = font_load(font_italic);   /* 93 tiles */
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_font_italic
	lda	#_font_italic
	jsr	_font_load
;	assignResultValue
	sta	_main_italic_font_10000_115
	stx	(_main_italic_font_10000_115 + 1)
;	Raw cost for generated ic 11 : (13, 18.000000) count=1.000000
;	src/fonts.c: 35: font_color(WHITE, DKGREY);
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x03
	ldx	#0x01
	jsr	_font_color
;	Raw cost for generated ic 15 : (7, 10.000000) count=1.000000
;	src/fonts.c: 37: min_font = font_load(font_min);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_font_min
	lda	#_font_min
	jsr	_font_load
;	assignResultValue
	sta	_main_min_font_10000_115
	stx	(_main_min_font_10000_115 + 1)
;	Raw cost for generated ic 19 : (13, 18.000000) count=1.000000
;	src/fonts.c: 40: mode(get_mode() | M_NO_SCROLL);
;	genCall
	jsr	_get_mode
;	assignResultValue
;	Raw cost for generated ic 21 : (3, 6.000000) count=1.000000
;	genOr
	ora	#0x04
;	Raw cost for generated ic 22 : (2, 2.000000) count=1.000000
;	Raw cost for generated ic 23 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_mode
;	Raw cost for generated ic 24 : (3, 6.000000) count=1.000000
;	src/fonts.c: 45: font_set(ibm_font);
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	(_main_ibm_font_10000_115 + 1)
	lda	_main_ibm_font_10000_115
	jsr	_font_set
;	Raw cost for generated ic 26 : (9, 14.000000) count=1.000000
;	src/fonts.c: 46: printf("Font demo.\n\n");
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 27 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 28 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#>___str_0
	pha
	lda	#___str_0
	pha
;	Raw cost for generated ic 29 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
;	Raw cost for generated ic 30 : (5, 14.000000) count=1.000000
;	src/fonts.c: 48: printf("IBM Font #!?123\n");
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 31 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 32 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#>___str_1
	pha
	lda	#___str_1
	pha
;	Raw cost for generated ic 33 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
;	Raw cost for generated ic 34 : (5, 14.000000) count=1.000000
;	src/fonts.c: 51: font_set(italic_font);
;	Raw cost for generated ic 35 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	(_main_italic_font_10000_115 + 1)
	lda	_main_italic_font_10000_115
	jsr	_font_set
;	Raw cost for generated ic 36 : (9, 14.000000) count=1.000000
;	src/fonts.c: 52: for (i=1; i!=5; i++) {
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 39 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	*_main_sloc0_1_0
	dex
	stx	*(_main_sloc0_1_0 + 1)
;	Raw cost for generated ic 67 : (7, 10.000000) count=1.000000
;	genLabel
00102$:
;	Raw cost for generated ic 38 : (0, 0.000000) count=3.999999
;	src/fonts.c: 53: printf("In italics, line %u\n", i);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 40 : (0, 0.000000) count=3.999999
;	genIpush
	lda	*(_main_sloc0_1_0 + 1)
	pha
	lda	*_main_sloc0_1_0
	pha
;	Raw cost for generated ic 41 : (6, 12.000000) count=3.999999
;	genIpush
	lda	#>___str_2
	pha
	lda	#___str_2
	pha
;	Raw cost for generated ic 42 : (6, 10.000000) count=3.999999
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 43 : (7, 22.000000) count=3.999999
;	src/fonts.c: 52: for (i=1; i!=5; i++) {
;	genPlus
;	genPlusIncr
	inc	*_main_sloc0_1_0
	bne	00119$
	inc	*(_main_sloc0_1_0 + 1)
00119$:
;	Raw cost for generated ic 46 : (6, 12.600000) count=3.999999
;	genCmpEQorNE
	lda	*_main_sloc0_1_0
	cmp	#0x05
	bne	00102$
	lda	*(_main_sloc0_1_0 + 1)
	bne	00102$
;	Raw cost for generated ic 48 : (16, 19.200001) count=3.999999
;	skipping generated iCode
;	Raw cost for generated ic 49 : (0, 0.000000) count=3.999999
;	src/fonts.c: 57: font_set(min_font);
;	Raw cost for generated ic 52 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	(_main_min_font_10000_115 + 1)
	lda	_main_min_font_10000_115
	jsr	_font_set
;	Raw cost for generated ic 53 : (9, 14.000000) count=1.000000
;	src/fonts.c: 58: printf("Minimal 36 tile font\n");
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 54 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 55 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#>___str_3
	pha
	lda	#___str_3
	pha
;	Raw cost for generated ic 56 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
;	Raw cost for generated ic 57 : (5, 14.000000) count=1.000000
;	src/fonts.c: 61: font_set(ibm_font);
;	Raw cost for generated ic 58 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	(_main_ibm_font_10000_115 + 1)
	lda	_main_ibm_font_10000_115
	jsr	_font_set
;	Raw cost for generated ic 59 : (9, 14.000000) count=1.000000
;	src/fonts.c: 62: printf("\nDone!");
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 60 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 61 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#>___str_4
	pha
	lda	#___str_4
	pha
;	Raw cost for generated ic 62 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
;	Raw cost for generated ic 63 : (5, 14.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 64 : (0, 0.000000) count=1.000000
;	src/fonts.c: 63: }
;	genEndFunction
	rts
;	Raw cost for generated ic 65 : (1, 6.000000) count=1.000000
	.area _CODE
___str_0:
	.ascii "Font demo."
	.db 0x0a
	.db 0x0a
	.db 0x00
___str_1:
	.ascii "IBM Font #!?123"
	.db 0x0a
	.db 0x00
___str_2:
	.ascii "In italics, line %u"
	.db 0x0a
	.db 0x00
___str_3:
	.ascii "Minimal 36 tile font"
	.db 0x0a
	.db 0x00
___str_4:
	.db 0x0a
	.ascii "Done!"
	.db 0x00
	.area _XINIT
	.area _CABS    (ABS)
