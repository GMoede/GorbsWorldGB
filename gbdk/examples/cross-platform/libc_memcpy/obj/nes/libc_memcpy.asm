;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module libc_memcpy
	
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
	.globl _memcpy_src
	.globl _main
	.globl _benchmark_memcpy
	.globl _font_set
	.globl _font_load
	.globl _font_init
	.globl _memset
	.globl _memmove
	.globl ___memcpy
	.globl _printf
	.globl _benchmark_memcpy_PARM_2
	.globl _memcpy_dst
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
_benchmark_memcpy_sloc0_1_0:
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
_memcpy_dst::
	.ds 300
_benchmark_memcpy_PARM_2:
	.ds 2
_benchmark_memcpy_num_10000_126:
	.ds 2
_benchmark_memcpy_start_time_10000_127:
	.ds 2
_main_dst_20000_131:
	.ds 4
_main_dst_20000_132:
	.ds 4
_main_dst_20000_133:
	.ds 4
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
;Allocation info for local variables in function 'benchmark_memcpy'
;------------------------------------------------------------
;sloc0         Allocated with name '_benchmark_memcpy_sloc0_1_0'
;size          Allocated with name '_benchmark_memcpy_PARM_2'
;num           Allocated with name '_benchmark_memcpy_num_10000_126'
;i             Allocated to registers 
;start_time    Allocated with name '_benchmark_memcpy_start_time_10000_127'
;------------------------------------------------------------
;	src/libc_memcpy.c: 16: int benchmark_memcpy(int num, int size)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function benchmark_memcpy
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_benchmark_memcpy:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_benchmark_memcpy_num_10000_126
	stx	(_benchmark_memcpy_num_10000_126 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	src/libc_memcpy.c: 19: uint16_t start_time = sys_time;
;	genAssign
;	genAssignLit
;	genCopy
	lda	(_sys_time + 1)
	sta	(_benchmark_memcpy_start_time_10000_127 + 1)
	lda	_sys_time
	sta	_benchmark_memcpy_start_time_10000_127
;	Raw cost for generated ic 3 : (12, 16.000000) count=1.000000
;	src/libc_memcpy.c: 20: for(i = 0; i < num; i++)
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x00
	stx	*_benchmark_memcpy_sloc0_1_0
	stx	*(_benchmark_memcpy_sloc0_1_0 + 1)
;	Raw cost for generated ic 30 : (6, 8.000000) count=1.000000
;	genLabel
00103$:
;	Raw cost for generated ic 5 : (0, 0.000000) count=3.999997
;	genCmp
	lda	*_benchmark_memcpy_sloc0_1_0
	sec
	sbc	_benchmark_memcpy_num_10000_126
	lda	*(_benchmark_memcpy_sloc0_1_0 + 1)
	sbc	(_benchmark_memcpy_num_10000_126 + 1)
	bvc	00121$
	bpl	00120$
	bmi	00101$
00121$:
	bpl	00101$
00120$:
;	Raw cost for generated ic 6 : (22, 29.400002) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 7 : (0, 0.000000) count=3.999997
;	src/libc_memcpy.c: 21: memcpy(memcpy_dst, memcpy_src, size);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 11 : (0, 0.000000) count=2.999997
;	genCast
;	genCopy
	lda	#>_memcpy_src
	sta	(___memcpy_PARM_2 + 1)
	lda	#_memcpy_src
	sta	___memcpy_PARM_2
;	Raw cost for generated ic 13 : (10, 12.000000) count=2.999997
;	genAssign
;	genAssignLit
;	genCopy
	lda	(_benchmark_memcpy_PARM_2 + 1)
	sta	(___memcpy_PARM_3 + 1)
	lda	_benchmark_memcpy_PARM_2
	sta	___memcpy_PARM_3
;	Raw cost for generated ic 16 : (12, 16.000000) count=2.999997
;	Raw cost for generated ic 14 : (0, 0.000000) count=2.999997
;	genCall
;	genSend
	ldx	#>_memcpy_dst
	lda	#_memcpy_dst
	jsr	___memcpy
;	Raw cost for generated ic 17 : (7, 10.000000) count=2.999997
;	src/libc_memcpy.c: 20: for(i = 0; i < num; i++)
;	genPlus
;	genPlusIncr
	inc	*_benchmark_memcpy_sloc0_1_0
	bne	00103$
	inc	*(_benchmark_memcpy_sloc0_1_0 + 1)
;	Raw cost for generated ic 20 : (6, 12.600000) count=2.999997
;	genGoto
	jmp	00103$
;	Raw cost for generated ic 22 : (3, 3.000000) count=2.999997
;	genLabel
00101$:
;	Raw cost for generated ic 23 : (0, 0.000000) count=0.999999
;	src/libc_memcpy.c: 22: return (int)(sys_time - start_time);
;	genMinus
;	genMinusDec
	lda	_sys_time
	sec
	sbc	_benchmark_memcpy_start_time_10000_127
	pha
	lda	(_sys_time + 1)
	sbc	(_benchmark_memcpy_start_time_10000_127 + 1)
	tax
	pla
;	Raw cost for generated ic 24 : (16, 27.000000) count=0.999999
;	genCast
;	genCopy
;	Raw cost for generated ic 25 : (0, 0.000000) count=0.999999
;	genRet
;	Raw cost for generated ic 26 : (0, 0.000000) count=0.999999
;	genLabel
;	Raw cost for generated ic 27 : (0, 0.000000) count=0.999999
;	src/libc_memcpy.c: 23: }
;	genEndFunction
	rts
