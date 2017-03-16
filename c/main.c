#define F_CPU 8000000

#include <avr/io.h>
#include <util/delay.h>

#define LED 1<<0

int main(void) {

    for(;;) {
        PORTD = 0x00;
       _delay_ms(100);
       PORTD = 0xff;
       _delay_ms(100);
    }
}