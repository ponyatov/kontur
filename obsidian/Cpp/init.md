### hpp
```Cpp
/// @defgroup init init
/// @{
extern int  main(int argc, char* argv[]);   ///< program entry point
extern void init(int& argc, char* argv[]);  ///< system initialize
extern int  fini(int err = 0);              ///< system finalize & exit
```
![[Cpp/arg#hpp]]
### cpp
```Cpp
void init(int& argc, char* argv[]) {
    arg(0, argv[0]);
    // assert(qapp = new QApplication(argc, argv));
}
```
```Cpp
int fini(int err) { return err; }
```
![[Cpp/arg#cpp]]

[[Cpp/dlfcn]]

[[Cpp/filesize]]
