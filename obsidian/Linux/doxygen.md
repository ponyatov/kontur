
# `doxygen`

```Makefile
# doc
.PHONY: doxy
doxy: .doxygen
	rm -rf docs ; doxygen $< 1>/dev/null
```

![[doxy.gen]]
![[doxygen/layout]]
