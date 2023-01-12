ca65 bank0.asm
ca65 bank1.asm
ca65 bank2.asm
ca65 bank3.asm
ca65 bank4.asm
ca65 bank5.asm
ca65 bank6.asm
ca65 bank7.asm

ld65 -C nes.cfg bank0.o bank1.o bank2.o bank3.o bank4.o bank5.o bank6.o bank7.o

rm *.o
