```Makefile
# Linux
APP ?= pyLinux
HW  ?= qemu386
include   hw/$(HW).mk
include  cpu/$(CPU).mk
include arch/$(ARCH).mk
include  app/$(APP).mk
```

- hw
	- [[hw/qemu386]]
- cpu
	- [[cpu/i486]]
	- [[cpu/i686]]
- arch
	- [[arch/i386]]
 