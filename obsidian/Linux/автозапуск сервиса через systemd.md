# автозапуск сервиса через [[systemd]]

путь установки .service файла
```
/etc/systemd/user
```
```shell
sudo ln -fs \
	/home/rock/scada.service \
	/etc/systemd/system/scada.service
```
обновление после правки .service файлов
```shell
```
получение статуса сервиса
```shell
systemctl status scada
```
```
● scada.service - SCADA using Node-RED
   Loaded: loaded (/home/rock/scada/scada.service; linked; vendor preset: enabled)
   Active: inactive (dead)
```

https://askubuntu.com/questions/676007/how-do-i-make-my-systemd-service-run-via-specific-user-and-start-on-boot

![[SCADA/service]]
