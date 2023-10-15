# var
OS      = $(shell uname -o | sed 's/GNU\///')

# dir
CWD = $(CURDIR)
BIN = $(CWD)/bin

# package
DAPP += bin/hello bin/player

# kontur tools
.PHONY: all
all: $(DAPP)

.PHONY: hello
hello: bin/hello
	$^

.PHONY: player
player: bin/player
	$^

bin/%: D/% D/%/dub.json $(wildcard D/%/src/*.d)
	echo $^
	cd $< ; BIN=$(BIN) dub build

# doc
.PHONY: doc
doc: obsidian

OBSIDIAN_SECTION += kontur Obsidian KB math el qucs SPICE pcb CAD KiCAD
OBSIDIAN_SECTION += D Cpp Python Arduino Linux git license tech tools
OBSIDIAN_SECTION += media game SDL
.PHONY: obsidian
obsidian:
	for section in $(OBSIDIAN_SECTION) ; do \
		echo -n "$$section\t" ;\
		rsync -r ~/metadoc/$$section obsidian/ ;\
	done ; echo

BOOKS += D Cpp Python graph el math
.PHONY: books
books:
	for book in $(BOOKS) ; do \
		echo -n "$$book\t" ;\
		rsync -r ~/doc/$$book doc/ ;\
	done ; echo

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
