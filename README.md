Build vasm and vlink for Win32
==============================

This small repository contains a handy script to build vasm for Win32
targeting Motorola 68k and PowerPC, both with the standard syntax,
and vlink for Win32.

We use this to provide various Win32 hosted Free Pascal cross-compilers
targeting m68k-amiga, m68k-atari, powerpc-amiga, and powerpc-morphos.

Requirements:
* mingw-w64
* cURL

I used the `mingw-w64` package from Homebrew on macOS. Most Linux distros
have a similar package, that should work too.

Usage:
* `build-win32.sh`

This command will fetch latest release vasm and vlink sources, and build
them for the aforementioned targets using mingw-w64 GCC.

Look into the scripts to change the source URLs if you want to build the
daily snapshots instead.
