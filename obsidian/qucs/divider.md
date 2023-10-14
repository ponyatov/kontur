# `divider.sch`
## [[DC analysis]] - A voltage divider
### анализ по постоянному току
#qucs #tutorial

- Проект -> Новый проект `Ctrl+Shift+N` -> `divider`
- Файл -> Создать `Ctrl+N`
- Файл -> Сохранить как `Ctrl+ -` -> `divider.sch`

![[div00.png]]

The [[DC analysis]] is a [[steady state analysis]]. It computes the [[node voltage]] as well as [[branch current]]s of the complete circuit.

> The given circuit in fig. 6 is going to **divide the voltage of a DC voltage source according to the resistor ratio**.

- [[qucs/component]]

![[источники#Vdc источник напряжения]]
![[дискретные компоненты#R резистор]]

![[qucs/wiring]]

![[qucs/keys]]

![[divider.png]]

![[земля]]

## Placing simulation blocks

The type of simulation which is performed must also be placed on the schematic. You choose the “DC simulation” block which can be found in the [[Components tab]] in the simulations category.

![[виды моделирования#DC моделирование на постоянном токе]]

![[метки цепей]]

![[dividerVout.png]]

![[qucs/keys#файлы]]

## Issuing a simulation

The schematic can now be simulated. This is started by choosing the Simulation → Simulate menu entry, clicking the simulation button (the gearwheel) or by pressing the `F2` shortcut.

![[runModel.png]]

Моделирование -> Моделировать `F2`
[[qucs/keys#моделирование]]

При запуске моделирования схемы, в которой есть только [[расчёт по постоянному току]] вываливается ошибка:

![[DConly.png]]

[[расчёт по постоянному току]] запускается отдельной кнопкой:

Моделирование -> Расчёт рабочей точки по постоянному току `F8`

![[dividerDC.png]]

после моделирования по постоянному току на схеме проставляются
- [[потенциал цепи|потенциалы цепей]], и 
- [[ток источника питания|токи источников питания]]

![[протокол расчёта ngspice]]

В [[qucs]] результаты расчётов пишутся в файл
![[qucs/dpl]]



![[SPICE/bib#qucs]]

[[главное окно]]
