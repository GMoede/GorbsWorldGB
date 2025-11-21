;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module large_map
	
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
	.globl _init_camera
	.globl _set_camera
	.globl _set_bkg_native_data
	.globl _set_bkg_submap
	.globl _set_bkg_submap_attributes_nes16x16
	.globl _display_off
	.globl _display_on
	.globl _vsync
	.globl _joypad
	.globl _set_bkg_palette
	.globl _redraw
	.globl _old_map_pos_y
	.globl _old_map_pos_x
	.globl _map_pos_y
	.globl _map_pos_x
	.globl _old_camera_y
	.globl _old_camera_x
	.globl _camera_y
	.globl _camera_x
	.globl _joy
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
_set_camera_sloc0_1_0:
	.ds 2
_init_camera_sloc0_1_0:
	.ds 1
_init_camera_sloc1_1_0:
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
_joy::
	.ds 1
_camera_x::
	.ds 2
_camera_y::
	.ds 2
_old_camera_x::
	.ds 2
_old_camera_y::
	.ds 2
_map_pos_x::
	.ds 1
_map_pos_y::
	.ds 1
_old_map_pos_x::
	.ds 1
_old_map_pos_y::
	.ds 1
_redraw::
	.ds 1
_init_camera_y_10000_189:
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
;Allocation info for local variables in function 'set_camera'
;------------------------------------------------------------
;sloc0         Allocated with name '_set_camera_sloc0_1_0'
;__200000009   Allocated to registers 
;__200000010   Allocated to registers a 
;x             Allocated to registers 
;y             Allocated to registers 
;__600000012   Allocated to registers y 
;__600000013   Allocated to registers 
;map_pos_y     Allocated to registers 
;__600000022   Allocated to registers y 
;__600000015   Allocated to registers 
;__600000016   Allocated to registers 
;__600000017   Allocated to registers x 
;__600000018   Allocated to registers 
;__600000019   Allocated to registers 
;__600000020   Allocated to registers 
;__700000023   Allocated to registers 
;map_pos_y     Allocated to registers 
;x             Allocated to registers 
;y             Allocated to registers 
;w             Allocated to registers 
;h             Allocated to registers 
;attributes    Allocated to registers 
;map_w         Allocated to registers 
;__800000025   Allocated to registers y 
;__800000026   Allocated to registers 
;map_pos_y     Allocated to registers 
;__800000035   Allocated to registers a 
;__800000028   Allocated to registers 
;__800000029   Allocated to registers 
;__800000030   Allocated to registers x 
;__800000031   Allocated to registers 
;__800000032   Allocated to registers 
;__800000033   Allocated to registers 
;__900000036   Allocated to registers 
;map_pos_y     Allocated to registers 
;x             Allocated to registers 
;y             Allocated to registers 
;w             Allocated to registers 
;h             Allocated to registers 
;attributes    Allocated to registers 
;map_w         Allocated to registers 
;__600000038   Allocated to registers y 
;__600000039   Allocated to registers 
;map_pos_x     Allocated to registers 
;__600000048   Allocated to registers y 
;__600000041   Allocated to registers 
;__600000042   Allocated to registers 
;__600000043   Allocated to registers 
;__600000044   Allocated to registers x 
;__600000045   Allocated to registers 
;__600000046   Allocated to registers 
;__700000049   Allocated to registers 
;map_pos_x     Allocated to registers 
;x             Allocated to registers 
;y             Allocated to registers 
;w             Allocated to registers 
;h             Allocated to registers 
;attributes    Allocated to registers 
;map_w         Allocated to registers 
;__800000051   Allocated to registers y 
;__800000052   Allocated to registers 
;map_pos_x     Allocated to registers 
;__800000061   Allocated to registers a 
;__800000054   Allocated to registers 
;__800000055   Allocated to registers 
;__800000056   Allocated to registers 
;__800000057   Allocated to registers x 
;__800000058   Allocated to registers 
;__800000059   Allocated to registers 
;__900000062   Allocated to registers 
;map_pos_x     Allocated to registers 
;x             Allocated to registers 
;y             Allocated to registers 
;w             Allocated to registers 
;h             Allocated to registers 
;attributes    Allocated to registers 
;map_w         Allocated to registers 
;------------------------------------------------------------
;	src/large_map.c: 77: void set_camera(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function set_camera
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_set_camera:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/large_map.c: 80: move_bkg(camera_x, WRAP_SCROLL_Y(camera_y + SCROLL_Y_OFFSET));
;	genCast
;	genCopy
	ldx	(_camera_y + 1)
	lda	_camera_y
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genPlus
;	genPlusIncr
	clc
	adc	#0x04
	bcc	00234$
	inx
00234$:
;	Raw cost for generated ic 3 : (6, 8.600000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0xf0
	sty	__moduint_PARM_2
	ldy	#0x00
	sty	(__moduint_PARM_2 + 1)
;	Raw cost for generated ic 394 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 393 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	__moduint
;	assignResultValue
;	Raw cost for generated ic 395 : (3, 6.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	_camera_x
	stx	_bkg_scroll_x
;	Raw cost for generated ic 7 : (6, 9.000000) count=1.000000
;	../../../include/nes/nes.h: 976: bkg_scroll_y = (uint8_t)(y >= 240 ? (y - 240) : y);
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 20 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	_bkg_scroll_y
;	Raw cost for generated ic 22 : (3, 5.000000) count=1.000000
;	src/large_map.c: 82: map_pos_y = (uint8_t)(camera_y >> 3u);
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	ldx	(_camera_y + 1)
	lda	_camera_y
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 25 : (19, 35.000000) count=1.000000
;	genCast
;	genCopy
	tay
;	Raw cost for generated ic 26 : (1, 2.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	sty	_map_pos_y
;	Raw cost for generated ic 28 : (3, 5.000000) count=1.000000
;	src/large_map.c: 83: if (map_pos_y != old_map_pos_y)
;	genCmpEQorNE
	cpy	_old_map_pos_y
	bne	00235$
	jmp	00107$
00235$:
;	Raw cost for generated ic 29 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 30 : (0, 0.000000) count=1.000000
;	src/large_map.c: 85: if (camera_y < old_camera_y)
;	genCmp
	lda	_camera_y
	sec
	sbc	_old_camera_y
	lda	(_camera_y + 1)
	sbc	(_old_camera_y + 1)
	bcc	00236$
	jmp	00104$
00236$:
;	Raw cost for generated ic 33 : (18, 23.600000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 34 : (0, 0.000000) count=0.750000
;	src/large_map.c: 66: return map_pos_y + 1;
;	genCast
;	genCopy
;	Raw cost for generated ic 39 : (0, 0.000000) count=0.562500
;	genPlus
;	genPlusIncr
	iny
;	Raw cost for generated ic 40 : (1, 2.000000) count=0.562500
;	src/large_map.c: 87: set_submap_indices(
;	genCast
;	genCopy
	ldx	#0x00
	lda	_map_pos_x
;	Raw cost for generated ic 44 : (5, 6.000000) count=0.562500
;	genMinus
;	genMinusDec
	sta	*(REGTEMP+0)
	lda	#0x9c
	sec
	sbc	*(REGTEMP+0)
	sta	*_set_camera_sloc0_1_0
	txa
	sbc	#0x00
	sta	*(_set_camera_sloc0_1_0 + 1)
;	Raw cost for generated ic 45 : (14, 20.000000) count=0.562500
;	genCmp
	lda	#0x21
	sec
	sbc	*_set_camera_sloc0_1_0
	txa
	sbc	*(_set_camera_sloc0_1_0 + 1)
	bvc	00238$
	bpl	00237$
	bmi	00132$
00238$:
	bpl	00132$
00237$:
;	Raw cost for generated ic 46 : (19, 25.400002) count=0.562500
;	skipping generated iCode
;	Raw cost for generated ic 47 : (0, 0.000000) count=0.562500
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x21
;	Raw cost for generated ic 48 : (2, 2.000000) count=0.421875
;	genGoto
	jmp	00133$
;	Raw cost for generated ic 49 : (3, 3.000000) count=0.421875
;	genLabel
00132$:
;	Raw cost for generated ic 50 : (0, 0.000000) count=0.140625
;	genMinus
;	genMinusDec
	lda	#0x9c
	sec
	sbc	_map_pos_x
;	Raw cost for generated ic 51 : (6, 8.000000) count=0.140625
;	genLabel
00133$:
;	Raw cost for generated ic 53 : (0, 0.000000) count=0.562500
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 54 : (0, 0.000000) count=0.562500
;	genCast
;	genCopy
	ldx	#>_bigmap_map
	stx	(_set_bkg_submap_PARM_5 + 1)
	ldx	#_bigmap_map
	stx	_set_bkg_submap_PARM_5
;	Raw cost for generated ic 55 : (10, 12.000000) count=0.562500
;	genAssign
;	genAssignLit
;	genCopy
	sta	_set_bkg_submap_PARM_3
;	Raw cost for generated ic 58 : (3, 4.000000) count=0.562500
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_set_bkg_submap_PARM_4
;	Raw cost for generated ic 59 : (5, 6.000000) count=0.562500
;	genAssign
;	genAssignLit
	ldx	#0x9c
	stx	_set_bkg_submap_PARM_6
;	Raw cost for generated ic 61 : (5, 6.000000) count=0.562500
;	Raw cost for generated ic 56 : (0, 0.000000) count=0.562500
;	Raw cost for generated ic 57 : (0, 0.000000) count=0.562500
;	genCall
;	genSend
	lda	_map_pos_x
	sty	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
	jsr	_set_bkg_submap
;	Raw cost for generated ic 62 : (10, 16.000000) count=0.562500
;	src/large_map.c: 94: set_submap_attributes(
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 64 : (0, 0.000000) count=0.562500
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 65 : (0, 0.000000) count=0.562500
;	genCast
;	genCopy
	ldx	#0x00
	lda	_map_pos_x
;	Raw cost for generated ic 68 : (5, 6.000000) count=0.562500
;	genMinus
;	genMinusDec
	sta	*(REGTEMP+0)
	lda	#0x9c
	sec
	sbc	*(REGTEMP+0)
	sta	*_set_camera_sloc0_1_0
	txa
	sbc	#0x00
	sta	*(_set_camera_sloc0_1_0 + 1)
;	Raw cost for generated ic 69 : (14, 20.000000) count=0.562500
;	genCmp
	lda	#0x21
	sec
	sbc	*_set_camera_sloc0_1_0
	txa
	sbc	*(_set_camera_sloc0_1_0 + 1)
	bvc	00241$
	bpl	00240$
	bmi	00134$
00241$:
	bpl	00134$
00240$:
;	Raw cost for generated ic 70 : (19, 25.400002) count=0.562500
;	skipping generated iCode
;	Raw cost for generated ic 71 : (0, 0.000000) count=0.562500
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x21
;	Raw cost for generated ic 72 : (2, 2.000000) count=0.421875
;	genGoto
	jmp	00135$
;	Raw cost for generated ic 73 : (3, 3.000000) count=0.421875
;	genLabel
00134$:
;	Raw cost for generated ic 74 : (0, 0.000000) count=0.140625
;	genMinus
;	genMinusDec
	lda	#0x9c
	sec
	sbc	_map_pos_x
	tax
;	Raw cost for generated ic 75 : (7, 10.000000) count=0.140625
;	genLabel
00135$:
;	Raw cost for generated ic 77 : (0, 0.000000) count=0.562500
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 78 : (0, 0.000000) count=0.562500
;	src/large_map.c: 66: return map_pos_y + 1;
;	genCast
;	genCopy
	ldy	_map_pos_y
;	Raw cost for generated ic 81 : (3, 4.000000) count=0.562500
;	genPlus
;	genPlusIncr
	iny
;	Raw cost for generated ic 82 : (1, 2.000000) count=0.562500
;	../../../include/nes/nes.h: 821: set_bkg_submap_attributes_nes16x16(x >> 1, y >> 1, (w + 1) >> 1, (h + 1) >> 1, attributes, (map_w + 1) >> 1);
;	genRightShift
;	genRightShiftLiteral
;	genrshOne
	lda	_map_pos_x
	lsr	a
	sta	*_set_camera_sloc0_1_0
;	Raw cost for generated ic 94 : (6, 9.000000) count=0.562500
;	genRightShift
;	genRightShiftLiteral
;	genrshOne
	tya
	lsr	a
	tay
;	Raw cost for generated ic 95 : (3, 6.000000) count=0.562500
;	genCast
;	genCopy
	txa
	ldx	#0x00
;	Raw cost for generated ic 96 : (3, 4.000000) count=0.562500
;	genPlus
;	genPlusIncr
	clc
	adc	#0x01
	bcc	00243$
	inx
00243$:
;	Raw cost for generated ic 97 : (6, 8.600000) count=0.562500
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	stx	*(REGTEMP+0)
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
;	Raw cost for generated ic 98 : (9, 15.000000) count=0.562500
;	genCast
;	genCopy
;	Raw cost for generated ic 99 : (3, 4.000000) count=0.562500
;	genAssign
;	genAssignLit
	sta	_set_bkg_submap_attributes_nes16x16_PARM_3
	ldx	#0x01
	stx	_set_bkg_submap_attributes_nes16x16_PARM_4
;	Raw cost for generated ic 111 : (5, 6.000000) count=0.562500
;	genAssign
;	genAssignLit
;	genCopy
	lda	#>_bigmap_map_attributes
	sta	(_set_bkg_submap_attributes_nes16x16_PARM_5 + 1)
	lda	#_bigmap_map_attributes
	sta	_set_bkg_submap_attributes_nes16x16_PARM_5
;	Raw cost for generated ic 112 : (10, 12.000000) count=0.562500
;	genAssign
;	genAssignLit
	ldx	#0x4e
	stx	_set_bkg_submap_attributes_nes16x16_PARM_6
;	Raw cost for generated ic 113 : (5, 6.000000) count=0.562500
;	Raw cost for generated ic 108 : (0, 0.000000) count=0.562500
;	Raw cost for generated ic 109 : (0, 0.000000) count=0.562500
;	genCall
;	genSend
	lda	*_set_camera_sloc0_1_0
	sty	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
	jsr	_set_bkg_submap_attributes_nes16x16
;	Raw cost for generated ic 114 : (9, 15.000000) count=0.562500
;	src/large_map.c: 94: set_submap_attributes(
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 116 : (3, 3.000000) count=0.562500
;	genLabel
00104$:
;	Raw cost for generated ic 117 : (0, 0.000000) count=0.187500
;	src/large_map.c: 104: if ((bigmap_mapHeight - DEVICE_SCREEN_HEIGHT) > map_pos_y)
;	genCmp
	cpy	#0x24
	bcc	00244$
	jmp	00105$
00244$:
;	Raw cost for generated ic 118 : (7, 7.600000) count=0.187500
;	skipping generated iCode
;	Raw cost for generated ic 119 : (0, 0.000000) count=0.187500
;	src/large_map.c: 74: return map_pos_y + DEVICE_SCREEN_HEIGHT;
;	genCast
;	genCopy
	tya
;	Raw cost for generated ic 124 : (1, 2.000000) count=0.140625
;	genPlus
;	genPlusIncr
	clc
	adc	#0x1e
	tay
;	Raw cost for generated ic 125 : (4, 6.000000) count=0.140625
;	src/large_map.c: 106: set_submap_indices(
;	genCast
;	genCopy
	ldx	#0x00
	lda	_map_pos_x
;	Raw cost for generated ic 129 : (5, 6.000000) count=0.140625
;	genMinus
;	genMinusDec
	sta	*(REGTEMP+0)
	lda	#0x9c
	sec
	sbc	*(REGTEMP+0)
	sta	*_set_camera_sloc0_1_0
	txa
	sbc	#0x00
	sta	*(_set_camera_sloc0_1_0 + 1)
;	Raw cost for generated ic 130 : (14, 20.000000) count=0.140625
;	genCmp
	lda	#0x21
	sec
	sbc	*_set_camera_sloc0_1_0
	txa
	sbc	*(_set_camera_sloc0_1_0 + 1)
	bvc	00246$
	bpl	00245$
	bmi	00136$
00246$:
	bpl	00136$
00245$:
;	Raw cost for generated ic 131 : (19, 25.400002) count=0.140625
;	skipping generated iCode
;	Raw cost for generated ic 132 : (0, 0.000000) count=0.140625
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x21
;	Raw cost for generated ic 133 : (2, 2.000000) count=0.105469
;	genGoto
	jmp	00137$
;	Raw cost for generated ic 134 : (3, 3.000000) count=0.105469
;	genLabel
00136$:
;	Raw cost for generated ic 135 : (0, 0.000000) count=0.035156
;	genMinus
;	genMinusDec
	lda	#0x9c
	sec
	sbc	_map_pos_x
;	Raw cost for generated ic 136 : (6, 8.000000) count=0.035156
;	genLabel
00137$:
;	Raw cost for generated ic 138 : (0, 0.000000) count=0.140625
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 139 : (0, 0.000000) count=0.140625
;	genCast
;	genCopy
	ldx	#>_bigmap_map
	stx	(_set_bkg_submap_PARM_5 + 1)
	ldx	#_bigmap_map
	stx	_set_bkg_submap_PARM_5
;	Raw cost for generated ic 140 : (10, 12.000000) count=0.140625
;	genAssign
;	genAssignLit
;	genCopy
	sta	_set_bkg_submap_PARM_3
;	Raw cost for generated ic 143 : (3, 4.000000) count=0.140625
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_set_bkg_submap_PARM_4
;	Raw cost for generated ic 144 : (5, 6.000000) count=0.140625
;	genAssign
;	genAssignLit
	ldx	#0x9c
	stx	_set_bkg_submap_PARM_6
;	Raw cost for generated ic 146 : (5, 6.000000) count=0.140625
;	Raw cost for generated ic 141 : (0, 0.000000) count=0.140625
;	Raw cost for generated ic 142 : (0, 0.000000) count=0.140625
;	genCall
;	genSend
	lda	_map_pos_x
	sty	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
	jsr	_set_bkg_submap
;	Raw cost for generated ic 147 : (10, 16.000000) count=0.140625
;	src/large_map.c: 113: set_submap_attributes(
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 149 : (0, 0.000000) count=0.140625
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 150 : (0, 0.000000) count=0.140625
;	genCast
;	genCopy
	ldx	#0x00
	lda	_map_pos_x
;	Raw cost for generated ic 153 : (5, 6.000000) count=0.140625
;	genMinus
;	genMinusDec
	sta	*(REGTEMP+0)
	lda	#0x9c
	sec
	sbc	*(REGTEMP+0)
	sta	*_set_camera_sloc0_1_0
	txa
	sbc	#0x00
	sta	*(_set_camera_sloc0_1_0 + 1)
;	Raw cost for generated ic 154 : (14, 20.000000) count=0.140625
;	genCmp
	lda	#0x21
	sec
	sbc	*_set_camera_sloc0_1_0
	txa
	sbc	*(_set_camera_sloc0_1_0 + 1)
	bvc	00249$
	bpl	00248$
	bmi	00138$
00249$:
	bpl	00138$
00248$:
;	Raw cost for generated ic 155 : (19, 25.400002) count=0.140625
;	skipping generated iCode
;	Raw cost for generated ic 156 : (0, 0.000000) count=0.140625
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x21
;	Raw cost for generated ic 157 : (2, 2.000000) count=0.105469
;	genGoto
	jmp	00139$
;	Raw cost for generated ic 158 : (3, 3.000000) count=0.105469
;	genLabel
00138$:
;	Raw cost for generated ic 159 : (0, 0.000000) count=0.035156
;	genMinus
;	genMinusDec
	lda	#0x9c
	sec
	sbc	_map_pos_x
	tax
;	Raw cost for generated ic 160 : (7, 10.000000) count=0.035156
;	genLabel
00139$:
;	Raw cost for generated ic 162 : (0, 0.000000) count=0.140625
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 163 : (0, 0.000000) count=0.140625
;	src/large_map.c: 74: return map_pos_y + DEVICE_SCREEN_HEIGHT;
;	genCast
;	genCopy
	lda	_map_pos_y
;	Raw cost for generated ic 166 : (3, 4.000000) count=0.140625
;	genPlus
;	genPlusIncr
	clc
	adc	#0x1e
;	Raw cost for generated ic 167 : (3, 4.000000) count=0.140625
;	../../../include/nes/nes.h: 821: set_bkg_submap_attributes_nes16x16(x >> 1, y >> 1, (w + 1) >> 1, (h + 1) >> 1, attributes, (map_w + 1) >> 1);
;	genRightShift
;	genRightShiftLiteral
;	genrshOne
	pha
	lda	_map_pos_x
	lsr	a
	tay
	pla
;	Raw cost for generated ic 179 : (7, 15.000000) count=0.140625
;	genRightShift
;	genRightShiftLiteral
;	genrshOne
	lsr	a
	sta	*_set_camera_sloc0_1_0
;	Raw cost for generated ic 180 : (3, 5.000000) count=0.140625
;	genCast
;	genCopy
	txa
	ldx	#0x00
;	Raw cost for generated ic 181 : (3, 4.000000) count=0.140625
;	genPlus
;	genPlusIncr
	clc
	adc	#0x01
	bcc	00251$
	inx
00251$:
;	Raw cost for generated ic 182 : (6, 8.600000) count=0.140625
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	stx	*(REGTEMP+0)
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
;	Raw cost for generated ic 183 : (9, 15.000000) count=0.140625
;	genCast
;	genCopy
;	Raw cost for generated ic 184 : (3, 4.000000) count=0.140625
;	genAssign
;	genAssignLit
	sta	_set_bkg_submap_attributes_nes16x16_PARM_3
	ldx	#0x01
	stx	_set_bkg_submap_attributes_nes16x16_PARM_4
;	Raw cost for generated ic 196 : (5, 6.000000) count=0.140625
;	genAssign
;	genAssignLit
;	genCopy
	lda	#>_bigmap_map_attributes
	sta	(_set_bkg_submap_attributes_nes16x16_PARM_5 + 1)
	lda	#_bigmap_map_attributes
	sta	_set_bkg_submap_attributes_nes16x16_PARM_5
;	Raw cost for generated ic 197 : (10, 12.000000) count=0.140625
;	genAssign
;	genAssignLit
	ldx	#0x4e
	stx	_set_bkg_submap_attributes_nes16x16_PARM_6
;	Raw cost for generated ic 198 : (5, 6.000000) count=0.140625
;	Raw cost for generated ic 193 : (0, 0.000000) count=0.140625
;	Raw cost for generated ic 194 : (0, 0.000000) count=0.140625
;	genCall
;	genSend
	tya
	ldx	*_set_camera_sloc0_1_0
	jsr	_set_bkg_submap_attributes_nes16x16
;	Raw cost for generated ic 199 : (6, 11.000000) count=0.140625
;	src/large_map.c: 113: set_submap_attributes(
;	genLabel
00105$:
;	Raw cost for generated ic 202 : (0, 0.000000) count=0.750000
;	src/large_map.c: 122: old_map_pos_y = map_pos_y; 
;	genAssign
;	genAssignLit
;	genCopy
	lda	_map_pos_y
	sta	_old_map_pos_y
;	Raw cost for generated ic 203 : (6, 9.000000) count=0.750000
;	genLabel
00107$:
;	Raw cost for generated ic 205 : (0, 0.000000) count=1.000000
;	src/large_map.c: 125: map_pos_x = (uint8_t)(camera_x >> 3u);
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	ldx	(_camera_x + 1)
	lda	_camera_x
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 206 : (19, 35.000000) count=1.000000
;	genCast
;	genCopy
	tay
;	Raw cost for generated ic 207 : (1, 2.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	sty	_map_pos_x
;	Raw cost for generated ic 209 : (3, 5.000000) count=1.000000
;	src/large_map.c: 126: if (map_pos_x != old_map_pos_x)
;	genCmpEQorNE
	cpy	_old_map_pos_x
	bne	00252$
	jmp	00114$
00252$:
;	Raw cost for generated ic 210 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 211 : (0, 0.000000) count=1.000000
;	src/large_map.c: 128: if (camera_x < old_camera_x)
;	genCmp
	lda	_camera_x
	sec
	sbc	_old_camera_x
	lda	(_camera_x + 1)
	sbc	(_old_camera_x + 1)
	bcc	00253$
	jmp	00111$
00253$:
;	Raw cost for generated ic 214 : (18, 23.600000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 215 : (0, 0.000000) count=0.750000
;	src/large_map.c: 52: return map_pos_x + 1;
;	genCast
;	genCopy
;	Raw cost for generated ic 220 : (0, 0.000000) count=0.562500
;	genPlus
;	genPlusIncr
	iny
;	Raw cost for generated ic 221 : (1, 2.000000) count=0.562500
;	src/large_map.c: 130: set_submap_indices(
;	genCast
;	genCopy
	ldx	#0x00
	lda	_map_pos_y
;	Raw cost for generated ic 225 : (5, 6.000000) count=0.562500
;	genMinus
;	genMinusDec
	sta	*(REGTEMP+0)
	lda	#0x42
	sec
	sbc	*(REGTEMP+0)
	sta	*_set_camera_sloc0_1_0
	txa
	sbc	#0x00
	sta	*(_set_camera_sloc0_1_0 + 1)
;	Raw cost for generated ic 226 : (14, 20.000000) count=0.562500
;	genCmp
	lda	#0x1f
	sec
	sbc	*_set_camera_sloc0_1_0
	txa
	sbc	*(_set_camera_sloc0_1_0 + 1)
	bvc	00255$
	bpl	00254$
	bmi	00140$
00255$:
	bpl	00140$
00254$:
;	Raw cost for generated ic 227 : (19, 25.400002) count=0.562500
;	skipping generated iCode
;	Raw cost for generated ic 228 : (0, 0.000000) count=0.562500
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x1f
;	Raw cost for generated ic 229 : (2, 2.000000) count=0.421875
;	genGoto
	jmp	00141$
;	Raw cost for generated ic 230 : (3, 3.000000) count=0.421875
;	genLabel
00140$:
;	Raw cost for generated ic 231 : (0, 0.000000) count=0.140625
;	genMinus
;	genMinusDec
	lda	#0x42
	sec
	sbc	_map_pos_y
;	Raw cost for generated ic 232 : (6, 8.000000) count=0.140625
;	genLabel
00141$:
;	Raw cost for generated ic 234 : (0, 0.000000) count=0.562500
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 235 : (0, 0.000000) count=0.562500
;	genCast
;	genCopy
	ldx	#>_bigmap_map
	stx	(_set_bkg_submap_PARM_5 + 1)
	ldx	#_bigmap_map
	stx	_set_bkg_submap_PARM_5
;	Raw cost for generated ic 236 : (10, 12.000000) count=0.562500
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_set_bkg_submap_PARM_3
;	Raw cost for generated ic 239 : (5, 6.000000) count=0.562500
;	genAssign
;	genAssignLit
;	genCopy
	sta	_set_bkg_submap_PARM_4
;	Raw cost for generated ic 240 : (3, 4.000000) count=0.562500
;	genAssign
;	genAssignLit
	ldx	#0x9c
	stx	_set_bkg_submap_PARM_6
;	Raw cost for generated ic 242 : (5, 6.000000) count=0.562500
;	Raw cost for generated ic 237 : (0, 0.000000) count=0.562500
;	Raw cost for generated ic 238 : (0, 0.000000) count=0.562500
;	genCall
;	genSend
	tya
	ldx	_map_pos_y
	jsr	_set_bkg_submap
;	Raw cost for generated ic 243 : (7, 12.000000) count=0.562500
;	src/large_map.c: 137: set_submap_attributes(
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 245 : (0, 0.000000) count=0.562500
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 246 : (0, 0.000000) count=0.562500
;	genCast
;	genCopy
	ldx	#0x00
	lda	_map_pos_y
;	Raw cost for generated ic 248 : (5, 6.000000) count=0.562500
;	genMinus
;	genMinusDec
	sta	*(REGTEMP+0)
	lda	#0x42
	sec
	sbc	*(REGTEMP+0)
	sta	*_set_camera_sloc0_1_0
	txa
	sbc	#0x00
	sta	*(_set_camera_sloc0_1_0 + 1)
;	Raw cost for generated ic 249 : (14, 20.000000) count=0.562500
;	genCmp
	lda	#0x1f
	sec
	sbc	*_set_camera_sloc0_1_0
	txa
	sbc	*(_set_camera_sloc0_1_0 + 1)
	bvc	00258$
	bpl	00257$
	bmi	00142$
00258$:
	bpl	00142$
00257$:
;	Raw cost for generated ic 250 : (19, 25.400002) count=0.562500
;	skipping generated iCode
;	Raw cost for generated ic 251 : (0, 0.000000) count=0.562500
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x1f
;	Raw cost for generated ic 252 : (2, 2.000000) count=0.421875
;	genGoto
	jmp	00143$
;	Raw cost for generated ic 253 : (3, 3.000000) count=0.421875
;	genLabel
00142$:
;	Raw cost for generated ic 254 : (0, 0.000000) count=0.140625
;	genMinus
;	genMinusDec
	lda	#0x42
	sec
	sbc	_map_pos_y
	tax
;	Raw cost for generated ic 255 : (7, 10.000000) count=0.140625
;	genLabel
00143$:
;	Raw cost for generated ic 257 : (0, 0.000000) count=0.562500
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 258 : (0, 0.000000) count=0.562500
;	src/large_map.c: 52: return map_pos_x + 1;
;	genCast
;	genCopy
	ldy	_map_pos_x
;	Raw cost for generated ic 263 : (3, 4.000000) count=0.562500
;	genPlus
;	genPlusIncr
	iny
;	Raw cost for generated ic 264 : (1, 2.000000) count=0.562500
;	../../../include/nes/nes.h: 821: set_bkg_submap_attributes_nes16x16(x >> 1, y >> 1, (w + 1) >> 1, (h + 1) >> 1, attributes, (map_w + 1) >> 1);
;	genRightShift
;	genRightShiftLiteral
;	genrshOne
	tya
	lsr	a
	tay
;	Raw cost for generated ic 275 : (3, 6.000000) count=0.562500
;	genRightShift
;	genRightShiftLiteral
;	genrshOne
	lda	_map_pos_y
	lsr	a
	sta	*_set_camera_sloc0_1_0
;	Raw cost for generated ic 276 : (6, 9.000000) count=0.562500
;	genCast
;	genCopy
	txa
	ldx	#0x00
;	Raw cost for generated ic 281 : (3, 4.000000) count=0.562500
;	genPlus
;	genPlusIncr
	clc
	adc	#0x01
	bcc	00260$
	inx
00260$:
;	Raw cost for generated ic 282 : (6, 8.600000) count=0.562500
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	stx	*(REGTEMP+0)
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
;	Raw cost for generated ic 283 : (9, 15.000000) count=0.562500
;	genCast
;	genCopy
;	Raw cost for generated ic 284 : (3, 4.000000) count=0.562500
;	genAssign
;	genAssignLit
	sta	_set_bkg_submap_attributes_nes16x16_PARM_4
	ldx	#0x01
	stx	_set_bkg_submap_attributes_nes16x16_PARM_3
;	Raw cost for generated ic 291 : (5, 6.000000) count=0.562500
;	genAssign
;	genAssignLit
;	genCopy
	lda	#>_bigmap_map_attributes
	sta	(_set_bkg_submap_attributes_nes16x16_PARM_5 + 1)
	lda	#_bigmap_map_attributes
	sta	_set_bkg_submap_attributes_nes16x16_PARM_5
;	Raw cost for generated ic 293 : (10, 12.000000) count=0.562500
;	genAssign
;	genAssignLit
	ldx	#0x4e
	stx	_set_bkg_submap_attributes_nes16x16_PARM_6
;	Raw cost for generated ic 294 : (5, 6.000000) count=0.562500
;	Raw cost for generated ic 289 : (0, 0.000000) count=0.562500
;	Raw cost for generated ic 290 : (0, 0.000000) count=0.562500
;	genCall
;	genSend
	tya
	ldx	*_set_camera_sloc0_1_0
	jsr	_set_bkg_submap_attributes_nes16x16
;	Raw cost for generated ic 295 : (6, 11.000000) count=0.562500
;	src/large_map.c: 137: set_submap_attributes(
;	genGoto
	jmp	00112$
;	Raw cost for generated ic 297 : (3, 3.000000) count=0.562500
;	genLabel
00111$:
;	Raw cost for generated ic 298 : (0, 0.000000) count=0.187500
;	src/large_map.c: 147: if ((bigmap_mapWidth - DEVICE_SCREEN_WIDTH) > map_pos_x)
;	genCmp
	cpy	#0x7c
	bcc	00261$
	jmp	00112$
00261$:
;	Raw cost for generated ic 299 : (7, 7.600000) count=0.187500
;	skipping generated iCode
;	Raw cost for generated ic 300 : (0, 0.000000) count=0.187500
;	src/large_map.c: 60: return map_pos_x + DEVICE_SCREEN_WIDTH;
;	genCast
;	genCopy
	tya
;	Raw cost for generated ic 305 : (1, 2.000000) count=0.140625
;	genPlus
;	genPlusIncr
	clc
	adc	#0x20
	tay
;	Raw cost for generated ic 306 : (4, 6.000000) count=0.140625
;	src/large_map.c: 149: set_submap_indices(
;	genCast
;	genCopy
	ldx	#0x00
	lda	_map_pos_y
;	Raw cost for generated ic 310 : (5, 6.000000) count=0.140625
;	genMinus
;	genMinusDec
	sta	*(REGTEMP+0)
	lda	#0x42
	sec
	sbc	*(REGTEMP+0)
	sta	*_set_camera_sloc0_1_0
	txa
	sbc	#0x00
	sta	*(_set_camera_sloc0_1_0 + 1)
;	Raw cost for generated ic 311 : (14, 20.000000) count=0.140625
;	genCmp
	lda	#0x1f
	sec
	sbc	*_set_camera_sloc0_1_0
	txa
	sbc	*(_set_camera_sloc0_1_0 + 1)
	bvc	00263$
	bpl	00262$
	bmi	00144$
00263$:
	bpl	00144$
00262$:
;	Raw cost for generated ic 312 : (19, 25.400002) count=0.140625
;	skipping generated iCode
;	Raw cost for generated ic 313 : (0, 0.000000) count=0.140625
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x1f
;	Raw cost for generated ic 314 : (2, 2.000000) count=0.105469
;	genGoto
	jmp	00145$
;	Raw cost for generated ic 315 : (3, 3.000000) count=0.105469
;	genLabel
00144$:
;	Raw cost for generated ic 316 : (0, 0.000000) count=0.035156
;	genMinus
;	genMinusDec
	lda	#0x42
	sec
	sbc	_map_pos_y
;	Raw cost for generated ic 317 : (6, 8.000000) count=0.035156
;	genLabel
00145$:
;	Raw cost for generated ic 319 : (0, 0.000000) count=0.140625
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 320 : (0, 0.000000) count=0.140625
;	genCast
;	genCopy
	ldx	#>_bigmap_map
	stx	(_set_bkg_submap_PARM_5 + 1)
	ldx	#_bigmap_map
	stx	_set_bkg_submap_PARM_5
;	Raw cost for generated ic 321 : (10, 12.000000) count=0.140625
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_set_bkg_submap_PARM_3
;	Raw cost for generated ic 324 : (5, 6.000000) count=0.140625
;	genAssign
;	genAssignLit
;	genCopy
	sta	_set_bkg_submap_PARM_4
;	Raw cost for generated ic 325 : (3, 4.000000) count=0.140625
;	genAssign
;	genAssignLit
	ldx	#0x9c
	stx	_set_bkg_submap_PARM_6
;	Raw cost for generated ic 327 : (5, 6.000000) count=0.140625
;	Raw cost for generated ic 322 : (0, 0.000000) count=0.140625
;	Raw cost for generated ic 323 : (0, 0.000000) count=0.140625
;	genCall
;	genSend
	tya
	ldx	_map_pos_y
	jsr	_set_bkg_submap
;	Raw cost for generated ic 328 : (7, 12.000000) count=0.140625
;	src/large_map.c: 156: set_submap_attributes(
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 330 : (0, 0.000000) count=0.140625
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 331 : (0, 0.000000) count=0.140625
;	genCast
;	genCopy
	ldx	#0x00
	lda	_map_pos_y
;	Raw cost for generated ic 333 : (5, 6.000000) count=0.140625
;	genMinus
;	genMinusDec
	sta	*(REGTEMP+0)
	lda	#0x42
	sec
	sbc	*(REGTEMP+0)
	sta	*_set_camera_sloc0_1_0
	txa
	sbc	#0x00
	sta	*(_set_camera_sloc0_1_0 + 1)
;	Raw cost for generated ic 334 : (14, 20.000000) count=0.140625
;	genCmp
	lda	#0x1f
	sec
	sbc	*_set_camera_sloc0_1_0
	txa
	sbc	*(_set_camera_sloc0_1_0 + 1)
	bvc	00266$
	bpl	00265$
	bmi	00146$
00266$:
	bpl	00146$
00265$:
;	Raw cost for generated ic 335 : (19, 25.400002) count=0.140625
;	skipping generated iCode
;	Raw cost for generated ic 336 : (0, 0.000000) count=0.140625
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x1f
;	Raw cost for generated ic 337 : (2, 2.000000) count=0.105469
;	genGoto
	jmp	00147$
;	Raw cost for generated ic 338 : (3, 3.000000) count=0.105469
;	genLabel
00146$:
;	Raw cost for generated ic 339 : (0, 0.000000) count=0.035156
;	genMinus
;	genMinusDec
	lda	#0x42
	sec
	sbc	_map_pos_y
	tax
;	Raw cost for generated ic 340 : (7, 10.000000) count=0.035156
;	genLabel
00147$:
;	Raw cost for generated ic 342 : (0, 0.000000) count=0.140625
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 343 : (0, 0.000000) count=0.140625
;	src/large_map.c: 60: return map_pos_x + DEVICE_SCREEN_WIDTH;
;	genCast
;	genCopy
	lda	_map_pos_x
;	Raw cost for generated ic 348 : (3, 4.000000) count=0.140625
;	genPlus
;	genPlusIncr
	clc
	adc	#0x20
;	Raw cost for generated ic 349 : (3, 4.000000) count=0.140625
;	../../../include/nes/nes.h: 821: set_bkg_submap_attributes_nes16x16(x >> 1, y >> 1, (w + 1) >> 1, (h + 1) >> 1, attributes, (map_w + 1) >> 1);
;	genRightShift
;	genRightShiftLiteral
;	genrshOne
	lsr	a
	tay
;	Raw cost for generated ic 360 : (2, 4.000000) count=0.140625
;	genRightShift
;	genRightShiftLiteral
;	genrshOne
	lda	_map_pos_y
	lsr	a
	sta	*_set_camera_sloc0_1_0
;	Raw cost for generated ic 361 : (6, 9.000000) count=0.140625
;	genCast
;	genCopy
	txa
	ldx	#0x00
;	Raw cost for generated ic 366 : (3, 4.000000) count=0.140625
;	genPlus
;	genPlusIncr
	clc
	adc	#0x01
	bcc	00268$
	inx
00268$:
;	Raw cost for generated ic 367 : (6, 8.600000) count=0.140625
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	stx	*(REGTEMP+0)
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
;	Raw cost for generated ic 368 : (9, 15.000000) count=0.140625
;	genCast
;	genCopy
;	Raw cost for generated ic 369 : (3, 4.000000) count=0.140625
;	genAssign
;	genAssignLit
	sta	_set_bkg_submap_attributes_nes16x16_PARM_4
	ldx	#0x01
	stx	_set_bkg_submap_attributes_nes16x16_PARM_3
;	Raw cost for generated ic 376 : (5, 6.000000) count=0.140625
;	genAssign
;	genAssignLit
;	genCopy
	lda	#>_bigmap_map_attributes
	sta	(_set_bkg_submap_attributes_nes16x16_PARM_5 + 1)
	lda	#_bigmap_map_attributes
	sta	_set_bkg_submap_attributes_nes16x16_PARM_5
;	Raw cost for generated ic 378 : (10, 12.000000) count=0.140625
;	genAssign
;	genAssignLit
	ldx	#0x4e
	stx	_set_bkg_submap_attributes_nes16x16_PARM_6
;	Raw cost for generated ic 379 : (5, 6.000000) count=0.140625
;	Raw cost for generated ic 374 : (0, 0.000000) count=0.140625
;	Raw cost for generated ic 375 : (0, 0.000000) count=0.140625
;	genCall
;	genSend
	tya
	ldx	*_set_camera_sloc0_1_0
	jsr	_set_bkg_submap_attributes_nes16x16
;	Raw cost for generated ic 380 : (6, 11.000000) count=0.140625
;	src/large_map.c: 156: set_submap_attributes(
;	genLabel
00112$:
;	Raw cost for generated ic 383 : (0, 0.000000) count=0.750000
;	src/large_map.c: 165: old_map_pos_x = map_pos_x;
;	genAssign
;	genAssignLit
;	genCopy
	lda	_map_pos_x
	sta	_old_map_pos_x
;	Raw cost for generated ic 384 : (6, 9.000000) count=0.750000
;	genLabel
00114$:
;	Raw cost for generated ic 386 : (0, 0.000000) count=1.000000
;	src/large_map.c: 168: old_camera_x = camera_x, old_camera_y = camera_y;
;	genAssign
;	genAssignLit
;	genCopy
	lda	(_camera_x + 1)
	sta	(_old_camera_x + 1)
	lda	_camera_x
	sta	_old_camera_x
;	Raw cost for generated ic 387 : (12, 17.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	(_camera_y + 1)
	sta	(_old_camera_y + 1)
	lda	_camera_y
	sta	_old_camera_y
;	Raw cost for generated ic 389 : (12, 17.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 391 : (0, 0.000000) count=1.000000
;	src/large_map.c: 169: }
;	genEndFunction
	rts
;	Raw cost for generated ic 392 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'init_camera'
;------------------------------------------------------------
;sloc0         Allocated with name '_init_camera_sloc0_1_0'
;sloc1         Allocated with name '_init_camera_sloc1_1_0'
;y             Allocated with name '_init_camera_y_10000_189'
;x             Allocated to registers a 
;__200000064   Allocated to registers 
;__200000065   Allocated to registers 
;__200000066   Allocated to registers 
;first_tile    Allocated to registers 
;nb_tiles      Allocated to registers 
;data          Allocated to registers 
;__200000068   Allocated to registers 
;__200000069   Allocated to registers a 
;x             Allocated to registers 
;y             Allocated to registers 
;__200000071   Allocated to registers 
;__200000072   Allocated to registers 
;__200000073   Allocated to registers x 
;__200000074   Allocated to registers y 
;__200000075   Allocated to registers 
;__200000076   Allocated to registers 
;x             Allocated to registers 
;y             Allocated to registers 
;w             Allocated to registers 
;h             Allocated to registers 
;attributes    Allocated to registers 
;map_w         Allocated to registers 
;__200000078   Allocated to registers 
;__200000079   Allocated to registers a 
;x             Allocated to registers 
;y             Allocated to registers 
;------------------------------------------------------------
;	src/large_map.c: 172: void init_camera(uint8_t x, uint8_t y) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function init_camera
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_init_camera:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genReceive
	stx	_init_camera_y_10000_189
;	Raw cost for generated ic 3 : (3, 4.000000) count=1.000000
;	src/large_map.c: 175: set_native_tile_data(0, bigmap_TILE_COUNT, bigmap_tiles);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#>_bigmap_tiles
	stx	(_set_bkg_native_data_PARM_3 + 1)
	ldx	#_bigmap_tiles
	stx	_set_bkg_native_data_PARM_3
;	Raw cost for generated ic 5 : (10, 12.000000) count=1.000000
;	../../../include/nes/nes.h: 1277: set_bkg_native_data(first_tile, nb_tiles, data);
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	genCall
	pha
;	genSend
	lda	#0x00
	ldx	#0xe1
	jsr	_set_bkg_native_data
	pla
;	Raw cost for generated ic 21 : (9, 17.000000) count=1.000000
;	src/large_map.c: 187: set_bkg_palette(0, bigmap_PALETTE_COUNT, bigmap_palettes);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 49 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#>_bigmap_palettes
	stx	(_set_bkg_palette_PARM_3 + 1)
	ldx	#_bigmap_palettes
	stx	_set_bkg_palette_PARM_3
;	Raw cost for generated ic 50 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 51 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 52 : (0, 0.000000) count=1.000000
;	genCall
	pha
;	genSend
	lda	#0x00
	ldx	#0x04
	jsr	_set_bkg_palette
	pla
;	Raw cost for generated ic 54 : (9, 17.000000) count=1.000000
;	src/large_map.c: 192: camera_x = x;
;	genCast
	sta	_camera_x
	ldx	#0x00
	stx	(_camera_x + 1)
;	Raw cost for generated ic 55 : (8, 11.000000) count=1.000000
;	src/large_map.c: 193: camera_y = y;
;	genCast
	lda	_init_camera_y_10000_189
	sta	_camera_y
	stx	(_camera_y + 1)
;	Raw cost for generated ic 58 : (9, 13.000000) count=1.000000
;	src/large_map.c: 197: old_camera_x = camera_x; old_camera_y = camera_y;
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 77 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	(_camera_x + 1)
	sta	(_old_camera_x + 1)
	lda	_camera_x
	sta	_old_camera_x
;	Raw cost for generated ic 78 : (12, 17.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 79 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	(_camera_y + 1)
	sta	(_old_camera_y + 1)
	lda	_camera_y
	sta	_old_camera_y
;	Raw cost for generated ic 80 : (12, 17.000000) count=1.000000
;	src/large_map.c: 199: map_pos_x = camera_x >> 3;
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	ldx	(_camera_x + 1)
	lda	_camera_x
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 81 : (19, 35.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 82 : (2, 3.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	sta	*_init_camera_sloc0_1_0
	sta	_map_pos_x
;	Raw cost for generated ic 84 : (5, 8.000000) count=1.000000
;	src/large_map.c: 200: map_pos_y = camera_y >> 3;
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	ldx	(_camera_y + 1)
	lda	_camera_y
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 85 : (19, 35.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 86 : (2, 3.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	sta	*_init_camera_sloc1_1_0
	sta	_map_pos_y
;	Raw cost for generated ic 88 : (5, 8.000000) count=1.000000
;	src/large_map.c: 201: old_map_pos_x = old_map_pos_y = 255;
;	genAssign
;	genAssignLit
	ldx	#0xff
	stx	_old_map_pos_y
;	Raw cost for generated ic 90 : (5, 7.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	_old_map_pos_x
;	Raw cost for generated ic 92 : (3, 5.000000) count=1.000000
;	src/large_map.c: 202: move_bkg(camera_x, WRAP_SCROLL_Y(camera_y + SCROLL_Y_OFFSET));
;	genCast
;	genCopy
	ldx	(_camera_y + 1)
	lda	_camera_y
;	Raw cost for generated ic 93 : (6, 8.000000) count=1.000000
;	genPlus
;	genPlusIncr
	clc
	adc	#0x04
	bcc	00162$
	inx
00162$:
;	Raw cost for generated ic 94 : (6, 8.600000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0xf0
	sty	__moduint_PARM_2
	ldy	#0x00
	sty	(__moduint_PARM_2 + 1)
;	Raw cost for generated ic 235 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 234 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	__moduint
;	assignResultValue
;	Raw cost for generated ic 236 : (3, 6.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 96 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	_camera_x
	stx	_bkg_scroll_x
;	Raw cost for generated ic 98 : (6, 9.000000) count=1.000000
;	../../../include/nes/nes.h: 976: bkg_scroll_y = (uint8_t)(y >= 240 ? (y - 240) : y);
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 111 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	_bkg_scroll_y
;	Raw cost for generated ic 113 : (3, 5.000000) count=1.000000
;	src/large_map.c: 205: set_submap_indices(
;	genCast
;	genCopy
	ldx	#0x00
	lda	*_init_camera_sloc0_1_0
;	Raw cost for generated ic 116 : (4, 5.000000) count=1.000000
;	genMinus
;	genMinusDec
	sta	*(REGTEMP+0)
	lda	#0x9c
	sec
	sbc	*(REGTEMP+0)
	pha
	txa
	sbc	#0x00
	tax
	pla
;	Raw cost for generated ic 117 : (13, 23.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 118 : (0, 0.000000) count=1.000000
;	genCmp
	sta	*(REGTEMP+0)
	lda	#0x21
	sec
	sbc	*(REGTEMP+0)
	lda	#0x00
	stx	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	bcs	00118$
;	Raw cost for generated ic 119 : (18, 23.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 120 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldy	#0x21
;	Raw cost for generated ic 121 : (2, 2.000000) count=0.750000
;	genGoto
	jmp	00119$
;	Raw cost for generated ic 122 : (3, 3.000000) count=0.750000
;	genLabel
00118$:
;	Raw cost for generated ic 123 : (0, 0.000000) count=0.250000
;	genMinus
;	genMinusDec
	lda	#0x9c
	sec
	sbc	*_init_camera_sloc0_1_0
	tay
;	Raw cost for generated ic 124 : (6, 9.000000) count=0.250000
;	genLabel
00119$:
;	Raw cost for generated ic 126 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
	lda	*_init_camera_sloc1_1_0
;	Raw cost for generated ic 127 : (4, 5.000000) count=1.000000
;	genMinus
;	genMinusDec
	sta	*(REGTEMP+0)
	lda	#0x42
	sec
	sbc	*(REGTEMP+0)
	pha
	txa
	sbc	#0x00
	tax
	pla
;	Raw cost for generated ic 128 : (13, 23.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 129 : (0, 0.000000) count=1.000000
;	genCmp
	sta	*(REGTEMP+0)
	lda	#0x1f
	sec
	sbc	*(REGTEMP+0)
	lda	#0x00
	stx	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	bcs	00120$
;	Raw cost for generated ic 130 : (18, 23.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 131 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x1f
;	Raw cost for generated ic 132 : (2, 2.000000) count=0.750000
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 133 : (3, 3.000000) count=0.750000
;	genLabel
00120$:
;	Raw cost for generated ic 134 : (0, 0.000000) count=0.250000
;	genMinus
;	genMinusDec
	lda	#0x42
	sec
	sbc	*_init_camera_sloc1_1_0
;	Raw cost for generated ic 135 : (5, 7.000000) count=0.250000
;	genLabel
00121$:
;	Raw cost for generated ic 137 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 138 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#>_bigmap_map
	stx	(_set_bkg_submap_PARM_5 + 1)
	ldx	#_bigmap_map
	stx	_set_bkg_submap_PARM_5
;	Raw cost for generated ic 139 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	sty	_set_bkg_submap_PARM_3
;	Raw cost for generated ic 142 : (3, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	sta	_set_bkg_submap_PARM_4
;	Raw cost for generated ic 143 : (3, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x9c
	stx	_set_bkg_submap_PARM_6
;	Raw cost for generated ic 145 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 140 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 141 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	*_init_camera_sloc0_1_0
	ldx	*_init_camera_sloc1_1_0
	jsr	_set_bkg_submap
;	Raw cost for generated ic 146 : (7, 12.000000) count=1.000000
;	src/large_map.c: 213: set_submap_attributes(
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 148 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 149 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
	lda	_map_pos_y
;	Raw cost for generated ic 151 : (5, 6.000000) count=1.000000
;	genMinus
;	genMinusDec
	sta	*(REGTEMP+0)
	lda	#0x42
	sec
	sbc	*(REGTEMP+0)
	pha
	txa
	sbc	#0x00
	tax
	pla
;	Raw cost for generated ic 152 : (13, 23.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 153 : (0, 0.000000) count=1.000000
;	genCmp
	sta	*(REGTEMP+0)
	lda	#0x1f
	sec
	sbc	*(REGTEMP+0)
	lda	#0x00
	stx	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	bcs	00122$
;	Raw cost for generated ic 154 : (18, 23.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 155 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldy	#0x1f
;	Raw cost for generated ic 156 : (2, 2.000000) count=0.750000
;	genGoto
	jmp	00123$
;	Raw cost for generated ic 157 : (3, 3.000000) count=0.750000
;	genLabel
00122$:
;	Raw cost for generated ic 158 : (0, 0.000000) count=0.250000
;	genMinus
;	genMinusDec
	lda	#0x42
	sec
	sbc	_map_pos_y
	tay
;	Raw cost for generated ic 159 : (7, 10.000000) count=0.250000
;	genLabel
00123$:
;	Raw cost for generated ic 161 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 162 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
	lda	_map_pos_x
;	Raw cost for generated ic 163 : (5, 6.000000) count=1.000000
;	genMinus
;	genMinusDec
	sta	*(REGTEMP+0)
	lda	#0x9c
	sec
	sbc	*(REGTEMP+0)
	pha
	txa
	sbc	#0x00
	tax
	pla
;	Raw cost for generated ic 164 : (13, 23.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 165 : (0, 0.000000) count=1.000000
;	genCmp
	sta	*(REGTEMP+0)
	lda	#0x21
	sec
	sbc	*(REGTEMP+0)
	lda	#0x00
	stx	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	bcs	00124$
;	Raw cost for generated ic 166 : (18, 23.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 167 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x21
;	Raw cost for generated ic 168 : (2, 2.000000) count=0.750000
;	genGoto
	jmp	00125$
;	Raw cost for generated ic 169 : (3, 3.000000) count=0.750000
;	genLabel
00124$:
;	Raw cost for generated ic 170 : (0, 0.000000) count=0.250000
;	genMinus
;	genMinusDec
	lda	#0x9c
	sec
	sbc	_map_pos_x
	tax
;	Raw cost for generated ic 171 : (7, 10.000000) count=0.250000
;	genLabel
00125$:
;	Raw cost for generated ic 173 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 174 : (0, 0.000000) count=1.000000
;	../../../include/nes/nes.h: 821: set_bkg_submap_attributes_nes16x16(x >> 1, y >> 1, (w + 1) >> 1, (h + 1) >> 1, attributes, (map_w + 1) >> 1);
;	genRightShift
;	genRightShiftLiteral
;	genrshOne
	lda	_map_pos_x
	lsr	a
	sta	*_init_camera_sloc1_1_0
;	Raw cost for generated ic 183 : (6, 9.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	genrshOne
	lda	_map_pos_y
	lsr	a
	sta	*_init_camera_sloc0_1_0
;	Raw cost for generated ic 184 : (6, 9.000000) count=1.000000
;	genCast
;	genCopy
	txa
	ldx	#0x00
;	Raw cost for generated ic 185 : (3, 4.000000) count=1.000000
;	genPlus
;	genPlusIncr
	clc
	adc	#0x01
	bcc	00167$
	inx
00167$:
;	Raw cost for generated ic 186 : (6, 8.600000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	stx	*(REGTEMP+0)
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
;	Raw cost for generated ic 187 : (9, 15.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 188 : (3, 4.000000) count=1.000000
;	genCast
;	genCopy
	sta	_set_bkg_submap_attributes_nes16x16_PARM_3
	ldx	#0x00
	tya
;	Raw cost for generated ic 189 : (3, 4.000000) count=1.000000
;	genPlus
;	genPlusIncr
	clc
	adc	#0x01
	bcc	00168$
	inx
00168$:
;	Raw cost for generated ic 190 : (6, 8.600000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	stx	*(REGTEMP+0)
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 191 : (9, 15.000000) count=1.000000
;	genCast
;	genCopy
	sta	_set_bkg_submap_attributes_nes16x16_PARM_4
;	Raw cost for generated ic 192 : (3, 4.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#>_bigmap_map_attributes
	sta	(_set_bkg_submap_attributes_nes16x16_PARM_5 + 1)
	lda	#_bigmap_map_attributes
	sta	_set_bkg_submap_attributes_nes16x16_PARM_5
;	Raw cost for generated ic 201 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x4e
	stx	_set_bkg_submap_attributes_nes16x16_PARM_6
;	Raw cost for generated ic 202 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 197 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 198 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	*_init_camera_sloc1_1_0
	ldx	*_init_camera_sloc0_1_0
	jsr	_set_bkg_submap_attributes_nes16x16
;	Raw cost for generated ic 203 : (7, 12.000000) count=1.000000
;	src/large_map.c: 221: redraw = FALSE;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_redraw
;	Raw cost for generated ic 206 : (5, 6.000000) count=1.000000
;	src/large_map.c: 223: move_bkg(camera_x, WRAP_SCROLL_Y(camera_y + SCROLL_Y_OFFSET));
;	genCast
;	genCopy
	ldx	(_camera_y + 1)
	lda	_camera_y
;	Raw cost for generated ic 207 : (6, 8.000000) count=1.000000
;	genPlus
;	genPlusIncr
	clc
	adc	#0x04
	bcc	00169$
	inx
00169$:
;	Raw cost for generated ic 208 : (6, 8.600000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0xf0
	sty	__moduint_PARM_2
	ldy	#0x00
	sty	(__moduint_PARM_2 + 1)
;	Raw cost for generated ic 238 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 237 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	__moduint
;	assignResultValue
;	Raw cost for generated ic 239 : (3, 6.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 210 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	_camera_x
	stx	_bkg_scroll_x
;	Raw cost for generated ic 212 : (6, 9.000000) count=1.000000
;	../../../include/nes/nes.h: 976: bkg_scroll_y = (uint8_t)(y >= 240 ? (y - 240) : y);
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 225 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	_bkg_scroll_y
;	Raw cost for generated ic 227 : (3, 5.000000) count=1.000000
;	src/large_map.c: 228: HIDE_LEFT_COLUMN;
;	genAnd
	lda	_shadow_PPUMASK
	and	#0xf9
	sta	_shadow_PPUMASK
;	Raw cost for generated ic 230 : (8, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 232 : (0, 0.000000) count=1.000000
;	src/large_map.c: 230: }
;	genEndFunction
	rts
;	Raw cost for generated ic 233 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	src/large_map.c: 232: void main(void){
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/large_map.c: 233: DISPLAY_OFF;
;	genCall
	jsr	_display_off
;	Raw cost for generated ic 2 : (3, 6.000000) count=1.000000
;	src/large_map.c: 234: init_camera(0, 0);
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x00
	tax
	jsr	_init_camera
;	Raw cost for generated ic 5 : (6, 10.000000) count=1.000000
;	src/large_map.c: 236: SHOW_BKG;
;	genOr
	lda	_shadow_PPUMASK
	ora	#0x08
	sta	_shadow_PPUMASK
;	Raw cost for generated ic 6 : (8, 10.000000) count=1.000000
;	src/large_map.c: 237: DISPLAY_ON;
;	genCall
	jsr	_display_on
;	Raw cost for generated ic 8 : (3, 6.000000) count=1.000000
;	src/large_map.c: 238: while (TRUE) {
;	genLabel
00123$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=72.000000
;	src/large_map.c: 239: joy = joypad();
;	genCall
	jsr	_joypad
;	assignResultValue
	tax
;	Raw cost for generated ic 12 : (4, 8.000000) count=72.000000
;	genAssign
;	genAssignLit
;	genCopy
	stx	_joy
;	Raw cost for generated ic 14 : (3, 5.000000) count=72.000000
;	src/large_map.c: 241: if (joy & J_UP) {
;	genAnd
	txa
	and	#0x08
;	genIfxJump : z
	beq	00108$
;	Raw cost for generated ic 16 : (8, 9.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 17 : (0, 0.000000) count=72.000000
;	src/large_map.c: 242: if (camera_y) {
;	genIfx
	lda	(_camera_y + 1)
	ora	_camera_y
;	genIfxJump : z
	beq	00109$
;	Raw cost for generated ic 20 : (11, 13.600000) count=54.000000
;	src/large_map.c: 243: camera_y--;
;	genMinus
;	genMinusDec
	sec
	lda	_camera_y
	sbc	#0x01
	sta	_camera_y
	bcs	00191$
	dec	(_camera_y + 1)
00191$:
;	Raw cost for generated ic 24 : (14, 21.600000) count=40.500000
;	src/large_map.c: 244: redraw = TRUE;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_redraw
;	Raw cost for generated ic 28 : (5, 6.000000) count=40.500000
;	genGoto
	jmp	00109$
;	Raw cost for generated ic 30 : (3, 3.000000) count=40.500000
;	genLabel
00108$:
;	Raw cost for generated ic 31 : (0, 0.000000) count=18.000000
;	src/large_map.c: 246: } else if (joy & J_DOWN) {
;	genAnd
	txa
	and	#0x04
;	genIfxJump : z
	beq	00109$
;	Raw cost for generated ic 33 : (8, 9.600000) count=18.000000
;	skipping generated iCode
;	Raw cost for generated ic 34 : (0, 0.000000) count=18.000000
;	src/large_map.c: 247: if (camera_y < camera_max_y) {
;	genCast
;	genCopy
	ldx	(_camera_y + 1)
	lda	_camera_y
;	Raw cost for generated ic 37 : (6, 8.000000) count=13.500000
;	genCmp
	sec
	sbc	#0x20
	txa
	sbc	#0x01
	bcs	00109$
;	Raw cost for generated ic 38 : (11, 13.600000) count=13.500000
;	skipping generated iCode
;	Raw cost for generated ic 39 : (0, 0.000000) count=13.500000
;	src/large_map.c: 248: camera_y++;
;	genPlus
;	genPlusIncr
	inc	_camera_y
	bne	00195$
	inc	(_camera_y + 1)
00195$:
;	Raw cost for generated ic 43 : (8, 14.600000) count=10.125000
;	src/large_map.c: 249: redraw = TRUE;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_redraw
;	Raw cost for generated ic 47 : (5, 6.000000) count=10.125000
;	genLabel
00109$:
;	Raw cost for generated ic 50 : (0, 0.000000) count=72.000000
;	src/large_map.c: 253: if (joy & J_LEFT) {
;	genCast
;	genCopy
	ldx	_joy
;	Raw cost for generated ic 51 : (3, 4.000000) count=72.000000
;	genAnd
	txa
	and	#0x02
;	genIfxJump : z
	beq	00117$
;	Raw cost for generated ic 52 : (8, 9.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 53 : (0, 0.000000) count=72.000000
;	src/large_map.c: 254: if (camera_x) {
;	genIfx
	lda	(_camera_x + 1)
	ora	_camera_x
;	genIfxJump : z
	beq	00118$
;	Raw cost for generated ic 56 : (11, 13.600000) count=54.000000
;	src/large_map.c: 255: camera_x--;
;	genMinus
;	genMinusDec
	sec
	lda	_camera_x
	sbc	#0x01
	sta	_camera_x
	bcs	00200$
	dec	(_camera_x + 1)
00200$:
;	Raw cost for generated ic 60 : (14, 21.600000) count=40.500000
;	src/large_map.c: 256: redraw = TRUE;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_redraw
;	Raw cost for generated ic 64 : (5, 6.000000) count=40.500000
;	genGoto
	jmp	00118$
;	Raw cost for generated ic 66 : (3, 3.000000) count=40.500000
;	genLabel
00117$:
;	Raw cost for generated ic 67 : (0, 0.000000) count=18.000000
;	src/large_map.c: 258: } else if (joy & J_RIGHT) {
;	genAnd
	txa
	and	#0x01
;	genIfxJump : z
	beq	00118$
;	Raw cost for generated ic 69 : (8, 9.600000) count=18.000000
;	skipping generated iCode
;	Raw cost for generated ic 70 : (0, 0.000000) count=18.000000
;	src/large_map.c: 259: if (camera_x < camera_max_x) {
;	genCast
;	genCopy
	ldx	(_camera_x + 1)
	lda	_camera_x
;	Raw cost for generated ic 73 : (6, 8.000000) count=13.500000
;	genCmp
	sec
	sbc	#0xe0
	txa
	sbc	#0x03
	bcs	00118$
;	Raw cost for generated ic 74 : (11, 13.600000) count=13.500000
;	skipping generated iCode
;	Raw cost for generated ic 75 : (0, 0.000000) count=13.500000
;	src/large_map.c: 260: camera_x++;
;	genPlus
;	genPlusIncr
	inc	_camera_x
	bne	00204$
	inc	(_camera_x + 1)
00204$:
;	Raw cost for generated ic 79 : (8, 15.600000) count=10.125000
;	src/large_map.c: 261: redraw = TRUE;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_redraw
;	Raw cost for generated ic 83 : (5, 6.000000) count=10.125000
;	genLabel
00118$:
;	Raw cost for generated ic 86 : (0, 0.000000) count=72.000000
;	src/large_map.c: 264: if (redraw) {
;	genIfx
	lda	_redraw
;	genIfxJump : z
	beq	00120$
;	Raw cost for generated ic 87 : (8, 9.600000) count=72.000000
;	src/large_map.c: 265: vsync();
;	genCall
	jsr	_vsync
;	Raw cost for generated ic 90 : (3, 6.000000) count=54.000000
;	src/large_map.c: 266: set_camera();
;	genCall
	jsr	_set_camera
;	Raw cost for generated ic 91 : (3, 6.000000) count=54.000000
;	src/large_map.c: 267: redraw = FALSE;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_redraw
;	Raw cost for generated ic 93 : (5, 6.000000) count=54.000000
;	genGoto
	jmp	00123$
;	Raw cost for generated ic 94 : (3, 3.000000) count=54.000000
;	genLabel
00120$:
;	Raw cost for generated ic 95 : (0, 0.000000) count=18.000000
;	src/large_map.c: 268: } else vsync();
;	genCall
	jsr	_vsync
;	Raw cost for generated ic 96 : (3, 6.000000) count=18.000000
;	genGoto
	jmp	00123$
;	Raw cost for generated ic 98 : (3, 3.000000) count=18.000000
;	genLabel
;	Raw cost for generated ic 100 : (0, 0.000000) count=0.000000
;	src/large_map.c: 270: }
;	genEndFunction
	rts
;	Raw cost for generated ic 101 : (1, 6.000000) count=0.000000
	.area _CODE
	.area _XINIT
	.area _CABS    (ABS)
