# [[Makefile]] for [[C++]]

## src

```Makefile
# src
C  += src/$(MODULE).cpp
H  += inc/$(MODULE).hpp
SS += src/$(MODULE).lex src/$(MODULE).yacc
SS += $(C) $(H)
S  += $(SS)
```
![[cmake/files]]
```Makefile
CP += tmp/$(MODULE).parser.cpp tmp/$(MODULE).lexer.cpp
HP += tmp/$(MODULE).parser.hpp
F  += lib/$(MODULE).ini
S  += $(F)
```

## cfg

```Makefile
# cfg
CFLAGS += -O0 -g3 -Iinc -Itmp -std=c++11
```

## all

```Makefile
# all
.PHONY: all
all: bin/$(MODULE) $(F)
	$^
```

![[Cpp/format]]

## [[rule]]

```Makefile
# rule
bin/$(MODULE): $(C) $(H) $(CP) $(HP)
	$(CXX) $(CFLAGS) -o $@ $(C) $(CP) $(L)
```

![[skelex#Makefile]]
