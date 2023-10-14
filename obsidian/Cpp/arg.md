# `arg()`
## вывод аргумента командной строки в [[stdout]]

### hpp
```cpp
extern void  arg(int argc, char* argv);     ///< print command line argument
/// @}
```

- [[Cpp/main]]
- [[Cpp/main.cpp#arg]]

### cpp
```cpp
void arg(int argc, char *argv) {  //
    // printf("argv[%i] = <%s>\n", argc, argv);
    std::cerr << "argv[" << argc << "] = <" << argv << ">\n";
}
```
### 

- `arg()` вывод аргумента командной строки в [[stdout]]
- [[argv]] массив указателей на параметры командной строки
- [[printf]] стандартный форматированный вывод

[[metaL/tag]]
[[metaL/val]]

[[cpp/hpp]]
![[Cpp/init#hpp|init]]
[[Cpp/main]]

```Cpp
void arg(int argc, char *argv) {
    #ifdef QT_CORE_LIB
        qDebug() << "argv[" << argc << "] = <" << argv << "]";
    #else
        #error Qt
        printf("argv[%i] = <%s>\n", argc, argv);
    #endif
}
```
- `arg()` вывод аргумента командной строки в [[stdout]]
- [[argv]] массив указателей на параметры командной строки
- [[printf]] стандартный форматированный вывод
- [[Qt/QT_CORE_LIB]] для условной компиляции с [[Qt/Qt]]
