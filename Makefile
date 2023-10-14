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
	rsync -r ~/metadoc/KB       obsidian/
	rsync -r ~/metadoc/el       obsidian/
	rsync -r ~/metadoc/qucs     obsidian/
	rsync -r ~/metadoc/SPICE    obsidian/
	rsync -r ~/metadoc/pcb      obsidian/
	rsync -r ~/metadoc/CAD      obsidian/
	rsync -r ~/metadoc/KiCAD    obsidian/
	rsync -r ~/metadoc/D        obsidian/
	rsync -r ~/metadoc/Cpp      obsidian/
	rsync -r ~/metadoc/Python   obsidian/
	rsync -r ~/metadoc/Arduino  obsidian/
	rsync -r ~/metadoc/Linux    obsidian/
	rsync -r ~/metadoc/git      obsidian/
	rsync -r ~/metadoc/license  obsidian/

.PHONY: books
books:
	rsync -r ~/doc/D            doc/
	rsync -r ~/doc/Cpp          doc/
	rsync -r ~/doc/Python       doc/
	rsync -r ~/doc/graph        doc/
	rsync -r ~/doc/el           doc/
	rsync -r ~/doc/math         doc/

# install
.PHONY: install update gz
install: $(OS)_install
	$(MAKE) update
update: $(OS)_update

.PHONY: $(OS)_install $(OS)_update
Linux_install:
Linux_update:
# sudo apt update
	sudo apt install -yu `cat apt.$(OS)`
