```Makefile
.PHONY: gz src
gz: src
src: src/$(LINUX)/README src/$(GCC)/README src/$(BINUTILS)/README
```
