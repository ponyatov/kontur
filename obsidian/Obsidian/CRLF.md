```shell
grep -Ilsr $'\r$'
```

- https://stackoverflow.com/questions/2517190/how-do-i-force-git-to-use-lf-instead-of-crlf-under-windows

```shell
git config --global core.autocrlf false
git config          core.autocrlf false
```
```shell
git config --global core.eol lf
git config          core.eol lf
```

![[gitattributes]]
