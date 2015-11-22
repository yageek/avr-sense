# AVR Makefile

all:
	avr-as -mmcu=attiny2313 -o main.out main.asm
	avr-objcopy -O ihex main.out main.hex

check:
	avrdude -c stk500v2 -p t2313 -P /dev/tty.usbmodem1421

transfer:
	 avrdude -c stk500v2 -p t2313 -P /dev/tty.usbmodem1421 -e -U flash:w:main.hex