;	Raw cost for generated ic 28 : (1, 6.000000) count=0.999999
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;ibm_font      Allocated to registers a x 
;dst           Allocated with name '_main_dst_20000_131'
;src           Allocated to registers 
;dst           Allocated with name '_main_dst_20000_132'
;src           Allocated to registers 
;dst           Allocated with name '_main_dst_20000_133'
;------------------------------------------------------------
;	src/libc_memcpy.c: 25: void main(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/libc_memcpy.c: 30: font_init();
;	genCall
	jsr	_font_init
;	Raw cost for generated ic 2 : (3, 6.000000) count=1.000000
;	src/libc_memcpy.c: 31: ibm_font = font_load(font_ibm);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_font_ibm
	lda	#_font_ibm
	jsr	_font_load
;	assignResultValue
;	Raw cost for generated ic 6 : (7, 10.000000) count=1.000000
;	src/libc_memcpy.c: 32: font_set(ibm_font);
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_font_set
;	Raw cost for generated ic 9 : (3, 6.000000) count=1.000000
;	src/libc_memcpy.c: 36: char dst[4] = "dst";
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldx	#0x64
	stx	_main_dst_20000_131
;	Raw cost for generated ic 11 : (5, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldx	#0x73
	stx	(_main_dst_20000_131 + 0x0001)
;	Raw cost for generated ic 14 : (5, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	inx
	stx	(_main_dst_20000_131 + 0x0002)
;	Raw cost for generated ic 17 : (4, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldx	#0x00
	stx	(_main_dst_20000_131 + 0x0003)
;	Raw cost for generated ic 20 : (5, 6.000000) count=1.000000
;	src/libc_memcpy.c: 37: const char* src = "src";
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 23 : (0, 0.000000) count=1.000000
;	src/libc_memcpy.c: 38: printf("memcpy(dst,src,2)\n-> %s\n", memcpy(dst, src, 2));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>___str_1
	sta	(___memcpy_PARM_2 + 1)
	lda	#___str_1
	sta	___memcpy_PARM_2
;	Raw cost for generated ic 26 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	___memcpy_PARM_3
	ldx	#0x00
	stx	(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 29 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 27 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_main_dst_20000_131
	lda	#_main_dst_20000_131
	jsr	___memcpy
;	assignResultValue
;	Raw cost for generated ic 30 : (7, 10.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 31 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 32 : (0, 0.000000) count=1.000000
;	genIpush
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 33 : (7, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_4
	pha
	lda	#___str_4
	pha
;	Raw cost for generated ic 34 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 35 : (7, 22.000000) count=1.000000
;	src/libc_memcpy.c: 42: char dst[4] = "dst";
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 36 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldx	#0x64
	stx	_main_dst_20000_132
;	Raw cost for generated ic 37 : (5, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 39 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldx	#0x73
	stx	(_main_dst_20000_132 + 0x0001)
;	Raw cost for generated ic 40 : (5, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 42 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	inx
	stx	(_main_dst_20000_132 + 0x0002)
;	Raw cost for generated ic 43 : (4, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 45 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldx	#0x00
	stx	(_main_dst_20000_132 + 0x0003)
;	Raw cost for generated ic 46 : (5, 6.000000) count=1.000000
;	src/libc_memcpy.c: 43: const char* src = "src";
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 49 : (0, 0.000000) count=1.000000
;	src/libc_memcpy.c: 44: printf("memmove(dst,src,2)\n-> %s\n", memmove(dst, src, 2));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 51 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>___str_1
	sta	(_memmove_PARM_2 + 1)
	lda	#___str_1
	sta	_memmove_PARM_2
;	Raw cost for generated ic 52 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_memmove_PARM_3
	ldx	#0x00
	stx	(_memmove_PARM_3 + 1)
;	Raw cost for generated ic 55 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 53 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_main_dst_20000_132
	lda	#_main_dst_20000_132
	jsr	_memmove
;	assignResultValue
;	Raw cost for generated ic 56 : (7, 10.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 57 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 58 : (0, 0.000000) count=1.000000
;	genIpush
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 59 : (7, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_5
	pha
	lda	#___str_5
	pha
;	Raw cost for generated ic 60 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 61 : (7, 22.000000) count=1.000000
;	src/libc_memcpy.c: 48: char dst[4] = "dst";
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 62 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldx	#0x64
	stx	_main_dst_20000_133
;	Raw cost for generated ic 63 : (5, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 65 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldx	#0x73
	stx	(_main_dst_20000_133 + 0x0001)
;	Raw cost for generated ic 66 : (5, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 68 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	inx
	stx	(_main_dst_20000_133 + 0x0002)
;	Raw cost for generated ic 69 : (4, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 71 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldx	#0x00
	stx	(_main_dst_20000_133 + 0x0003)
;	Raw cost for generated ic 72 : (5, 6.000000) count=1.000000
;	src/libc_memcpy.c: 49: printf("memset(dst,x,2)\n-> %s\n", memset(dst, 'x', 2));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 74 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x78
	stx	_memset_PARM_2
	ldx	#0x00
	stx	(_memset_PARM_2 + 1)
;	Raw cost for generated ic 76 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_memset_PARM_3
	ldx	#0x00
	stx	(_memset_PARM_3 + 1)
;	Raw cost for generated ic 77 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 75 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_main_dst_20000_133
	lda	#_main_dst_20000_133
	jsr	_memset
;	assignResultValue
;	Raw cost for generated ic 78 : (7, 10.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 79 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 80 : (0, 0.000000) count=1.000000
;	genIpush
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 81 : (7, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_6
	pha
	lda	#___str_6
	pha
;	Raw cost for generated ic 82 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 83 : (7, 22.000000) count=1.000000
;	src/libc_memcpy.c: 52: printf("\nBenchmark memcpy:\n");
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 84 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 85 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#>___str_7
	pha
	lda	#___str_7
	pha
;	Raw cost for generated ic 86 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
;	Raw cost for generated ic 87 : (5, 14.000000) count=1.000000
;	src/libc_memcpy.c: 54: printf("800*memcpy(d,s,150)\n-> %d frames\n", benchmark_memcpy(800, 150));
;	genAssign
;	genAssignLit
	ldx	#0x96
	stx	_benchmark_memcpy_PARM_2
	ldx	#0x00
	stx	(_benchmark_memcpy_PARM_2 + 1)
;	Raw cost for generated ic 89 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 88 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x03
	lda	#0x20
	jsr	_benchmark_memcpy
;	assignResultValue
;	Raw cost for generated ic 90 : (7, 10.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 91 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 92 : (0, 0.000000) count=1.000000
;	genIpush
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 93 : (7, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_8
	pha
	lda	#___str_8
	pha
;	Raw cost for generated ic 94 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 95 : (7, 22.000000) count=1.000000
;	src/libc_memcpy.c: 55: printf("400*memcpy(d,s,300)\n-> %d frames\n", benchmark_memcpy(400, 300));
;	genAssign
;	genAssignLit
	ldx	#0x2c
	stx	_benchmark_memcpy_PARM_2
	ldx	#0x01
	stx	(_benchmark_memcpy_PARM_2 + 1)
;	Raw cost for generated ic 97 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 96 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x90
	jsr	_benchmark_memcpy
;	assignResultValue
;	Raw cost for generated ic 98 : (5, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 99 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 100 : (0, 0.000000) count=1.000000
;	genIpush
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 101 : (7, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_9
	pha
	lda	#___str_9
	pha
;	Raw cost for generated ic 102 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 103 : (7, 22.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 104 : (0, 0.000000) count=1.000000
;	src/libc_memcpy.c: 57: }
;	genEndFunction
	rts
;	Raw cost for generated ic 105 : (1, 6.000000) count=1.000000
	.area _CODE
_memcpy_src:
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
___str_1:
	.ascii "src"
	.db 0x00
___str_4:
	.ascii "memcpy(dst,src,2)"
	.db 0x0a
	.ascii "-> %s"
	.db 0x0a
	.db 0x00
___str_5:
	.ascii "memmove(dst,src,2)"
	.db 0x0a
	.ascii "-> %s"
	.db 0x0a
	.db 0x00
___str_6:
	.ascii "memset(dst,x,2)"
	.db 0x0a
	.ascii "-> %s"
	.db 0x0a
	.db 0x00
___str_7:
	.db 0x0a
	.ascii "Benchmark memcpy:"
	.db 0x0a
	.db 0x00
___str_8:
	.ascii "800*memcpy(d,s,150)"
	.db 0x0a
	.ascii "-> %d frames"
	.db 0x0a
	.db 0x00
___str_9:
	.ascii "400*memcpy(d,s,300)"
	.db 0x0a
	.ascii "-> %d frames"
	.db 0x0a
	.db 0x00
	.area _XINIT
	.area _CABS    (ABS)
