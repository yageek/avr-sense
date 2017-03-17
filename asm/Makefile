# AVR Makefile

all: main.hex

main.hex: main.asm one_wire.asm
	wine ../AVR2/avrasm2.exe main.asm -fI -I ../AVR2/
clean:
	rm -rf *.out
	rm -rf *.hex
	rm -rf *.obj
	rm -rf *.cof
check:
	avrdude -c stk500v2 -p t2313 -P /dev/tty.usbmodem1411

transfer:
	 avrdude -c stk500v2 -p t2313 -P /dev/tty.usbmodem1411 -e -U flash:w:main.hex