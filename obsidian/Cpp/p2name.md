```cpp
#include <dlfcn.h>
#include <cxxabi.h>
```

```cpp
std::string p2name(void (*p)()) {
    std::ostringstream os;
    os << (void*)p << '\t';
    Dl_info dl;
    if (dladdr((void*)p, &dl))
        os << abi::__cxa_demangle(dl.dli_sname, 0, 0, nullptr);
    // os << std::endl;
    return os.str();
}
```

- [[dladdr]]
- [[__cxa_demangle]]

```cpp
QString p2name(void (*c)()) {
    QString ret;
    QTextStream ts(&ret);
    ts << QString::number((size_t)c, 0x10) << '\t';
    Dl_info dl;
    if (dladdr((void*)c, &dl))
        ts << abi::__cxa_demangle(dl.dli_sname, 0, 0, nullptr);
    // ts << endl;
    return ret;
}
```
