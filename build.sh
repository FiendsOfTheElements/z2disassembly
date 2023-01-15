ca65 -I inc src/prg0.asm
ca65 -I inc src/prg1.asm
ca65 -I inc src/prg2.asm
ca65 -I inc src/prg3.asm
ca65 -I inc src/prg4.asm
ca65 -I inc src/prg5.asm
ca65 -I inc src/prg6.asm
ca65 -I inc src/prg7.asm

ld65 -C nes.cfg \
	src/prg0.o \
	src/prg1.o \
	src/prg2.o \
	src/prg3.o \
	src/prg4.o \
	src/prg5.o \
	src/prg6.o \
	src/prg7.o

cat \
	bin/header.bin \
	prg0.bin \
	prg1.bin \
	prg2.bin \
	prg3.bin \
	prg4.bin \
	prg5.bin \
	prg6.bin \
	prg7.bin \
	bin/chr0.bin \
	bin/chr1.bin \
	bin/chr2.bin \
	bin/chr3.bin \
	bin/chr4.bin \
	bin/chr5.bin \
	bin/chr6.bin \
	bin/chr7.bin \
	bin/chr8.bin \
	bin/chr9.bin \
	bin/chrA.bin \
	bin/chrB.bin \
	bin/chrC.bin \
	bin/chrD.bin \
> Zelda2Reassembled.nes

rm src/*.o
rm *.bin
