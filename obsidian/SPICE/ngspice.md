# `ngspice`
## симулятор для расчёта схем
## open source [[Electronix/SPICE/SPICE]] simulator for electric and electronic circuits

Such a circuits may comprise of [[JFET]]s, [[bipolar]] and MOS transistors, passive elements like [[R]], [[L]], or [[C]], diodes, transmission lines and other devices, all interconnected in a netlist. Digital circuits are simulated as well, event driven and fast, from single gates to complex circuits. And you may enter the combination of both analog and digital as a mixed-signal circuit.

OpenSource-реализация пакета SPICE: симулятор электрических и электронных схем, который позволяет разрабатывать разнообразные аналогово-цифровые электронные устройства и интегральные схемы.

- http://ngspice.sourceforge.net/
- https://ngspice.sourceforge.io/ngspice-tutorial.html

## about

`ngspice` is a mixed-level/mixed-signal [[circuit simulator]] implemented from three open source software packages: [[SPICE3f5]], [[Cider 1b1]] and [[XSPICE]]. `ngspice` is one of the most widely used and stable current generation open source [[SPICE]] simulators available. It implements the original [[SPICE3f5]] simulation capabilities, including for example, [[DC-анализ]], [[AC-анализ]], and [[transient simulation]], [[Fourier-analysis]] and [[sensitivity analysis]], plus a significant number of extra simulation and device model extensions. Distributed with [[ngspice]] is a data manipulation package called [[ngnutmeg]]. This provides numerical analysis and visualisation routines for post processing Ngspice simulation data. Instructions for installing Ngspice can be found on the [[ngspice]] website at http://ngspice.sourceforge.net/download.html, The [[ngspice]] website also gives free access to all the distribution and development package code sources.

## about_ru

`ngspice` — это симулятор схем смешанного сигнала (аналог+цифра), реализованный на основе трех программных пакетов с открытым исходным кодом: [[SPICE3f5]], [[Cider 1b1]] и [[XSPICE]]. `ngspice` — один из наиболее широко используемых и стабильных [[SPICE]]-симуляторов текущего поколения с открытым исходным кодом. Он реализует исходные возможности моделирования [[SPICE3f5]], включая типовые виды расчётов:
- [[DC-анализ]]
- [[AC-анализ]]
- [[моделирование переходных процессов]]
- [[Фурье-анализ]]
- [[анализ чувствительности]]

Он также включает значительное количество дополнительных расширений моделирования, и моделей устройств. Вместе с [[ngspice]] распространяется пакет для обработки данных под названием [[ngnutmeg]], который обеспечивает процедуры численного анализа и визуализации для постобработки данных моделирования [[ngspice]]. Инструкции по установке [[ngspice]] можно найти на веб-сайте [[ngspice]] по адресу http://ngspice.sourceforge.net/download.html. Веб-сайт [[ngspice]] также предоставляет бесплатный доступ ко всем исходным кодам пакетов для распространения и разработки.

## install

### [[Linux]]

```shell
sudo apt install -yu ngspice octave
```

### [[Windows]]
- https://sourceforge.net/projects/ngspice/files/ng-spice-rework/37/

## integrations
- [[qucs-s]]
- [[Vim]] -> https://github.com/ftorres16/spice.vim
- [[KiCAD]]
- [[oregan]]
