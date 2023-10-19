# `player`
## медиа-плеер на [[D/D|D]]

`D:\dponyatov\D\player`

![[SDL/about]]
![[ffmpeg/about]]

## библиотеки

![[D/dub.json#SDL]]

```json
	"dependencies": {
		"bindbc-sdl": "~>1.4.2",
		"ffmpeg-d": "~>4.4.1"
	},
```

Для линковки с С-библиотеками также надо прописать `.dll`:

```json
	"subConfigurations": {
		"bindbc-sdl": "static"
	},
	"libs": [
		"SDL2"
	]
```

## инициализация [[SDL/SDL|SDL]]

```D
import std.stdio;
import sdl;

void main(string[] args) {
    // command line arguments
    foreach (argc, argv; args.enumerate)
        writefln("arg[%d] = <%s>", argc, argv);
    // media init
    if (!SDL_Init(SDL_INIT_VIDEO | SDL_INIT_AUDIO)) {
        writeln("SDL_Init: ", SDL_GetError());
        abort();
    }
	// shedule cleanup on main() function exit
	scope (exit)
        SDL_Quit();
	// next player code
	...
}
```

Библиотеки подключаются через `import`, при этом становятся доступными имена функций, которые в них определены. 

Функция main() может быть определена в нескольких вариантах по набору аргументов, и два варианта возвращаемого типа: `void` и `int`.

Для доступа к аргументам командной строки используется вариант `main()` с параметрами в массиве строк.

Функция `enumerate(Ф)` вызывается c использованием [[UCS]]-формы (Unified Call Syntax), и возвращает массив из пронумерованных элементов `A[]` в парах `(i,A[i])`

![[UCS]]

Для обхода массива используется цикл `foreach` с двойной переменной `argc, argv`, внутри цикла они используются соответственно как номер, и значение i-го элемента массива.

![[writefln]]

![[SDL_Init]]

## [[ffmpeg]]

- Руководство по [[ffmpeg]] и [[SDL/SDL|SDL]] или Как написать видеоплеер менее чем в 1000 строк
	1. https://habr.com/ru/companies/edison/articles/500402/
	2. https://habr.com/ru/companies/edison/articles/502844/

