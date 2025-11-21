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
	.globl _init_gfx
	.globl b___func_blank_tile_data
	.globl ___func_blank_tile_data
	.globl b___func_logo_map
	.globl ___func_logo_map
	.globl b___func_logo_tiles_data
	.globl ___func_logo_tiles_data
	.globl _fill_bkg_rect
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _vsync
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
;Allocation info for local variables in function '__func_logo_tiles_data'
;------------------------------------------------------------
;	src/main.c: 6: INCBIN(logo_tiles_data, "res/gbdk2020.bin") // Variable name to use, Path to file
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __func_logo_tiles_data
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
	b___func_logo_tiles_data	= 0
___func_logo_tiles_data:
;	naked function: no prologue.
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	m6502_genInline
		_logo_tiles_data::
	 1$:
	 .incbin "res/gbdk2020.bin" 
	 2$:
	 ___size_logo_tiles_data = (2$-1$) 
	 .globl ___size_logo_tiles_data 
	 .local b___func_logo_tiles_data 
	 ___bank_logo_tiles_data = b___func_logo_tiles_data 
	 .globl ___bank_logo_tiles_data 
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genEndFunction
;	naked function: no epilogue.
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '__func_logo_map'
;------------------------------------------------------------
;	src/main.c: 9: INCBIN(logo_map, "res/gbdk2020_map.bin")
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __func_logo_map
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
	b___func_logo_map	= 0
___func_logo_map:
;	naked function: no prologue.
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	m6502_genInline
		_logo_map::
	 1$:
	 .incbin "res/gbdk2020_map.bin" 
	 2$:
	 ___size_logo_map = (2$-1$) 
	 .globl ___size_logo_map 
	 .local b___func_logo_map 
	 ___bank_logo_map = b___func_logo_map 
	 .globl ___bank_logo_map 
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genEndFunction
;	naked function: no epilogue.
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '__func_blank_tile_data'
;------------------------------------------------------------
;	src/main.c: 12: INCBIN(blank_tile_data, "res/blanktile.bin")
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __func_blank_tile_data
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
	b___func_blank_tile_data	= 0
___func_blank_tile_data:
;	naked function: no prologue.
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	m6502_genInline
		_blank_tile_data::
	 1$:
	 .incbin "res/blanktile.bin" 
	 2$:
	 ___size_blank_tile_data = (2$-1$) 
	 .globl ___size_blank_tile_data 
	 .local b___func_blank_tile_data 
	 ___bank_blank_tile_data = b___func_blank_tile_data 
	 .globl ___bank_blank_tile_data 
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genEndFunction
;	naked function: no epilogue.
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'init_gfx'
;------------------------------------------------------------
;	src/main.c: 28: void init_gfx(void) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function init_gfx
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_init_gfx:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/main.c: 30: set_bkg_data(0x80u, 1u, blank_tile_data); // The first 0x80u here is the tile ID
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_blank_tile_data
	sta	(_set_bkg_data_PARM_3 + 1)
	lda	#_blank_tile_data
	sta	_set_bkg_data_PARM_3
;	Raw cost for generated ic 3 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x80
	ldx	#0x01
	jsr	_set_bkg_data
;	Raw cost for generated ic 7 : (7, 10.000000) count=1.000000
;	src/main.c: 31: fill_bkg_rect(0u, 0u, DEVICE_SCREEN_WIDTH, DEVICE_SCREEN_HEIGHT, 0x80u);   // The last 0x80u here is the tile ID 
;	genAssign
;	genAssignLit
	ldx	#0x20
	stx	_fill_bkg_rect_PARM_3
;	Raw cost for generated ic 10 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x1e
	stx	_fill_bkg_rect_PARM_4
;	Raw cost for generated ic 11 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x80
	stx	_fill_bkg_rect_PARM_5
;	Raw cost for generated ic 12 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x00
	tax
	jsr	_fill_bkg_rect
;	Raw cost for generated ic 13 : (6, 10.000000) count=1.000000
;	src/main.c: 35: set_bkg_data(0u, INCBIN_SIZE(logo_tiles_data) / TILE_BYTES, logo_tiles_data);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#>___size_logo_tiles_data
	lda	#___size_logo_tiles_data
;	Raw cost for generated ic 15 : (4, 4.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
;	Raw cost for generated ic 17 : (16, 34.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#>_logo_tiles_data
	stx	(_set_bkg_data_PARM_3 + 1)
	ldx	#_logo_tiles_data
	stx	_set_bkg_data_PARM_3
;	Raw cost for generated ic 20 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tax
	lda	#0x00
	jsr	_set_bkg_data
;	Raw cost for generated ic 24 : (6, 10.000000) count=1.000000
;	src/main.c: 38: logo_map);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_logo_map
	sta	(_set_bkg_tiles_PARM_5 + 1)
	lda	#_logo_map
	sta	_set_bkg_tiles_PARM_5
;	Raw cost for generated ic 26 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x07
	stx	_set_bkg_tiles_PARM_3
;	Raw cost for generated ic 29 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x0c
	stx	_set_bkg_tiles_PARM_4
;	Raw cost for generated ic 30 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 27 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 28 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x06
	ldx	#0x03
	jsr	_set_bkg_tiles
;	Raw cost for generated ic 32 : (7, 10.000000) count=1.000000
;	src/main.c: 41: SHOW_BKG;
;	genOr
	lda	_shadow_PPUMASK
	ora	#0x08
	sta	_shadow_PPUMASK
;	Raw cost for generated ic 33 : (8, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 35 : (0, 0.000000) count=1.000000
;	src/main.c: 42: }
;	genEndFunction
	rts
;	Raw cost for generated ic 36 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	src/main.c: 46: void main(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/main.c: 48: init_gfx();
;	genCall
	jsr	_init_gfx
;	Raw cost for generated ic 2 : (3, 6.000000) count=1.000000
;	src/main.c: 51: while(1) {
;	genLabel
00102$:
;	Raw cost for generated ic 5 : (0, 0.000000) count=72.000000
;	src/main.c: 56: vsync();
;	genCall
	jsr	_vsync
;	Raw cost for generated ic 6 : (3, 6.000000) count=72.000000
;	genGoto
	jmp	00102$
;	Raw cost for generated ic 7 : (3, 3.000000) count=72.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=0.000000
;	src/main.c: 58: }
;	genEndFunction
	rts
;	Raw cost for generated ic 10 : (1, 6.000000) count=0.000000
	.area _CODE
	.area _XINIT
	.area _CABS    (ABS)
