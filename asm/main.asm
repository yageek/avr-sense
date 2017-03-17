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
.DEF TEMP2 = R17

.CSEG 
.ORG 0x00
	RJMP reset

reset:
	LDI TEMP1, LOW(RAMEND)
	OUT SPL, TEMP1
	SEI
	RJMP setup

setup:
	LDI TEMP1, 0xFF
	LDI TEMP2, 0x00
	out DDRD, TEMP1
	out PORTD, TEMP2
	SBI PORTD, 0
	
loop:
	RJMP loop ; main loop
	

