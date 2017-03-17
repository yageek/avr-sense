all: main.c
	avr-gcc -Os -mmcu=attiny2313 -c main.c
	avr-gcc -mmcu=attiny2313 -o main.elf main.o
	avr-objcopy -j .text -j .data -O ihex main.elf main.hex
clean:
	rm -rf *.out
	rm -rf *.hex
	rm -rf *.obj
	rm -rf *.cof
check:
	avrdude -c stk500v2 -p t2313 -P /dev/tty.usbmodem1411

transfer:
	 avrdude -c stk500v2 -p t2313 -P /dev/tty.usbmodem1411 -e -U flash:w:main.hex