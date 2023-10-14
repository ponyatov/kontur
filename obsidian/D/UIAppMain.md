# UIAppMain

## `extern (C) int UIAppMain(string[] args)`

is the main GUI-entry function for your application. On [[UIAppMain]] you already have [[DlangUI]] components initialized. Usually you need to 
- create `wMain` window, 
- put some widget layout to it, 
- show `wMain` window and then 
- enter event loop.

Array `args[]` contains application command line parameters.

Return value will be used as application result.

## contents

```D
auto wMain = Platform.instance.createWindow(to!dstring(args[0]), null);
```

This line creates OS window to show GUI inside. `Platform.instance` is singleton instance of [[D/Platform]] - abstraction layer to hide OS dependent code.

Most important methods of Platform object are 
- `createWindow` and 
- `enterMessageLoop`.

```D
Window createWindow(
    dstring windowCaption, // window caption
    Window parent,         // parent window, pass null for main (first) window.
    uint flags = WindowFlag.Resizable, // various flags - bit fields from WindowFlag enum values
    uint width = 0,        // initial window width
    uint height = 0        // initial window height
);
```
