# [[Python]]
[[PEPS]]
[[PEPS#Makefile]]
# format
```Makefile
.PHONY: format
format: tmp/format_py
```
[[PEPS]]
```Makefile
tmp/format_py: $(Y)
	$(PEP) --ignore $(PEPS) -i $? && touch $@
```
