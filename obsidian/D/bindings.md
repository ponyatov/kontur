# [[D/D|D]] bindings

- **https://wiki.dlang.org/D_binding_for_C**
	- http://p0nce.github.io/d-idioms/#Porting-from-C-gotchas
		- https://dlang.org/articles/ctod.html
	- https://github.com/jacob-carlborg/dstep
- https://derelictorg.github.io/bindings/
- https://dlang.org/blog/2017/12/05/interfacing-d-with-c-getting-started/
- https://www.gamedev.net/articles/programming/general-and-gameplay-programming/binding-d-to-c-r3122/
- https://wiki.dlang.org/D_binding_for_C


> a direct interface for [[D/D|D]] language that enables the library to be used in another language ([[Cpp/C|C]] [[Cpp/C++|C++]]).

![[D/binding]]
![[D/wrapper]]
![[static linking]]
![[dynamic linking]]
![[dynamic loading]]

```D
module readline;
pragma(lib, "readline");
```

> [[D/WinAPI]]

![[ImportC]]
