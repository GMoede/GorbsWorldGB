;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module WalkingGorbUp
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _WalkingGorbUp_metasprites
	.globl _WalkingGorbUp_metasprite9
	.globl _WalkingGorbUp_metasprite8
	.globl _WalkingGorbUp_metasprite7
	.globl _WalkingGorbUp_metasprite6
	.globl _WalkingGorbUp_metasprite5
	.globl _WalkingGorbUp_metasprite4
	.globl _WalkingGorbUp_metasprite3
	.globl _WalkingGorbUp_metasprite2
	.globl _WalkingGorbUp_metasprite1
	.globl _WalkingGorbUp_metasprite0
	.globl _WalkingGorbUp_tiles
	.globl _WalkingGorbUp_palettes
	.globl b___func_WalkingGorbUp
	.globl ___func_WalkingGorbUp
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
;gen/WalkingGorbUp.c:7: BANKREF(WalkingGorbUp)
;	---------------------------------
; Function __func_WalkingGorbUp
; ---------------------------------
	b___func_WalkingGorbUp	= 0
___func_WalkingGorbUp::
	.local b___func_WalkingGorbUp 
	___bank_WalkingGorbUp = b___func_WalkingGorbUp 
	.globl ___bank_WalkingGorbUp 
	.area _CODE
_WalkingGorbUp_palettes:
	.dw #0x0000
	.dw #0x7e6c
	.dw #0x38e7
	.dw #0x0000
_WalkingGorbUp_tiles:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0x60	; 96
	.db #0x90	; 144
	.db #0x80	; 128
	.db #0x70	; 112	'p'
	.db #0x40	; 64
	.db #0xb0	; 176
	.db #0x60	; 96
	.db #0x98	; 152
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0x30	; 48	'0'
	.db #0xc8	; 200
	.db #0x20	; 32
	.db #0x50	; 80	'P'
	.db #0x20	; 32
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0x60	; 96
	.db #0x90	; 144
	.db #0x80	; 128
	.db #0x70	; 112	'p'
	.db #0x40	; 64
	.db #0xb0	; 176
	.db #0x60	; 96
	.db #0x98	; 152
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0x20	; 32
	.db #0xd8	; 216
	.db #0x20	; 32
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0x60	; 96
	.db #0x90	; 144
	.db #0x80	; 128
	.db #0x60	; 96
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0x40	; 64
	.db #0xb0	; 176
	.db #0x60	; 96
	.db #0x98	; 152
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0x20	; 32
	.db #0xd8	; 216
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0x60	; 96
	.db #0x90	; 144
	.db #0x80	; 128
	.db #0x60	; 96
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0x40	; 64
	.db #0xb0	; 176
	.db #0x60	; 96
	.db #0x98	; 152
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0x20	; 32
	.db #0xd8	; 216
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0x40	; 64
	.db #0xb0	; 176
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0x60	; 96
	.db #0x98	; 152
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0x30	; 48	'0'
	.db #0xc8	; 200
	.db #0x30	; 48	'0'
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0x40	; 64
	.db #0xb0	; 176
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0x60	; 96
	.db #0x98	; 152
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0x30	; 48	'0'
	.db #0xc8	; 200
	.db #0x20	; 32
	.db #0x50	; 80	'P'
	.db #0x20	; 32
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0x60	; 96
	.db #0x90	; 144
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0x60	; 96
	.db #0x98	; 152
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0x20	; 32
	.db #0xd8	; 216
	.db #0x20	; 32
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0x60	; 96
	.db #0x90	; 144
	.db #0xa0	; 160
	.db #0x40	; 64
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0x60	; 96
	.db #0x98	; 152
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0x20	; 32
	.db #0xd8	; 216
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0x60	; 96
	.db #0x90	; 144
	.db #0xa0	; 160
	.db #0x40	; 64
	.db #0x60	; 96
	.db #0x90	; 144
	.db #0x60	; 96
	.db #0x90	; 144
	.db #0x60	; 96
	.db #0x98	; 152
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0x20	; 32
	.db #0xd8	; 216
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0x60	; 96
	.db #0x90	; 144
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0x60	; 96
	.db #0x90	; 144
	.db #0x60	; 96
	.db #0x90	; 144
	.db #0x60	; 96
	.db #0x98	; 152
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0x30	; 48	'0'
	.db #0xc8	; 200
	.db #0x30	; 48	'0'
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x30	; 48	'0'
_WalkingGorbUp_metasprite0:
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
_WalkingGorbUp_metasprite1:
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
_WalkingGorbUp_metasprite2:
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
_WalkingGorbUp_metasprite3:
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
_WalkingGorbUp_metasprite4:
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
_WalkingGorbUp_metasprite5:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x16	; 22
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_WalkingGorbUp_metasprite6:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x1a	; 26
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_WalkingGorbUp_metasprite7:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_WalkingGorbUp_metasprite8:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_WalkingGorbUp_metasprite9:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_WalkingGorbUp_metasprites:
	.dw _WalkingGorbUp_metasprite0
	.dw _WalkingGorbUp_metasprite1
	.dw _WalkingGorbUp_metasprite2
	.dw _WalkingGorbUp_metasprite3
	.dw _WalkingGorbUp_metasprite4
	.dw _WalkingGorbUp_metasprite5
	.dw _WalkingGorbUp_metasprite6
	.dw _WalkingGorbUp_metasprite7
	.dw _WalkingGorbUp_metasprite8
	.dw _WalkingGorbUp_metasprite9
	.area _INITIALIZER
	.area _CABS (ABS)
