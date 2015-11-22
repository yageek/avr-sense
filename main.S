.include "tn2313def.inc"

rjmp init

init:
    ser r16
    out DDRB, r16
    out DDRD, r16

    clr r16

    out PORTB, r16
    out PORTD, r16

    .global main

main:
    sbi PORTB, 0
    rjmp main
