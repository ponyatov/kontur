![[make/md5]]
```Makefile
$(SRC)/%/README: $(GZ)/%.tar.gz
	$(MAKE) md5
	cd src ;  zcat $< | tar x && touch $@
$(SRC)/%/README: $(GZ)/%.tar.xz
	$(MAKE) md5
	cd src ; xzcat $< | tar x && touch $@
```
