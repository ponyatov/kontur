## server

```sh
mkdir ~/kait ; cd ~/kait
git init --shared
git config receive.denyCurrentBranch updateInstead
```

## workstation

```Makefile
SC = 212.193.48.213

ssh:
#	ssh root@$(SC)
	ssh $(USER)@$(SC)

simplecloud:
	git remote rm  sc
	git remote add sc ssh://$(USER)@$(SC)/home/$(USER)/$(MODULE)

sc:
	git push -v sc $(BRANCH)
```

for 

```sh
ssh $(USER)@$(SC) "cd $(MODULE) ; git reset --hard HEAD"
```


[[torrent/tracker]]