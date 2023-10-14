Engine().eval# #Python threading

- [Модуль threading на примерах](http://python-3.ru/page/import-threading)

```python
######################################### system init with REPL

import threading

if __name__ == '__main__':
    threading.Thread(
        target=Engine().eval,
        args=[glob]
    ).start()
```
