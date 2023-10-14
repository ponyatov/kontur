# [[Obsidian]] at [[Debian10]]
```shell
#!/bin/sh
git pull -v
obsidian obsidian://open?path=`pwd` --no-sandbox &
git gui &
```
