# skelex: Lexical Skeleton
## шаблон программы с [[парсер]]ом
#syntax 

Большинство программ требуют тот или иной **текстовый ввод данных**, но как его полноценно реализовать, почему-то в учебниках программированию на [[С++]] не описано. Везде ограничиваются использованием примитивного ввода через функцию [[scanf]] или [[istream]], но *для реальных практических целей её явно недостаточно*.

В то же время, такие инструменты как генераторы парсеров, такие как [[flex]]/[[bison]], [[ragel]] или монстр [[ANTLR]], позволяют реализовать ввод практически любых данных в [[ASCII формат]]е.

## установка инструментов

Два пакета [[flex]] и [[bison]] входят в стандартную поставку любой [[Linux]]-системы или [[MinGW]]/[[msys2]]

```sh
apt install -yu flex bison
```

Если вы планируете использовать парсинг на микроконтроллерах, единственный генератор парсеров, который умеет генерировать **отлаживаемый** код на С++ это [[ragel]]:

```sh
apt install -yu ragel
```

- [[lex]]
- [[yacc]]

## .hpp

![[Cpp/hpp]]
![[PMC/hpp]]

```Cpp
/// @name lexical skeleton
// lexer
extern int   yylex();               /// lexer
extern int   yylineno;              /// current line number
extern char* yytext;                /// current token text (lexeme)
extern FILE* yyin;                  /// source input file
extern char* yyfile;                /// current file name
extern void  parsefile(char* name); /// parse file
// parser
extern void  yyerror(string msg);   /// error callback
extern int   yyparse();             /// parser
#include "cpdb.parser.hpp"
```
```Cpp
#define TOKEN(C, X)               \
    {                             \
        yylval.o = new C(yytext); \
        return X;                 \
    }
```
[[PMC/hpp]]

## `main()`

![[Cpp/arg]]

[[skelex/main]]
[[skelex/src]]
```Cpp
char *yyfile = nullptr;
void parsefile(char *name) {
    yyfile = name;
    assert(yyin = fopen(name, "r"));
    yyparse();
    fclose(yyin);
    yyfile = nullptr;
}
```
```Cpp
#define YYERR \
    "\n\n" << yyfile << ':' << yylineno << "\t" << msg << " [" << yytext << "]"
void yyerror(string msg) {
    cout << YYERR;
    cerr << YYERR;
    exit(-1);
}
```

```Cpp
int main(int argc, char *argv[]) {
	printf("\n");
	arg(0, argv);
	for (int i = 1; i < argc; i++) {
		arg(i, argv);
		assert(yyin = fopen(argv[i], "r"));
		yyparse();
		fclose(yyin);
	}
	dump();
	printf("\n");
	go();
}
```
## [[Makefile]]

```Makefile
tmp/$(MODULE).parser.cpp: src/$(MODULE).yacc
	bison -o $@ $<
tmp/$(MODULE).lexer.cpp: src/$(MODULE).lex
	flex -o $@ $<
```

- [[mdoc/Cpp/arg]]
- [[yyin]]
- [[yyparse]]
- [[dump]]
