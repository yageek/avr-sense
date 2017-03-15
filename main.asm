;
; ********************************************
; * avr-sense                                *
; * [Add more info on software version here] *
; * (C)2015 by yageek                        *
; ********************************************
;
; Included header file for target AVR type

.INCLUDE "tn2313def.inc"

.section .text
.ORG 0x00
	rjmp Main

		
; ============================================
;     M A I N    P R O G R A M    I N I T
; ============================================
;
Main:

; ============================================
;     PORT D Configuration
; ============================================
	
	; All pins of PORTD as Output
	ldi r16, 0xff
	ldi r17, 0x00
	out PORTD, r17
	out DDRD, r16
	nop ; Synchronisation
	sbi PORTD, 0
	
Delay:
	ldi r15, 0xff
	ldi r14, 0xff

;
; ============================================
;         P R O G R A M    L O O P
; ============================================
;
Loop:
	rjmp Loop ; main loop
	

