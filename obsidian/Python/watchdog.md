# `watchdog`

monitor file changes via [[inotify]]

```py
from watchdog.observers import Observer
from watchdog.events    import FileSystemEventHandler

watch = Observer()
```

## startup

```py
try: watch.start()
except: pass
```

## watch & restart on Python code change

```py
class py_restart(FileSystemEventHandler):
    def on_closed(self, event):
        if not event.is_directory:
            os._exit(0)

watch.schedule(py_restart(), sys.argv[0])
```

## #Flask autoreload via [[SocketIO]]

```py
class flask_reload(FileSystemEventHandler):
    def on_closed(self, event):
        if not event.is_directory:
            flask_handler.sio.emit('reload', {})

watch.schedule(flask_reload(), "static",    recursive=True)
watch.schedule(flask_reload(), "templates", recursive=True)
```

## [[webpack]] autobuild on `/assets` change

```py
class webpack_handler(FileSystemEventHandler):
    def on_closed(self, event):
        if not event.is_directory:
            os.system('make webpack')
            # webpack_handler.sio.emit('reload', {})

try: open('tmp/watch').close()
except FileNotFoundError:
    watch.schedule(webpack_handler(), "assets", recursive=True)
    # watch.schedule(webpack_handler(), "assets/src", recursive=False)
```
