;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module player
	
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
	.globl _PlayerPalettesGGSMS
	.globl _baseProp
	.globl b_UpdatePlayer
	.globl _UpdatePlayer
	.globl _DrawPlayer
	.globl b_SetupPlayer
	.globl _SetupPlayer
	.globl _SetPlayerPalettes
	.globl _UpdatePlayerVRAMTiles
	.globl _IsTileSolid
	.globl __switch_prg0
	.globl _set_sprite_data
	.globl _set_sprite_palette
	.globl _threeFrameCounter
	.globl _playerJumpIncrease
	.globl _facingRight
	.globl _DrawPlayer_PARM_3
	.globl _DrawPlayer_PARM_2
	.globl _playerYVelocity
	.globl _playerXVelocity
	.globl _playerY
	.globl _playerX
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
_UpdatePlayer_sloc0_1_0:
	.ds 2
_UpdatePlayer_sloc1_1_0:
	.ds 2
_UpdatePlayer_sloc2_1_0:
	.ds 2
_UpdatePlayer_sloc3_1_0:
	.ds 2
_UpdatePlayer_sloc4_1_0:
	.ds 2
_UpdatePlayer_sloc5_1_0:
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
_playerX::
	.ds 2
_playerY::
	.ds 2
_playerXVelocity::
	.ds 2
_playerYVelocity::
	.ds 2
_DrawPlayer_PARM_2:
	.ds 2
_DrawPlayer_PARM_3:
	.ds 1
_DrawPlayer__previous_bank_10000_140:
	.ds 1
_DrawPlayer_playerCameraX_10000_140:
	.ds 2
_DrawPlayer_playerCameraY_10000_140:
	.ds 2
_UpdatePlayer_moveSpeed_10000_145:
	.ds 2
_UpdatePlayer_threeFrameCounterValue_10001_146:
	.ds 1
_UpdatePlayer_turning_10002_149:
	.ds 1
_UpdatePlayer_playerRealX_10003_175:
	.ds 2
_UpdatePlayer_playerRealY_10003_175:
	.ds 2
_UpdatePlayer_grounded_10003_175:
	.ds 1
_UpdatePlayer_max_30004_205:
	.ds 2
_UpdatePlayer_spritesUsed_10005_207:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area _DATA
_facingRight::
	.ds 1
_playerJumpIncrease::
	.ds 1
