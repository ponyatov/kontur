# [[git]] [[branch]] для рабочей (закрытой) копии проекта

```shell
git checkout --orphan shadow
ln -fs ~/rc rc
```
```shell
git add -A && git commit -a -m "." && git push -v -u bb shadow
```
