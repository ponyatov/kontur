# Debian GNU/Linux
https://www.debian.org

## 10
### buster
## 11
## 12
### bookworm

### русификация

в 12 версии есть проблема с русской раскладкой -- не работает по умолчанию, после установки

https://wiki.debian.org/Keyboard

```
# dpkg-reconfigure keyboard-configuration
# service keyboard-setup restart
```

```
sudo udevadm trigger --subsystem-match=input --action=change
```

[[Linux/setenv]]
[[ra]]

## `/apt.dev`

установка пакетов по списку из файла

```
git make curl
code
clang-format
stlink-tools stlink-gui
```

```sh
$ sudo apt update
$ sudo apt install `cat apt.dev`
```

- [[code]]
- [[clang-format]]
- [[stlink-tools]] [[stlink-gui]]
- [[git]] [[дополнения в Makefile]] [[curl]]
- [[Linux/apt]]

## разработка для [[Cortex-M]] ([[STM32]])

- [[STM32 Development on Debian]]