_threeFrameCounter::
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
;	src/player.c: 67: void UpdatePlayerVRAMTiles(void) NONBANKED{
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function UpdatePlayerVRAMTiles
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UpdatePlayerVRAMTiles:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/player.c: 68: uint8_t _previous_bank = CURRENT_BANK;
;	genAssign
;	genAssignLit
;	genCopy
	lda	__current_bank
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	src/player.c: 71: SWITCH_ROM(BANK(PlayerCharacterSprites));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#___bank_PlayerCharacterSprites
;	Raw cost for generated ic 4 : (2, 2.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
	pha
;	genSend
	txa
	jsr	__switch_prg0
	pla
;	Raw cost for generated ic 6 : (6, 15.000000) count=1.000000
;	src/player.c: 73: set_player_sprite_data (0,PlayerCharacterSprites_TILE_COUNT,PlayerCharacterSprites_tiles);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#>_PlayerCharacterSprites_tiles
	stx	(_set_sprite_data_PARM_3 + 1)
	ldx	#_PlayerCharacterSprites_tiles
	stx	_set_sprite_data_PARM_3
;	Raw cost for generated ic 8 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
	pha
;	genSend
	lda	#0x00
	ldx	#0x3e
	jsr	_set_sprite_data
	pla
;	Raw cost for generated ic 12 : (9, 17.000000) count=1.000000
;	src/player.c: 75: SWITCH_ROM(_previous_bank);
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	Raw cost for generated ic 14 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	src/player.c: 76: }
;	genEndFunction
	jmp	__switch_prg0
;	Raw cost for generated ic 16 : (1, 6.000000) count=1.000000
;	src/player.c: 78: void SetPlayerPalettes(void) NONBANKED{
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function SetPlayerPalettes
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SetPlayerPalettes:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/player.c: 79: uint8_t _previous_bank = CURRENT_BANK;
;	genAssign
;	genAssignLit
;	genCopy
	lda	__current_bank
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	src/player.c: 81: SWITCH_ROM(PLAYER_PALETTES_BANK);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#___bank_PlayerCharacterSprites
;	Raw cost for generated ic 4 : (2, 2.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
	pha
;	genSend
	txa
	jsr	__switch_prg0
	pla
;	Raw cost for generated ic 6 : (6, 15.000000) count=1.000000
;	src/player.c: 91: set_sprite_palette(baseProp, 4, PLAYER_PALETTES);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#>_PlayerCharacterSprites_palettes
	stx	(_set_sprite_palette_PARM_3 + 1)
	ldx	#_PlayerCharacterSprites_palettes
	stx	_set_sprite_palette_PARM_3
;	Raw cost for generated ic 8 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
	pha
;	genSend
	lda	_baseProp
	ldx	#0x04
	jsr	_set_sprite_palette
	pla
;	Raw cost for generated ic 12 : (10, 19.000000) count=1.000000
;	src/player.c: 95: SWITCH_ROM(_previous_bank);
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	Raw cost for generated ic 14 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	src/player.c: 96: }
;	genEndFunction
	jmp	__switch_prg0
;	Raw cost for generated ic 16 : (1, 6.000000) count=1.000000
;	src/player.c: 116: uint8_t DrawPlayer(uint16_t playerRealX, uint16_t playerRealY, uint8_t frame) NONBANKED{
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function DrawPlayer
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_DrawPlayer:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	src/player.c: 119: uint8_t _previous_bank = CURRENT_BANK;
;	genAssign
;	genAssignLit
;	genCopy
	ldy	__current_bank
	sty	_DrawPlayer__previous_bank_10000_140
;	Raw cost for generated ic 4 : (6, 8.000000) count=1.000000
;	src/player.c: 123: uint16_t playerCameraX = (playerRealX-camera_x)+DEVICE_SPRITE_PX_OFFSET_X;
;	genMinus
;	genMinusDec
	sec
	sbc	_camera_x
	sta	_DrawPlayer_playerCameraX_10000_140
	txa
	sbc	(_camera_x + 1)
	sta	(_DrawPlayer_playerCameraX_10000_140 + 1)
;	Raw cost for generated ic 5 : (14, 20.000000) count=1.000000
;	src/player.c: 124: uint16_t playerCameraY= (playerRealY)+DEVICE_SPRITE_PX_OFFSET_Y;
;	genCast
;	genCopy
	ldx	(_DrawPlayer_PARM_2 + 1)
	lda	_DrawPlayer_PARM_2
;	Raw cost for generated ic 7 : (6, 8.000000) count=1.000000
;	genPlus
;	genPlusIncr
	clc
	adc	#0xff
	pha
	txa
	adc	#0xff
	tax
	pla
;	Raw cost for generated ic 8 : (9, 17.000000) count=1.000000
;	genCast
;	genCopy
	sta	_DrawPlayer_playerCameraY_10000_140
	stx	(_DrawPlayer_playerCameraY_10000_140 + 1)
;	Raw cost for generated ic 9 : (6, 8.000000) count=1.000000
;	src/player.c: 126: SWITCH_ROM(BANK(PlayerCharacterSprites));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#___bank_PlayerCharacterSprites
;	Raw cost for generated ic 12 : (2, 2.000000) count=1.000000
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	__switch_prg0
;	Raw cost for generated ic 14 : (3, 6.000000) count=1.000000
;	src/player.c: 128: spritesUsed = move_metasprite_ex(PlayerCharacterSprites_metasprites[frame],0,baseProp,0,playerCameraX,playerCameraY);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 20 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
	lda	_DrawPlayer_PARM_3
;	Raw cost for generated ic 21 : (5, 6.000000) count=1.000000
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	stx	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 22 : (7, 13.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
;	Raw cost for generated ic 23 : (0, 0.000000) count=1.000000
;	genPointerGet
;	setupDPTR
	clc
	adc	#<(_PlayerCharacterSprites_metasprites+0)
	sta	*(DPTR+0)
	txa
	adc	#>(_PlayerCharacterSprites_metasprites+0)
	sta	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 24 : (18, 30.000000) count=1.000000
;	../../../include/nes/metasprites.h: 91: __current_metasprite = metasprite;
;	genCast
;	genCopy
	sta	___current_metasprite
	stx	(___current_metasprite + 1)
;	Raw cost for generated ic 32 : (6, 8.000000) count=1.000000
;	../../../include/nes/metasprites.h: 92: __current_base_tile = base_tile;
;	genAssign
;	genAssignLit
	sty	___current_base_tile
;	Raw cost for generated ic 36 : (3, 4.000000) count=1.000000
;	../../../include/nes/metasprites.h: 93: __current_base_prop = base_prop;
;	genAssign
;	genAssignLit
	sty	___current_base_prop
;	Raw cost for generated ic 38 : (3, 4.000000) count=1.000000
;	../../../include/nes/metasprites.h: 94: return __move_metasprite(base_sprite, x, y);
;	genAssign
;	genAssignLit
;	genCopy
	lda	(_DrawPlayer_playerCameraX_10000_140 + 1)
	sta	(___move_metasprite_PARM_2 + 1)
	lda	_DrawPlayer_playerCameraX_10000_140
	sta	___move_metasprite_PARM_2
;	Raw cost for generated ic 40 : (12, 16.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	(_DrawPlayer_playerCameraY_10000_140 + 1)
	sta	(___move_metasprite_PARM_3 + 1)
	lda	_DrawPlayer_playerCameraY_10000_140
	sta	___move_metasprite_PARM_3
;	Raw cost for generated ic 41 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 39 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tya
	jsr	___move_metasprite
;	assignResultValue
;	Raw cost for generated ic 42 : (4, 8.000000) count=1.000000
;	src/player.c: 130: SWITCH_ROM(_previous_bank);
;	Raw cost for generated ic 47 : (0, 0.000000) count=1.000000
;	genCall
	pha
;	genSend
	lda	_DrawPlayer__previous_bank_10000_140
	jsr	__switch_prg0
	pla
;	Raw cost for generated ic 48 : (8, 17.000000) count=1.000000
;	src/player.c: 132: return spritesUsed;
;	genRet
;	Raw cost for generated ic 49 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 50 : (0, 0.000000) count=1.000000
;	src/player.c: 133: }
;	genEndFunction
	rts
;	Raw cost for generated ic 51 : (1, 6.000000) count=1.000000
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
;------------------------------------------------------------
;Allocation info for local variables in function 'UpdatePlayerVRAMTiles'
;------------------------------------------------------------
;_previous_bank Allocated to registers a 
;------------------------------------------------------------
;------------------------------------------------------------
;Allocation info for local variables in function 'SetPlayerPalettes'
;------------------------------------------------------------
;_previous_bank Allocated to registers a 
;------------------------------------------------------------
;------------------------------------------------------------
;Allocation info for local variables in function 'SetupPlayer'
;------------------------------------------------------------
;	src/player.c: 98: void SetupPlayer(void) BANKED{
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function SetupPlayer
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
	b_SetupPlayer	= 255
_SetupPlayer:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/player.c: 102: playerX=40<<4;
;	genAssign
;	genAssignLit
	ldx	#0x80
	stx	_playerX
	ldx	#0x02
	stx	(_playerX + 1)
;	Raw cost for generated ic 3 : (10, 12.000000) count=1.000000
;	src/player.c: 103: playerY=40<<4;
;	genAssign
;	genAssignLit
	ldx	#0x80
	stx	_playerY
	ldx	#0x02
	stx	(_playerY + 1)
;	Raw cost for generated ic 5 : (10, 12.000000) count=1.000000
;	src/player.c: 105: playerXVelocity=0;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_playerXVelocity
	stx	(_playerXVelocity + 1)
;	Raw cost for generated ic 7 : (8, 11.000000) count=1.000000
;	src/player.c: 106: playerYVelocity=0;
;	genAssign
;	genAssignLit
	stx	_playerYVelocity
	stx	(_playerYVelocity + 1)
;	Raw cost for generated ic 9 : (6, 9.000000) count=1.000000
;	src/player.c: 108: UpdatePlayerVRAMTiles();
;	genCall
	jsr	_UpdatePlayerVRAMTiles
;	Raw cost for generated ic 10 : (3, 6.000000) count=1.000000
;	src/player.c: 111: SetPlayerPalettes();
;	genCall
;	Raw cost for generated ic 11 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	src/player.c: 114: }
;	genEndFunction
	jmp	_SetPlayerPalettes
;	Raw cost for generated ic 13 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'DrawPlayer'
;------------------------------------------------------------
;playerRealY   Allocated with name '_DrawPlayer_PARM_2'
;frame         Allocated with name '_DrawPlayer_PARM_3'
;playerRealX   Allocated to registers a x 
;__200000009   Allocated to registers a 
;spritesUsed   Allocated to registers 
;_previous_bank Allocated with name '_DrawPlayer__previous_bank_10000_140'
;playerCameraX Allocated with name '_DrawPlayer_playerCameraX_10000_140'
;playerCameraY Allocated with name '_DrawPlayer_playerCameraY_10000_140'
;__200000010   Allocated to registers 
;__200000011   Allocated to registers 
;__200000012   Allocated to registers 
;__200000013   Allocated to registers 
;__200000014   Allocated to registers 
;__200000015   Allocated to registers 
;metasprite    Allocated to registers 
;base_tile     Allocated to registers 
;base_prop     Allocated to registers 
;base_sprite   Allocated to registers 
;x             Allocated to registers 
;y             Allocated to registers 
;------------------------------------------------------------
;------------------------------------------------------------
;Allocation info for local variables in function 'UpdatePlayer'
;------------------------------------------------------------
;sloc0         Allocated with name '_UpdatePlayer_sloc0_1_0'
;sloc1         Allocated with name '_UpdatePlayer_sloc1_1_0'
;sloc2         Allocated with name '_UpdatePlayer_sloc2_1_0'
;sloc3         Allocated with name '_UpdatePlayer_sloc3_1_0'
;sloc4         Allocated with name '_UpdatePlayer_sloc4_1_0'
;sloc5         Allocated with name '_UpdatePlayer_sloc5_1_0'
;moveSpeed     Allocated with name '_UpdatePlayer_moveSpeed_10000_145'
;threeFrameCounterSpeed Allocated to registers a 
;threeFrameCounterValue Allocated with name '_UpdatePlayer_threeFrameCounterValue_10001_146'
;turning       Allocated with name '_UpdatePlayer_turning_10002_149'
;playerRealX   Allocated with name '_UpdatePlayer_playerRealX_10003_175'
;playerRealY   Allocated with name '_UpdatePlayer_playerRealY_10003_175'
;grounded      Allocated with name '_UpdatePlayer_grounded_10003_175'
;pressedA      Allocated to registers y 
;pressedUp     Allocated to registers a 
;pressedAOrUp  Allocated to registers y 
;max           Allocated with name '_UpdatePlayer_max_30004_205'
;frame         Allocated to registers a 
;directionOffset Allocated to registers x 
;spritesUsed   Allocated with name '_UpdatePlayer_spritesUsed_10005_207'
;------------------------------------------------------------
;	src/player.c: 135: uint8_t UpdatePlayer(void) BANKED{
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function UpdatePlayer
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
	b_UpdatePlayer	= 255
_UpdatePlayer:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/player.c: 139: int16_t moveSpeed = (joypadCurrent & J_B) ?PLAYER_CHARACTER_RUN_VELOCITY:PLAYER_CHARACTER_WALK_VELOCITY;
;	genCast
;	genCopy
	ldy	_joypadCurrent
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	genAnd
	tya
	and	#0x40
;	genIfxJump : z
	beq	00191$
;	Raw cost for generated ic 3 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x01
	lda	#0xa9
;	Raw cost for generated ic 5 : (4, 4.000000) count=0.750000
;	genGoto
	jmp	00192$
;	Raw cost for generated ic 6 : (3, 3.000000) count=0.750000
;	genLabel
00191$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=0.250000
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x01
	lda	#0x45
;	Raw cost for generated ic 8 : (4, 4.000000) count=0.250000
;	genLabel
00192$:
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	_UpdatePlayer_moveSpeed_10000_145
	stx	(_UpdatePlayer_moveSpeed_10000_145 + 1)
;	Raw cost for generated ic 10 : (6, 8.000000) count=1.000000
;	src/player.c: 140: uint8_t threeFrameCounterSpeed = (joypadCurrent & J_B) ? PLAYER_CHARACTER_RUN_TWO_FRAME_COUNTER : PLAYER_CHARACTER_WALK_TWO_FRAME_COUNTER;
;	genAnd
	tya
	and	#0x40
;	genIfxJump : z
	beq	00193$
;	Raw cost for generated ic 13 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x05
;	Raw cost for generated ic 15 : (2, 2.000000) count=0.750000
;	genGoto
	jmp	00194$
;	Raw cost for generated ic 16 : (3, 3.000000) count=0.750000
;	genLabel
00193$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=0.250000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x03
;	Raw cost for generated ic 18 : (2, 2.000000) count=0.250000
;	genLabel
00194$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 20 : (0, 0.000000) count=1.000000
;	src/player.c: 142: threeFrameCounter+=threeFrameCounterSpeed;
;	genPlus
;	genPlusIncr
	clc
	adc	_threeFrameCounter
;	Raw cost for generated ic 22 : (7, 10.000000) count=1.000000
;	src/player.c: 143: uint8_t threeFrameCounterValue = threeFrameCounter>>4;
;	genRightShift
;	genRightShiftLiteral
;	genrshOne
	sta	_threeFrameCounter
	lsr	a
	lsr	a
	lsr	a
	lsr	a
;	Raw cost for generated ic 25 : (10, 16.000000) count=1.000000
;	src/player.c: 144: if(threeFrameCounterValue>=3){
;	genCmp
	sta	_UpdatePlayer_threeFrameCounterValue_10001_146
	cmp	#0x03
	bcc	00102$
;	Raw cost for generated ic 27 : (10, 11.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 28 : (0, 0.000000) count=1.000000
;	src/player.c: 145: threeFrameCounter=0;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_threeFrameCounter
;	Raw cost for generated ic 32 : (5, 6.000000) count=0.750000
;	src/player.c: 146: threeFrameCounterValue=0;
;	genAssign
;	genAssignLit
	stx	_UpdatePlayer_threeFrameCounterValue_10001_146
;	Raw cost for generated ic 33 : (3, 4.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 34 : (0, 0.000000) count=1.000000
;	src/player.c: 149: uint8_t turning = FALSE;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_UpdatePlayer_turning_10002_149
;	Raw cost for generated ic 35 : (5, 6.000000) count=1.000000
;	src/player.c: 151: if(joypadCurrent &J_RIGHT){
;	genAnd
	tya
	and	#0x01
;	genIfxJump : z
	beq	00134$
;	Raw cost for generated ic 37 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 38 : (0, 0.000000) count=1.000000
;	src/player.c: 154: if(playerXVelocity<0){
;	genCast
;	genCopy
	lda	(_playerXVelocity + 1)
	sta	*(_UpdatePlayer_sloc0_1_0 + 1)
	lda	_playerXVelocity
	sta	*_UpdatePlayer_sloc0_1_0
;	Raw cost for generated ic 41 : (10, 14.000000) count=0.750000
;	genCmp
	bit	*(_UpdatePlayer_sloc0_1_0 + 1)
	bpl	00109$
;	Raw cost for generated ic 42 : (7, 8.600000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 43 : (0, 0.000000) count=0.750000
;	src/player.c: 157: playerXVelocity+=GROUND_FRICTION;
;	genPlus
;	genPlusIncr
	ldx	*(_UpdatePlayer_sloc0_1_0 + 1)
	lda	*_UpdatePlayer_sloc0_1_0
	clc
	adc	#0x0f
	bcc	00539$
	inx
00539$:
;	Raw cost for generated ic 47 : (10, 14.600000) count=0.562500
;	genCast
;	genCopy
;	Raw cost for generated ic 48 : (6, 9.000000) count=0.562500
;	src/player.c: 160: if(playerXVelocity<0)turning=TRUE;
;	genCast
;	genCopy
	sta	_playerXVelocity
	stx	(_playerXVelocity + 1)
	sta	*_UpdatePlayer_sloc0_1_0
	stx	*(_UpdatePlayer_sloc0_1_0 + 1)
;	Raw cost for generated ic 51 : (10, 14.000000) count=0.562500
;	genCmp
	bit	*(_UpdatePlayer_sloc0_1_0 + 1)
	bpl	00104$
;	Raw cost for generated ic 52 : (7, 8.600000) count=0.562500
;	skipping generated iCode
;	Raw cost for generated ic 53 : (0, 0.000000) count=0.562500
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_UpdatePlayer_turning_10002_149
;	Raw cost for generated ic 56 : (5, 6.000000) count=0.421875
;	genGoto
	jmp	00135$
;	Raw cost for generated ic 57 : (3, 3.000000) count=0.421875
;	genLabel
00104$:
;	Raw cost for generated ic 58 : (0, 0.000000) count=0.140625
;	src/player.c: 163: facingRight=TRUE;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_facingRight
;	Raw cost for generated ic 60 : (5, 6.000000) count=0.140625
;	genGoto
	jmp	00135$
;	Raw cost for generated ic 62 : (3, 3.000000) count=0.140625
;	genLabel
00109$:
;	Raw cost for generated ic 63 : (0, 0.000000) count=0.187500
;	src/player.c: 166: playerXVelocity=moveSpeed;
;	genAssign
;	genAssignLit
;	genCopy
	lda	(_UpdatePlayer_moveSpeed_10000_145 + 1)
	sta	(_playerXVelocity + 1)
	lda	_UpdatePlayer_moveSpeed_10000_145
	sta	_playerXVelocity
;	Raw cost for generated ic 65 : (12, 17.000000) count=0.187500
;	src/player.c: 169: if(!facingRight){
;	genIfx
	lda	_facingRight
;	genIfxJump : z
	beq	00542$
	jmp	00135$
00542$:
;	Raw cost for generated ic 66 : (8, 9.600000) count=0.187500
;	src/player.c: 170: facingRight=TRUE;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_facingRight
;	Raw cost for generated ic 70 : (5, 6.000000) count=0.140625
;	genGoto
	jmp	00135$
;	Raw cost for generated ic 73 : (3, 3.000000) count=0.140625
;	genLabel
00134$:
;	Raw cost for generated ic 74 : (0, 0.000000) count=0.250000
;	src/player.c: 174: }else if(joypadCurrent &J_LEFT){
;	genAnd
	tya
	and	#0x02
;	genIfxJump : z
	beq	00131$
;	Raw cost for generated ic 76 : (8, 9.600000) count=0.250000
;	skipping generated iCode
;	Raw cost for generated ic 77 : (0, 0.000000) count=0.250000
;	src/player.c: 177: if(playerXVelocity>0){
;	genCast
;	genCopy
	lda	(_playerXVelocity + 1)
	sta	*(_UpdatePlayer_sloc0_1_0 + 1)
	lda	_playerXVelocity
	sta	*_UpdatePlayer_sloc0_1_0
;	Raw cost for generated ic 80 : (10, 14.000000) count=0.187500
;	genCmp
	lda	#0x00
	sec
	sbc	*_UpdatePlayer_sloc0_1_0
	lda	#0x00
	sbc	*(_UpdatePlayer_sloc0_1_0 + 1)
	bvc	00546$
	bpl	00545$
	bmi	00117$
00546$:
	bpl	00117$
00545$:
;	Raw cost for generated ic 81 : (20, 25.400002) count=0.187500
;	skipping generated iCode
;	Raw cost for generated ic 82 : (0, 0.000000) count=0.187500
;	src/player.c: 180: playerXVelocity-=GROUND_FRICTION;
;	genMinus
;	genMinusDec
	ldx	*(_UpdatePlayer_sloc0_1_0 + 1)
	lda	*_UpdatePlayer_sloc0_1_0
	sec
	sbc	#0x0f
	bcs	00548$
	dex
00548$:
;	Raw cost for generated ic 86 : (10, 14.600000) count=0.140625
;	genCast
;	genCopy
;	Raw cost for generated ic 87 : (6, 9.000000) count=0.140625
;	src/player.c: 183: if(playerXVelocity>0)turning=TRUE;
;	genCast
;	genCopy
	sta	_playerXVelocity
	stx	(_playerXVelocity + 1)
;	Raw cost for generated ic 90 : (6, 8.000000) count=0.140625
;	genCmp
	sta	*(REGTEMP+0)
	lda	#0x00
	sec
	sbc	*(REGTEMP+0)
	lda	#0x00
	stx	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	bvc	00550$
	bpl	00549$
	bmi	00112$
00550$:
	bpl	00112$
00549$:
;	Raw cost for generated ic 91 : (24, 31.400002) count=0.140625
;	skipping generated iCode
;	Raw cost for generated ic 92 : (0, 0.000000) count=0.140625
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_UpdatePlayer_turning_10002_149
;	Raw cost for generated ic 95 : (5, 6.000000) count=0.105469
;	genGoto
	jmp	00135$
;	Raw cost for generated ic 96 : (3, 3.000000) count=0.105469
;	genLabel
00112$:
;	Raw cost for generated ic 97 : (0, 0.000000) count=0.035156
;	src/player.c: 186: facingRight=FALSE;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_facingRight
;	Raw cost for generated ic 99 : (5, 6.000000) count=0.035156
;	genGoto
	jmp	00135$
;	Raw cost for generated ic 101 : (3, 3.000000) count=0.035156
;	genLabel
00117$:
;	Raw cost for generated ic 102 : (0, 0.000000) count=0.046875
;	src/player.c: 190: playerXVelocity=-moveSpeed;
;	genUminus
	lda	#0x00
	sec
	sbc	_UpdatePlayer_moveSpeed_10000_145
	sta	_playerXVelocity
	lda	#0x00
	sbc	(_UpdatePlayer_moveSpeed_10000_145 + 1)
	sta	(_playerXVelocity + 1)
;	Raw cost for generated ic 103 : (17, 23.000000) count=0.046875
;	src/player.c: 193: if(facingRight){
;	genIfx
	lda	_facingRight
;	genIfxJump : z
	beq	00135$
;	Raw cost for generated ic 106 : (8, 9.600000) count=0.046875
;	src/player.c: 194: facingRight=FALSE;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_facingRight
;	Raw cost for generated ic 110 : (5, 6.000000) count=0.035156
;	genGoto
	jmp	00135$
;	Raw cost for generated ic 113 : (3, 3.000000) count=0.035156
;	genLabel
00131$:
;	Raw cost for generated ic 114 : (0, 0.000000) count=0.062500
;	src/player.c: 203: if (playerXVelocity > 0) {
;	genCast
;	genCopy
	lda	(_playerXVelocity + 1)
	sta	*(_UpdatePlayer_sloc0_1_0 + 1)
	lda	_playerXVelocity
	sta	*_UpdatePlayer_sloc0_1_0
;	Raw cost for generated ic 115 : (10, 14.000000) count=0.062500
;	genCmp
	lda	#0x00
	sec
	sbc	*_UpdatePlayer_sloc0_1_0
	lda	#0x00
	sbc	*(_UpdatePlayer_sloc0_1_0 + 1)
	bvc	00555$
	bpl	00554$
	bmi	00128$
00555$:
	bpl	00128$
00554$:
;	Raw cost for generated ic 116 : (20, 25.400002) count=0.062500
;	skipping generated iCode
;	Raw cost for generated ic 117 : (0, 0.000000) count=0.062500
;	src/player.c: 204: if (playerXVelocity >= GROUND_FRICTION) playerXVelocity -= GROUND_FRICTION;
;	genCmp
	lda	*_UpdatePlayer_sloc0_1_0
	sec
	sbc	#0x0f
	lda	*(_UpdatePlayer_sloc0_1_0 + 1)
	sbc	#0x00
	bvs	00558$
	bpl	00557$
	bmi	00120$
00558$:
	bpl	00120$
00557$:
;	Raw cost for generated ic 121 : (20, 25.400002) count=0.046875
;	skipping generated iCode
;	Raw cost for generated ic 122 : (0, 0.000000) count=0.046875
;	genMinus
;	genMinusDec
	ldx	*(_UpdatePlayer_sloc0_1_0 + 1)
	lda	*_UpdatePlayer_sloc0_1_0
	sec
	sbc	#0x0f
	bcs	00560$
	dex
00560$:
;	Raw cost for generated ic 126 : (10, 14.600000) count=0.035156
;	genCast
;	genCopy
	sta	_playerXVelocity
	stx	(_playerXVelocity + 1)
;	Raw cost for generated ic 127 : (6, 9.000000) count=0.035156
;	genGoto
	jmp	00135$
;	Raw cost for generated ic 130 : (3, 3.000000) count=0.035156
;	genLabel
00120$:
;	Raw cost for generated ic 131 : (0, 0.000000) count=0.011719
;	src/player.c: 205: else playerXVelocity=0;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_playerXVelocity
	stx	(_playerXVelocity + 1)
;	Raw cost for generated ic 133 : (8, 11.000000) count=0.011719
;	genGoto
	jmp	00135$
;	Raw cost for generated ic 135 : (3, 3.000000) count=0.011719
;	genLabel
00128$:
;	Raw cost for generated ic 136 : (0, 0.000000) count=0.015625
;	src/player.c: 207: else if (playerXVelocity < 0) {
;	genCmp
	bit	*(_UpdatePlayer_sloc0_1_0 + 1)
	bpl	00135$
;	Raw cost for generated ic 138 : (7, 8.600000) count=0.015625
;	skipping generated iCode
;	Raw cost for generated ic 139 : (0, 0.000000) count=0.015625
;	src/player.c: 208: if (playerXVelocity <= GROUND_FRICTION) playerXVelocity += GROUND_FRICTION;
;	genPlus
;	genPlusIncr
	ldx	*(_UpdatePlayer_sloc0_1_0 + 1)
	lda	*_UpdatePlayer_sloc0_1_0
	clc
	adc	#0x0f
	bcc	00562$
	inx
00562$:
;	Raw cost for generated ic 148 : (10, 14.600000) count=0.011719
;	genCast
;	genCopy
	sta	_playerXVelocity
	stx	(_playerXVelocity + 1)
;	Raw cost for generated ic 149 : (6, 9.000000) count=0.011719
;	src/player.c: 209: else playerXVelocity=0;
;	genLabel
00135$:
;	Raw cost for generated ic 160 : (0, 0.000000) count=1.000000
;	src/player.c: 213: uint16_t playerRealX = playerX>>4;
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	ldx	(_playerX + 1)
	lda	_playerX
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
	sta	*_UpdatePlayer_sloc0_1_0
	stx	*(_UpdatePlayer_sloc0_1_0 + 1)
;	Raw cost for generated ic 161 : (26, 48.000000) count=1.000000
;	src/player.c: 214: uint16_t playerRealY = playerY>>4;
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	ldx	(_playerY + 1)
	lda	_playerY
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
	sta	*_UpdatePlayer_sloc1_1_0
	stx	*(_UpdatePlayer_sloc1_1_0 + 1)
;	Raw cost for generated ic 163 : (26, 48.000000) count=1.000000
;	src/player.c: 216: uint8_t grounded = FALSE;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_UpdatePlayer_grounded_10003_175
;	Raw cost for generated ic 165 : (5, 6.000000) count=1.000000
;	src/player.c: 223: if(playerRealY<DEVICE_SCREEN_PX_HEIGHT){
;	genCmp
	lda	*_UpdatePlayer_sloc1_1_0
	sec
	sbc	#0xf0
	lda	*(_UpdatePlayer_sloc1_1_0 + 1)
	sbc	#0x00
	bcs	00140$
;	Raw cost for generated ic 166 : (14, 17.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 167 : (0, 0.000000) count=1.000000
;	src/player.c: 226: while(IsTileSolid(playerRealX,playerRealY+PLAYER_CHARACTER_BOUNDING_BOX_HEIGHT-1)){
;	genLabel
00136$:
;	Raw cost for generated ic 170 : (0, 0.000000) count=2.999995
;	genCast
;	genCopy
	ldx	*(_UpdatePlayer_sloc1_1_0 + 1)
	lda	*_UpdatePlayer_sloc1_1_0
;	Raw cost for generated ic 171 : (4, 6.000000) count=2.999995
;	genPlus
;	genPlusIncr
	clc
	adc	#0x17
	bcc	00564$
	inx
00564$:
;	Raw cost for generated ic 172 : (6, 8.600000) count=2.999995
;	genCast
;	genCopy
	sta	_IsTileSolid_PARM_2
	stx	(_IsTileSolid_PARM_2 + 1)
;	Raw cost for generated ic 173 : (6, 8.000000) count=2.999995
;	Raw cost for generated ic 174 : (0, 0.000000) count=2.999995
;	genCall
;	genSend
	ldx	*(_UpdatePlayer_sloc0_1_0 + 1)
	lda	*_UpdatePlayer_sloc0_1_0
	jsr	_IsTileSolid
;	assignResultValue
;	Raw cost for generated ic 176 : (7, 12.000000) count=2.999995
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00140$
;	Raw cost for generated ic 177 : (7, 7.600000) count=2.999995
;	src/player.c: 227: playerY-=16;
;	genCast
;	genCopy
	ldx	(_playerY + 1)
	lda	_playerY
;	Raw cost for generated ic 180 : (6, 8.000000) count=2.249995
;	genMinus
;	genMinusDec
	sec
	sbc	#0x10
	bcs	00567$
	dex
00567$:
;	Raw cost for generated ic 181 : (6, 8.600000) count=2.249995
;	genCast
;	genCopy
;	Raw cost for generated ic 182 : (6, 8.000000) count=2.249995
;	src/player.c: 228: playerRealY = playerY>>4;
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	sta	_playerY
	stx	(_playerY + 1)
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
	sta	*_UpdatePlayer_sloc1_1_0
	stx	*(_UpdatePlayer_sloc1_1_0 + 1)
;	Raw cost for generated ic 185 : (26, 48.000000) count=2.249995
;	genGoto
	jmp	00136$
;	Raw cost for generated ic 187 : (3, 3.000000) count=2.249995
;	genLabel
00140$:
;	Raw cost for generated ic 189 : (0, 0.000000) count=0.999999
;	src/player.c: 242: if(playerXVelocity!=0){
;	genIfx
	lda	(_playerXVelocity + 1)
	ora	_playerXVelocity
;	genIfxJump : z
	bne	00569$
	jmp	00155$
00569$:
;	Raw cost for generated ic 190 : (11, 13.600000) count=0.999999
;	src/player.c: 245: if(playerXVelocity>0){
;	genCast
;	genCopy
	lda	(_playerXVelocity + 1)
	sta	*(_UpdatePlayer_sloc2_1_0 + 1)
	lda	_playerXVelocity
	sta	*_UpdatePlayer_sloc2_1_0
;	Raw cost for generated ic 193 : (10, 14.000000) count=0.749998
;	genCmp
	lda	#0x00
	sec
	sbc	*_UpdatePlayer_sloc2_1_0
	lda	#0x00
	sbc	*(_UpdatePlayer_sloc2_1_0 + 1)
	bvc	00571$
	bpl	00570$
	bmi	00572$
00571$:
	bmi	00570$
00572$:
	jmp	00152$
00570$:
;	Raw cost for generated ic 194 : (20, 25.400002) count=0.749998
;	skipping generated iCode
;	Raw cost for generated ic 195 : (0, 0.000000) count=0.749998
;	src/player.c: 249: if(IsTileSolid(playerRealX+PLAYER_CHARACTER_BOUNDING_BOX_HALF_WIDTH,playerRealY+2)||IsTileSolid(playerRealX+PLAYER_CHARACTER_BOUNDING_BOX_HALF_WIDTH,playerRealY+PLAYER_CHARACTER_BOUNDING_BOX_HALF_HEIGHT)||IsTileSolid(playerRealX+PLAYER_CHARACTER_BOUNDING_BOX_HALF_WIDTH,playerRealY+(PLAYER_CHARACTER_BOUNDING_BOX_HEIGHT-2)))playerXVelocity=0;
;	genCast
;	genCopy
	lda	*(_UpdatePlayer_sloc0_1_0 + 1)
	sta	*(_UpdatePlayer_sloc3_1_0 + 1)
	lda	*_UpdatePlayer_sloc0_1_0
	sta	*_UpdatePlayer_sloc3_1_0
;	Raw cost for generated ic 198 : (8, 12.000000) count=0.562498
;	genPlus
;	genPlusIncr
	ldx	*(_UpdatePlayer_sloc3_1_0 + 1)
	lda	*_UpdatePlayer_sloc3_1_0
	clc
	adc	#0x05
	bcc	00573$
	inx
00573$:
;	Raw cost for generated ic 199 : (10, 14.600000) count=0.562498
;	genCast
;	genCopy
	sta	*_UpdatePlayer_sloc4_1_0
	stx	*(_UpdatePlayer_sloc4_1_0 + 1)
;	Raw cost for generated ic 200 : (4, 6.000000) count=0.562498
;	genCast
;	genCopy
	lda	*(_UpdatePlayer_sloc1_1_0 + 1)
	sta	*(_UpdatePlayer_sloc5_1_0 + 1)
	lda	*_UpdatePlayer_sloc1_1_0
	sta	*_UpdatePlayer_sloc5_1_0
;	Raw cost for generated ic 201 : (8, 12.000000) count=0.562498
;	genPlus
;	genPlusIncr
	ldx	*(_UpdatePlayer_sloc5_1_0 + 1)
	lda	*_UpdatePlayer_sloc5_1_0
	clc
	adc	#0x02
	bcc	00574$
	inx
00574$:
;	Raw cost for generated ic 202 : (10, 14.600000) count=0.562498
;	genCast
;	genCopy
	sta	_IsTileSolid_PARM_2
	stx	(_IsTileSolid_PARM_2 + 1)
;	Raw cost for generated ic 203 : (6, 8.000000) count=0.562498
;	Raw cost for generated ic 204 : (0, 0.000000) count=0.562498
;	genCall
;	genSend
	ldx	*(_UpdatePlayer_sloc4_1_0 + 1)
	lda	*_UpdatePlayer_sloc4_1_0
	jsr	_IsTileSolid
;	assignResultValue
;	Raw cost for generated ic 206 : (7, 12.000000) count=0.562498
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00141$
;	Raw cost for generated ic 207 : (7, 7.600000) count=0.562498
;	genPlus
;	genPlusIncr
	ldx	*(_UpdatePlayer_sloc3_1_0 + 1)
	lda	*_UpdatePlayer_sloc3_1_0
	clc
	adc	#0x05
	bcc	00577$
	inx
00577$:
;	Raw cost for generated ic 211 : (10, 14.600000) count=0.421874
;	genCast
;	genCopy
	sta	*_UpdatePlayer_sloc4_1_0
	stx	*(_UpdatePlayer_sloc4_1_0 + 1)
;	Raw cost for generated ic 212 : (4, 6.000000) count=0.421874
;	genPlus
;	genPlusIncr
	ldx	*(_UpdatePlayer_sloc5_1_0 + 1)
	lda	*_UpdatePlayer_sloc5_1_0
	clc
	adc	#0x0c
	bcc	00578$
	inx
00578$:
;	Raw cost for generated ic 214 : (10, 14.600000) count=0.421874
;	genCast
;	genCopy
	sta	_IsTileSolid_PARM_2
	stx	(_IsTileSolid_PARM_2 + 1)
;	Raw cost for generated ic 215 : (6, 8.000000) count=0.421874
;	Raw cost for generated ic 216 : (0, 0.000000) count=0.421874
;	genCall
;	genSend
	ldx	*(_UpdatePlayer_sloc4_1_0 + 1)
	lda	*_UpdatePlayer_sloc4_1_0
	jsr	_IsTileSolid
;	assignResultValue
;	Raw cost for generated ic 218 : (7, 12.000000) count=0.421874
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00141$
;	Raw cost for generated ic 219 : (7, 7.600000) count=0.421874
;	genPlus
;	genPlusIncr
	ldx	*(_UpdatePlayer_sloc3_1_0 + 1)
	lda	*_UpdatePlayer_sloc3_1_0
	clc
	adc	#0x05
	bcc	00581$
	inx
00581$:
;	Raw cost for generated ic 223 : (10, 14.600000) count=0.316405
;	genCast
;	genCopy
	sta	*_UpdatePlayer_sloc4_1_0
	stx	*(_UpdatePlayer_sloc4_1_0 + 1)
;	Raw cost for generated ic 224 : (4, 6.000000) count=0.316405
;	genPlus
;	genPlusIncr
	ldx	*(_UpdatePlayer_sloc5_1_0 + 1)
	lda	*_UpdatePlayer_sloc5_1_0
	clc
	adc	#0x16
	bcc	00582$
	inx
00582$:
;	Raw cost for generated ic 226 : (10, 14.600000) count=0.316405
;	genCast
;	genCopy
	sta	_IsTileSolid_PARM_2
	stx	(_IsTileSolid_PARM_2 + 1)
;	Raw cost for generated ic 227 : (6, 8.000000) count=0.316405
;	Raw cost for generated ic 228 : (0, 0.000000) count=0.316405
;	genCall
;	genSend
	ldx	*(_UpdatePlayer_sloc4_1_0 + 1)
	lda	*_UpdatePlayer_sloc4_1_0
	jsr	_IsTileSolid
;	assignResultValue
;	Raw cost for generated ic 230 : (7, 12.000000) count=0.316405
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00584$
	jmp	00155$
00584$:
;	Raw cost for generated ic 231 : (7, 7.600000) count=0.316405
;	genLabel
00141$:
;	Raw cost for generated ic 233 : (0, 0.000000) count=0.483397
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_playerXVelocity
	stx	(_playerXVelocity + 1)
;	Raw cost for generated ic 235 : (8, 11.000000) count=0.483397
;	genGoto
	jmp	00155$
;	Raw cost for generated ic 237 : (3, 3.000000) count=0.483397
;	genLabel
00152$:
;	Raw cost for generated ic 238 : (0, 0.000000) count=0.187499
;	src/player.c: 252: }else if(playerXVelocity<0){
;	genCmp
	bit	*(_UpdatePlayer_sloc2_1_0 + 1)
	bmi	00585$
	jmp	00155$
00585$:
;	Raw cost for generated ic 240 : (7, 8.600000) count=0.187499
;	skipping generated iCode
;	Raw cost for generated ic 241 : (0, 0.000000) count=0.187499
;	src/player.c: 256: if(IsTileSolid(playerRealX-PLAYER_CHARACTER_BOUNDING_BOX_HALF_WIDTH,playerRealY+2)||IsTileSolid(playerRealX-PLAYER_CHARACTER_BOUNDING_BOX_HALF_WIDTH,playerRealY+PLAYER_CHARACTER_BOUNDING_BOX_HALF_HEIGHT)||IsTileSolid(playerRealX-PLAYER_CHARACTER_BOUNDING_BOX_HALF_WIDTH,playerRealY+(PLAYER_CHARACTER_BOUNDING_BOX_HEIGHT-2)))playerXVelocity=0;
;	genCast
;	genCopy
	lda	*(_UpdatePlayer_sloc0_1_0 + 1)
	sta	*(_UpdatePlayer_sloc5_1_0 + 1)
	lda	*_UpdatePlayer_sloc0_1_0
	sta	*_UpdatePlayer_sloc5_1_0
;	Raw cost for generated ic 244 : (8, 12.000000) count=0.140622
;	genMinus
;	genMinusDec
	ldx	*(_UpdatePlayer_sloc5_1_0 + 1)
	lda	*_UpdatePlayer_sloc5_1_0
	sec
	sbc	#0x05
	bcs	00586$
	dex
00586$:
;	Raw cost for generated ic 245 : (10, 14.600000) count=0.140622
;	genCast
;	genCopy
	sta	*_UpdatePlayer_sloc4_1_0
	stx	*(_UpdatePlayer_sloc4_1_0 + 1)
;	Raw cost for generated ic 246 : (4, 6.000000) count=0.140622
;	genCast
;	genCopy
	lda	*(_UpdatePlayer_sloc1_1_0 + 1)
	sta	*(_UpdatePlayer_sloc3_1_0 + 1)
	lda	*_UpdatePlayer_sloc1_1_0
	sta	*_UpdatePlayer_sloc3_1_0
;	Raw cost for generated ic 247 : (8, 12.000000) count=0.140622
;	genPlus
;	genPlusIncr
	ldx	*(_UpdatePlayer_sloc3_1_0 + 1)
	lda	*_UpdatePlayer_sloc3_1_0
	clc
	adc	#0x02
	bcc	00587$
	inx
00587$:
;	Raw cost for generated ic 248 : (10, 14.600000) count=0.140622
;	genCast
;	genCopy
	sta	_IsTileSolid_PARM_2
	stx	(_IsTileSolid_PARM_2 + 1)
;	Raw cost for generated ic 249 : (6, 8.000000) count=0.140622
;	Raw cost for generated ic 250 : (0, 0.000000) count=0.140622
;	genCall
;	genSend
	ldx	*(_UpdatePlayer_sloc4_1_0 + 1)
	lda	*_UpdatePlayer_sloc4_1_0
	jsr	_IsTileSolid
;	assignResultValue
;	Raw cost for generated ic 252 : (7, 12.000000) count=0.140622
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00145$
;	Raw cost for generated ic 253 : (7, 7.600000) count=0.140622
;	genMinus
;	genMinusDec
	ldx	*(_UpdatePlayer_sloc5_1_0 + 1)
	lda	*_UpdatePlayer_sloc5_1_0
	sec
	sbc	#0x05
	bcs	00590$
	dex
00590$:
;	Raw cost for generated ic 257 : (10, 14.600000) count=0.105467
;	genCast
;	genCopy
	sta	*_UpdatePlayer_sloc4_1_0
	stx	*(_UpdatePlayer_sloc4_1_0 + 1)
;	Raw cost for generated ic 258 : (4, 6.000000) count=0.105467
;	genPlus
;	genPlusIncr
	ldx	*(_UpdatePlayer_sloc3_1_0 + 1)
	lda	*_UpdatePlayer_sloc3_1_0
	clc
	adc	#0x0c
	bcc	00591$
	inx
00591$:
;	Raw cost for generated ic 260 : (10, 14.600000) count=0.105467
;	genCast
;	genCopy
	sta	_IsTileSolid_PARM_2
	stx	(_IsTileSolid_PARM_2 + 1)
;	Raw cost for generated ic 261 : (6, 8.000000) count=0.105467
;	Raw cost for generated ic 262 : (0, 0.000000) count=0.105467
;	genCall
;	genSend
	ldx	*(_UpdatePlayer_sloc4_1_0 + 1)
	lda	*_UpdatePlayer_sloc4_1_0
	jsr	_IsTileSolid
;	assignResultValue
;	Raw cost for generated ic 264 : (7, 12.000000) count=0.105467
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00145$
;	Raw cost for generated ic 265 : (7, 7.600000) count=0.105467
;	genMinus
;	genMinusDec
	ldx	*(_UpdatePlayer_sloc5_1_0 + 1)
	lda	*_UpdatePlayer_sloc5_1_0
	sec
	sbc	#0x05
	bcs	00594$
	dex
00594$:
;	Raw cost for generated ic 269 : (10, 14.600000) count=0.079100
;	genCast
;	genCopy
	sta	*_UpdatePlayer_sloc5_1_0
	stx	*(_UpdatePlayer_sloc5_1_0 + 1)
;	Raw cost for generated ic 270 : (4, 6.000000) count=0.079100
;	genPlus
;	genPlusIncr
	ldx	*(_UpdatePlayer_sloc3_1_0 + 1)
	lda	*_UpdatePlayer_sloc3_1_0
	clc
	adc	#0x16
	bcc	00595$
	inx
00595$:
;	Raw cost for generated ic 272 : (10, 14.600000) count=0.079100
;	genCast
;	genCopy
	sta	_IsTileSolid_PARM_2
	stx	(_IsTileSolid_PARM_2 + 1)
;	Raw cost for generated ic 273 : (6, 8.000000) count=0.079100
;	Raw cost for generated ic 274 : (0, 0.000000) count=0.079100
;	genCall
;	genSend
	ldx	*(_UpdatePlayer_sloc5_1_0 + 1)
	lda	*_UpdatePlayer_sloc5_1_0
	jsr	_IsTileSolid
;	assignResultValue
;	Raw cost for generated ic 276 : (7, 12.000000) count=0.079100
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00155$
;	Raw cost for generated ic 277 : (7, 7.600000) count=0.079100
;	genLabel
00145$:
;	Raw cost for generated ic 279 : (0, 0.000000) count=0.120847
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_playerXVelocity
	stx	(_playerXVelocity + 1)
;	Raw cost for generated ic 281 : (8, 11.000000) count=0.120847
;	genLabel
00155$:
;	Raw cost for generated ic 285 : (0, 0.000000) count=0.999995
;	src/player.c: 261: if(playerYVelocity>=0){
;	genCast
;	genCopy
	lda	(_playerYVelocity + 1)
	sta	*(_UpdatePlayer_sloc5_1_0 + 1)
	lda	_playerYVelocity
	sta	*_UpdatePlayer_sloc5_1_0
;	Raw cost for generated ic 286 : (10, 14.000000) count=0.999995
;	genCmp
	bit	*(_UpdatePlayer_sloc5_1_0 + 1)
	bmi	00160$
;	Raw cost for generated ic 287 : (7, 8.600000) count=0.999995
;	skipping generated iCode
;	Raw cost for generated ic 288 : (0, 0.000000) count=0.999995
;	src/player.c: 265: if(IsTileSolid(playerRealX+(PLAYER_CHARACTER_BOUNDING_BOX_HALF_WIDTH-2),playerRealY+PLAYER_CHARACTER_BOUNDING_BOX_HEIGHT)||IsTileSolid(playerRealX-(PLAYER_CHARACTER_BOUNDING_BOX_HALF_WIDTH-2),playerRealY+PLAYER_CHARACTER_BOUNDING_BOX_HEIGHT)){
;	genCast
;	genCopy
	lda	*(_UpdatePlayer_sloc0_1_0 + 1)
	sta	*(_UpdatePlayer_sloc5_1_0 + 1)
	lda	*_UpdatePlayer_sloc0_1_0
	sta	*_UpdatePlayer_sloc5_1_0
;	Raw cost for generated ic 291 : (8, 12.000000) count=0.749996
;	genPlus
;	genPlusIncr
	ldx	*(_UpdatePlayer_sloc5_1_0 + 1)
	lda	*_UpdatePlayer_sloc5_1_0
	clc
	adc	#0x03
	bcc	00599$
	inx
00599$:
;	Raw cost for generated ic 292 : (10, 14.600000) count=0.749996
;	genCast
;	genCopy
	sta	*_UpdatePlayer_sloc4_1_0
	stx	*(_UpdatePlayer_sloc4_1_0 + 1)
;	Raw cost for generated ic 293 : (4, 6.000000) count=0.749996
;	genCast
;	genCopy
	lda	*(_UpdatePlayer_sloc1_1_0 + 1)
	sta	*(_UpdatePlayer_sloc3_1_0 + 1)
	lda	*_UpdatePlayer_sloc1_1_0
	sta	*_UpdatePlayer_sloc3_1_0
;	Raw cost for generated ic 294 : (8, 12.000000) count=0.749996
;	genPlus
;	genPlusIncr
	ldx	*(_UpdatePlayer_sloc3_1_0 + 1)
	lda	*_UpdatePlayer_sloc3_1_0
	clc
	adc	#0x18
	bcc	00600$
	inx
00600$:
;	Raw cost for generated ic 295 : (10, 14.600000) count=0.749996
;	genCast
;	genCopy
	sta	_IsTileSolid_PARM_2
	stx	(_IsTileSolid_PARM_2 + 1)
;	Raw cost for generated ic 296 : (6, 8.000000) count=0.749996
;	Raw cost for generated ic 297 : (0, 0.000000) count=0.749996
;	genCall
;	genSend
	ldx	*(_UpdatePlayer_sloc4_1_0 + 1)
	lda	*_UpdatePlayer_sloc4_1_0
	jsr	_IsTileSolid
;	assignResultValue
;	Raw cost for generated ic 299 : (7, 12.000000) count=0.749996
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00156$
;	Raw cost for generated ic 300 : (7, 7.600000) count=0.749996
;	genMinus
;	genMinusDec
	ldx	*(_UpdatePlayer_sloc5_1_0 + 1)
	lda	*_UpdatePlayer_sloc5_1_0
	sec
	sbc	#0x03
	bcs	00603$
	dex
00603$:
;	Raw cost for generated ic 304 : (10, 14.600000) count=0.562497
;	genCast
;	genCopy
	sta	*_UpdatePlayer_sloc5_1_0
	stx	*(_UpdatePlayer_sloc5_1_0 + 1)
;	Raw cost for generated ic 305 : (4, 6.000000) count=0.562497
;	genPlus
;	genPlusIncr
	ldx	*(_UpdatePlayer_sloc3_1_0 + 1)
	lda	*_UpdatePlayer_sloc3_1_0
	clc
	adc	#0x18
	bcc	00604$
	inx
00604$:
;	Raw cost for generated ic 307 : (10, 14.600000) count=0.562497
;	genCast
;	genCopy
	sta	_IsTileSolid_PARM_2
	stx	(_IsTileSolid_PARM_2 + 1)
;	Raw cost for generated ic 308 : (6, 8.000000) count=0.562497
;	Raw cost for generated ic 309 : (0, 0.000000) count=0.562497
;	genCall
;	genSend
	ldx	*(_UpdatePlayer_sloc5_1_0 + 1)
	lda	*_UpdatePlayer_sloc5_1_0
	jsr	_IsTileSolid
;	assignResultValue
;	Raw cost for generated ic 311 : (7, 12.000000) count=0.562497
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00606$
	jmp	00167$
00606$:
;	Raw cost for generated ic 312 : (7, 7.600000) count=0.562497
;	genLabel
00156$:
;	Raw cost for generated ic 314 : (0, 0.000000) count=0.609372
;	src/player.c: 266: playerYVelocity=0;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_playerYVelocity
	stx	(_playerYVelocity + 1)
;	Raw cost for generated ic 316 : (8, 11.000000) count=0.609372
;	src/player.c: 267: grounded=TRUE;
;	genAssign
;	genAssignLit
	inx
	stx	_UpdatePlayer_grounded_10003_175
;	Raw cost for generated ic 317 : (4, 6.000000) count=0.609372
;	genGoto
	jmp	00167$
;	Raw cost for generated ic 319 : (3, 3.000000) count=0.609372
;	src/player.c: 277: while(IsTileSolid(playerRealX+(PLAYER_CHARACTER_BOUNDING_BOX_HALF_WIDTH-2),playerRealY)||IsTileSolid(playerRealX-(PLAYER_CHARACTER_BOUNDING_BOX_HALF_WIDTH-2),playerRealY)){
;	genLabel
00160$:
;	Raw cost for generated ic 326 : (0, 0.000000) count=1.333251
;	genCast
;	genCopy
	lda	*(_UpdatePlayer_sloc0_1_0 + 1)
	sta	*(_UpdatePlayer_sloc5_1_0 + 1)
	lda	*_UpdatePlayer_sloc0_1_0
	sta	*_UpdatePlayer_sloc5_1_0
;	Raw cost for generated ic 327 : (8, 12.000000) count=1.333251
;	genPlus
;	genPlusIncr
	ldx	*(_UpdatePlayer_sloc5_1_0 + 1)
	lda	*_UpdatePlayer_sloc5_1_0
	clc
	adc	#0x03
	bcc	00607$
	inx
00607$:
;	Raw cost for generated ic 328 : (10, 14.600000) count=1.333251
;	genCast
;	genCopy
;	Raw cost for generated ic 329 : (0, 0.000000) count=1.333251
;	genAssign
;	genAssignLit
;	genCopy
	ldy	*(_UpdatePlayer_sloc1_1_0 + 1)
	sty	(_IsTileSolid_PARM_2 + 1)
	ldy	*_UpdatePlayer_sloc1_1_0
	sty	_IsTileSolid_PARM_2
;	Raw cost for generated ic 331 : (10, 14.000000) count=1.333251
;	Raw cost for generated ic 330 : (0, 0.000000) count=1.333251
;	genCall
;	genSend
	jsr	_IsTileSolid
;	assignResultValue
;	Raw cost for generated ic 332 : (3, 6.000000) count=1.333251
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00161$
;	Raw cost for generated ic 333 : (7, 7.600000) count=1.333251
;	genMinus
;	genMinusDec
	ldx	*(_UpdatePlayer_sloc5_1_0 + 1)
	lda	*_UpdatePlayer_sloc5_1_0
	sec
	sbc	#0x03
	bcs	00610$
	dex
00610$:
;	Raw cost for generated ic 337 : (10, 14.600000) count=0.999925
;	genCast
;	genCopy
;	Raw cost for generated ic 338 : (0, 0.000000) count=0.999925
;	genAssign
;	genAssignLit
;	genCopy
	ldy	*(_UpdatePlayer_sloc1_1_0 + 1)
	sty	(_IsTileSolid_PARM_2 + 1)
	ldy	*_UpdatePlayer_sloc1_1_0
	sty	_IsTileSolid_PARM_2
;	Raw cost for generated ic 340 : (10, 14.000000) count=0.999925
;	Raw cost for generated ic 339 : (0, 0.000000) count=0.999925
;	genCall
;	genSend
	jsr	_IsTileSolid
;	assignResultValue
;	Raw cost for generated ic 341 : (3, 6.000000) count=0.999925
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00167$
;	Raw cost for generated ic 342 : (7, 7.600000) count=0.999925
;	genLabel
00161$:
;	Raw cost for generated ic 344 : (0, 0.000000) count=1.083253
;	src/player.c: 278: playerYVelocity=0;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_playerYVelocity
	stx	(_playerYVelocity + 1)
;	Raw cost for generated ic 346 : (8, 11.000000) count=1.083253
;	src/player.c: 279: playerY+=16;
;	genCast
;	genCopy
	ldx	(_playerY + 1)
	lda	_playerY
;	Raw cost for generated ic 347 : (6, 8.000000) count=1.083253
;	genPlus
;	genPlusIncr
	clc
	adc	#0x10
	bcc	00613$
	inx
00613$:
;	Raw cost for generated ic 348 : (6, 8.600000) count=1.083253
;	genCast
;	genCopy
;	Raw cost for generated ic 349 : (6, 8.000000) count=1.083253
;	src/player.c: 280: playerRealY = playerY>>4;
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	sta	_playerY
	stx	(_playerY + 1)
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
	sta	*_UpdatePlayer_sloc1_1_0
	stx	*(_UpdatePlayer_sloc1_1_0 + 1)
;	Raw cost for generated ic 352 : (26, 48.000000) count=1.083253
;	genGoto
	jmp	00160$
;	Raw cost for generated ic 354 : (3, 3.000000) count=1.083253
;	genLabel
00167$:
;	Raw cost for generated ic 357 : (0, 0.000000) count=0.999977
;	src/player.c: 286: uint8_t pressedA = (joypadCurrent & J_A && !(joypadPrevious & J_A));
;	genCast
;	genCopy
	ldx	_joypadCurrent
;	Raw cost for generated ic 358 : (3, 4.000000) count=0.999977
;	genAnd
	txa
	and	#0x80
;	genIfxJump : z
	beq	00195$
;	Raw cost for generated ic 359 : (8, 9.600000) count=0.999977
;	skipping generated iCode
;	Raw cost for generated ic 360 : (0, 0.000000) count=0.999977
;	genCast
;	genCopy
	lda	_joypadPrevious
;	Raw cost for generated ic 361 : (3, 4.000000) count=0.749983
;	genAnd
	and	#0x80
;	genIfxJump : z
	beq	00196$
;	Raw cost for generated ic 362 : (7, 7.600000) count=0.749983
;	skipping generated iCode
;	Raw cost for generated ic 364 : (0, 0.000000) count=0.749983
;	genLabel
00195$:
;	Raw cost for generated ic 365 : (0, 0.000000) count=0.812482
;	genAssign
;	genAssignLit
;	genCopy
	ldy	#0x00
;	Raw cost for generated ic 366 : (2, 2.000000) count=0.812482
;	genGoto
	jmp	00197$
;	Raw cost for generated ic 367 : (3, 3.000000) count=0.812482
;	genLabel
00196$:
;	Raw cost for generated ic 368 : (0, 0.000000) count=0.187490
;	genAssign
;	genAssignLit
;	genCopy
	ldy	#0x01
;	Raw cost for generated ic 369 : (2, 2.000000) count=0.187490
;	genLabel
00197$:
;	Raw cost for generated ic 370 : (0, 0.000000) count=0.999971
;	genCast
;	genCopy
;	Raw cost for generated ic 371 : (0, 0.000000) count=0.999971
;	src/player.c: 287: uint8_t pressedUp = (joypadCurrent & J_UP && !(joypadPrevious & J_UP));
;	genAnd
	txa
	and	#0x08
;	genIfxJump : z
	beq	00198$
;	Raw cost for generated ic 374 : (8, 9.600000) count=0.999971
;	skipping generated iCode
;	Raw cost for generated ic 375 : (0, 0.000000) count=0.999971
;	genCast
;	genCopy
	lda	_joypadPrevious
;	Raw cost for generated ic 376 : (3, 4.000000) count=0.749979
;	genAnd
	and	#0x08
;	genIfxJump : z
	beq	00199$
;	Raw cost for generated ic 377 : (7, 7.600000) count=0.749979
;	skipping generated iCode
;	Raw cost for generated ic 379 : (0, 0.000000) count=0.749979
;	genLabel
00198$:
;	Raw cost for generated ic 380 : (0, 0.000000) count=0.812477
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 381 : (2, 2.000000) count=0.812477
;	genGoto
	jmp	00200$
;	Raw cost for generated ic 382 : (3, 3.000000) count=0.812477
;	genLabel
00199$:
;	Raw cost for generated ic 383 : (0, 0.000000) count=0.187490
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x01
;	Raw cost for generated ic 384 : (2, 2.000000) count=0.187490
;	genLabel
00200$:
;	Raw cost for generated ic 385 : (0, 0.000000) count=0.999967
;	genCast
;	genCopy
;	Raw cost for generated ic 386 : (0, 0.000000) count=0.999967
;	src/player.c: 288: uint8_t pressedAOrUp = pressedA||pressedUp;
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00202$
;	Raw cost for generated ic 388 : (7, 7.600000) count=0.999967
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00202$
;	Raw cost for generated ic 389 : (7, 7.600000) count=0.749975
;	genAssign
;	genAssignLit
;	genCopy
	ldy	#0x00
;	Raw cost for generated ic 391 : (2, 2.000000) count=0.562469
;	genGoto
	jmp	00203$
;	Raw cost for generated ic 392 : (3, 3.000000) count=0.562469
;	genLabel
00202$:
;	Raw cost for generated ic 393 : (0, 0.000000) count=0.437476
;	genAssign
;	genAssignLit
;	genCopy
	ldy	#0x01
;	Raw cost for generated ic 394 : (2, 2.000000) count=0.437476
;	genLabel
00203$:
;	Raw cost for generated ic 395 : (0, 0.000000) count=0.999946
;	genCast
;	genCopy
;	Raw cost for generated ic 396 : (0, 0.000000) count=0.999946
;	src/player.c: 291: if(grounded && pressedAOrUp){
;	genIfx
	lda	_UpdatePlayer_grounded_10003_175
;	genIfxJump : z
	beq	00169$
;	Raw cost for generated ic 398 : (8, 9.600000) count=0.999946
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00169$
;	Raw cost for generated ic 401 : (7, 7.600000) count=0.749959
;	src/player.c: 292: playerYVelocity=-PLAYER_CHARACTER_JUMP_VELOCITY;
;	genAssign
;	genAssignLit
	ldy	#0xda
	sty	_playerYVelocity
	ldy	#0xfd
	sty	(_playerYVelocity + 1)
;	Raw cost for generated ic 405 : (10, 13.000000) count=0.562469
;	src/player.c: 293: playerJumpIncrease=PLAYER_CHARACTER_INCREASE_JUMP_TIMER_MAX;
;	genAssign
;	genAssignLit
	ldy	#0x14
	sty	_playerJumpIncrease
;	Raw cost for generated ic 407 : (5, 6.000000) count=0.562469
;	genLabel
00169$:
;	Raw cost for generated ic 408 : (0, 0.000000) count=0.999946
;	src/player.c: 297: if(!grounded){
;	genIfx
	lda	_UpdatePlayer_grounded_10003_175
;	genIfxJump : z
	bne	00180$
;	Raw cost for generated ic 409 : (8, 9.600000) count=0.999946
;	src/player.c: 300: if(playerJumpIncrease>0)playerJumpIncrease--;
;	genIfx
	lda	_playerJumpIncrease
;	genIfxJump : z
	beq	00172$
;	Raw cost for generated ic 412 : (8, 9.600000) count=0.749959
;	genMinus
;	genMinusDec
	dec	_playerJumpIncrease
;	Raw cost for generated ic 416 : (3, 6.000000) count=0.562469
;	genLabel
00172$:
;	Raw cost for generated ic 419 : (0, 0.000000) count=0.749959
;	src/player.c: 303: if(!((joypadCurrent & J_A||joypadCurrent & J_UP))||playerJumpIncrease==0){
;	genAnd
	txa
	and	#0x80
;	genIfxJump : z
	bne	00176$
;	Raw cost for generated ic 421 : (8, 9.600000) count=0.749959
;	skipping generated iCode
;	Raw cost for generated ic 422 : (0, 0.000000) count=0.749959
;	genAnd
	txa
	and	#0x08
;	genIfxJump : z
	beq	00173$
;	Raw cost for generated ic 426 : (8, 9.600000) count=0.562469
;	skipping generated iCode
;	Raw cost for generated ic 427 : (0, 0.000000) count=0.562469
;	genLabel
00176$:
;	Raw cost for generated ic 429 : (0, 0.000000) count=0.609342
;	genIfx
	lda	_playerJumpIncrease
;	genIfxJump : z
	bne	00181$
;	Raw cost for generated ic 430 : (8, 9.600000) count=0.609342
;	genLabel
00173$:
;	Raw cost for generated ic 432 : (0, 0.000000) count=0.597624
;	src/player.c: 306: playerYVelocity+=GRAVTY;
;	genCast
;	genCopy
	ldx	(_playerYVelocity + 1)
	lda	_playerYVelocity
;	Raw cost for generated ic 433 : (6, 8.000000) count=0.597624
;	genPlus
;	genPlusIncr
	clc
	adc	#0x2d
	bcc	00638$
	inx
00638$:
;	Raw cost for generated ic 434 : (6, 8.600000) count=0.597624
;	genCast
;	genCopy
	sta	_playerYVelocity
	stx	(_playerYVelocity + 1)
;	Raw cost for generated ic 435 : (6, 9.000000) count=0.597624
;	src/player.c: 309: playerJumpIncrease=0;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_playerJumpIncrease
;	Raw cost for generated ic 439 : (5, 6.000000) count=0.597624
;	genGoto
	jmp	00181$
;	Raw cost for generated ic 441 : (3, 3.000000) count=0.597624
;	genLabel
00180$:
;	Raw cost for generated ic 442 : (0, 0.000000) count=0.249986
;	src/player.c: 313: }else if(playerYVelocity>=0){
;	genCast
;	genCopy
	lda	(_playerYVelocity + 1)
	sta	*(_UpdatePlayer_sloc5_1_0 + 1)
	lda	_playerYVelocity
	sta	*_UpdatePlayer_sloc5_1_0
;	Raw cost for generated ic 443 : (10, 14.000000) count=0.249986
;	genCmp
	bit	*(_UpdatePlayer_sloc5_1_0 + 1)
	bmi	00181$
;	Raw cost for generated ic 444 : (7, 8.600000) count=0.249986
;	skipping generated iCode
;	Raw cost for generated ic 445 : (0, 0.000000) count=0.249986
;	src/player.c: 316: playerYVelocity=0;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_playerYVelocity
	stx	(_playerYVelocity + 1)
;	Raw cost for generated ic 449 : (8, 11.000000) count=0.187490
;	genLabel
00181$:
;	Raw cost for generated ic 451 : (0, 0.000000) count=0.999946
;	src/player.c: 320: playerX+=playerXVelocity>>4;
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	ldx	(_playerXVelocity + 1)
	lda	_playerXVelocity
	stx	*(REGTEMP+0)
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 452 : (34, 56.000000) count=0.999946
;	genCast
;	genCopy
	sta	*_UpdatePlayer_sloc5_1_0
	stx	*(_UpdatePlayer_sloc5_1_0 + 1)
;	Raw cost for generated ic 453 : (4, 6.000000) count=0.999946
;	genPlus
;	genPlusIncr
	clc
	adc	_playerX
	sta	_playerX
	txa
	adc	(_playerX + 1)
	sta	(_playerX + 1)
;	Raw cost for generated ic 454 : (14, 20.000000) count=0.999946
;	src/player.c: 321: playerY+=playerYVelocity>>4;
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	ldx	(_playerYVelocity + 1)
	lda	_playerYVelocity
	stx	*(REGTEMP+0)
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 457 : (30, 50.000000) count=0.999946
;	genCast
;	genCopy
;	Raw cost for generated ic 458 : (0, 0.000000) count=0.999946
;	genPlus
;	genPlusIncr
	clc
	adc	_playerY
	sta	_playerY
	txa
	adc	(_playerY + 1)
	sta	(_playerY + 1)
;	Raw cost for generated ic 459 : (14, 20.000000) count=0.999946
;	src/player.c: 324: playerRealX = playerX>>4;
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	ldx	(_playerX + 1)
	lda	_playerX
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
	sta	_UpdatePlayer_playerRealX_10003_175
	stx	(_UpdatePlayer_playerRealX_10003_175 + 1)
;	Raw cost for generated ic 462 : (28, 50.000000) count=0.999946
;	src/player.c: 325: playerRealY = playerY>>4;
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	ldx	(_playerY + 1)
	lda	_playerY
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
	sta	_UpdatePlayer_playerRealY_10003_175
	stx	(_UpdatePlayer_playerRealY_10003_175 + 1)
;	Raw cost for generated ic 464 : (28, 50.000000) count=0.999946
;	src/player.c: 328: if(playerRealX>=(DEVICE_SCREEN_PX_WIDTH>>1)){
;	genCmp
	lda	_UpdatePlayer_playerRealX_10003_175
	sec
	sbc	#0x80
	lda	(_UpdatePlayer_playerRealX_10003_175 + 1)
	sbc	#0x00
	bcc	00185$
;	Raw cost for generated ic 466 : (16, 19.600000) count=0.999946
;	skipping generated iCode
;	Raw cost for generated ic 467 : (0, 0.000000) count=0.999946
;	src/player.c: 329: uint16_t max = currentLevelWidth-DEVICE_SCREEN_PX_WIDTH;
;	genCast
;	genCopy
	ldx	(_currentLevelWidth + 1)
	lda	_currentLevelWidth
;	Raw cost for generated ic 470 : (6, 8.000000) count=0.749959
;	genMinus
;	genMinusDec
	sec
	sbc	#0x00
	pha
	txa
	sbc	#0x01
	tax
	pla
;	Raw cost for generated ic 471 : (9, 17.000000) count=0.749959
;	genCast
;	genCopy
	sta	_UpdatePlayer_max_30004_205
	stx	(_UpdatePlayer_max_30004_205 + 1)
;	Raw cost for generated ic 472 : (6, 8.000000) count=0.749959
;	src/player.c: 330: camera_x=playerRealX-(DEVICE_SCREEN_PX_WIDTH>>1);
;	genCast
;	genCopy
	ldx	(_UpdatePlayer_playerRealX_10003_175 + 1)
	lda	_UpdatePlayer_playerRealX_10003_175
;	Raw cost for generated ic 474 : (6, 8.000000) count=0.749959
;	genMinus
;	genMinusDec
	sec
	sbc	#0x80
	bcs	00641$
	dex
00641$:
;	Raw cost for generated ic 475 : (6, 8.600000) count=0.749959
;	genCast
;	genCopy
;	Raw cost for generated ic 476 : (0, 0.000000) count=0.749959
;	genAssign
;	genAssignLit
;	genCopy
	sta	_camera_x
	stx	(_camera_x + 1)
;	Raw cost for generated ic 478 : (6, 9.000000) count=0.749959
;	src/player.c: 333: if(camera_x>max)camera_x=max;
;	genCmp
	sta	*(REGTEMP+0)
	lda	_UpdatePlayer_max_30004_205
	sec
	sbc	*(REGTEMP+0)
	lda	(_UpdatePlayer_max_30004_205 + 1)
	stx	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	bcs	00186$
;	Raw cost for generated ic 479 : (20, 27.600000) count=0.749959
;	skipping generated iCode
;	Raw cost for generated ic 480 : (0, 0.000000) count=0.749959
;	genAssign
;	genAssignLit
;	genCopy
	lda	(_UpdatePlayer_max_30004_205 + 1)
	sta	(_camera_x + 1)
	lda	_UpdatePlayer_max_30004_205
	sta	_camera_x
;	Raw cost for generated ic 484 : (12, 17.000000) count=0.562469
;	genGoto
	jmp	00186$
;	Raw cost for generated ic 486 : (3, 3.000000) count=0.562469
;	genLabel
00185$:
;	Raw cost for generated ic 487 : (0, 0.000000) count=0.249986
;	src/player.c: 335: else camera_x=0;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_camera_x
	stx	(_camera_x + 1)
;	Raw cost for generated ic 489 : (8, 11.000000) count=0.249986
;	genLabel
00186$:
;	Raw cost for generated ic 490 : (0, 0.000000) count=0.999946
;	src/player.c: 345: uint8_t frame = grounded ? (turning ? 5 :((playerXVelocity>>4)==0 ? 0 : threeFrameCounterValue)) : (playerYVelocity<0 ? 3 : 4);
;	genIfx
	lda	_UpdatePlayer_grounded_10003_175
;	genIfxJump : z
	beq	00204$
;	Raw cost for generated ic 491 : (8, 9.600000) count=0.999946
;	genIfx
	lda	_UpdatePlayer_turning_10002_149
;	genIfxJump : z
	beq	00206$
;	Raw cost for generated ic 492 : (8, 9.600000) count=0.749959
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x05
;	Raw cost for generated ic 493 : (2, 2.000000) count=0.562469
;	genGoto
	jmp	00205$
;	Raw cost for generated ic 494 : (3, 3.000000) count=0.562469
;	genLabel
00206$:
;	Raw cost for generated ic 495 : (0, 0.000000) count=0.187490
;	genIfx
	lda	*(_UpdatePlayer_sloc5_1_0 + 1)
	ora	*_UpdatePlayer_sloc5_1_0
;	genIfxJump : z
	bne	00208$
;	Raw cost for generated ic 498 : (9, 11.600000) count=0.187490
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 499 : (2, 2.000000) count=0.140617
;	genGoto
	jmp	00205$
;	Raw cost for generated ic 500 : (3, 3.000000) count=0.140617
;	genLabel
00208$:
;	Raw cost for generated ic 501 : (0, 0.000000) count=0.046867
;	genCast
;	genCopy
	lda	_UpdatePlayer_threeFrameCounterValue_10001_146
;	Raw cost for generated ic 502 : (3, 4.000000) count=0.046867
;	genLabel
;	Raw cost for generated ic 504 : (0, 0.000000) count=0.187484
;	genCast
;	genCopy
;	Raw cost for generated ic 505 : (0, 0.000000) count=0.187484
;	genLabel
;	Raw cost for generated ic 506 : (0, 0.000000) count=0.749953
;	genCast
;	genCopy
;	Raw cost for generated ic 507 : (0, 0.000000) count=0.749953
;	genGoto
	jmp	00205$
;	Raw cost for generated ic 508 : (3, 3.000000) count=0.749953
;	genLabel
00204$:
;	Raw cost for generated ic 509 : (0, 0.000000) count=0.249986
;	genCast
;	genCopy
	lda	(_playerYVelocity + 1)
	sta	*(_UpdatePlayer_sloc5_1_0 + 1)
	lda	_playerYVelocity
	sta	*_UpdatePlayer_sloc5_1_0
;	Raw cost for generated ic 510 : (10, 14.000000) count=0.249986
;	genCmp
	bit	*(_UpdatePlayer_sloc5_1_0 + 1)
	bpl	00210$
;	Raw cost for generated ic 511 : (7, 8.600000) count=0.249986
;	skipping generated iCode
;	Raw cost for generated ic 512 : (0, 0.000000) count=0.249986
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x03
;	Raw cost for generated ic 513 : (2, 2.000000) count=0.187490
;	genGoto
	jmp	00211$
;	Raw cost for generated ic 514 : (3, 3.000000) count=0.187490
;	genLabel
00210$:
;	Raw cost for generated ic 515 : (0, 0.000000) count=0.062489
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x04
;	Raw cost for generated ic 516 : (2, 2.000000) count=0.062489
;	genLabel
00211$:
;	Raw cost for generated ic 517 : (0, 0.000000) count=0.249979
;	genCast
;	genCopy
;	Raw cost for generated ic 518 : (0, 0.000000) count=0.249979
;	genLabel
00205$:
;	Raw cost for generated ic 519 : (0, 0.000000) count=0.999932
;	genCast
;	genCopy
;	Raw cost for generated ic 520 : (0, 0.000000) count=0.999932
;	src/player.c: 346: uint8_t directionOffset = facingRight ? 0 : 6;
;	genIfx
	ldx	_facingRight
;	genIfxJump : z
	beq	00212$
;	Raw cost for generated ic 522 : (8, 9.600000) count=0.999932
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 523 : (2, 2.000000) count=0.749949
;	genGoto
	jmp	00213$
;	Raw cost for generated ic 524 : (3, 3.000000) count=0.749949
;	genLabel
00212$:
;	Raw cost for generated ic 525 : (0, 0.000000) count=0.249983
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x06
;	Raw cost for generated ic 526 : (2, 2.000000) count=0.249983
;	genLabel
00213$:
;	Raw cost for generated ic 527 : (0, 0.000000) count=0.999932
;	genCast
;	genCopy
;	Raw cost for generated ic 528 : (0, 0.000000) count=0.999932
;	src/player.c: 348: uint8_t spritesUsed = DrawPlayer(playerRealX,playerRealY,frame+directionOffset);
;	genPlus
;	genPlusIncr
	clc
	stx	*(REGTEMP+0)
	adc	*(REGTEMP+0)
	sta	_DrawPlayer_PARM_3
;	Raw cost for generated ic 530 : (8, 12.000000) count=0.999932
;	genAssign
;	genAssignLit
;	genCopy
	lda	(_UpdatePlayer_playerRealY_10003_175 + 1)
	sta	(_DrawPlayer_PARM_2 + 1)
	lda	_UpdatePlayer_playerRealY_10003_175
	sta	_DrawPlayer_PARM_2
;	Raw cost for generated ic 532 : (12, 16.000000) count=0.999932
;	Raw cost for generated ic 531 : (0, 0.000000) count=0.999932
;	genCall
;	genSend
	ldx	(_UpdatePlayer_playerRealX_10003_175 + 1)
	lda	_UpdatePlayer_playerRealX_10003_175
	jsr	_DrawPlayer
;	assignResultValue
	sta	_UpdatePlayer_spritesUsed_10005_207
;	Raw cost for generated ic 534 : (12, 18.000000) count=0.999932
;	src/player.c: 351: if(playerRealX>currentLevelWidth-32){
;	genCast
;	genCopy
	ldx	(_currentLevelWidth + 1)
	lda	_currentLevelWidth
;	Raw cost for generated ic 536 : (6, 8.000000) count=0.999932
;	genMinus
;	genMinusDec
	sec
	sbc	#0x20
	bcs	00652$
	dex
00652$:
;	Raw cost for generated ic 537 : (6, 8.600000) count=0.999932
;	genCast
;	genCopy
	ldy	(_UpdatePlayer_playerRealX_10003_175 + 1)
	sty	*(_UpdatePlayer_sloc5_1_0 + 1)
	ldy	_UpdatePlayer_playerRealX_10003_175
	sty	*_UpdatePlayer_sloc5_1_0
;	Raw cost for generated ic 538 : (10, 14.000000) count=0.999932
;	genCmp
	sec
	sbc	*_UpdatePlayer_sloc5_1_0
	txa
	sbc	*(_UpdatePlayer_sloc5_1_0 + 1)
	bcs	00188$
;	Raw cost for generated ic 539 : (11, 15.600000) count=0.999932
;	skipping generated iCode
;	Raw cost for generated ic 540 : (0, 0.000000) count=0.999932
;	src/player.c: 352: nextLevel++;
;	genPlus
;	genPlusIncr
	inc	_nextLevel
;	Raw cost for generated ic 544 : (3, 6.000000) count=0.749949
;	genLabel
00188$:
;	Raw cost for generated ic 547 : (0, 0.000000) count=0.999932
;	src/player.c: 355: return spritesUsed;
;	genRet
	lda	_UpdatePlayer_spritesUsed_10005_207
;	Raw cost for generated ic 548 : (3, 4.000000) count=0.999932
;	genLabel
;	Raw cost for generated ic 549 : (0, 0.000000) count=0.999932
;	src/player.c: 356: }
;	genEndFunction
	rts
;	Raw cost for generated ic 550 : (1, 6.000000) count=0.999932
	.area _CODE_255
_baseProp:
	.db #0x00	; 0
_PlayerPalettesGGSMS:
	.db #0x26	; 38
	.db #0x20	; 32
	.db #0x3d	; 61
	.db #0x1d	; 29
	.db #0x17	; 23
	.db #0x19	; 25
	.db #0x02	; 2
	.db #0x29	; 41
	.db #0x2b	; 43
	.db #0x04	; 4
	.db #0x16	; 22
	.db #0x2a	; 42
	.db #0x12	; 18
	.db #0x28	; 40
	.db #0x2c	; 44
	.db #0x34	; 52	'4'
	.area _XINIT
__xinit__facingRight:
	.db #0x01	; 1
__xinit__playerJumpIncrease:
	.db #0x00	; 0
__xinit__threeFrameCounter:
	.db #0x00	; 0
	.area _CABS    (ABS)
