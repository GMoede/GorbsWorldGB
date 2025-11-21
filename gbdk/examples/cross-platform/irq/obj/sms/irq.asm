;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module irq
	
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
	.globl _add_TIM
	.globl _add_VBL
	.globl _set_interrupts
	.globl _tim_cnt
	.globl _vbl_cnt
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_GG_STATE	=	0x0000
_GG_EXT_7BIT	=	0x0001
_GG_EXT_CTL	=	0x0002
_GG_SIO_SEND	=	0x0003
_GG_SIO_RECV	=	0x0004
_GG_SIO_CTL	=	0x0005
_GG_SOUND_PAN	=	0x0006
_MEMORY_CTL	=	0x003e
_JOY_CTL	=	0x003f
_VCOUNTER	=	0x007e
_PSG	=	0x007f
_HCOUNTER	=	0x007f
_VDP_DATA	=	0x00be
_VDP_CMD	=	0x00bf
_VDP_STATUS	=	0x00bf
_JOY_PORT1	=	0x00dc
_JOY_PORT2	=	0x00dd
_FMADDRESS	=	0x00f0
_FMDATA	=	0x00f1
_AUDIOCTRL	=	0x00f2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_RAM_CONTROL	=	0xfffc
_GLASSES_3D	=	0xfff8
_MAP_FRAME0	=	0xfffd
_MAP_FRAME1	=	0xfffe
_MAP_FRAME2	=	0xffff
_vbl_cnt::
	.ds 2
_tim_cnt::
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
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
;src/irq.c:11: void vbl(void)
;	---------------------------------
; Function vbl
; ---------------------------------
_vbl::
;src/irq.c:14: vbl_cnt++;
	ld	hl, (_vbl_cnt)
	inc	hl
	ld	(_vbl_cnt), hl
;src/irq.c:15: }
	ret
;src/irq.c:23: void tim(void)
;	---------------------------------
; Function tim
; ---------------------------------
_tim::
;src/irq.c:26: tim_cnt++;
	ld	hl, (_tim_cnt)
	inc	hl
	ld	(_tim_cnt), hl
;src/irq.c:27: }
	ret
;src/irq.c:32: void print_counter(void)
;	---------------------------------
; Function print_counter
; ---------------------------------
_print_counter::
;src/irq.c:39: }
	ld	a,i
	di
	push	af
;src/irq.c:38: cnt = tim_cnt; 
	ld	hl, (_tim_cnt)
	pop	af
	jp	PO, 00104$
	ei
00104$:
;src/irq.c:41: printf(" TIM %u", cnt);
	ld	bc, #___str_0+0
	push	hl
	push	bc
	call	_printf
	pop	af
	pop	af
;src/irq.c:42: gotoxy(9, posy());
	call	_posy
	ld	h, l
	ld	l, #0x09
	push	hl
	call	_gotoxy
	pop	af
;src/irq.c:47: }
	ld	a,i
	di
	push	af
;src/irq.c:46: cnt = vbl_cnt; 
	ld	hl, (_vbl_cnt)
	pop	af
	jp	PO, 00106$
	ei
00106$:
;src/irq.c:49: printf("- VBL %u\n", cnt);
	ld	bc, #___str_1+0
	push	hl
	push	bc
	call	_printf
	pop	af
	pop	af
;src/irq.c:50: }
	ret
___str_0:
	.ascii " TIM %u"
	.db 0x00
___str_1:
	.ascii "- VBL %u"
	.db 0x0a
	.db 0x00
;src/irq.c:52: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
;src/irq.c:74: }
	ld	a,i
	di
	push	af
;src/irq.c:71: vbl_cnt = tim_cnt = 0;
	ld	hl, #0x0000
	ld	(_tim_cnt), hl
	ld	(_vbl_cnt), hl
;src/irq.c:72: add_VBL(vbl);
	ld	hl, #_vbl
	call	_add_VBL
;src/irq.c:73: add_TIM(tim);
	ld	hl, #_tim
	call	_add_TIM
	pop	af
	jp	PO, 00142$
	ei
00142$:
;src/irq.c:82: TMA_REG = 0xFCU;
	ld	hl, #_TMA_REG
	ld	(hl), #0xfc
;src/irq.c:86: set_interrupts(VBL_IFLAG | TIM_IFLAG);
	ld	l, #0x05
	call	_set_interrupts
00107$:
;src/irq.c:89: uint8_t num_frames = (get_system() == SYSTEM_50HZ) ? 50 : 60;
	ld	a, (__SYSTEM)
	dec	a
	ld	c, #0x32
	jr	Z, 00112$
	ld	c, #0x3c
00112$:
;src/irq.c:90: print_counter();
	push	bc
	call	_print_counter
	pop	bc
;src/irq.c:92: for(int i = 0; i < num_frames; i++) {
	ld	de, #0x0000
00105$:
	ld	b, c
	ld	l, #0x00
	ld	a, e
	sub	a, b
	ld	a, d
	sbc	a, l
	jp	PO, 00145$
	xor	a, #0x80
00145$:
	jp	P, 00107$
;src/irq.c:93: vsync();
	call	_vsync
;src/irq.c:92: for(int i = 0; i < num_frames; i++) {
	inc	de
;src/irq.c:96: }
	jr	00105$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
