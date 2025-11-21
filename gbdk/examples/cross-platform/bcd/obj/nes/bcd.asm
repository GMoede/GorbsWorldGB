;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module bcd
	
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
	.globl _bcd2text
	.globl _bcd_sub
	.globl _bcd_add
	.globl _uint2bcd
	.globl _font_set
	.globl _font_load
	.globl _font_init
	.globl _set_bkg_tiles
	.globl _len
	.globl _bcd3
	.globl _bcd2
	.globl _bcd
	.globl _buf
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
_buf::
	.ds 10
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area _DATA
_bcd::
	.ds 4
_bcd2::
	.ds 4
_bcd3::
	.ds 4
_len::
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
;	src/bcd.c: 15: void main(void) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/bcd.c: 16: font_init();
;	genCall
	jsr	_font_init
;	Raw cost for generated ic 2 : (3, 6.000000) count=1.000000
;	src/bcd.c: 17: font_set(font_load(font_spect));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_font_spect
	lda	#_font_spect
	jsr	_font_load
;	assignResultValue
;	Raw cost for generated ic 6 : (7, 10.000000) count=1.000000
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_font_set
;	Raw cost for generated ic 8 : (3, 6.000000) count=1.000000
;	src/bcd.c: 19: len = bcd2text(&bcd, 0x10, buf);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_buf
	sta	(_bcd2text_PARM_3 + 1)
	lda	#_buf
	sta	_bcd2text_PARM_3
;	Raw cost for generated ic 12 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x10
	stx	_bcd2text_PARM_2
;	Raw cost for generated ic 14 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_bcd
	lda	#_bcd
	jsr	_bcd2text
