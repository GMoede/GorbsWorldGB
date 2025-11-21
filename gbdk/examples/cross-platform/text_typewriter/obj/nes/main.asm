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
	.globl _DrawText
	.globl _GetCharacterVRamTile
	.globl _fill_bkg_rect
	.globl _set_bkg_native_data
	.globl _get_bkg_xy_addr
	.globl _set_vram_byte
	.globl _vsync
	.globl _DrawText_PARM_2
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
_DrawText_sloc0_1_0:
	.ds 1
_DrawText_sloc1_1_0:
	.ds 2
_DrawText_sloc2_1_0:
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
_DrawText_PARM_2:
	.ds 1
_DrawText_text_10000_134:
	.ds 2
_DrawText_vramAddress_10000_135:
	.ds 2
_DrawText_columnIndex_10000_135:
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
;Allocation info for local variables in function 'GetCharacterVRamTile'
;------------------------------------------------------------
;character     Allocated to registers y 
;vramTile      Allocated to registers x 
;------------------------------------------------------------
;	src/main.c: 7: uint8_t GetCharacterVRamTile(char character) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function GetCharacterVRamTile
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_GetCharacterVRamTile:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	tay
;	Raw cost for generated ic 2 : (1, 2.000000) count=1.000000
;	src/main.c: 9: uint8_t vramTile=0;
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 3 : (2, 2.000000) count=1.000000
;	src/main.c: 15: if      (character >= 'a' && character <= 'z') vramTile = (character - 'a') + 1;
;	genCmp
	tya
	sec
	sbc	#0x61
	bvs	00216$
	bpl	00215$
	bmi	00120$
00216$:
	bpl	00120$
