## Linux
Debes de tener instalado [ruby](https://www.ruby-lang.org/es/), [Bundler](https://bundler.io/), [PHP](https://www.php.net/), [cURL](https://curl.haxx.se/) La instalacion dependera de tu distribucion de linux. Una vez tengas instalado tendras que descargar este [archivo](https://github.com/Kedap/Tool-AC/releases/download/Beta/Tool-AC_1.1.0-beta.zip).
Descomprimes con tu programa de preferencia y abres una terminal en la misma carpeta y ejecuta los siguientes comando:
```
bundle install
```
Y para ejecutar
```
chmod +x main.rb
sudo ./main.rb``` 
o 
```./main.rb``` 
```
si esta ejecutando como root
## Termux
En termux se recomienda utilizar la utilizar el [script de instalacion](/ConsolaV/Installers/Linux/Termux.sh)
y para la facilitacion puedes utilizar este comando (Asumiendo que usted ya tiene cURL instalado en su dispositivo termux):
```
curl https://raw.githubusercontent.com/Kedap/Tool-AC/master/ConsolaV/Installers/Linux/Termux.sh -sSf | sh
```
y sigue con las indicaciones
## Script de configuracion
El script de configuracion se encarga de descargar y configurar todo para Tool-AC que esta 
diseñado para no hacer todos los pasos anteriores.
Solo ejecuta:
```
curl https://raw.githubusercontent.com/Kedap/Tool-AC/master/ConsolaV/Installers/Linux/LinuxD.sh -sSf | sh
```
## Windows/MacOS
En estos sistemas operativos no todas las herramientas se ejecutan ya que estas son diseñadas para linux. Pero en un futuro muy cercano podra haber soporte para estos sistemas operativos, si quieres ayudar a acelerar el proceso lee el [README](/README.md) en colaborar