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
	.globl _set_default_palette
	.globl _cpu_fast
	.globl _vsync
	.globl _set_interrupts
	.globl _add_TIM
	.globl _add_VBL
	.globl _tim_cnt
	.globl _vbl_cnt
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
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
	ld	hl, #_vbl_cnt
	inc	(hl)
	ret	NZ
	inc	hl
	inc	(hl)
;src/irq.c:15: }
	ret
;src/irq.c:23: void tim(void)
;	---------------------------------
; Function tim
; ---------------------------------
_tim::
;src/irq.c:26: tim_cnt++;
	ld	hl, #_tim_cnt
	inc	(hl)
	ret	NZ
	inc	hl
	inc	(hl)
;src/irq.c:27: }
	ret
;src/irq.c:32: void print_counter(void)
;	---------------------------------
; Function print_counter
; ---------------------------------
_print_counter::
;src/irq.c:39: }
	di
;src/irq.c:38: cnt = tim_cnt; 
	ld	a, (_tim_cnt)
	ld	c, a
	ld	hl, #_tim_cnt + 1
	ld	b, (hl)
	ei
;src/irq.c:41: printf(" TIM %u", cnt);
	push	bc
	ld	de, #___str_0
	push	de
	call	_printf
	add	sp, #4
;src/irq.c:42: gotoxy(9, posy());
	call	_posy
	ld	h, e
	ld	l, #0x09
	push	hl
	call	_gotoxy
	pop	hl
;src/irq.c:47: }
	di
;src/irq.c:46: cnt = vbl_cnt; 
	ld	a, (_vbl_cnt)
	ld	c, a
	ld	hl, #_vbl_cnt + 1
	ld	b, (hl)
	ei
;src/irq.c:49: printf("- VBL %u\n", cnt);
	push	bc
	ld	de, #___str_1
	push	de
	call	_printf
	add	sp, #4
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
;src/irq.c:54: uint8_t double_speed_mode = 0;
	ld	l, #0x00
;src/irq.c:56: set_default_palette();
	push	hl
	call	_set_default_palette
;src/irq.c:57: if (_cpu == CGB_TYPE) {
	ld	a, (#__cpu)
	sub	a, #0x11
	pop	hl
	jr	NZ, 00102$
;src/irq.c:59: cpu_fast();
	call	_cpu_fast
;src/irq.c:60: double_speed_mode = 1;
	ld	l, #0x01
00102$:
;src/irq.c:74: }
	di
;src/irq.c:71: vbl_cnt = tim_cnt = 0;
	xor	a, a
	ld	(_tim_cnt), a
	ld	(_tim_cnt + 1), a
	xor	a, a
	ld	(_vbl_cnt), a
	ld	(_vbl_cnt + 1), a
;src/irq.c:72: add_VBL(vbl);
	push	hl
	ld	de, #_vbl
	call	_add_VBL
;src/irq.c:73: add_TIM(tim);
	ld	de, #_tim
	call	_add_TIM
	pop	hl
	ei
;src/irq.c:78: TMA_REG = double_speed_mode ? 0x00U : 0x80;
	ld	a, l
	or	a, a
	jr	Z, 00113$
	xor	a, a
	jr	00114$
00113$:
	ld	a, #0x80
00114$:
	ldh	(_TMA_REG + 0), a
;src/irq.c:80: TAC_REG = 0x04U;
	ld	a, #0x04
	ldh	(_TAC_REG + 0), a
;src/irq.c:86: set_interrupts(VBL_IFLAG | TIM_IFLAG);
	ld	a, #0x05
	call	_set_interrupts
;src/irq.c:89: uint8_t num_frames = (get_system() == SYSTEM_50HZ) ? 50 : 60;
00115$:
;src/irq.c:90: print_counter();
	call	_print_counter
;src/irq.c:92: for(int i = 0; i < num_frames; i++) {
	ld	c, #0x00
00107$:
	ld	a, c
	sub	a, #0x3c
	jr	NC, 00115$
;src/irq.c:93: vsync();
	call	_vsync
;src/irq.c:92: for(int i = 0; i < num_frames; i++) {
	inc	c
;src/irq.c:96: }
	jr	00107$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
