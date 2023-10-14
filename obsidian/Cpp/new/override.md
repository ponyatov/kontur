# [[Cpp/new|new]] override

- https://stackoverflow.com/questions/11431685/overriding-delete-with-parameters

I can override global [[new/operator|operator new]] with different parameters, so for example I can have:

```cpp
void* operator new (std::size_t size) throw (std::bad_alloc);
void* operator new (std::size_t size, int num) throw (std::bad_alloc);
```

which can be called separately as

```cpp
int* p1 = new int; // calls new(size_t)
int* p2 = new(5) int; // calls new(size_t, int)
```


[[pmem]]