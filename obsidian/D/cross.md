# [[el/D|D]] cross-compiling
## [[D/build]]

- https://wiki.dlang.org/Cross-compiling_with_LDC
- https://habr.com/ru/articles/563418/
- https://github.com/deviator/duseful/tree/master/manuals/crosscompile

[[D/LDC]] is an implicit cross-compiler, i.e., if you have an LDC binary, you can cross-compile, and you don't need multiple LDC executables for each host → target combination. This page shows how to set up LDC for cross-compilation and -linking.

## [[MinGW/MinGW|MinGW]]

- https://github.com/msys2/MINGW-packages/issues/6806
- [GDC MINGW BUILD: version (Windows) NOT DEFINED](https://forum.dlang.org/post/wnlbqikrkuvidjzyoxff@forum.dlang.org)
- https://gcc.gnu.org/bugzilla/show_bug.cgi?id=91595
- [Trying to generate gdc for mingw-w64(x86 and x64) using msys2](https://forum.dlang.org/thread/kgoahnfkdkugsdhozgep@forum.dlang.org)
- [Cross-compilation for Linux from Windows using DMD](https://forum.dlang.org/post/cldjclzlrobmihpjznwx@forum.dlang.org)
	- https://www.reddit.com/r/d_language/comments/sypgaj/dmd_supports_crosscompilation_with_os_switch/

## ![[mtriple]]

## Cross-compiling

The supported targets depend on how the [[LLVM/LLVM|LLVM]] linked against your LDC was built (target architectures enabled in the CMake build command-line). Running `ldc2 -version` shows the list of enabled/registered LLVM backends.

- `ldc2 -mtriple=x86_64-windows-msvc -c foo.d`: generates a foo.obj COFF object file for Win64
- `ldc2 -mtriple=x86_64-apple-darwin -c foo.d`: generates a foo.o Mach-O object file for macOS
- `ldc2 -mtriple=aarch64-linux-gnu -c foo.d`: generates a foo.o ELF object file for Linux AArch64

## Generating static libraries

Generating suited static libraries (`-lib`) works for all targets, on all hosts.

- `ldc2 -mtriple=x86_64-linux-gnu -lib foo.o`: generates a libfoo.a archive
- `ldc2 -mtriple=x86_64-windows-msvc -lib foo.obj`: generates a foo.lib library

As long as your LLVM features the backend for your target, you can obviously directly cross-compile and -archive a library:

- `ldc2 -mtriple=… -lib foo.d`

## Cross-linking executables and shared libraries

Cross-linking requires more work, as we have these requirements:

1. Default libraries (e.g., druntime and Phobos) for the target, as (non-betterC) binaries are linked against these default libraries.
2. C runtime libraries (and startup object files etc.) for the target, as druntime and Phobos don't completely reinvent the wheel and build on top of a C runtime (glibc, musl, Visual C++, Bionic, …). This also applies to `-betterC` binaries.
3. A cross-linker.

### Default libraries

If there's a [prebuilt LDC package](https://github.com/ldc-developers/ldc/releases/) for your desired target, then the simplest variant is to download it (matching the version of your host LDC) and copy the lib[32,64] subdirectories to your host LDC installation (or wherever you like).

If there's no prebuilt LDC package or you prefer cross-compiling druntime and Phobos yourself, check out [Building LDC runtime libraries](https://wiki.dlang.org/Building_LDC_runtime_libraries "Building LDC runtime libraries").

### C runtime libraries and cross-linker

#### Windows targets

The WinSDK and Visual C++ libraries are included in the prebuilt LDC Windows packages since v1.13 (in the mingw subdirectory in the lib directories), so you're already set after copying the lib directories in the previous step.

For Windows targets, LLVM's LLD works nicely as cross-linker on all hosts. Official prebuilt LDC packages feature an integrated LLD and use it by default for Windows targets on non-Windows hosts.

#### Apple targets

Xcode comes with a cross-compilation toolchain for non-native other Apple targets (arm64, iOS, simulators...). Apple clang needs something like -target arm64-apple-ios12.0 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk in the linking cmdline; these flags can be added as -Xcc flags passed to LDC.

#### Non-Apple POSIX targets

The preferred way is to install a gcc/clang toolchain for cross-compilation, e.g., the gcc-aarch64-linux-gnu package on Debian/Ubuntu hosts when targeting Linux AArch64, or the [NDK](https://developer.android.com/ndk/downloads) for Android targets. These toolchains include the C libraries as well as a cross-linker-driver (e.g., aarch64-linux-gnu-gcc or aarch64-linux-android21-clang) configured for those libs and startup object files etc.

### Tweaking the LDC configuration file

LDC needs information about where to find the target's libraries and which cross-linker to use. While you can specify that information on the command-line, it's tedious and error-prone, so the preferred way is to extend the etc/ldc2.conf configuration file by appending a section for your target triple.

These settings will be used automatically when specifying a matching target triple, so that e.g. `ldc2 -mtriple=x86_64-windows-msvc foo.d` is enough to generate a foo.exe Win64 executable.

![[Exemplary sections]]

## Cross-compiling with dub

Starting with dub v1.18 (or v1.17+ bundled with official LDC v1.18 packages), you can cross-compile entire dub projects incl. their dependencies by simply adding `--arch=<LDC triple>` in the dub command-line, after setting up your etc/ldc2.conf configuration file as detailed above.

## Limitations

LDC doesn't have a software compile-time real for arbitrary target `real` precision yet, but uses the host's real for storage and CTFE (exception: it uses 80-bit x87 compile-time precision on Windows/MSVC hosts). So if the target real features a higher precision (e.g., 32-bit ARM → x86, x86 → non-Apple AArch64), `real.max` will overflow to infinity, `real.min_normal` may underflow to 0, CTFE computations will be performed with lower host precision etc.
