# `~/.setenv`
## настройка пользователя

- файл устанавливает набор [[env|переменных окружения]]
- выполняется при каждом входе пользователя

```sh
#!/bin/sh
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"
```

### [[OCaml/env]]
### [[JS/env]]
### [[Android/env]]

```shell
# Android SDK/NDK
export ANDROID_HOME="$HOME/Android"
export NDK_HOME="$ANDROID_HOME/SDK"
```
