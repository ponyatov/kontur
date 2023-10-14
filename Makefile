.PHONY: doc
doc: obsidian

.PHONY: obsidian
obsidian:
	rsync -r ~/metadoc/kontur  obsidian/
	rsync -r ~/metadoc/el      obsidian/
	rsync -r ~/metadoc/qucs    obsidian/
	rsync -r ~/metadoc/pcb     obsidian/
	rsync -r ~/metadoc/D       obsidian/
	rsync -r ~/metadoc/Arduino obsidian/
	rsync -r ~/metadoc/CAD     obsidian/
