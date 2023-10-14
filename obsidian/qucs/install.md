# [[qucs-s]] install
#qucs #el

## установка

- Linux: https://software.opensuse.org/download.html?project=home%3Ara3xdh&package=qucs-s

### [[Debian/10]]

подключение стороннего репозитория (сетевого хранилища пакетов ПО)
```shell
echo 'deb http://download.opensuse.org/repositories/home:/ra3xdh/Debian_10/ /' | sudo tee /etc/apt/sources.list.d/home:ra3xdh.list

curl -fsSL https://download.opensuse.org/repositories/home:ra3xdh/Debian_10/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_ra3xdh.gpg > /dev/null
```
установка пакетов
```shell
sudo apt update
sudo apt install -yu qucs-s ngspice gnuplot
```

![[qucs/apt]]

## Makefile

```Makefile
# tool
QUCS   = /usr/bin/qucs-s
```

```Makefile
# install
gz: qucs

$(QUCS): $(GZ)/qucs-s_$(QUCS_VER)_amd64.deb
	sudo dpkg -i $< && sudo touch $@

DEBIAN = Debian_$(shell lsb_release -rs)
$(GZ)/qucs-s_$(QUCS_VER)_amd64.deb:
	$(CURL) $@ https://download.opensuse.org/repositories/home:/ra3xdh/$(DEBIAN)/amd64/qucs-s_$(QUCS_VER)_amd64.deb
```

```Makefile
# version
QUCS_VER = 0.0.24-1

# dir
GZ = $(HOME)/gz

# tool
QUCS = /usr/bin/cucs-s

# install
gz: $(QUCS)

$(QUCS): $(GZ)/qucs-s_$(QUCS_VER)_amd64.deb
	sudo dpkg -i $< && sudo touch $@

DEBIAN = Debian_$(shell lsb_release -rs)
$(GZ)/qucs-s_$(QUCS_VER)_amd64.deb:
	$(CURL) $@ https://download.opensuse.org/repositories/home:/ra3xdh/$(DEBIAN)/amd64/qucs-s_$(QUCS_VER)_amd64.deb
```
