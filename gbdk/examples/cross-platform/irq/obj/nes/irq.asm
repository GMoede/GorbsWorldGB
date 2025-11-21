;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module irq
	
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
	.globl _print_counter
	.globl _tim
	.globl _vbl
	.globl _printf
	.globl _posy
	.globl _gotoxy
	.globl _vsync
	.globl _set_interrupts
	.globl _add_TIM
	.globl _add_VBL
	.globl _tim_cnt
	.globl _vbl_cnt
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
_vbl_cnt::
	.ds 2
_tim_cnt::
	.ds 2
_main_num_frames_30000_134:
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
;Allocation info for local variables in function 'vbl'
;------------------------------------------------------------
;	src/irq.c: 11: void vbl(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function vbl
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_vbl:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/irq.c: 14: vbl_cnt++;
;	genPlus
;	genPlusIncr
	inc	_vbl_cnt
	bne	00103$
	inc	(_vbl_cnt + 1)
00103$:
;	Raw cost for generated ic 3 : (8, 14.600000) count=1.000000
;	genLabel
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	src/irq.c: 15: }
;	genEndFunction
	rts
;	Raw cost for generated ic 7 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'tim'
;------------------------------------------------------------
;	src/irq.c: 23: void tim(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function tim
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_tim:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/irq.c: 26: tim_cnt++;
;	genPlus
;	genPlusIncr
	inc	_tim_cnt
	bne	00103$
	inc	(_tim_cnt + 1)
00103$:
;	Raw cost for generated ic 3 : (8, 14.600000) count=1.000000
;	genLabel
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	src/irq.c: 27: }
;	genEndFunction
	rts
;	Raw cost for generated ic 7 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'print_counter'
;------------------------------------------------------------
;cnt           Allocated to registers 
;------------------------------------------------------------
;	src/irq.c: 32: void print_counter(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function print_counter
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_print_counter:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/irq.c: 39: }
;	genCritical
	php
	sei
;	Raw cost for generated ic 2 : (2, 5.000000) count=1.000000
;	src/irq.c: 38: cnt = tim_cnt; 
;	genEndCritical
	plp
;	Raw cost for generated ic 4 : (1, 4.000000) count=1.000000
;	src/irq.c: 41: printf(" TIM %u", cnt);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genIpush
	lda	(_tim_cnt + 1)
	pha
	lda	_tim_cnt
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_0
	pha
	lda	#___str_0
	pha
;	Raw cost for generated ic 8 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 9 : (7, 22.000000) count=1.000000
;	src/irq.c: 42: gotoxy(9, posy());
;	genCall
	jsr	_posy
;	assignResultValue
;	Raw cost for generated ic 10 : (3, 6.000000) count=1.000000
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tax
	lda	#0x09
	jsr	_gotoxy
;	Raw cost for generated ic 13 : (6, 10.000000) count=1.000000
;	src/irq.c: 47: }
;	genCritical
	php
	sei
;	Raw cost for generated ic 14 : (2, 5.000000) count=1.000000
;	src/irq.c: 46: cnt = vbl_cnt; 
;	genEndCritical
	plp
;	Raw cost for generated ic 16 : (1, 4.000000) count=1.000000
;	src/irq.c: 49: printf("- VBL %u\n", cnt);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	genIpush
	lda	(_vbl_cnt + 1)
	pha
	lda	_vbl_cnt
	pha
