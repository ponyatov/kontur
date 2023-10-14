# Dl_info

https://man7.org/linux/man-pages/man3/dladdr.3.html

```cpp
typedef struct {
	const char *dli_fname;  /* Pathname of shared object that
							  contains address */
	void       *dli_fbase;  /* Base address at which shared
							  object is loaded */
	const char *dli_sname;  /* Name of symbol whose definition
							  overlaps addr */
	void       *dli_saddr;  /* Exact address of symbol named
							  in dli_sname */
} Dl_info;
```

> [[dladdr]]
