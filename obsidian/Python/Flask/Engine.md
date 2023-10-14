# Web/Engine
#metaL #Flask 

```python
######################################### web interface /Flask/

class Web(Net): pass

import flask

class Engine(Web):
    def __init__(self, V='Flask'):
        super().__init__(V)
        self.app = flask.Flask(__name__)

    def eval(self, env):

        @self.app.route('/')
        def index():
		    return flask.render_template('index.html',
                                            glob=glob, env=env)

        self.app.run(host=config.HOST, port=config.PORT)
```
