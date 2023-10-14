```Makefile
# install
.PHONY: install update updev
install: $(OS)_install doc gz $(PIP)
	$(MAKE) update
update:  $(OS)_update
	$(PIP)  install --user -U    pip autopep8 pytest
	$(PIP)  install --user -U -r requirements.txt
```
- [[Python/reqs]]
- [[Python/autopep8]]
