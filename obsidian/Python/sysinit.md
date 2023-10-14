# Python system init
#Py #sysinit

## `Makefile`

```Makefile
.PHONY: all
all: $(PY) $(MODULE).py
	$(MAKE) test format
	$^ $@

.PHONY: web
web: $(PY) $(MODULE).py
	$(MAKE) test format
	$^ $@
	$(MAKE) $@

.PHONY: repl
repl: $(PY) $(MODULE).py
	$(MAKE) test format
	$(PY) -i $(MODULE).py $@
	stty echo
	$(MAKE) $@
```

## `script.py`

```Py
if __name__ == '__main__':
    if sys.argv[1] == 'web':
        engine.eval(glob)
    if sys.flags.interactive:
        print(glob)
```
