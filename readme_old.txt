Jaguar GPU Debugger v0.8 beta !

 - by Orion_ [2007-2008]

http://onorisoft.free.fr/
onorisoft@free.fr

made with Delphi 5 and now Lazarus.
http://www.lazarus.freepascal.org/


This is a beta version release !

Most of the instructions are emulated, about 3/4 of them tested. (I count on YOU to give me bug report for the others ^^)


What it is:
¯¯¯¯¯¯¯¯¯¯¯
A simple debugger to help the poor jaguar coder that gain headache coding stuffs on the GPU.


What it is NOT: (and will probably never be)
¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
A cycle accurate complete gpu emulator (I mean, emulating interrupts, gpu special registers and so on...)


How to use it:
¯¯¯¯¯¯¯¯¯¯¯¯¯¯
First, select the GPU or DSP mode.
Then load you bin file containing GPU/DSP Code.
Now use the Run GPU or Step/Skip buttons to debug.
To change the PC, edit the address in the edit box then hit enter.
To change the registers values, simple left click on a register in one of the registers window.
To put one breakpoint, simple left click on the code window.

Warning: in DSP mode, no DSP specific instructions are emulated for the moment !
Only bankswitching and GPU/DSP Stop from hardware registers are emulated (depending on GPU or DSP mode).
Also G_HIDATA and G_REMAIN are emulated.


ToDo:
¯¯¯¯¯
- Fix the "breakpoint - run - breakpoint stop - run" bug
- Add a Memory Dump and/or a Realtime Memory Viewer


Hopefully Emulated Instructions:
¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
- abs
- add
- addc
- addq
- addqt
- and
- bclr
- bset
- btst
- cmp
- cmpq
- div
- imult
- jr
- jump
- load
- load r14+n
- load r15+n
- load r14+rn
- load r15+rn
- loadb
- loadw
- loadp
- move
- move PC
- movefa
- movei
- moveq
- moveta
- mult
- neg
- nop
- not
- or
- pack
- ror
- rorq
- sat8
- sat16
- sat24
- sh
- sha
- sharq
- shlq
- shrq
- store
- store r14+n
- store r15+n
- store r14+rn
- store r15+rn
- storeb
- storep
- storew
- sub
- subc
- subq
- subqt
- unpack
- xor


Still NOT Emulated Instructions: (from highest to lowest 'todo' priority)
¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
- imultn
- imacn
- resmac

- mmult
- mtoi
- normi


Enjoy ! ;)
¯¯¯¯¯¯¯¯¯¯
26/04/2008 - 02h01 - v0.8:
Added the possibility to Stop the GPU/DSP from G/D_CTRL register.
Added Read/Write of G_HIDATA and G_REMAIN registers from memory.
Added the division remainder (G_REMAIN) when a division is performed, thanks to SebRmv for the algorythm.
Added a warning on loadb/w and storeb/w instructions when accessing internal GPU/DSP ram (this is not allowed)

13/01/2008 - 00h07 - v0.7:
Fixed a bug in Sharq/sha instruction, the shift was wrong if the reg was < 0, only the MSB was set.

09/01/2008 - 21h45 - v0.6:
Public beta release

25/11/2007 - 00h07 - v0.6:
Modified Jump condition code strings, now more explicit (EQ/NE/HI/GE/LE/GT/LT/CC/CS)

08/11/2007 - 23h56 - v0.5:
Added instruction prefetch hack for Jump and Jr instructions, now the instruction right after a Jump/Jr is executed before the Jump actually occur.
Added a "Skip instruction" button.
Added Key Shortcuts, F9/F10/F11/F12.
Added imult, mult and div instructions ! (I did several test and I get the same results as the real jaguar gpu)
Fixed indexed store (r14/r15) registers window pict.

06/11/2007 - 21h28 - v0.4:
Ported the project to Lazarus, this is an open source Delphi equivalent.
so now anybody without Delphi can compile this project and contribute to it :)
Pro: the GUI is a lot faster than Delphi, loading a new code in the debugger took a lots of time before, now it's instantaneous.
Con: the execution is two time slower than Delphi, so the "Run GPU" function will be slower. (but who cares, this is a debugger, not an emulator !)

04/11/2007 - 15h29 - v0.3:
Fixed the addq/subq #0,rn bug.
Added an automatic scrolling !
Added an option to disable memory read/write/alignment warning.
Added a GPU/DSP Mode selection.
Added bank switching from GPU/DSP hardware register.
Modified the PC edition.
Fixed move PC,Rn.
Added '$' to movei instruction.
Fixed moveta register window pict bug.
Now emulating all the Jaguar memory space from 0 to $F1D000 (need 15Meg of memory).

04/11/2007 - 12h15 - v0.2:
Fixed the ReadLong bug, and sh/sha shift bug.
Added a StopGPU when program's end is reached.

03/11/2007 - 23h42 - v0.1:
Initial Release
