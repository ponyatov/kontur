# #Python exception

```Python
import traceback

class Object:
    def eval(self, env):
        raise NotImplementedError(['eval', self, env])

def REPL():
    while True:
        print(vm)
        vm.lexer.input(input('> '))
        while True:
            # BL WORD
            token = vm.lexer.token()
            if token is None: break
            # FIND
            try: vm // token.eval(vm)
            except: vm.lexer.input(''); traceback.print_exc()
```

