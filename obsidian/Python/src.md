```Makefile
# src
Y  += src/$(MODULE).py src/config.py
S  += $(Y)
```

```Makefile
files:
	touch $(Y) requirements.txt
```

![[Python/all]]
