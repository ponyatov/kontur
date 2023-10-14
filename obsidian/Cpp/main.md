# `int main()`

### cpp

```Cpp
#include "app.hpp"
```
```Cpp
int main(int argc, char *argv[]) {
	init(argc, argv);
    for (int i = 1; i < argc; i++) {
        arg(i, argv[i]);
        yyfile = argv[i];
        assert(yyin = fopen(yyfile, "r"));
		yyparse();
		fclose(yyin);
    }
    return fini();
}
```
- [[Cpp/arg]]
- [[Cpp/init]]
- [[skelex/skelex|skelex]]
- [[metaL/metaL]]

### hpp

### 

[[Cpp/app.hpp]]

> [[Cpp/arg]]
> [[Cpp/init]]
> [[Cpp/GUI]]

[[Cpp/hpp#std]]
[[Cpp/hpp#STL]]
