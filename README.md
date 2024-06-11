# crateOS
Linux-based operating system built to resist attack.

## Overview
crateOS is built on the Linux kernel, but I will add some creativity. For example, a sample session in the os is shown below:

1) The computer is powered on -> the hard drive/SSD inflates an image of the bootloader.
2) The hard drive/SSD is isolated from the running program.
3) The bootloader inflates an image of the kernel.
4) The bootloader is isolated from the running program.
5) The kernel loads two TMs (thread managers). These two managers isolate the processors: one for WiFi connection and one without.
6) Finally, a session code is given, for added security at shutdown.

During the session, everything runs as normal. Any changes to the filesystem will be directed to RAM.
At shutdown, the following will occur:

1) The processes are killed (in the nicest way possible) and the TMs are deflated into an image on the kernel.
2) The bootloader is awakened, and a program cleans and fixes any flaws in the kernel binaries.
3) The kernel is deflated into an image on the bootloader.
4) The hard drive/SSD is awakened, and the bootloader is deflated into an image on the hard drive/SSD.
5) The computer is powered off.

## How will I do this?
I don't know how to write this code, or even if it's possible. All the more reason to jump on this project with me and help. Literally _any_ help would be appreciated.
