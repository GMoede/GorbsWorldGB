;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module gorbySleeping
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _gorbySleeping_metasprites
	.globl _gorbySleeping_metasprite4
	.globl _gorbySleeping_metasprite3
	.globl _gorbySleeping_metasprite2
	.globl _gorbySleeping_metasprite1
	.globl _gorbySleeping_metasprite0
	.globl _gorbySleeping_tiles
	.globl _gorbySleeping_palettes
	.globl b___func_gorbySleeping
	.globl ___func_gorbySleeping
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
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
;gen/gorbySleeping.c:7: BANKREF(gorbySleeping)
;	---------------------------------
; Function __func_gorbySleeping
; ---------------------------------
	b___func_gorbySleeping	= 0
___func_gorbySleeping::
	.local b___func_gorbySleeping 
	___bank_gorbySleeping = b___func_gorbySleeping 
	.globl ___bank_gorbySleeping 
	.area _CODE
_gorbySleeping_palettes:
	.dw #0x0000
	.dw #0x7e6c
	.dw #0x38e7
	.dw #0x11db
_gorbySleeping_tiles:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x60	; 96
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x5e	; 94
	.db #0xa1	; 161
	.db #0x4f	; 79	'O'
	.db #0xb0	; 176
	.db #0x20	; 32
	.db #0xdf	; 223
	.db #0x1f	; 31
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x73	; 115	's'
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0x3e	; 62
	.db #0xc1	; 193
	.db #0x64	; 100	'd'
	.db #0x9b	; 155
	.db #0x7e	; 126
	.db #0x81	; 129
	.db #0xba	; 186
	.db #0x45	; 69	'E'
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0x94	; 148
	.db #0x6a	; 106	'j'
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x31	; 49	'1'
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x5e	; 94
	.db #0xa1	; 161
	.db #0x4f	; 79	'O'
	.db #0xb0	; 176
	.db #0x20	; 32
	.db #0xdf	; 223
	.db #0x1f	; 31
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x30	; 48	'0'
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x5e	; 94
	.db #0xa1	; 161
	.db #0x4f	; 79	'O'
	.db #0xb0	; 176
	.db #0x20	; 32
	.db #0xdf	; 223
	.db #0x1f	; 31
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x73	; 115	's'
	.db #0x10	; 16
	.db #0x6f	; 111	'o'
	.db #0x3e	; 62
	.db #0xc1	; 193
	.db #0x64	; 100	'd'
	.db #0x9b	; 155
	.db #0x7e	; 126
	.db #0x81	; 129
	.db #0xba	; 186
	.db #0x45	; 69	'E'
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x94	; 148
	.db #0x6a	; 106	'j'
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x0e	; 14
	.db #0x71	; 113	'q'
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x5e	; 94
	.db #0xa1	; 161
	.db #0x4f	; 79	'O'
	.db #0xb0	; 176
	.db #0x20	; 32
	.db #0xdf	; 223
	.db #0x1f	; 31
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x73	; 115	's'
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0x3e	; 62
	.db #0xc1	; 193
	.db #0x64	; 100	'd'
	.db #0x9b	; 155
	.db #0x7e	; 126
	.db #0x81	; 129
	.db #0xba	; 186
	.db #0x45	; 69	'E'
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x94	; 148
	.db #0x6a	; 106	'j'
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x73	; 115	's'
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0x3e	; 62
	.db #0xc1	; 193
	.db #0x7e	; 126
	.db #0x8b	; 139
	.db #0x7e	; 126
	.db #0x81	; 129
	.db #0xba	; 186
	.db #0x45	; 69	'E'
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x94	; 148
	.db #0x6a	; 106	'j'
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0xe0	; 224
_gorbySleeping_metasprite0:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_gorbySleeping_metasprite1:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_gorbySleeping_metasprite2:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_gorbySleeping_metasprite3:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_gorbySleeping_metasprite4:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_gorbySleeping_metasprites:
	.dw _gorbySleeping_metasprite0
	.dw _gorbySleeping_metasprite1
	.dw _gorbySleeping_metasprite2
	.dw _gorbySleeping_metasprite3
	.dw _gorbySleeping_metasprite4
	.area _INITIALIZER
	.area _CABS (ABS)
