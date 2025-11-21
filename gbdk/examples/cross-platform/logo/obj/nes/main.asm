;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module main
	
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
	.globl _fill_bkg_rect
	.globl _set_bkg_native_data
	.globl _set_bkg_attributes_nes16x16
	.globl _set_bkg_tiles
	.globl _display_off
	.globl _display_on
	.globl _vsync
	.globl _set_bkg_palette
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
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;__200000009   Allocated to registers 
;__200000010   Allocated to registers 
;__200000011   Allocated to registers 
;__200000012   Allocated to registers 
;__200000013   Allocated to registers 
;x             Allocated to registers 
;y             Allocated to registers 
;w             Allocated to registers 
;h             Allocated to registers 
;attributes    Allocated to registers 
;------------------------------------------------------------
;	src/main.c: 5: void main(void) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/main.c: 6: DISPLAY_OFF;
;	genCall
	jsr	_display_off
;	Raw cost for generated ic 2 : (3, 6.000000) count=1.000000
;	src/main.c: 7: fill_bkg_rect(0, 0, DEVICE_SCREEN_WIDTH, DEVICE_SCREEN_HEIGHT, 0);
;	genAssign
;	genAssignLit
	ldx	#0x20
	stx	_fill_bkg_rect_PARM_3
;	Raw cost for generated ic 5 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x1e
	stx	_fill_bkg_rect_PARM_4
;	Raw cost for generated ic 6 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_fill_bkg_rect_PARM_5
;	Raw cost for generated ic 7 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	txa
	jsr	_fill_bkg_rect
;	Raw cost for generated ic 8 : (4, 8.000000) count=1.000000
;	src/main.c: 16: set_bkg_palette(0, GBDK_2020_logo_PALETTE_COUNT, GBDK_2020_logo_palettes);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_GBDK_2020_logo_palettes
	sta	(_set_bkg_palette_PARM_3 + 1)
	lda	#_GBDK_2020_logo_palettes
	sta	_set_bkg_palette_PARM_3
;	Raw cost for generated ic 10 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x00
	ldx	#0x03
	jsr	_set_bkg_palette
;	Raw cost for generated ic 14 : (7, 10.000000) count=1.000000
;	src/main.c: 19: set_bkg_native_data(0, GBDK_2020_logo_TILE_COUNT, GBDK_2020_logo_tiles);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_GBDK_2020_logo_tiles
	sta	(_set_bkg_native_data_PARM_3 + 1)
	lda	#_GBDK_2020_logo_tiles
	sta	_set_bkg_native_data_PARM_3
;	Raw cost for generated ic 16 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x00
	ldx	#0x28
	jsr	_set_bkg_native_data
;	Raw cost for generated ic 20 : (7, 10.000000) count=1.000000
;	src/main.c: 25: GBDK_2020_logo_map_attributes);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_GBDK_2020_logo_map_attributes
	sta	(_set_bkg_attributes_nes16x16_PARM_5 + 1)
	lda	#_GBDK_2020_logo_map_attributes
	sta	_set_bkg_attributes_nes16x16_PARM_5
;	Raw cost for generated ic 22 : (10, 12.000000) count=1.000000
;	../../../include/nes/nes.h: 758: set_bkg_attributes_nes16x16(x >> 1, y >> 1, (w + 1) >> 1, (h + 1) >> 1, attributes);
;	genAssign
;	genAssignLit
	ldx	#0x0a
	stx	_set_bkg_attributes_nes16x16_PARM_3
;	Raw cost for generated ic 45 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	dex
	stx	_set_bkg_attributes_nes16x16_PARM_4
;	Raw cost for generated ic 46 : (4, 6.000000) count=1.000000
;	Raw cost for generated ic 43 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 44 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x03
	tax
	jsr	_set_bkg_attributes_nes16x16
;	Raw cost for generated ic 48 : (6, 10.000000) count=1.000000
;	src/main.c: 31: GBDK_2020_logo_map);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 50 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_GBDK_2020_logo_map
	sta	(_set_bkg_tiles_PARM_5 + 1)
	lda	#_GBDK_2020_logo_map
	sta	_set_bkg_tiles_PARM_5
;	Raw cost for generated ic 51 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x14
	stx	_set_bkg_tiles_PARM_3
;	Raw cost for generated ic 54 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x12
	stx	_set_bkg_tiles_PARM_4
;	Raw cost for generated ic 55 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 52 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 53 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x06
	tax
	jsr	_set_bkg_tiles
;	Raw cost for generated ic 57 : (6, 10.000000) count=1.000000
;	src/main.c: 33: vsync();
;	genCall
	jsr	_vsync
;	Raw cost for generated ic 58 : (3, 6.000000) count=1.000000
;	src/main.c: 34: SHOW_BKG;
;	genOr
	lda	_shadow_PPUMASK
	ora	#0x08
	sta	_shadow_PPUMASK
;	Raw cost for generated ic 59 : (8, 10.000000) count=1.000000
;	src/main.c: 35: DISPLAY_ON;
;	genCall
;	Raw cost for generated ic 61 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 62 : (0, 0.000000) count=1.000000
;	src/main.c: 36: }
;	genEndFunction
	jmp	_display_on
;	Raw cost for generated ic 63 : (1, 6.000000) count=1.000000
	.area _CODE
	.area _XINIT
	.area _CABS    (ABS)