;	Raw cost for generated ic 19 : (8, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_1
	pha
	lda	#___str_1
	pha
;	Raw cost for generated ic 20 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 21 : (7, 22.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.000000
;	src/irq.c: 50: }
;	genEndFunction
	rts
;	Raw cost for generated ic 23 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc0         Allocated with name '_main_sloc0_1_0'
;double_speed_mode Allocated to registers 
;__400000009   Allocated to registers a 
;num_frames    Allocated with name '_main_num_frames_30000_134'
;i             Allocated to registers 
;------------------------------------------------------------
;	src/irq.c: 52: void main(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/irq.c: 74: }
;	genCritical
	php
	sei
;	Raw cost for generated ic 4 : (2, 5.000000) count=1.000000
;	src/irq.c: 71: vbl_cnt = tim_cnt = 0;
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	_tim_cnt
	stx	(_tim_cnt + 1)
;	Raw cost for generated ic 6 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	stx	_vbl_cnt
	stx	(_vbl_cnt + 1)
;	Raw cost for generated ic 8 : (6, 8.000000) count=1.000000
;	src/irq.c: 72: add_VBL(vbl);
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>(_vbl)
	lda	#(_vbl)
	jsr	_add_VBL
;	Raw cost for generated ic 10 : (7, 10.000000) count=1.000000
;	src/irq.c: 73: add_TIM(tim);
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>(_tim)
	lda	#(_tim)
	jsr	_add_TIM
;	Raw cost for generated ic 12 : (7, 10.000000) count=1.000000
;	genEndCritical
	plp
;	Raw cost for generated ic 13 : (1, 4.000000) count=1.000000
;	src/irq.c: 78: TMA_REG = double_speed_mode ? 0x00U : 0x80;
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x00
	stx	_TMA_REG
;	Raw cost for generated ic 21 : (5, 6.000000) count=1.000000
;	src/irq.c: 80: TAC_REG = 0x04U;
;	genAssign
;	genAssignLit
;	genCopy
	ldx	#0x04
	stx	_TAC_REG
;	Raw cost for generated ic 22 : (5, 6.000000) count=1.000000
;	src/irq.c: 86: set_interrupts(VBL_IFLAG | TIM_IFLAG);
;	Raw cost for generated ic 23 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x05
	jsr	_set_interrupts
;	Raw cost for generated ic 24 : (5, 8.000000) count=1.000000
;	genLabel
00110$:
;	Raw cost for generated ic 25 : (0, 0.000000) count=54.250000
;	src/irq.c: 89: uint8_t num_frames = (get_system() == SYSTEM_50HZ) ? 50 : 60;
;	genIfx
	lda	__SYSTEM
;	genIfxJump : z
	bne	00104$
;	Raw cost for generated ic 26 : (8, 9.600000) count=54.250000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 29 : (2, 2.000000) count=40.687500
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 30 : (3, 3.000000) count=40.687500
;	genLabel
00104$:
;	Raw cost for generated ic 32 : (0, 0.000000) count=13.562500
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x01
;	Raw cost for generated ic 33 : (2, 2.000000) count=13.562500
;	genLabel
00106$:
;	Raw cost for generated ic 36 : (0, 0.000000) count=54.250000
;	genCmpEQorNE
	cmp	#0x01
	bne	00116$
;	Raw cost for generated ic 37 : (7, 7.600000) count=54.250000
;	skipping generated iCode
;	Raw cost for generated ic 38 : (0, 0.000000) count=54.250000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x32
;	Raw cost for generated ic 39 : (2, 2.000000) count=40.687500
;	genGoto
	jmp	00117$
;	Raw cost for generated ic 40 : (3, 3.000000) count=40.687500
;	genLabel
00116$:
;	Raw cost for generated ic 41 : (0, 0.000000) count=13.562500
;	genAssign
;	genAssignLit
;	genCopy
	lda	#0x3c
;	Raw cost for generated ic 42 : (2, 2.000000) count=13.562500
;	genLabel
00117$:
;	Raw cost for generated ic 43 : (0, 0.000000) count=54.250000
;	genCast
;	genCopy
	sta	_main_num_frames_30000_134
;	Raw cost for generated ic 44 : (3, 4.000000) count=54.250000
;	src/irq.c: 90: print_counter();
;	genCall
	jsr	_print_counter
;	Raw cost for generated ic 46 : (3, 6.000000) count=54.250000
;	src/irq.c: 92: for(int i = 0; i < num_frames; i++) {
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_main_sloc0_1_0
	stx	*(_main_sloc0_1_0 + 1)
;	Raw cost for generated ic 68 : (6, 8.000000) count=54.250000
;	genLabel
00108$:
;	Raw cost for generated ic 48 : (0, 0.000000) count=72.000000
;	genCast
;	genCopy
	ldx	#0x00
	lda	_main_num_frames_30000_134
;	Raw cost for generated ic 49 : (5, 6.000000) count=72.000000
;	genCmp
	sta	*(REGTEMP+0)
	lda	*_main_sloc0_1_0
	sec
	sbc	*(REGTEMP+0)
	lda	*(_main_sloc0_1_0 + 1)
	sbc	#0x00
	bvc	00153$
	bpl	00152$
	bmi	00110$
00153$:
	bpl	00110$
00152$:
;	Raw cost for generated ic 50 : (22, 29.400002) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 51 : (0, 0.000000) count=72.000000
;	src/irq.c: 93: vsync();
;	genCall
	jsr	_vsync
;	Raw cost for generated ic 54 : (3, 6.000000) count=18.000000
;	src/irq.c: 92: for(int i = 0; i < num_frames; i++) {
;	genPlus
;	genPlusIncr
	inc	*_main_sloc0_1_0
	bne	00108$
	inc	*(_main_sloc0_1_0 + 1)
;	Raw cost for generated ic 57 : (6, 12.600000) count=18.000000
;	genGoto
	jmp	00108$
;	Raw cost for generated ic 59 : (3, 3.000000) count=18.000000
;	genLabel
;	Raw cost for generated ic 64 : (0, 0.000000) count=0.000000
;	src/irq.c: 96: }
;	genEndFunction
	rts
;	Raw cost for generated ic 65 : (1, 6.000000) count=0.000000
	.area _CODE
___str_0:
	.ascii " TIM %u"
	.db 0x00
___str_1:
	.ascii "- VBL %u"
	.db 0x0a
	.db 0x00
	.area _XINIT
	.area _CABS    (ABS)
