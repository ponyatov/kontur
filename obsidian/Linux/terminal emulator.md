# terminal emulator

- @[[Rust/TUI]]

## ANSI escape sequences

**ANSI escape sequences** are a standard for in-band signaling to control cursor location, color, font styling, and other options on video text terminals and terminal emulators.

- https://en.wikipedia.org/wiki/ANSI_escape_code

```shell
echo "\x1b[35;47mANSI? \x1b[0m\x1b[1;32mSI"
```

-   `\x1b`: this is the hexadecimal for `ESC` ([[#escape]]). It starts the escape sequence
-   `[`: is the [[#CSI: Control Sequence Introducer]]
-   `35;47m`: the [[#SGR: Select Graphic Rendition]] 
-   `\x1b[0m`: it's a special sequence to reset or turn all attributes off
-   `\x1b[1;32m`: Sets foreground to green and add the `bold` attribute

### escape
#### `\x1b`

### CSI: Control Sequence Introducer
#### `[`

https://en.wikipedia.org/wiki/ANSI_escape_code#CSIsection

### CLS: clear screen
#### `[2J`

### SGR: Select Graphic Rendition
#### `35;47m`

https://vt100.net/docs/vt510-rm/SGR.html

where 
- `35` [[#visual attribute]] sets the `foreground` color to magenta and 
- `47` [[#visual attribute]] sets the `background` to white.
- `m` is the final character specified by the standard

#### visual attribute
##### `foreground` color
##### `background` color
