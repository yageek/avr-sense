all: main.c
	avr-gcc -Os -mmcu=attiny2313 -c main.c
	avr-gcc -mmcu=attiny2313 -o main.elf main.o
	avr-objcopy -j .text -j .data -O ihex main.elf main.hex
