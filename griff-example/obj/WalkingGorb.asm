;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module WalkingGorb
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _WalkingGorb_metasprites
	.globl _WalkingGorb_metasprite9
	.globl _WalkingGorb_metasprite8
	.globl _WalkingGorb_metasprite7
	.globl _WalkingGorb_metasprite6
	.globl _WalkingGorb_metasprite5
	.globl _WalkingGorb_metasprite4
	.globl _WalkingGorb_metasprite3
	.globl _WalkingGorb_metasprite2
	.globl _WalkingGorb_metasprite1
	.globl _WalkingGorb_metasprite0
	.globl _WalkingGorb_tiles
	.globl _WalkingGorb_palettes
	.globl b___func_WalkingGorb
	.globl ___func_WalkingGorb
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
;gen/WalkingGorb.c:7: BANKREF(WalkingGorb)
;	---------------------------------
; Function __func_WalkingGorb
; ---------------------------------
	b___func_WalkingGorb	= 0
___func_WalkingGorb::
	.local b___func_WalkingGorb 
	___bank_WalkingGorb = b___func_WalkingGorb 
	.globl ___bank_WalkingGorb 
	.area _CODE
_WalkingGorb_palettes:
	.dw #0x0000
	.dw #0x7e6c
	.dw #0x38e7
	.dw #0x11db
