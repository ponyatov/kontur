# [[Python]]
```Makefile
# tool
PYT    = $(shell which pytest)
```
```Makefile
# test
test: tmp/test_py

tmp/test_py: $(Y)
	$(PYT) test_$(MODULE).py && touch $@
```
