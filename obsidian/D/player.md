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

```