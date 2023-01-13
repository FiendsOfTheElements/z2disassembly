ca65 prg0.asm
ca65 prg1.asm
ca65 prg2.asm
ca65 prg3.asm
ca65 prg4.asm
ca65 prg5.asm
ca65 prg6.asm
ca65 prg7.asm

ld65 -C nes.cfg prg0.o prg1.o prg2.o prg3.o prg4.o prg5.o prg6.o prg7.o

cat \
	header.bin \
	prg0.bin \
	prg1.bin \
	prg2.bin \
	prg3.bin \
	prg4.bin \
	prg5.bin \
	prg6.bin \
	prg7.bin \
	chr0.bin \
	chr1.bin \
	chr2.bin \
	chr3.bin \
	chr4.bin \
	chr5.bin \
	chr6.bin \
	chr7.bin \
	chr8.bin \
	chr9.bin \
	chrA.bin \
	chrB.bin \
	chrC.bin \
	chrD.bin \
> Zelda2Reassembled.nes

rm *.o
rm prg*.bin
