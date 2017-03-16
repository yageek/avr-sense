#define F_CPU 8000000

#include <avr/io.h>
#include <util/delay.h>

#define LED 1<<0

int main(void) {

    DDRD |= _BV(DDRD5);
    
    while (1) {
       PORTD |= _BV(PORTD5);
       _delay_ms(100);
       PORTD &= ~(_BV(PORTD5));
       _delay_ms(100);
    }
}