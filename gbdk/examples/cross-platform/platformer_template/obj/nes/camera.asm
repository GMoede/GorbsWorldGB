;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module camera
	
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
	.globl b_UpdateCamera
	.globl _UpdateCamera
	.globl _SetCurrentLevelSubmap
	.globl __switch_prg0
	.globl _set_bkg_submap
	.globl _SetCurrentLevelSubmap_PARM_4
	.globl _SetCurrentLevelSubmap_PARM_3
	.globl _redraw
	.globl _old_map_pos_x
	.globl _map_pos_x
	.globl _old_camera_x
	.globl _camera_x
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
_UpdateCamera_sloc0_1_0:
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
_camera_x::
	.ds 2
_old_camera_x::
	.ds 2
_map_pos_x::
	.ds 1
_old_map_pos_x::
	.ds 1
_redraw::
	.ds 1
_SetCurrentLevelSubmap_PARM_3:
	.ds 1
_SetCurrentLevelSubmap_PARM_4:
	.ds 1
_SetCurrentLevelSubmap_y_10000_101:
	.ds 1
_SetCurrentLevelSubmap__previous_bank_10000_102:
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
;	src/camera.c: 30: void SetCurrentLevelSubmap(uint8_t x, uint8_t y, uint8_t w, uint8_t h) NONBANKED{
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function SetCurrentLevelSubmap
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SetCurrentLevelSubmap:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genReceive
	stx	_SetCurrentLevelSubmap_y_10000_101
;	Raw cost for generated ic 3 : (3, 4.000000) count=1.000000
;	src/camera.c: 32: uint8_t _previous_bank = CURRENT_BANK;
;	genAssign
;	genAssignLit
;	genCopy
	ldx	__current_bank
	stx	_SetCurrentLevelSubmap__previous_bank_10000_102
;	Raw cost for generated ic 4 : (6, 8.000000) count=1.000000
;	src/camera.c: 34: SWITCH_ROM(currentAreaBank);
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
	pha
;	genSend
	lda	_currentAreaBank
	jsr	__switch_prg0
	pla
;	Raw cost for generated ic 6 : (8, 17.000000) count=1.000000
;	src/camera.c: 36: set_bkg_submap(x,y,w, h, currentLevelMap, currentLevelWidthInTiles);
;	genCast
;	genCopy
	ldx	_currentLevelWidthInTiles
	stx	_set_bkg_submap_PARM_6
;	Raw cost for generated ic 7 : (6, 8.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldx	_SetCurrentLevelSubmap_PARM_3
	stx	_set_bkg_submap_PARM_3
;	Raw cost for generated ic 10 : (6, 8.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldx	_SetCurrentLevelSubmap_PARM_4
	stx	_set_bkg_submap_PARM_4
;	Raw cost for generated ic 11 : (6, 8.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldx	(_currentLevelMap + 1)
	stx	(_set_bkg_submap_PARM_5 + 1)
	ldx	_currentLevelMap
	stx	_set_bkg_submap_PARM_5
;	Raw cost for generated ic 12 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	_SetCurrentLevelSubmap_y_10000_101
	jsr	_set_bkg_submap
;	Raw cost for generated ic 14 : (6, 10.000000) count=1.000000
;	src/camera.c: 38: SWITCH_ROM(_previous_bank);
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	_SetCurrentLevelSubmap__previous_bank_10000_102
;	Raw cost for generated ic 16 : (6, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	src/camera.c: 40: }
;	genEndFunction
	jmp	__switch_prg0
;	Raw cost for generated ic 18 : (1, 6.000000) count=1.000000
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
;------------------------------------------------------------
;Allocation info for local variables in function 'SetCurrentLevelSubmap'
;------------------------------------------------------------
;w             Allocated with name '_SetCurrentLevelSubmap_PARM_3'
;h             Allocated with name '_SetCurrentLevelSubmap_PARM_4'
;y             Allocated with name '_SetCurrentLevelSubmap_y_10000_101'
;x             Allocated to registers a 
;_previous_bank Allocated with name '_SetCurrentLevelSubmap__previous_bank_10000_102'
;------------------------------------------------------------
;------------------------------------------------------------
;Allocation info for local variables in function 'UpdateCamera'
;------------------------------------------------------------
;sloc0         Allocated with name '_UpdateCamera_sloc0_1_0'
;__200000009   Allocated to registers 
;__200000010   Allocated to registers 
;x             Allocated to registers 
;y             Allocated to registers 
;__600000012   Allocated to registers y 
;__600000013   Allocated to registers 
;map_pos_x     Allocated to registers 
;__800000015   Allocated to registers y 
;__800000016   Allocated to registers 
;map_pos_x     Allocated to registers 
;------------------------------------------------------------
;	src/camera.c: 56: void UpdateCamera(void) BANKED {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function UpdateCamera
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
	b_UpdateCamera	= 255
_UpdateCamera:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/camera.c: 59: move_bkg(camera_x, 0);
;	genCast
;	genCopy
	lda	_camera_x
	sta	_bkg_scroll_x
;	Raw cost for generated ic 3 : (6, 9.000000) count=1.000000
;	../../../include/nes/nes.h: 976: bkg_scroll_y = (uint8_t)(y >= 240 ? (y - 240) : y);
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
	stx	_bkg_scroll_y
;	Raw cost for generated ic 19 : (5, 7.000000) count=1.000000
;	src/camera.c: 62: map_pos_x = (uint8_t)(camera_x >> 3u);
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
;	Raw cost for generated ic 21 : (19, 35.000000) count=1.000000
;	genCast
;	genCopy
	tay
;	Raw cost for generated ic 22 : (1, 2.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	sty	_map_pos_x
;	Raw cost for generated ic 24 : (3, 5.000000) count=1.000000
;	src/camera.c: 63: if (map_pos_x != old_map_pos_x) {
;	genCmpEQorNE
	cpy	_old_map_pos_x
	bne	00150$
	jmp	00107$
00150$:
;	Raw cost for generated ic 25 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 26 : (0, 0.000000) count=1.000000
;	src/camera.c: 64: if (camera_x < old_camera_x) {
;	genCmp
	lda	_camera_x
	sec
	sbc	_old_camera_x
	lda	(_camera_x + 1)
	sbc	(_old_camera_x + 1)
	bcs	00104$
;	Raw cost for generated ic 29 : (18, 23.600000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 30 : (0, 0.000000) count=0.750000
;	src/camera.c: 45: return map_pos_x + 1;
;	genCast
;	genCopy
;	Raw cost for generated ic 35 : (0, 0.000000) count=0.562500
;	genPlus
;	genPlusIncr
	iny
;	Raw cost for generated ic 36 : (1, 2.000000) count=0.562500
;	src/camera.c: 69: MIN(DEVICE_SCREEN_HEIGHT, currentLevelHeightInTiles ));     
;	genCmp
	lda	#0x1e
	sec
	sbc	_currentLevelHeightInTiles
	lda	#0x00
	sbc	(_currentLevelHeightInTiles + 1)
	bcs	00115$
;	Raw cost for generated ic 40 : (16, 19.600000) count=0.562500
;	skipping generated iCode
;	Raw cost for generated ic 41 : (0, 0.000000) count=0.562500
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
	lda	#0x1e
;	Raw cost for generated ic 42 : (4, 4.000000) count=0.421875
;	genGoto
	jmp	00116$
;	Raw cost for generated ic 43 : (3, 3.000000) count=0.421875
;	genLabel
00115$:
;	Raw cost for generated ic 44 : (0, 0.000000) count=0.140625
;	genAssign
;	genAssignLit
;	genCopy
	ldx	(_currentLevelHeightInTiles + 1)
	lda	_currentLevelHeightInTiles
;	Raw cost for generated ic 45 : (6, 8.000000) count=0.140625
;	genLabel
00116$:
;	Raw cost for generated ic 46 : (0, 0.000000) count=0.562500
;	genCast
;	genCopy
	sta	_SetCurrentLevelSubmap_PARM_4
;	Raw cost for generated ic 47 : (3, 4.000000) count=0.562500
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_SetCurrentLevelSubmap_PARM_3
;	Raw cost for generated ic 50 : (5, 6.000000) count=0.562500
;	Raw cost for generated ic 48 : (0, 0.000000) count=0.562500
;	Raw cost for generated ic 49 : (0, 0.000000) count=0.562500
;	genCall
;	genSend
	tya
	dex
	jsr	_SetCurrentLevelSubmap
;	Raw cost for generated ic 52 : (5, 10.000000) count=0.562500
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 53 : (3, 3.000000) count=0.562500
;	genLabel
00104$:
;	Raw cost for generated ic 54 : (0, 0.000000) count=0.187500
;	src/camera.c: 71: if ((currentLevelWidthInTiles - DEVICE_SCREEN_WIDTH) > map_pos_x) {
;	genCast
;	genCopy
	ldx	(_currentLevelWidthInTiles + 1)
	lda	_currentLevelWidthInTiles
;	Raw cost for generated ic 55 : (6, 8.000000) count=0.187500
;	genMinus
;	genMinusDec
	sec
	sbc	#0x20
	sta	*_UpdateCamera_sloc0_1_0
	txa
	sbc	#0x00
	sta	*(_UpdateCamera_sloc0_1_0 + 1)
;	Raw cost for generated ic 56 : (10, 14.000000) count=0.187500
;	genCast
;	genCopy
	ldx	#0x00
	tya
;	Raw cost for generated ic 57 : (3, 4.000000) count=0.187500
;	genCmp
	sec
	sbc	*_UpdateCamera_sloc0_1_0
	txa
	sbc	*(_UpdateCamera_sloc0_1_0 + 1)
	bcs	00105$
;	Raw cost for generated ic 58 : (11, 15.600000) count=0.187500
;	skipping generated iCode
;	Raw cost for generated ic 59 : (0, 0.000000) count=0.187500
;	src/camera.c: 53: return map_pos_x + DEVICE_SCREEN_WIDTH;
;	genCast
;	genCopy
	tya
;	Raw cost for generated ic 64 : (1, 2.000000) count=0.140625
;	genPlus
;	genPlusIncr
	clc
	adc	#0x20
	tay
;	Raw cost for generated ic 65 : (4, 6.000000) count=0.140625
;	src/camera.c: 76: MIN(DEVICE_SCREEN_HEIGHT, currentLevelHeightInTiles));   
;	genCmp
	lda	#0x1e
	sec
	sbc	_currentLevelHeightInTiles
	txa
	sbc	(_currentLevelHeightInTiles + 1)
	bcs	00117$
;	Raw cost for generated ic 69 : (15, 19.600000) count=0.140625
;	skipping generated iCode
;	Raw cost for generated ic 70 : (0, 0.000000) count=0.140625
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x1e
;	Raw cost for generated ic 71 : (2, 2.000000) count=0.105469
;	genGoto
	jmp	00118$
;	Raw cost for generated ic 72 : (3, 3.000000) count=0.105469
;	genLabel
00117$:
;	Raw cost for generated ic 73 : (0, 0.000000) count=0.035156
;	genAssign
;	genAssignLit
;	genCopy
	ldx	(_currentLevelHeightInTiles + 1)
	lda	_currentLevelHeightInTiles
;	Raw cost for generated ic 74 : (6, 8.000000) count=0.035156
;	genLabel
00118$:
;	Raw cost for generated ic 75 : (0, 0.000000) count=0.140625
;	genCast
;	genCopy
	sta	_SetCurrentLevelSubmap_PARM_4
;	Raw cost for generated ic 76 : (3, 4.000000) count=0.140625
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_SetCurrentLevelSubmap_PARM_3
;	Raw cost for generated ic 79 : (5, 6.000000) count=0.140625
;	Raw cost for generated ic 77 : (0, 0.000000) count=0.140625
;	Raw cost for generated ic 78 : (0, 0.000000) count=0.140625
;	genCall
;	genSend
	tya
	dex
	jsr	_SetCurrentLevelSubmap
;	Raw cost for generated ic 81 : (5, 10.000000) count=0.140625
;	genLabel
00105$:
;	Raw cost for generated ic 83 : (0, 0.000000) count=0.750000
;	src/camera.c: 79: old_map_pos_x = map_pos_x;
;	genAssign
;	genAssignLit
;	genCopy
	lda	_map_pos_x
	sta	_old_map_pos_x
;	Raw cost for generated ic 84 : (6, 9.000000) count=0.750000
;	genLabel
00107$:
;	Raw cost for generated ic 86 : (0, 0.000000) count=1.000000
;	src/camera.c: 82: old_camera_x = camera_x;
;	genAssign
;	genAssignLit
;	genCopy
	lda	(_camera_x + 1)
	sta	(_old_camera_x + 1)
	lda	_camera_x
	sta	_old_camera_x
;	Raw cost for generated ic 87 : (12, 17.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 89 : (0, 0.000000) count=1.000000
;	src/camera.c: 83: }
;	genEndFunction
	rts
;	Raw cost for generated ic 90 : (1, 6.000000) count=1.000000
	.area _CODE_255
	.area _XINIT
	.area _CABS    (ABS)
