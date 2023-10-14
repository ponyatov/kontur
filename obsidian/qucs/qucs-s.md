## `qucs-s`: [[Qucs]] with SPICE
## GUI для [[ngspice]] (только расчёт схемотехники, без ПП)
### форк [[qucs]]

![[qucs/about]]

- [20140927-03 Qucs Использование свободного ПО для моделирования электронных схем в учебном процессе](https://www.youtube.com/watch?v=XEKRtP8cWIc)


> [[el/el]]

## install



```Makefile
# install
.PHONY: debian_10
debian_10:
	echo 'deb http://download.opensuse.org/repositories/home:/ra3xdh/Debian_10/ /' | sudo tee /etc/apt/sources.list.d/home:ra3xdh.list
	curl -fsSL https://download.opensuse.org/repositories/home:ra3xdh/Debian_10/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_ra3xdh.gpg > /dev/null
```

## about

Qucs-S was forked from the [[qucs]] cross-platform circuit simulator in 2017. ”S” letter indicates [[SPICE]]. The purpose of the Qucs-S subproject is to use free SPICE circuit simulation kernels with the **Qucs GUI**. It merges the power of SPICE and the simplicity of the Qucs GUI.

Qucs-S был создан из кроссплатформенного симулятора схем [[qucs]] в 2017 году. Буква «S» означает [[SPICE]]. Целью подпроекта Qucs-S является использование бесплатных ядер моделирования схем SPICE с **Qucs GUI**. Он объединяет мощь SPICE и простоту графического интерфейса Qucs.

Original [[qucs]] intentionally uses its own SPICE incompatible simulation kernel [[qucsator]]. It has advanced RF and AC domain simulation features, but most of the existing industrial SPICE models are incompatible with it. [[qucs-s]] is not a simulator by itself, but requires to use a simulation backend with it. The schematic document format of Qucs and Qucs-S are fully compatible.

Оригинальный  [[qucs]] намеренно использует собственное ядро моделирования [[qucsator]], несовместимое со [[SPICE]]. Оно имеет расширенные функции моделирования ВЧ и переменного тока, но большинство существующих промышленных SPICE-моделей несовместимы с ним. [[qucs-s]] сам по себе не является симулятором, но требует использования с ним бэкенда моделирования (вычислительного ядра). Форматы файлов схем [[qucs]] и [[qucs-s]] полностью совместимы.

[[qucs-s]] allows to use the following simulation kernels with it:
[[qucs-s]] позволяет использовать с ним следующие ядра моделирования:

- [[ngspice]] is recommended to use. [[ngspice]] is powerful mixed-level/mixed-signal circuit simulator. The most of industrial [[SPICE]] models are compatible with [[ngspice]]. It has an excellent performance for time-domain simulation of switching circuits and powerful postprocessor.
	- [[ngspice]] рекомендуется к использованию как основной бэкенд. Это мощный симулятор схем со смешанными сигналами (аналог+цифра). Большинство промышленных моделей [[SPICE]] совместимы с [[ngspice]]. Он обладает отличной производительностью для моделирования коммутационных цепей во временной области и мощным постпроцессором.
- [XYCE](https://xyce.sandia.gov) is a new SPICE-compatible circuit simulator written by Sandia from the scratch. It supports basic SPICE simulation types and has an advanced RF simulation features such as Harmonic balance simulation.
	- [XYCE](https://xyce.sandia.gov) — новый SPICE-совместимый симулятор схем, написанный в [[Sandia]] с нуля. Он поддерживает основные типы моделирования SPICE и имеет расширенные функции моделирования в радиочастотной области, такие как моделирование гармонического баланса.
- [SpiceOpus](http://spiceopus.si) is developed by the Faculty of Electrical Engineering of the Ljubljana University. It based on the SPICE-3f5 code
	- [SpiceOpus](http://spiceopus.si) разработан факультетом электротехники Люблянского университета. Он основан на коде SPICE-3f5.
- [[qucsator]] as backward compatible and for RF simulation with microwave devices.
	- [[qucsator]] как обратно совместимый и для радиочастотного моделирования с микроволновых устройств.

## cross-platform

Qucs-S is a cross-platform software and supports a number of [[Linux]] distributions alongside with [[Windows]]. The Linux packages are generated automatically with the Open Build Service (OBS) system. Check the official website to get the list of supported distributions. 

Please keep in mind that the **installation packages doesn’t provide the simulation kernel** -- it need to be installed separately. The [[ngspice]] is recommended. For [[Linux/Debian]] and [[Ubuntu]] it is installed automatically as the dependency. Refer to [[ngspice]] website for installation instructions for other platforms.

- http://ngspice.sourceforge.net/


## install
- https://ra3xdh.github.io/
	- [[Debian/10]]: https://download.opensuse.org/repositories/home:/ra3xdh/Debian_10/
	- [[Debian/11]]: https://download.opensuse.org/repositories/home:/ra3xdh/Debian_11/

## configure

```shell
$ qucs-s
```

Моделирование -> Select default simulator
Default simulator -> Ngspice
Ngspice executable location -> ngspice
	- `/usr/bin/ngspice`
	- `C:/SPICE/Spice64/bin/ngspice`
[Apply changes]

![[qucs_ngspice.png]]

![[libcad]]

![[qucs/начальная настройка]]

![[KiCAD/проект]]

## tutorial

- [Qucs. Начало работы (0.0.19)](https://youtu.be/d3VsmT2pAOc)

![[el/делитель напряжения]]

## Publications

Qucs-S is not a simple circuit simulator, but also a research software. Please cite our articles, if you are using Qucs-S in your research.


![[SPICE/bib#qucs]]

1.  Brinson, M. E., and Kuznetsov, V. (2016) A new approach to compact semiconductor device modelling with Qucs Verilog-A analogue module synthesis. Int. J. Numer. Model., 29: 1070-1088. ([BibTeX](https://ra3xdh.github.io/ijnm.bib))
2.  D. Tomaszewski, G. Głuszko, M. Brinson, V. Kuznetsov and W. Grabinski, "FOSS as an efficient tool for extraction of MOSFET compact model parameters," 2016 MIXDES - 23rd International Conference Mixed Design of Integrated Circuits and Systems, Lodz, 2016, pp. 68-73. ([BibTeX](https://ra3xdh.github.io/foss_mixdes.bib))
3.  M. Brinson and V. Kuznetsov, "Qucs-0.0.19S: A new open-source circuit simulator and its application for hardware design," 2016 International Siberian Conference on Control and Communications (SIBCON), Moscow, 2016, pp. 1-5. ([BibTeX](https://ra3xdh.github.io/qucs_sibcon.bib))
4.  M. Brinson and V. Kuznetsov, "Improvements in Qucs-S equation-defined modelling of semiconductor devices and IC's," 2017 MIXDES - 24th International Conference "Mixed Design of Integrated Circuits and Systems, Bydgoszcz, 2017, pp. 137-142. ([BibTeX](https://ra3xdh.github.io/qucs_s_mixdes.bib))
5.  M. Brinson and V. Kuznetsov, "Extended behavioural device modelling and circuit simulation with Qucs-S" International Journal of Electronics, 2017, pp.1 - 14 ([BibTeX](https://ra3xdh.github.io/qucs_ije.bib))
