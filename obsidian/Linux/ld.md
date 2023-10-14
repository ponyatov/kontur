# `ld`
## [[GNU]] линкер

## script

- https://www.phaedsys.com/principals/emprog/emprogdata/thunderbench-Linker-Script-guide.pdf

Firmware build process is controlled by [[ld#script]] was written in the *linker command language*:
- describe how the code&data sections in the input object files should be mapped into the output object [[ELF]] file
- control the [[#memory layout]] of the generated machine code
- can also direct the linker to perform many other operations, such as linking [[stdlib]] etc

### memory layout

### sections

https://ftp.gnu.org/old-gnu/Manuals/ld-2.9.1/html_node/ld_20.html

#### `CREATE_OBJECT_SYMBOLS`

Create a symbol for each input file in the current section, set to the address of the first byte of data written from that input file.

#### KEEP

https://sourceware.org/binutils/docs/ld/Input-Section-Keep.html#Input-Section-Keep

When link-time garbage collection is in use (‘--gc-sections’), it is often useful to mark sections that should not be eliminated. This is accomplished by surrounding an input section’s wildcard entry with `KEEP()`, as in `KEEP(*(.init))` or `KEEP(SORT_BY_NAME(*)(.ctors))`.
