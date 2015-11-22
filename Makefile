# AVR Makefile

all:
	avr-as -mmcu=attiny2313 -o main.out main.S
	avr-objcopy -O ihex main.out main.hex
