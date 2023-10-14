```Makefile
C  += src/$(MODULE).cpp
H  += inc/$(MODULE).hpp
S  += $(C) $(H) $(MODULE).pro
```
```Makefile
CP += tmp/$(MODULE).parser.cpp tmp/$(MODULE).lexer.cpp
HP += tmp/$(MODULE).parser.hpp
```
## main

[[Cpp/main]]

![[skelex/main]]

![[Cpp/arg]]

## [[readline]]

## [[skelex]]
