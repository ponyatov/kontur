# git checkout

## --orphan

```shell
cd ~/mozg
git checkout --orphan shadow
ln -fs ~/rc ./rc
git add -A && git commit -a -m "."
git push -v -u bb shadow
```
