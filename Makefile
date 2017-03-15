# AVR Makefile

all: main.hex

main.hex: main.asm
	avr-as -mmcu=attiny2313 -o main.out main.asm
	avr-objcopy -O ihex main.out main.hex

clean:
	rm -rf main.out
	rm -rf main.hex
check:
	avrdude -c stk500v2 -p t2313 -P /dev/tty.usbmodem1411

transfer:
	 avrdude -c stk500v2 -p t2313 -P /dev/tty.usbmodem1411 -e -U flash:w:main.hex