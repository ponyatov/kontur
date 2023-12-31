# разработка под эмулятор [[QEMU]]

Часть кода (в основном вычислительный и простой ввод/вывод) можно отладить под эмулятором [[QEMU]]:

```sh
$ apt install qemu-system-arm
```

![[кросс-компилятор#пакеты Debian]]


https://www.youtube.com/watch?v=Zvbarf1CSGs&t=177s

## список доступной аппаратуры

```
qemu-system-arm -M ?
```

из всего разнообразия эмулиремых плат с архитектурой [[ARM]] доступны только пара вариантов микроконтроллеров:

- `lm3s6965evb` [[Stellaris]] [[LM3S6965EVB]]
- `lm3s811evb`  Stellaris [[LM3S811EVB]]

## кросс-компиляция для [[LM3S811EVB]]
https://habr.com/ru/company/embox/blog/421833/

Эмулятор QEMU поддерживает ядро Cortex-M3 и эмулирует на его базе платформу Stellaris LM3S811 от Texas Instruments. Будем запускаться на этой платформе. Нам понадобится тулчейн [[arm-none-eabi]]- ([[кросс-компилятор]]). Далее нам потребуется написать основную логику нашей программы, стартовый код, который передаст управление в программу, и линкер скрипт.

![[xPack QEMU]]
