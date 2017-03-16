;
; ********************************************
; * avr-sense                                *
; * [Add more info on software version here] *
; * (C)2015 by yageek                        *
; ********************************************
;
; Included header file for target AVR type

.NOLIST   
.INCLUDE "tn2313def.inc"
.LIST

.DEF TEMP1 = R16

.CSEG 
.ORG 0x00
	RJMP reset

.INCLUDe "one_wire.asm"

reset:
	LDI TEMP1, LOW(RAMEND)
	OUT SPL, TEMP1
	SEI
	RJMP loop

loop:
	RJMP loop ; main loop
	

