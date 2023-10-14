# Flask

```
touch B.py config.py
```

## config.py
```py
import os

HOST = '127.0.0.1'
PORT = 12345
```

## module.py

```py
import config

import sys

import flask

app = flask.Flask(__name__)

if __name__ == '__main__':
	if sys.argv[1] == 'web':
		app.run(debug=True, host=config.HOST, port=config.PORT)
```

## routing via annotations

```py
@app.route('/')
def index():
    return flask.render_template('index.html')
```

![[Flask/static]]
![[Flask/templates]]
