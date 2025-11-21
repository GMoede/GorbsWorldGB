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
	.globl _SetCurrentLevelSubmap
	.globl b_UpdateCamera
	.globl _UpdateCamera
	.globl _SetupCurrentLevel
	.globl _ShowCentered
	.globl _WaitForStartOrA
	.globl _hide_sprites_range
	.globl b_UpdatePlayer
	.globl _UpdatePlayer
	.globl b_SetupPlayer
	.globl _SetupPlayer
	.globl _display_off
	.globl _display_on
	.globl _vsync
	.globl _joypad
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
;spritesUsed   Allocated to registers a 
;------------------------------------------------------------
;	src/main.c: 14: void main(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/main.c: 25: SHOW_BKG;
;	genOr
	lda	_shadow_PPUMASK
	ora	#0x08
	sta	_shadow_PPUMASK
;	Raw cost for generated ic 2 : (8, 10.000000) count=1.000000
;	src/main.c: 26: SHOW_SPRITES;
;	genOr
	lda	_shadow_PPUMASK
	ora	#0x10
	sta	_shadow_PPUMASK
;	Raw cost for generated ic 4 : (8, 10.000000) count=1.000000
;	src/main.c: 27: SPRITES_8x16;
;	genOr
	lda	_shadow_PPUCTRL
	ora	#0x20
	sta	_shadow_PPUCTRL
;	Raw cost for generated ic 6 : (8, 10.000000) count=1.000000
;	src/main.c: 29: ShowCentered(TitleScreen_WIDTH,TitleScreen_HEIGHT,BANK(TitleScreen),TitleScreen_tiles,TitleScreen_TILE_COUNT,TitleScreen_map,TitleScreen_palettes);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#___bank_TitleScreen
	sta	_ShowCentered_PARM_3
;	Raw cost for generated ic 9 : (5, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_TitleScreen_tiles
	sta	(_ShowCentered_PARM_4 + 1)
	lda	#_TitleScreen_tiles
	sta	_ShowCentered_PARM_4
;	Raw cost for generated ic 11 : (10, 12.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_TitleScreen_map
	sta	(_ShowCentered_PARM_6 + 1)
	lda	#_TitleScreen_map
	sta	_ShowCentered_PARM_6
;	Raw cost for generated ic 13 : (10, 12.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_TitleScreen_palettes
	sta	(_ShowCentered_PARM_7 + 1)
	lda	#_TitleScreen_palettes
	sta	_ShowCentered_PARM_7
;	Raw cost for generated ic 15 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x76
	stx	_ShowCentered_PARM_5
;	Raw cost for generated ic 20 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0xa0
	ldx	#0x48
	jsr	_ShowCentered
;	Raw cost for generated ic 23 : (7, 10.000000) count=1.000000
;	src/main.c: 31: WaitForStartOrA();
;	genCall
	jsr	_WaitForStartOrA
;	Raw cost for generated ic 24 : (3, 6.000000) count=1.000000
;	src/main.c: 34: currentLevel=255;
;	genAssign
;	genAssignLit
	ldx	#0xff
	stx	_currentLevel
;	Raw cost for generated ic 26 : (5, 6.000000) count=1.000000
;	src/main.c: 35: nextLevel=0;
;	genAssign
;	genAssignLit
	inx
	stx	_nextLevel
;	Raw cost for generated ic 28 : (4, 6.000000) count=1.000000
;	src/main.c: 38: while(1) {
;	genLabel
00106$:
;	Raw cost for generated ic 31 : (0, 0.000000) count=72.000000
;	src/main.c: 41: vsync();
;	genCall
	jsr	_vsync
;	Raw cost for generated ic 32 : (3, 6.000000) count=72.000000
;	src/main.c: 44: if(nextLevel!=currentLevel){
;	genCmpEQorNE
	lda	_nextLevel
	cmp	_currentLevel
	beq	00104$
;	Raw cost for generated ic 33 : (11, 13.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 34 : (0, 0.000000) count=72.000000
;	src/main.c: 48: if(currentLevel!=255){
;	genCmpEQorNE
	lda	_currentLevel
	cmp	#0xff
	beq	00102$
;	Raw cost for generated ic 37 : (10, 11.600000) count=54.000000
;	skipping generated iCode
;	Raw cost for generated ic 38 : (0, 0.000000) count=54.000000
;	src/main.c: 50: ShowCentered(NextLevel_WIDTH,NextLevel_HEIGHT,BANK(NextLevel),NextLevel_tiles,NextLevel_TILE_COUNT,NextLevel_map,NextLevel_palettes);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 41 : (0, 0.000000) count=40.500000
;	genCast
;	genCopy
	lda	#___bank_NextLevel
	sta	_ShowCentered_PARM_3
;	Raw cost for generated ic 42 : (5, 6.000000) count=40.500000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 43 : (0, 0.000000) count=40.500000
;	genCast
;	genCopy
	lda	#>_NextLevel_tiles
	sta	(_ShowCentered_PARM_4 + 1)
	lda	#_NextLevel_tiles
	sta	_ShowCentered_PARM_4
;	Raw cost for generated ic 44 : (10, 12.000000) count=40.500000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 45 : (0, 0.000000) count=40.500000
;	genCast
;	genCopy
	lda	#>_NextLevel_map
	sta	(_ShowCentered_PARM_6 + 1)
	lda	#_NextLevel_map
	sta	_ShowCentered_PARM_6
;	Raw cost for generated ic 46 : (10, 12.000000) count=40.500000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 47 : (0, 0.000000) count=40.500000
;	genCast
;	genCopy
	lda	#>_NextLevel_palettes
	sta	(_ShowCentered_PARM_7 + 1)
	lda	#_NextLevel_palettes
	sta	_ShowCentered_PARM_7
;	Raw cost for generated ic 48 : (10, 12.000000) count=40.500000
;	genAssign
;	genAssignLit
	ldx	#0x1c
	stx	_ShowCentered_PARM_5
;	Raw cost for generated ic 53 : (5, 6.000000) count=40.500000
;	Raw cost for generated ic 49 : (0, 0.000000) count=40.500000
;	Raw cost for generated ic 50 : (0, 0.000000) count=40.500000
;	genCall
;	genSend
	lda	#0xa0
	ldx	#0x48
	jsr	_ShowCentered
;	Raw cost for generated ic 56 : (7, 10.000000) count=40.500000
;	src/main.c: 52: WaitForStartOrA();
;	genCall
	jsr	_WaitForStartOrA
;	Raw cost for generated ic 57 : (3, 6.000000) count=40.500000
;	genLabel
00102$:
;	Raw cost for generated ic 58 : (0, 0.000000) count=54.000000
;	src/main.c: 56: currentLevel=nextLevel;
;	genAssign
;	genAssignLit
;	genCopy
	lda	_nextLevel
	sta	_currentLevel
;	Raw cost for generated ic 59 : (6, 8.000000) count=54.000000
;	src/main.c: 58: DISPLAY_OFF;
;	genCall
	jsr	_display_off
;	Raw cost for generated ic 61 : (3, 6.000000) count=54.000000
;	src/main.c: 61: SetupCurrentLevel();
;	genCall
	jsr	_SetupCurrentLevel
;	Raw cost for generated ic 62 : (3, 6.000000) count=54.000000
;	src/main.c: 63: camera_x=0;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_camera_x
	stx	(_camera_x + 1)
;	Raw cost for generated ic 64 : (8, 11.000000) count=54.000000
;	src/main.c: 69: SetCurrentLevelSubmap(0,0,DEVICE_SCREEN_WIDTH+1,DEVICE_SCREEN_HEIGHT);
;	genAssign
;	genAssignLit
	ldx	#0x21
	stx	_SetCurrentLevelSubmap_PARM_3
;	Raw cost for generated ic 67 : (5, 6.000000) count=54.000000
;	genAssign
;	genAssignLit
	ldx	#0x1e
	stx	_SetCurrentLevelSubmap_PARM_4
;	Raw cost for generated ic 68 : (5, 6.000000) count=54.000000
;	Raw cost for generated ic 65 : (0, 0.000000) count=54.000000
;	Raw cost for generated ic 66 : (0, 0.000000) count=54.000000
;	genCall
;	genSend
	lda	#0x00
	tax
	jsr	_SetCurrentLevelSubmap
;	Raw cost for generated ic 69 : (6, 10.000000) count=54.000000
;	src/main.c: 71: DISPLAY_ON;
;	genCall
	jsr	_display_on
;	Raw cost for generated ic 70 : (3, 6.000000) count=54.000000
;	src/main.c: 77: HIDE_LEFT_COLUMN;
;	genAnd
	lda	_shadow_PPUMASK
	and	#0xf9
	sta	_shadow_PPUMASK
;	Raw cost for generated ic 71 : (8, 10.000000) count=54.000000
;	src/main.c: 81: SetupPlayer();
;	genCall
	jsr	___sdcc_bcall
	.db	b_SetupPlayer
	.dw 	_SetupPlayer-1
;	Raw cost for generated ic 73 : (0, 0.000000) count=54.000000
;	genLabel
00104$:
;	Raw cost for generated ic 74 : (0, 0.000000) count=72.000000
;	src/main.c: 85: joypadPrevious = joypadCurrent;
;	genAssign
;	genAssignLit
;	genCopy
	lda	_joypadCurrent
	sta	_joypadPrevious
;	Raw cost for generated ic 75 : (6, 8.000000) count=72.000000
;	src/main.c: 86: joypadCurrent = joypad();
;	genCall
	jsr	_joypad
;	assignResultValue
	sta	_joypadCurrent
;	Raw cost for generated ic 77 : (6, 10.000000) count=72.000000
;	src/main.c: 88: uint8_t spritesUsed = UpdatePlayer();
;	genCall
	jsr	___sdcc_bcall
	.db	b_UpdatePlayer
	.dw 	_UpdatePlayer-1
;	assignResultValue
;	Raw cost for generated ic 80 : (0, 0.000000) count=72.000000
;	src/main.c: 89: hide_sprites_range(spritesUsed,MAX_HARDWARE_SPRITES);
;	Raw cost for generated ic 82 : (0, 0.000000) count=72.000000
;	Raw cost for generated ic 83 : (0, 0.000000) count=72.000000
;	genCall
;	genSend
	ldx	#0x40
	jsr	_hide_sprites_range
;	Raw cost for generated ic 84 : (5, 8.000000) count=72.000000
;	src/main.c: 91: UpdateCamera();
;	genCall
	jsr	___sdcc_bcall
	.db	b_UpdateCamera
	.dw 	_UpdateCamera-1
;	Raw cost for generated ic 85 : (0, 0.000000) count=72.000000
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 86 : (3, 3.000000) count=72.000000
;	genLabel
;	Raw cost for generated ic 88 : (0, 0.000000) count=0.000000
;	src/main.c: 93: }
;	genEndFunction
	rts
;	Raw cost for generated ic 89 : (1, 6.000000) count=0.000000
	.area _CODE
	.area _XINIT
	.area _CABS    (ABS)
