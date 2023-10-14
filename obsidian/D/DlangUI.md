# `dlangui`
## [[D/GUI|GUI]]
(c) [[Vadim Lopatin]]

- https://dlang.org/blog/2016/10/07/project-highlight-dlangui/
- https://github.com/buggins/dlangui
	- [Getting Started](https://github.com/buggins/dlangui/wiki/Getting-Started)
- https://habr.com/ru/articles/253923/

```shell
dub add dlangui
```
```json
	"dependencies": {
		"ffmpeg-d": "4.4.1",
		"bindbc-sdl": "1.4.2",
		"dlangui": "0.10.4"
	}
```

```D
import dlangui;
mixin APP_ENTRY_POINT;

extern (C) int UIAppMain(string[] args) {
	foreach (i, arg; args.enumerate)
		writefln("argv[%s] = <%s>", i, arg);
	auto wMain = Platform.instance.createWindow(to!dstring(args[0]), null);
	wMain.show();
	return Platform.instance.enterMessageLoop();
}
```

![[mainWidget]]

`import dlangui;` imports most useful of [[DlangUI]] library modules

`mixin APP_ENTRY_POINT;` this line should appear once in your application. It adds `main()` function definition which initializes [[DlangUI]] components, and then calls `UIAppMain` function.

![[UIAppMain]]

![[Layouts]]

> [[DML]]
