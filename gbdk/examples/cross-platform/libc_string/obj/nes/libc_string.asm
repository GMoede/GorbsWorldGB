;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module libc_string
	
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
	.globl _font_set
	.globl _font_load
	.globl _font_init
	.globl _strncpy
	.globl _strncmp
	.globl _strncat
	.globl _strlen
	.globl _strcat
	.globl _strcmp
	.globl _strcpy
	.globl _printf
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
_main_dst_20000_128:
	.ds 4
_main_dst_20000_129:
	.ds 4
_main_dst_20000_130:
	.ds 9
_main_dst2_20000_130:
	.ds 9
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
;ibm_font      Allocated to registers a x 
;dst           Allocated with name '_main_dst_20000_128'
;src           Allocated to registers 
;dst           Allocated with name '_main_dst_20000_129'
;src           Allocated to registers 
;dst           Allocated with name '_main_dst_20000_130'
;dst2          Allocated with name '_main_dst2_20000_130'
;------------------------------------------------------------
;	src/libc_string.c: 12: void main(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	src/libc_string.c: 17: font_init();
;	genCall
	jsr	_font_init
;	Raw cost for generated ic 2 : (3, 6.000000) count=1.000000
;	src/libc_string.c: 18: ibm_font = font_load(font_ibm);
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
;	src/libc_string.c: 19: font_set(ibm_font);
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_font_set
;	Raw cost for generated ic 9 : (3, 6.000000) count=1.000000
;	src/libc_string.c: 22: printf("strlen(gbdk) -> %d\n", strlen("gbdk"));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>___str_6
	lda	#___str_6
	jsr	_strlen
;	assignResultValue
;	Raw cost for generated ic 13 : (7, 10.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	genIpush
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 16 : (7, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_5
	pha
	lda	#___str_5
	pha
;	Raw cost for generated ic 17 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 18 : (7, 22.000000) count=1.000000
;	src/libc_string.c: 24: printf("strcmp(gbdk,gbdk)\n-> %d\n", strcmp("gbdk", "gbdk"));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 20 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#>___str_6
	sta	(_strcmp_PARM_2 + 1)
	lda	#___str_6
	sta	_strcmp_PARM_2
;	Raw cost for generated ic 24 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 23 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>___str_6
	lda	#___str_6
	jsr	_strcmp
;	assignResultValue
;	Raw cost for generated ic 25 : (7, 10.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 26 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 27 : (0, 0.000000) count=1.000000
;	genIpush
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 28 : (7, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_7
	pha
	lda	#___str_7
	pha
;	Raw cost for generated ic 29 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 30 : (7, 22.000000) count=1.000000
;	src/libc_string.c: 25: printf("strcmp(gbdk,ggdk)\n-> %d\n", strcmp("gbdk", "ggdk"));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 32 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 33 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>___str_9
	sta	(_strcmp_PARM_2 + 1)
	lda	#___str_9
	sta	_strcmp_PARM_2
;	Raw cost for generated ic 34 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 35 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>___str_6
	lda	#___str_6
	jsr	_strcmp
;	assignResultValue
;	Raw cost for generated ic 37 : (7, 10.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 38 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 39 : (0, 0.000000) count=1.000000
;	genIpush
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 40 : (7, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_8
	pha
	lda	#___str_8
	pha
;	Raw cost for generated ic 41 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 42 : (7, 22.000000) count=1.000000
;	src/libc_string.c: 26: printf("strcmp(ggdk,gbdk)\n-> %d\n", strcmp("ggdk", "gbdk"));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 44 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>___str_6
	sta	(_strcmp_PARM_2 + 1)
	lda	#___str_6
	sta	_strcmp_PARM_2
;	Raw cost for generated ic 46 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 47 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>___str_9
	lda	#___str_9
	jsr	_strcmp
;	assignResultValue
;	Raw cost for generated ic 49 : (7, 10.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 50 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 51 : (0, 0.000000) count=1.000000
;	genIpush
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 52 : (7, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_10
	pha
	lda	#___str_10
	pha
;	Raw cost for generated ic 53 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 54 : (7, 22.000000) count=1.000000
;	src/libc_string.c: 27: printf("strncmp(gbdk,gbc,2)\n-> %d\n", strncmp("gbdk", "gbc", 2));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 56 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 57 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>___str_12
	sta	(_strncmp_PARM_2 + 1)
	lda	#___str_12
	sta	_strncmp_PARM_2
;	Raw cost for generated ic 58 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_strncmp_PARM_3
	ldx	#0x00
	stx	(_strncmp_PARM_3 + 1)
;	Raw cost for generated ic 61 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 59 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>___str_6
	lda	#___str_6
	jsr	_strncmp
;	assignResultValue
;	Raw cost for generated ic 62 : (7, 10.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 63 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 64 : (0, 0.000000) count=1.000000
;	genIpush
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 65 : (7, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_11
	pha
	lda	#___str_11
	pha
;	Raw cost for generated ic 66 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 67 : (7, 22.000000) count=1.000000
;	src/libc_string.c: 30: char dst[4] = "dst";
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 68 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldx	#0x64
	stx	_main_dst_20000_128
;	Raw cost for generated ic 69 : (5, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 71 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldx	#0x73
	stx	(_main_dst_20000_128 + 0x0001)
;	Raw cost for generated ic 72 : (5, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 74 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	inx
	stx	(_main_dst_20000_128 + 0x0002)
;	Raw cost for generated ic 75 : (4, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 77 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldx	#0x00
	stx	(_main_dst_20000_128 + 0x0003)
;	Raw cost for generated ic 78 : (5, 6.000000) count=1.000000
;	src/libc_string.c: 31: const char* src = "src";
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 79 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 80 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
;	genCopy
	lda	#>___str_1
	sta	(_strcpy_PARM_2 + 1)
	lda	#___str_1
	sta	_strcpy_PARM_2
;	Raw cost for generated ic 81 : (10, 12.000000) count=1.000000
;	src/libc_string.c: 32: strcpy(dst, src);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 83 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 84 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_main_dst_20000_128
	lda	#_main_dst_20000_128
	jsr	_strcpy
;	Raw cost for generated ic 86 : (7, 10.000000) count=1.000000
;	src/libc_string.c: 33: printf("strcpy(dst,src)\n-> %s\n", dst);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 88 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 89 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 90 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#>_main_dst_20000_128
	pha
	lda	#_main_dst_20000_128
	pha
;	Raw cost for generated ic 91 : (6, 10.000000) count=1.000000
;	genIpush
	lda	#>___str_13
	pha
	lda	#___str_13
	pha
;	Raw cost for generated ic 92 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 93 : (7, 22.000000) count=1.000000
;	src/libc_string.c: 37: char dst[4] = "dst";
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 94 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldx	#0x64
	stx	_main_dst_20000_129
;	Raw cost for generated ic 95 : (5, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 97 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldx	#0x73
	stx	(_main_dst_20000_129 + 0x0001)
;	Raw cost for generated ic 98 : (5, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 100 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	inx
	stx	(_main_dst_20000_129 + 0x0002)
;	Raw cost for generated ic 101 : (4, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 103 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldx	#0x00
	stx	(_main_dst_20000_129 + 0x0003)
;	Raw cost for generated ic 104 : (5, 6.000000) count=1.000000
;	src/libc_string.c: 38: const char* src = "src";
;	genAssign
;	genAssignLit
;	genCopy
	lda	#>___str_1
	sta	(_strncpy_PARM_2 + 1)
	lda	#___str_1
	sta	_strncpy_PARM_2
;	Raw cost for generated ic 107 : (10, 12.000000) count=1.000000
;	src/libc_string.c: 39: strncpy(dst, src, 2);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 109 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_strncpy_PARM_3
	ldx	#0x00
	stx	(_strncpy_PARM_3 + 1)
;	Raw cost for generated ic 112 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 110 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_main_dst_20000_129
	lda	#_main_dst_20000_129
	jsr	_strncpy
;	Raw cost for generated ic 113 : (7, 10.000000) count=1.000000
;	src/libc_string.c: 40: printf("strncpy(dst,src,2)\n-> %s\n", dst);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 115 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 116 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 117 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#>_main_dst_20000_129
	pha
	lda	#_main_dst_20000_129
	pha
;	Raw cost for generated ic 118 : (6, 10.000000) count=1.000000
;	genIpush
	lda	#>___str_14
	pha
	lda	#___str_14
	pha
;	Raw cost for generated ic 119 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 120 : (7, 22.000000) count=1.000000
;	src/libc_string.c: 44: char dst[9] = "gbdk";
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 121 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldx	#0x67
	stx	_main_dst_20000_130
;	Raw cost for generated ic 122 : (5, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 124 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldx	#0x62
	stx	(_main_dst_20000_130 + 0x0001)
;	Raw cost for generated ic 125 : (5, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 127 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldx	#0x64
	stx	(_main_dst_20000_130 + 0x0002)
;	Raw cost for generated ic 128 : (5, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 130 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldx	#0x6b
	stx	(_main_dst_20000_130 + 0x0003)
;	Raw cost for generated ic 131 : (5, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 133 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldx	#0x00
	stx	(_main_dst_20000_130 + 0x0004)
;	Raw cost for generated ic 134 : (5, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 136 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	stx	(_main_dst_20000_130 + 0x0005)
;	Raw cost for generated ic 137 : (3, 4.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 139 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	stx	(_main_dst_20000_130 + 0x0006)
;	Raw cost for generated ic 140 : (3, 4.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 142 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	stx	(_main_dst_20000_130 + 0x0007)
;	Raw cost for generated ic 143 : (3, 4.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 145 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	stx	(_main_dst_20000_130 + 0x0008)
;	Raw cost for generated ic 146 : (3, 4.000000) count=1.000000
;	src/libc_string.c: 45: char dst2[9] = "gbdk";
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 147 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldx	#0x67
	stx	_main_dst2_20000_130
;	Raw cost for generated ic 148 : (5, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 150 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldx	#0x62
	stx	(_main_dst2_20000_130 + 0x0001)
;	Raw cost for generated ic 151 : (5, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 153 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldx	#0x64
	stx	(_main_dst2_20000_130 + 0x0002)
;	Raw cost for generated ic 154 : (5, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 156 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldx	#0x6b
	stx	(_main_dst2_20000_130 + 0x0003)
;	Raw cost for generated ic 157 : (5, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 159 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldx	#0x00
	stx	(_main_dst2_20000_130 + 0x0004)
;	Raw cost for generated ic 160 : (5, 6.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 162 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	stx	(_main_dst2_20000_130 + 0x0005)
;	Raw cost for generated ic 163 : (3, 4.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 165 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	stx	(_main_dst2_20000_130 + 0x0006)
;	Raw cost for generated ic 166 : (3, 4.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 168 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	stx	(_main_dst2_20000_130 + 0x0007)
;	Raw cost for generated ic 169 : (3, 4.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 171 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	stx	(_main_dst2_20000_130 + 0x0008)
;	Raw cost for generated ic 172 : (3, 4.000000) count=1.000000
;	src/libc_string.c: 46: printf("strcat(gbdk,2020)\n-> %s\n", strcat(dst, "2020"));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 174 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 175 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>___str_16
	sta	(_strcat_PARM_2 + 1)
	lda	#___str_16
	sta	_strcat_PARM_2
;	Raw cost for generated ic 176 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 177 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_main_dst_20000_130
	lda	#_main_dst_20000_130
	jsr	_strcat
;	assignResultValue
;	Raw cost for generated ic 179 : (7, 10.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 180 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 181 : (0, 0.000000) count=1.000000
;	genIpush
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 182 : (7, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_15
	pha
	lda	#___str_15
	pha
;	Raw cost for generated ic 183 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 184 : (7, 22.000000) count=1.000000
;	src/libc_string.c: 47: printf("strncat(gbdk,lib,2)\n-> %s\n", strncat(dst2, "lib",2));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 186 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 187 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>___str_18
	sta	(_strncat_PARM_2 + 1)
	lda	#___str_18
	sta	_strncat_PARM_2
;	Raw cost for generated ic 188 : (10, 12.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_strncat_PARM_3
	ldx	#0x00
	stx	(_strncat_PARM_3 + 1)
;	Raw cost for generated ic 191 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 189 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_main_dst2_20000_130
	lda	#_main_dst2_20000_130
	jsr	_strncat
;	assignResultValue
;	Raw cost for generated ic 192 : (7, 10.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 193 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 194 : (0, 0.000000) count=1.000000
;	genIpush
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 195 : (7, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_17
	pha
	lda	#___str_17
	pha
;	Raw cost for generated ic 196 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
	pla
	pla
	pla
	pla
;	Raw cost for generated ic 197 : (7, 22.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 198 : (0, 0.000000) count=1.000000
;	src/libc_string.c: 49: }
;	genEndFunction
	rts
;	Raw cost for generated ic 199 : (1, 6.000000) count=1.000000
	.area _CODE
___str_1:
	.ascii "src"
	.db 0x00
___str_5:
	.ascii "strlen(gbdk) -> %d"
	.db 0x0a
	.db 0x00
___str_6:
	.ascii "gbdk"
	.db 0x00
___str_7:
	.ascii "strcmp(gbdk,gbdk)"
	.db 0x0a
	.ascii "-> %d"
	.db 0x0a
	.db 0x00
___str_8:
	.ascii "strcmp(gbdk,ggdk)"
	.db 0x0a
	.ascii "-> %d"
	.db 0x0a
	.db 0x00
___str_9:
	.ascii "ggdk"
	.db 0x00
___str_10:
	.ascii "strcmp(ggdk,gbdk)"
	.db 0x0a
	.ascii "-> %d"
	.db 0x0a
	.db 0x00
___str_11:
	.ascii "strncmp(gbdk,gbc,2)"
	.db 0x0a
	.ascii "-> %d"
	.db 0x0a
	.db 0x00
___str_12:
	.ascii "gbc"
	.db 0x00
___str_13:
	.ascii "strcpy(dst,src)"
	.db 0x0a
	.ascii "-> %s"
	.db 0x0a
	.db 0x00
___str_14:
	.ascii "strncpy(dst,src,2)"
	.db 0x0a
	.ascii "-> %s"
	.db 0x0a
	.db 0x00
___str_15:
	.ascii "strcat(gbdk,2020)"
	.db 0x0a
	.ascii "-> %s"
	.db 0x0a
	.db 0x00
___str_16:
	.ascii "2020"
	.db 0x00
___str_17:
	.ascii "strncat(gbdk,lib,2)"
	.db 0x0a
	.ascii "-> %s"
	.db 0x0a
	.db 0x00
___str_18:
	.ascii "lib"
	.db 0x00
	.area _XINIT
	.area _CABS    (ABS)