_WalkingGorb_tiles:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x5f	; 95
	.db #0x0f	; 15
	.db #0x70	; 112	'p'
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x1f	; 31
	.db #0x60	; 96
	.db #0x38	; 56	'8'
	.db #0x47	; 71	'G'
	.db #0x60	; 96
	.db #0x9d	; 157
	.db #0x48	; 72	'H'
	.db #0xb5	; 181
	.db #0x00	; 0
	.db #0xec	; 236
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc6	; 198
	.db #0x00	; 0
	.db #0xee	; 238
	.db #0x3c	; 60
	.db #0xc2	; 194
	.db #0x7c	; 124
	.db #0x96	; 150
	.db #0x7e	; 126
	.db #0x81	; 129
	.db #0x7a	; 122	'z'
	.db #0x85	; 133
	.db #0x3c	; 60
	.db #0x43	; 67	'C'
	.db #0x70	; 112	'p'
	.db #0x8e	; 142
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf0	; 240
	.db #0x0c	; 12
	.db #0x10	; 16
	.db #0xe8	; 232
	.db #0xd8	; 216
	.db #0x24	; 36
	.db #0x44	; 68	'D'
	.db #0xba	; 186
	.db #0x00	; 0
	.db #0xee	; 238
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x5f	; 95
	.db #0x0f	; 15
	.db #0x70	; 112	'p'
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x0f	; 15
	.db #0x30	; 48	'0'
	.db #0x18	; 24
	.db #0x27	; 39
	.db #0x30	; 48	'0'
	.db #0x4c	; 76	'L'
	.db #0x10	; 16
	.db #0x68	; 104	'h'
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc6	; 198
	.db #0x00	; 0
	.db #0xee	; 238
	.db #0x3c	; 60
	.db #0xc2	; 194
	.db #0x7c	; 124
	.db #0x96	; 150
	.db #0x7e	; 126
	.db #0x81	; 129
	.db #0x7a	; 122	'z'
	.db #0x85	; 133
	.db #0x3c	; 60
	.db #0x43	; 67	'C'
	.db #0x70	; 112	'p'
	.db #0x8e	; 142
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf0	; 240
	.db #0x0c	; 12
	.db #0x30	; 48	'0'
	.db #0xc8	; 200
	.db #0x58	; 88	'X'
	.db #0xa4	; 164
	.db #0x50	; 80	'P'
	.db #0xac	; 172
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x0f	; 15
	.db #0x30	; 48	'0'
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x0f	; 15
	.db #0x30	; 48	'0'
	.db #0x18	; 24
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x18	; 24
	.db #0x64	; 100	'd'
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0xc6	; 198
	.db #0x00	; 0
	.db #0xee	; 238
	.db #0x3c	; 60
	.db #0xc2	; 194
	.db #0x7c	; 124
	.db #0x96	; 150
	.db #0x7e	; 126
	.db #0x81	; 129
	.db #0x7a	; 122	'z'
	.db #0x85	; 133
	.db #0x3c	; 60
	.db #0x43	; 67	'C'
	.db #0x70	; 112	'p'
	.db #0x8e	; 142
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf0	; 240
	.db #0x0c	; 12
	.db #0x14	; 20
	.db #0xe8	; 232
	.db #0x10	; 16
	.db #0x2e	; 46
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x0f	; 15
	.db #0x30	; 48	'0'
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x0f	; 15
	.db #0x30	; 48	'0'
	.db #0x08	; 8
	.db #0x37	; 55	'7'
	.db #0x28	; 40
	.db #0x56	; 86	'V'
	.db #0x2c	; 44
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0xc6	; 198
	.db #0x00	; 0
	.db #0xee	; 238
	.db #0x3c	; 60
	.db #0xc2	; 194
	.db #0x7c	; 124
	.db #0x96	; 150
	.db #0x7e	; 126
	.db #0x81	; 129
	.db #0x7a	; 122	'z'
	.db #0x85	; 133
	.db #0x3c	; 60
	.db #0x43	; 67	'C'
	.db #0x70	; 112	'p'
	.db #0x8e	; 142
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf0	; 240
	.db #0x0c	; 12
	.db #0x10	; 16
	.db #0xec	; 236
	.db #0x24	; 36
	.db #0x5a	; 90	'Z'
	.db #0x24	; 36
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x0f	; 15
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x38	; 56	'8'
	.db #0x47	; 71	'G'
	.db #0x20	; 32
	.db #0x5c	; 92
	.db #0x30	; 48	'0'
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc6	; 198
	.db #0x00	; 0
	.db #0xee	; 238
	.db #0x3c	; 60
	.db #0xc2	; 194
	.db #0x7c	; 124
	.db #0x96	; 150
	.db #0x7e	; 126
	.db #0x81	; 129
	.db #0x7a	; 122	'z'
	.db #0x85	; 133
	.db #0x3c	; 60
	.db #0x43	; 67	'C'
	.db #0x70	; 112	'p'
	.db #0x8e	; 142
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf0	; 240
	.db #0x0c	; 12
	.db #0x10	; 16
	.db #0xec	; 236
	.db #0x18	; 24
	.db #0x64	; 100	'd'
	.db #0x20	; 32
	.db #0x5c	; 92
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x0f	; 15
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x1f	; 31
	.db #0x60	; 96
	.db #0x38	; 56	'8'
	.db #0x47	; 71	'G'
	.db #0x60	; 96
	.db #0x9d	; 157
	.db #0x48	; 72	'H'
	.db #0xb5	; 181
	.db #0x00	; 0
	.db #0xec	; 236
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x0f	; 15
	.db #0x30	; 48	'0'
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x0f	; 15
	.db #0x30	; 48	'0'
	.db #0x18	; 24
	.db #0x27	; 39
	.db #0x30	; 48	'0'
	.db #0x4c	; 76	'L'
	.db #0x10	; 16
	.db #0x68	; 104	'h'
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x0f	; 15
	.db #0x30	; 48	'0'
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x0f	; 15
	.db #0x30	; 48	'0'
	.db #0x18	; 24
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x18	; 24
	.db #0x64	; 100	'd'
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x5f	; 95
	.db #0x0f	; 15
	.db #0x70	; 112	'p'
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x0f	; 15
	.db #0x30	; 48	'0'
	.db #0x08	; 8
	.db #0x37	; 55	'7'
	.db #0x28	; 40
	.db #0x56	; 86	'V'
	.db #0x2c	; 44
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x5f	; 95
	.db #0x0f	; 15
	.db #0x70	; 112	'p'
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x38	; 56	'8'
	.db #0x47	; 71	'G'
	.db #0x20	; 32
	.db #0x5c	; 92
	.db #0x30	; 48	'0'
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x78	; 120	'x'
_WalkingGorb_metasprite0:
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
_WalkingGorb_metasprite1:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_WalkingGorb_metasprite2:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_WalkingGorb_metasprite3:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_WalkingGorb_metasprite4:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_WalkingGorb_metasprite5:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_WalkingGorb_metasprite6:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x16	; 22
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_WalkingGorb_metasprite7:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_WalkingGorb_metasprite8:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x1a	; 26
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_WalkingGorb_metasprite9:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_WalkingGorb_metasprites:
	.dw _WalkingGorb_metasprite0
	.dw _WalkingGorb_metasprite1
	.dw _WalkingGorb_metasprite2
	.dw _WalkingGorb_metasprite3
	.dw _WalkingGorb_metasprite4
	.dw _WalkingGorb_metasprite5
	.dw _WalkingGorb_metasprite6
	.dw _WalkingGorb_metasprite7
	.dw _WalkingGorb_metasprite8
	.dw _WalkingGorb_metasprite9
	.area _INITIALIZER
	.area _CABS (ABS)
