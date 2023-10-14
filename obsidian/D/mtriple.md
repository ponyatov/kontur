# `-mtriple`

The fundamental instrument for cross-compilation is [[LDC]]'s `-mtriple` command-line option (the corresponding clang switch is -target). It defines the target for code-generation, incl. architecture and operating system.

Here are some popular triples:

- `x86_64-linux-gnu`: [[Linux/Linux|Linux]] x86_64 with glibc
- `x86_64-apple-darwin`: [[MacOS]] x64
- `x86_64-windows-msvc`: [[Windows]] x64
- `i686-linux-musl`: Linux x86 with [[libc/musl]]
- `i686-windows-msvc`: Windows x86
- `armv6-linux-gnueabihf`: Linux ARMv6 with glibc and hard-float ABI
- `armv7a-unknown-linux-androideabi`: Android ARMv7-A
- `aarch64-linux-android`: Android [[hw/aarch64|aarch64]]
- `aarch64-linux-gnu`: Linux AArch64 with [[glibc]]
- `arm64-apple-macos`: macOS arm64
- `arm64-apple-ios12.0`: iOS arm64 ≥ 12.0
- `wasm32-unknown-unknown-webassembly`: 32-bit [[WebAssembly]]

Run `ldc2 -version` to check your default/host triple (Default target).