00215$:
;	Raw cost for generated ic 4 : (15, 19.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCmp
	lda	#0x7a
	sec
	sty	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	bvs	00219$
	bpl	00218$
	bmi	00120$
00219$:
	bpl	00120$
00218$:
;	Raw cost for generated ic 8 : (18, 23.400002) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 9 : (0, 0.000000) count=0.750000
;	genPlus
;	genPlusIncr
	tya
	clc
	adc	#0xa0
	tax
;	Raw cost for generated ic 12 : (5, 8.000000) count=0.562500
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 14 : (3, 3.000000) count=0.562500
;	genLabel
00120$:
;	Raw cost for generated ic 15 : (0, 0.000000) count=0.437500
;	src/main.c: 16: else if (character >= 'A' && character <= 'Z') vramTile = (character - 'A') + 1;
;	genCmp
	tya
	sec
	sbc	#0x41
	bvs	00222$
	bpl	00221$
	bmi	00116$
00222$:
	bpl	00116$
00221$:
;	Raw cost for generated ic 16 : (15, 19.400002) count=0.437500
;	skipping generated iCode
;	Raw cost for generated ic 17 : (0, 0.000000) count=0.437500
;	genCmp
	lda	#0x5a
	sec
	sty	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	bvs	00225$
	bpl	00224$
	bmi	00116$
00225$:
	bpl	00116$
00224$:
;	Raw cost for generated ic 20 : (18, 23.400002) count=0.328125
;	skipping generated iCode
;	Raw cost for generated ic 21 : (0, 0.000000) count=0.328125
;	genPlus
;	genPlusIncr
	tya
	clc
	adc	#0xc0
	tax
;	Raw cost for generated ic 24 : (5, 8.000000) count=0.246094
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 26 : (3, 3.000000) count=0.246094
;	genLabel
00116$:
;	Raw cost for generated ic 27 : (0, 0.000000) count=0.191406
;	src/main.c: 17: else if (character >= '0' && character <= '9') vramTile = (character - '0') + 27;
;	genCmp
	tya
	sec
	sbc	#0x30
	bvs	00228$
	bpl	00227$
	bmi	00112$
00228$:
	bpl	00112$
00227$:
;	Raw cost for generated ic 28 : (15, 19.400002) count=0.191406
;	skipping generated iCode
;	Raw cost for generated ic 29 : (0, 0.000000) count=0.191406
;	genCmp
	lda	#0x39
	sec
	sty	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	bvs	00231$
	bpl	00230$
	bmi	00112$
00231$:
	bpl	00112$
00230$:
;	Raw cost for generated ic 32 : (18, 23.400002) count=0.143555
;	skipping generated iCode
;	Raw cost for generated ic 33 : (0, 0.000000) count=0.143555
;	genPlus
;	genPlusIncr
	tya
	clc
	adc	#0xeb
	tax
;	Raw cost for generated ic 36 : (5, 8.000000) count=0.107666
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 38 : (3, 3.000000) count=0.107666
;	genLabel
00112$:
;	Raw cost for generated ic 39 : (0, 0.000000) count=0.083740
;	src/main.c: 19: switch(character) {
;	genCmpEQorNE
	cpy	#0x21
	beq	00101$
;	Raw cost for generated ic 40 : (7, 7.600000) count=0.083740
;	skipping generated iCode
;	Raw cost for generated ic 41 : (0, 0.000000) count=0.083740
;	genCmpEQorNE
	cpy	#0x2c
	beq	00106$
;	Raw cost for generated ic 42 : (7, 7.600000) count=0.062805
;	skipping generated iCode
;	Raw cost for generated ic 43 : (0, 0.000000) count=0.062805
;	genCmpEQorNE
	cpy	#0x2e
	beq	00107$
;	Raw cost for generated ic 44 : (7, 7.600000) count=0.047104
;	skipping generated iCode
;	Raw cost for generated ic 45 : (0, 0.000000) count=0.047104
;	genCmpEQorNE
	cpy	#0x2f
	beq	00104$
;	Raw cost for generated ic 46 : (7, 7.600000) count=0.035328
;	skipping generated iCode
;	Raw cost for generated ic 47 : (0, 0.000000) count=0.035328
;	genCmpEQorNE
	cpy	#0x3a
	beq	00102$
;	Raw cost for generated ic 48 : (7, 7.600000) count=0.026496
;	skipping generated iCode
;	Raw cost for generated ic 49 : (0, 0.000000) count=0.026496
;	genCmpEQorNE
	cpy	#0x3c
	beq	00108$
;	Raw cost for generated ic 50 : (7, 7.600000) count=0.019872
;	skipping generated iCode
;	Raw cost for generated ic 51 : (0, 0.000000) count=0.019872
;	genCmpEQorNE
	cpy	#0x3d
	beq	00105$
;	Raw cost for generated ic 52 : (7, 7.600000) count=0.014904
;	skipping generated iCode
;	Raw cost for generated ic 53 : (0, 0.000000) count=0.014904
;	genCmpEQorNE
	cpy	#0x3e
	beq	00109$
;	Raw cost for generated ic 54 : (7, 7.600000) count=0.011178
;	skipping generated iCode
;	Raw cost for generated ic 55 : (0, 0.000000) count=0.011178
;	genCmpEQorNE
	cpy	#0x3f
	beq	00103$
;	Raw cost for generated ic 56 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 57 : (0, 0.000000) count=0.000000
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 58 : (3, 3.000000) count=0.000000
;	src/main.c: 20: case '!': vramTile = 37; break;
;	genLabel
00101$:
;	Raw cost for generated ic 59 : (0, 0.000000) count=0.020935
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x25
;	Raw cost for generated ic 60 : (2, 2.000000) count=0.020935
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 61 : (3, 3.000000) count=0.020935
;	src/main.c: 21: case ':': vramTile = 38; break;
;	genLabel
00102$:
;	Raw cost for generated ic 62 : (0, 0.000000) count=0.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x26
;	Raw cost for generated ic 63 : (2, 2.000000) count=0.000000
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 64 : (3, 3.000000) count=0.000000
;	src/main.c: 22: case '?': vramTile = 39; break;
;	genLabel
00103$:
;	Raw cost for generated ic 65 : (0, 0.000000) count=0.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x27
;	Raw cost for generated ic 66 : (2, 2.000000) count=0.000000
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 67 : (3, 3.000000) count=0.000000
;	src/main.c: 23: case '/': vramTile = 40; break;
;	genLabel
00104$:
;	Raw cost for generated ic 68 : (0, 0.000000) count=0.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x28
;	Raw cost for generated ic 69 : (2, 2.000000) count=0.000000
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 70 : (3, 3.000000) count=0.000000
;	src/main.c: 24: case '=': vramTile = 41; break;
;	genLabel
00105$:
;	Raw cost for generated ic 71 : (0, 0.000000) count=0.011178
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x29
;	Raw cost for generated ic 72 : (2, 2.000000) count=0.011178
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 73 : (3, 3.000000) count=0.011178
;	src/main.c: 25: case ',': vramTile = 42; break;
;	genLabel
00106$:
;	Raw cost for generated ic 74 : (0, 0.000000) count=0.015701
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x2a
;	Raw cost for generated ic 75 : (2, 2.000000) count=0.015701
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 76 : (3, 3.000000) count=0.015701
;	src/main.c: 26: case '.': vramTile = 43; break;
;	genLabel
00107$:
;	Raw cost for generated ic 77 : (0, 0.000000) count=0.011776
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x2b
;	Raw cost for generated ic 78 : (2, 2.000000) count=0.011776
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 79 : (3, 3.000000) count=0.011776
;	src/main.c: 27: case '<': vramTile = 44; break;
;	genLabel
00108$:
;	Raw cost for generated ic 80 : (0, 0.000000) count=0.014904
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x2c
;	Raw cost for generated ic 81 : (2, 2.000000) count=0.014904
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 82 : (3, 3.000000) count=0.014904
;	src/main.c: 28: case '>': vramTile = 45; break;
;	genLabel
00109$:
;	Raw cost for generated ic 83 : (0, 0.000000) count=0.000000
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x2d
;	Raw cost for generated ic 84 : (2, 2.000000) count=0.000000
;	src/main.c: 29: }
;	genLabel
00121$:
;	Raw cost for generated ic 89 : (0, 0.000000) count=0.990754
;	src/main.c: 32: return vramTile;
;	genRet
	txa
;	Raw cost for generated ic 90 : (1, 2.000000) count=0.990754
;	genLabel
;	Raw cost for generated ic 91 : (0, 0.000000) count=0.990754
;	src/main.c: 34: }
;	genEndFunction
	rts
