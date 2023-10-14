# `qucs` a.k.a [[qucs-s]]
## графическая оболочка для [[ngs]]

- https://snapcraft.io/install/qucs-spice/debian
- http://qucs.sourceforge.net/install.html

![[qucs-s#about]]

The package contains [[ASCO]], [[FreeHDL]] and [[ADMS]].

[[Icarus Verilog]] is used for digital [[Verilog-HDL]] simulation

## установка

- [[Debian]]: [official package down in 2015](https://packages.qa.debian.org/q/qucs.html)

![[qucs/install]]

## настройка

При первом запуске будет запрошено конфигурирование:
- Linux: -> `~/.config/qucs` , `~/.qucs`

![[qucs00.png]]

- Linux: `/usr/bin/ngspice`
- Windows: `C:\SPICE\Spice64\bin\ngspice.exe`

![[qucs01.png]]

Затем откроется [[qucs/основное окно]]

![[qucs02.png]]

Нужно настроить путь к проектам и библиотекам -> [[libcad]]

- Файл -> Настройки программы -> 
	- начать новый проводник по щелчку на открытом узле [v]
	- Пути к внешним приложениям
		- Начало Qucs: `/home/ponyatov/libcad`



## [[qucs/tutorial]]

https://qucs.github.io/docs/tutorial/getstarted.pdf

- Проект -> Новый проект `Ctrl+Shift+N` -> WorkBook
- Файл -> Создать `Ctrl+N`
- Файл -> Сохранить как `Ctrl+ -` -> `divider.sch`

## [[qucs/divider]]

## [[qucs/rc]]

## [[qucs/Kirch]]

## [[octave]]
