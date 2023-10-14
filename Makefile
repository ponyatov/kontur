# var
OS      = $(shell uname -o | sed 's/GNU\///')

# kontur tools
.PHONY: all
all: hello

.PHONY: hello
hello:
	dub run :$@

# doc
.PHONY: doc
doc: obsidian

.PHONY: obsidian
obsidian:
	rsync -r ~/metadoc/kontur   obsidian/
	rsync -r ~/metadoc/Obsidian obsidian/
	rsync -r ~/metadoc/el       obsidian/
	rsync -r ~/metadoc/qucs     obsidian/
	rsync -r ~/metadoc/pcb      obsidian/
	rsync -r ~/metadoc/D        obsidian/
	rsync -r ~/metadoc/Arduino  obsidian/
	rsync -r ~/metadoc/CAD      obsidian/

# install
.PHONY: install update gz
install: $(OS)_install
	$(MAKE) update
update: $(OS)_update

.PHONY: $(OS)_install $(OS)_update
Linux_install:
Linux_update:
	sudo apt update
	sudo apt install -yu `cat apt.$(OS)`