;	assignResultValue
;	Raw cost for generated ic 16 : (7, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	sta	_len
;	Raw cost for generated ic 18 : (3, 4.000000) count=1.000000
;	src/bcd.c: 20: set_bkg_tiles(5, 5, len, 1, buf);
;	genCast
;	genCopy
	ldx	#>_buf
	stx	(_set_bkg_tiles_PARM_5 + 1)
	ldx	#_buf
	stx	_set_bkg_tiles_PARM_5
;	Raw cost for generated ic 20 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	sta	_set_bkg_tiles_PARM_3
;	Raw cost for generated ic 23 : (3, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_set_bkg_tiles_PARM_4
;	Raw cost for generated ic 24 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x05
	tax
	jsr	_set_bkg_tiles
;	Raw cost for generated ic 26 : (6, 10.000000) count=1.000000
;	src/bcd.c: 22: bcd_add(&bcd, &bcd2);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 28 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 29 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_bcd2
	sta	(_bcd_add_PARM_2 + 1)
	lda	#_bcd2
	sta	_bcd_add_PARM_2
;	Raw cost for generated ic 30 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 31 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_bcd
	lda	#_bcd
	jsr	_bcd_add
;	Raw cost for generated ic 33 : (7, 10.000000) count=1.000000
;	src/bcd.c: 24: len = bcd2text(&bcd, 0x10, buf);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 35 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_buf
	sta	(_bcd2text_PARM_3 + 1)
	lda	#_buf
	sta	_bcd2text_PARM_3
;	Raw cost for generated ic 37 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x10
	stx	_bcd2text_PARM_2
;	Raw cost for generated ic 39 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 38 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_bcd
	lda	#_bcd
	jsr	_bcd2text
;	assignResultValue
;	Raw cost for generated ic 41 : (7, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	sta	_len
;	Raw cost for generated ic 43 : (3, 4.000000) count=1.000000
;	src/bcd.c: 25: set_bkg_tiles(5, 6, len, 1, buf);
;	genCast
;	genCopy
	ldx	#>_buf
	stx	(_set_bkg_tiles_PARM_5 + 1)
	ldx	#_buf
	stx	_set_bkg_tiles_PARM_5
;	Raw cost for generated ic 45 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	sta	_set_bkg_tiles_PARM_3
;	Raw cost for generated ic 48 : (3, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_set_bkg_tiles_PARM_4
;	Raw cost for generated ic 49 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 46 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 47 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x05
	ldx	#0x06
	jsr	_set_bkg_tiles
;	Raw cost for generated ic 51 : (7, 10.000000) count=1.000000
;	src/bcd.c: 27: bcd_sub(&bcd, &bcd3);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 53 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 54 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_bcd3
	sta	(_bcd_sub_PARM_2 + 1)
	lda	#_bcd3
	sta	_bcd_sub_PARM_2
;	Raw cost for generated ic 55 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 56 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_bcd
	lda	#_bcd
	jsr	_bcd_sub
;	Raw cost for generated ic 58 : (7, 10.000000) count=1.000000
;	src/bcd.c: 29: len = bcd2text(&bcd, 0x10, buf);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 60 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_buf
	sta	(_bcd2text_PARM_3 + 1)
	lda	#_buf
	sta	_bcd2text_PARM_3
;	Raw cost for generated ic 62 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x10
	stx	_bcd2text_PARM_2
;	Raw cost for generated ic 64 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 63 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_bcd
	lda	#_bcd
	jsr	_bcd2text
;	assignResultValue
;	Raw cost for generated ic 66 : (7, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	sta	_len
;	Raw cost for generated ic 68 : (3, 4.000000) count=1.000000
;	src/bcd.c: 30: set_bkg_tiles(5, 7, len, 1, buf);
;	genCast
;	genCopy
	ldx	#>_buf
	stx	(_set_bkg_tiles_PARM_5 + 1)
	ldx	#_buf
	stx	_set_bkg_tiles_PARM_5
;	Raw cost for generated ic 70 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	sta	_set_bkg_tiles_PARM_3
;	Raw cost for generated ic 73 : (3, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_set_bkg_tiles_PARM_4
;	Raw cost for generated ic 74 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 71 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 72 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x05
	ldx	#0x07
	jsr	_set_bkg_tiles
;	Raw cost for generated ic 76 : (7, 10.000000) count=1.000000
;	src/bcd.c: 32: uint2bcd(12345, &bcd);
;	genCast
;	genCopy
	lda	#>_bcd
	sta	(_uint2bcd_PARM_2 + 1)
	lda	#_bcd
	sta	_uint2bcd_PARM_2
;	Raw cost for generated ic 78 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 79 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x30
	lda	#0x39
	jsr	_uint2bcd
;	Raw cost for generated ic 81 : (7, 10.000000) count=1.000000
;	src/bcd.c: 34: len = bcd2text(&bcd, 0x10, buf);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 83 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_buf
	sta	(_bcd2text_PARM_3 + 1)
	lda	#_buf
	sta	_bcd2text_PARM_3
;	Raw cost for generated ic 85 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x10
	stx	_bcd2text_PARM_2
;	Raw cost for generated ic 87 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 86 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_bcd
	lda	#_bcd
	jsr	_bcd2text
;	assignResultValue
;	Raw cost for generated ic 89 : (7, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	sta	_len
;	Raw cost for generated ic 91 : (3, 4.000000) count=1.000000
;	src/bcd.c: 35: set_bkg_tiles(5, 8, len, 1, buf);
;	genCast
;	genCopy
	ldx	#>_buf
	stx	(_set_bkg_tiles_PARM_5 + 1)
	ldx	#_buf
	stx	_set_bkg_tiles_PARM_5
;	Raw cost for generated ic 93 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	sta	_set_bkg_tiles_PARM_3
;	Raw cost for generated ic 96 : (3, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_set_bkg_tiles_PARM_4
;	Raw cost for generated ic 97 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 94 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 95 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x05
	ldx	#0x08
;	Raw cost for generated ic 99 : (7, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 100 : (0, 0.000000) count=1.000000
;	src/bcd.c: 36: }
;	genEndFunction
	jmp	_set_bkg_tiles
;	Raw cost for generated ic 101 : (1, 6.000000) count=1.000000
	.area _CODE
	.area _XINIT
__xinit__bcd:
	.byte #0x40, #0x30, #0x20, #0x10	; 270544960
__xinit__bcd2:
	.byte #0x08, #0x07, #0x06, #0x05	; 84281096
__xinit__bcd3:
	.byte #0x11, #0x11, #0x11, #0x11	; 286331153
__xinit__len:
	.db #0x00	; 0
	.area _CABS    (ABS)
