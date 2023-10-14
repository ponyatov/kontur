# PLY: Python Lex-Yacc
## parser generator library

#Python #PLY #parse

https://www.dabeaz.com/ply/


```py
import ply.lex as lex
import ply.yacc as yacc
```
```py
## empty AST
class AST(Object):
    def __init__(self, V=''): super().__init__(V)
```
```py
## Syntax Parser
class Parser(Object):

    tokens = ['LP', 'RP']

    t_ignore = '[ \t\r]+'

    t_LP = r'\('
    t_RP = r'\('

    def t_newline(self, t):
        r'\n+'
        t.lexer.lineno += len(t.value)

    def t_error(self, t): raise SyntaxError([self, t])
```
```py
    def p_error(self, p): raise SyntaxError([self, p])

    def p_none(self, p):
        r' grammar : '
        p[0] = AST()
```
```py
    def __init__(self, V='script'):
        super().__init__(V)
        self.lexer = lex.lex(module=self)
        self.parser = yacc.yacc(module=self, debug=False, write_tables=False)

    def ast(self, source):
        return self.parser.parse(source)
```
