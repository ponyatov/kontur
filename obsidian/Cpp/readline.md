# `libreadline`
- https://web.mit.edu/gnu/doc/html/rlman_2.html

## [[qmake#pro]]
```
LIBS += -Lreadline
```

```cpp
#include <readline/readline.h>
#include <readline/history.h>
extern int REPL();  /// run command line interface
```
### 

extern int repl(); /// run command line interface with `libreadline`
```
```cpp
int main() { return REPL(); }
```
```Makefile
# cfg
L += -lreadline
```

## history

- https://eli.thegreenplace.net/2016/basics-of-using-the-readline-library/

```cpp
int repl() {
    char *buf;
    while ((buf = readline(">> ")) != nullptr) {
        if (strlen(buf) > 0) { add_history(buf); }
        printf("[%s]\n", buf);
        free(buf);
    }
    return 0;
}
```

![[lang/REPL|REPL]]

- [[syntax/parse string]]
- [[free]]: [[readline]] [[malloc]]'s a new buffer every time.
