# Multiplix

- https://forum.dlang.org/post/eemwycjmfqvedgggnvnr@forum.dlang.org
	- https://zyedidia.github.io/blog/posts/1-d-baremetal/
	- https://zyedidia.github.io/blog/posts/2-baremetal-visionfive/
	- https://github.com/zyedidia/multiplix

[[Multiplix]] is a small [[OS/OS|OS]] serving as the foundation for some research projects in operating systems. It is currently designed as a monolithic kernel plus a special kernel monitor that runs at a higher privilege level. Multiplix is very much in-progress.

The current status is that Multiplix
- can boot all cores, 
- enable virtual memory and interrupts, 
- supports multiple user-mode processes with a limited set of system calls, and 
- has a simple Unix-like file system.

Current work is focused on expanding the system call interface to support a shell and a basic user-mode environment.

Multiplix supports RISC-V and Armv8, specifically on the following hardware:
- [[RiscV]]
	- [[VisionFive]]: 2-core SiFive [[U74]] 1.0 GHz.
	- [[VisionFive#2]]: 4-core SiFive [[U74]] 1.25 GHz (plus a 5th SiFive [[S7 monitor core]]).
- [[armv8]]
	- Raspberry Pi 3: 4-core ARM Cortex [[A53]] 1.4 GHz.
	- Raspberry Pi 4: 4-core ARM Cortex [[A72]] 1.5-1.8 GHz.
