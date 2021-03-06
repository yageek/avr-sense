#define F_CPU 8000000

#include <avr/io.h>
#include <util/delay.h>

#define LED 1<<0

int main(void) {

    DDRD |= _BV(DDD0);
    
    while (1) {
       PORTD |= _BV(PD0);
       _delay_ms(100);
       PORTD &= ~(_BV(PD0));
       _delay_ms(100);
    }
}