;	Raw cost for generated ic 92 : (1, 6.000000) count=0.990754
;------------------------------------------------------------
;Allocation info for local variables in function 'DrawText'
;------------------------------------------------------------
;sloc0         Allocated with name '_DrawText_sloc0_1_0'
;sloc1         Allocated with name '_DrawText_sloc1_1_0'
;sloc2         Allocated with name '_DrawText_sloc2_1_0'
;typewriterDelay Allocated with name '_DrawText_PARM_2'
;text          Allocated with name '_DrawText_text_10000_134'
;column        Allocated to registers 
;row           Allocated to registers 
;vramAddress   Allocated with name '_DrawText_vramAddress_10000_135'
;index         Allocated to registers 
;columnIndex   Allocated with name '_DrawText_columnIndex_10000_135'
;character     Allocated to registers 
;vramTile      Allocated to registers 
;i             Allocated to registers 
;------------------------------------------------------------
;	src/main.c: 36: void DrawText( char* text,uint8_t typewriterDelay){
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function DrawText
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_DrawText:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_DrawText_text_10000_134
	stx	(_DrawText_text_10000_134 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	src/main.c: 42: uint8_t* vramAddress = get_bkg_xy_addr(column,row);
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x00
	tax
	jsr	_get_bkg_xy_addr
;	assignResultValue
	sta	_DrawText_vramAddress_10000_135
	stx	(_DrawText_vramAddress_10000_135 + 1)
;	Raw cost for generated ic 7 : (12, 18.000000) count=1.000000
;	src/main.c: 45: uint8_t columnIndex=0;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_DrawText_columnIndex_10000_135
;	Raw cost for generated ic 10 : (5, 6.000000) count=1.000000
;	src/main.c: 47: while(text[index]!='\0'){
;	genAssign
;	genAssignLit
	stx	*_DrawText_sloc0_1_0
;	Raw cost for generated ic 71 : (2, 3.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	*_DrawText_sloc1_1_0
	stx	*(_DrawText_sloc1_1_0 + 1)
;	Raw cost for generated ic 74 : (4, 6.000000) count=1.000000
;	genLabel
00106$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=3.999527
;	genPlus
;	genPlusIncr
	lda	_DrawText_text_10000_134
	clc
	adc	*_DrawText_sloc1_1_0
	sta	*_DrawText_sloc2_1_0
	lda	(_DrawText_text_10000_134 + 1)
	adc	*(_DrawText_sloc1_1_0 + 1)
	sta	*(_DrawText_sloc2_1_0 + 1)
;	Raw cost for generated ic 12 : (15, 22.000000) count=3.999527
;	genPointerGet
	ldy	#0x00
	lda	[*_DrawText_sloc2_1_0],y
;	Raw cost for generated ic 13 : (4, 7.000000) count=3.999527
;	genIfx
;	genIfxJump : z
	beq	00112$
;	Raw cost for generated ic 14 : (5, 5.600000) count=3.999527
;	src/main.c: 52: uint8_t vramTile = GetCharacterVRamTile(character);
;	Raw cost for generated ic 20 : (0, 0.000000) count=2.999646
;	genCall
;	genSend
	jsr	_GetCharacterVRamTile
;	assignResultValue
	sta	_set_vram_byte_PARM_2
;	Raw cost for generated ic 21 : (6, 10.000000) count=2.999646
;	src/main.c: 54: set_vram_byte(vramAddress++,vramTile);
;	genAssign
;	genAssignLit
;	genCopy
	ldx	(_DrawText_vramAddress_10000_135 + 1)
	lda	_DrawText_vramAddress_10000_135
;	Raw cost for generated ic 23 : (6, 8.000000) count=2.999646
;	genPlus
;	genPlusIncr
	inc	_DrawText_vramAddress_10000_135
	bne	00153$
	inc	(_DrawText_vramAddress_10000_135 + 1)
00153$:
;	Raw cost for generated ic 24 : (8, 14.600000) count=2.999646
;	Raw cost for generated ic 26 : (0, 0.000000) count=2.999646
;	genCall
;	genSend
	jsr	_set_vram_byte
;	Raw cost for generated ic 28 : (3, 6.000000) count=2.999646
;	src/main.c: 60: index++;
;	genPlus
;	genPlusIncr
	inc	*_DrawText_sloc1_1_0
	bne	00154$
	inc	*(_DrawText_sloc1_1_0 + 1)
00154$:
;	Raw cost for generated ic 30 : (6, 12.600000) count=2.999646
;	src/main.c: 61: columnIndex++;
;	genPlus
;	genPlusIncr
	inc	_DrawText_columnIndex_10000_135
;	Raw cost for generated ic 33 : (3, 6.000000) count=2.999646
;	src/main.c: 64: if(columnIndex>=DEVICE_SCREEN_WIDTH){
;	genCmp
	lda	_DrawText_columnIndex_10000_135
	cmp	#0x20
	bcc	00102$
;	Raw cost for generated ic 35 : (10, 11.600000) count=2.999646
;	skipping generated iCode
;	Raw cost for generated ic 36 : (0, 0.000000) count=2.999646
;	src/main.c: 67: vramAddress = get_bkg_xy_addr(column,++row);
;	genPlus
;	genPlusIncr
	inc	*_DrawText_sloc0_1_0
;	Raw cost for generated ic 39 : (2, 5.000000) count=2.249695
;	Raw cost for generated ic 41 : (0, 0.000000) count=2.249695
;	Raw cost for generated ic 42 : (0, 0.000000) count=2.249695
;	genCall
;	genSend
	lda	#0x00
	ldx	*_DrawText_sloc0_1_0
	jsr	_get_bkg_xy_addr
;	assignResultValue
	sta	_DrawText_vramAddress_10000_135
	stx	(_DrawText_vramAddress_10000_135 + 1)
;	Raw cost for generated ic 43 : (13, 19.000000) count=2.249695
;	src/main.c: 69: columnIndex=0;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_DrawText_columnIndex_10000_135
;	Raw cost for generated ic 45 : (5, 6.000000) count=2.249695
;	genLabel
00102$:
;	Raw cost for generated ic 46 : (0, 0.000000) count=2.999593
;	src/main.c: 72: if(typewriterDelay>0){
;	genIfx
	lda	_DrawText_PARM_2
;	genIfxJump : z
	beq	00106$
;	Raw cost for generated ic 47 : (8, 9.600000) count=2.999593
;	src/main.c: 76: for(uint8_t i=0;i<typewriterDelay;i++){
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 70 : (2, 2.000000) count=0.749875
;	genLabel
00110$:
;	Raw cost for generated ic 51 : (0, 0.000000) count=0.999776
;	genCmp
	cmp	_DrawText_PARM_2
	bcs	00106$
;	Raw cost for generated ic 52 : (8, 9.600000) count=0.999776
;	skipping generated iCode
;	Raw cost for generated ic 53 : (0, 0.000000) count=0.999776
;	src/main.c: 78: vsync();
;	genCall
	pha
	jsr	_vsync
	pla
;	Raw cost for generated ic 56 : (5, 13.000000) count=0.249901
;	src/main.c: 76: for(uint8_t i=0;i<typewriterDelay;i++){
;	genPlus
;	genPlusIncr
	clc
	adc	#0x01
;	Raw cost for generated ic 59 : (3, 4.000000) count=0.249901
;	genGoto
	jmp	00110$
;	Raw cost for generated ic 61 : (3, 3.000000) count=0.249901
;	genLabel
00112$:
;	Raw cost for generated ic 66 : (0, 0.000000) count=0.999864
;	src/main.c: 83: }
;	genEndFunction
	rts
;	Raw cost for generated ic 67 : (1, 6.000000) count=0.999864
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;__200000009   Allocated to registers 
;__200000010   Allocated to registers 
;__200000011   Allocated to registers 
;first_tile    Allocated to registers 
;nb_tiles      Allocated to registers 
;data          Allocated to registers 
;------------------------------------------------------------
;	src/main.c: 85: void main(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/main.c: 87: SHOW_BKG;
;	genOr
	lda	_shadow_PPUMASK
	ora	#0x08
	sta	_shadow_PPUMASK
;	Raw cost for generated ic 2 : (8, 10.000000) count=1.000000
;	src/main.c: 89: set_native_tile_data(0,Font_TILE_COUNT,Font_tiles);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_Font_tiles
	sta	(_set_bkg_native_data_PARM_3 + 1)
	lda	#_Font_tiles
	sta	_set_bkg_native_data_PARM_3
;	Raw cost for generated ic 5 : (10, 12.000000) count=1.000000
;	../../../include/nes/nes.h: 1277: set_bkg_native_data(first_tile, nb_tiles, data);
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x00
	ldx	#0x2e
	jsr	_set_bkg_native_data
;	Raw cost for generated ic 21 : (7, 10.000000) count=1.000000
;	src/main.c: 91: fill_bkg_rect(0,0,DEVICE_SCREEN_WIDTH,DEVICE_SCREEN_HEIGHT,0);
;	genAssign
;	genAssignLit
	ldx	#0x20
	stx	_fill_bkg_rect_PARM_3
;	Raw cost for generated ic 51 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x1e
	stx	_fill_bkg_rect_PARM_4
;	Raw cost for generated ic 52 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_fill_bkg_rect_PARM_5
;	Raw cost for generated ic 53 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 49 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 50 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	txa
	jsr	_fill_bkg_rect
;	Raw cost for generated ic 54 : (4, 8.000000) count=1.000000
;	src/main.c: 94: DrawText("This is a way to draw text on the screen in GBDK. The code will automatically jump to a new line, when it reaches the end of the row.",THREE_FRAMES);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 55 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 56 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x03
	stx	_DrawText_PARM_2
;	Raw cost for generated ic 58 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 57 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>___str_0
	lda	#___str_0
;	Raw cost for generated ic 59 : (7, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 60 : (0, 0.000000) count=1.000000
;	src/main.c: 95: }
;	genEndFunction
	jmp	_DrawText
;	Raw cost for generated ic 61 : (1, 6.000000) count=1.000000
	.area _CODE
___str_0:
	.ascii "This is a way to draw text on the screen in GBDK. The code w"
	.ascii "ill automatically jump to a new line, when it reaches the en"
	.ascii "d of the row."
	.db 0x00
	.area _XINIT
	.area _CABS    (ABS)
