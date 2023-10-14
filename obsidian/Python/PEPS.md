# `PEPS=`
## [[autopep8]]

```Makefile
# var
PEPS    = E26,E302,E305,E401,E402,E701,E702

# tool
PEP     = autopep8
```

|||
|-|-|
E26  | remove [[doxygen]] double `##` comments
E302 |  double CR before `def`
E305 | double CR before code block
E401 | split `import`s into multiple lines
E402 | move imports to top of file
E701 | split single line if/try/..
E702 | split semicolons

## `Makefile`
![[Python/format]]
[[Python/settings]]