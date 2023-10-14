# toString

- https://forum.dlang.org/thread/zixxvsbjnkohokpvmohc@forum.dlang.org

```D
override string toString() const pure @safe {
```
```D
	auto app = appender!string();
	...
	return app.data
}
```

- [[appender]]
