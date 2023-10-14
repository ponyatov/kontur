# [[D/D|D]] wrapper

> a **higher-level interface** to a library, with most abstractions available in [[D/D|D]] *target language*

For example, a wrapper for [[SDL/OpenGL|OpenGL]] written in [[D/D|D]]
- would be written on top of an OpenGL **binding** that is also written in D, 
	- while a C++ wrapper would be written on top of the C library directly.

> Wrappers typically provide functionality that makes using the library more convenient.

For example, an OpenGL wrapper for D might use classes to represent OpenGL objects such as [[texture]]s and [[shader]]s, encapsulating commonly grouped function calls into single class methods. However, D wrappers can be made that use other [[D/binding|binding]]/[[wrapper]] packages to interface with the C libraries. For example, an OpenGL wrapper can be written on top of [DerelictGL3](https://github.com/DerelictOrg/DerelictGL3).
