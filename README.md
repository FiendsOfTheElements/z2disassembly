# z2disassembly
Disassembly of Zelda II: The Adventure of Link for NES.

Originally pulled from https://lemmy.neocities.org/zelda2/zelda2  
Original disassembly by Trax

## Instructions
To build a new Zelda 2 ROM, you'll need the data for the CHR banks (the game's graphics).
You can extract these from an original ROM using `rip-chr.sh`, or you can swap in your own edited graphics.

The build script is written for Bash, and assumes you have ca65 and ld65 installed.
To do this in Linux, just use yum or apt:
```bash
$ apt install ca65
```

Then just run `build.sh` and it will assemble the ROM.

For Windows, I recommend installing WSL, which is freely available in the Microsoft Store for Windows 10 or 11.
Or if you like, you can try to write a Batch script based on the Bash script.  If you do, please open a pull request.  :)
