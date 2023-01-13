ca65 prg0.asm
ca65 prg1.asm
ca65 prg2.asm
ca65 prg3.asm
ca65 prg4.asm
ca65 prg5.asm
ca65 prg6.asm
ca65 prg7.asm

ld65 -C nes.cfg prg0.o prg1.o prg2.o prg3.o prg4.o prg5.o prg6.o prg7.o

rm *.o
rm prg*.bin
