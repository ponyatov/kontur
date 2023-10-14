# filesize()

https://stackoverflow.com/a/6039648/2134384

```Cpp
extern size_t filesize(char* fname);  /// file size in bytes/chars
```
```Cpp
size_t filesize(char* fname) {
    struct stat stat_buf;
    size_t ret = stat(fname, &stat_buf);
    return ret == 0 ? stat_buf.st_size : 0;
}
```
