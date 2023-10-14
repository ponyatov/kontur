# [[Python]]
```Makefile
# all
all: $(PY) src/$(MODULE).py lib/$(MODULE).ini
	$^
	$(MAKE) format
```
