#!/bin/bash
########################################################
#													   #
#	Instalador v1.1.1-beta para sistemas linux         #
#													   #
########################################################
echo "Elije tu metodo [apt, pacman o yum]"
read pack
clear
echo "                     ┏━━━━┓━━━━━━━━┏┓━━━━━━┏━━━┓┏━━━┓"
echo "                     ┃┏┓┏┓┃━━━━━━━━┃┃━━━━━━┃┏━┓┃┃┏━┓┃"
echo "                     ┗┛┃┃┗┛┏━━┓┏━━┓┃┃━━━━━━┃┃━┃┃┃┃━┗┛"
echo "                     ━━┃┃━━┃┏┓┃┃┏┓┃┃┃━┏━━━┓┃┗━┛┃┃┃━┏┓"
echo "                     ━┏┛┗┓━┃┗┛┃┃┗┛┃┃┗┓┗━━━┛┃┏━┓┃┃┗━┛┃"
echo "                     ━┗━━┛━┗━━┛┗━━┛┗━┛━━━━━┗┛━┗┛┗━━━┛"
echo "                     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "                     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"   
echo "                                                       instalador                                           "

echo "      Que tipo de usuario vas a ser "
echo ""
echo "  1) Usuario normal (PC Linux)"
echo "  2) Desarrollador o tester"
echo ""
echo "Digita tu opcion:"
read opc

#funciones

usern()
{
	echo "Se instalaran o actualizaran las siguientes dependencias"
	echo "Ruby"
	echo "Bundler"
	echo "Gema colorize"
	echo "Gema tty-platform"
	echo "Gema ipaddr"
	echo "Gema macaddr"
	echo "Gema uri"
	echo "Gema json"
	echo "Estas deacuerdo con esto? [S/n]"
	read ola
	if [ $ola = "n" ]; then
		echo ":: > [1.0]"
		echo "Es necesario :("
		exit
	else
		echo "Cargando"
	fi
	echo "Instalando dependiendo con tu paqueteria"
	case $pack in "apt") apt-get install ruby bundler;;
	"pacman") pacman -Sy ruby bundler;;
	"yum") yum install ruby bundler;;
	*)
	echo ":: > [1] | [1.3]"
	echo "Mala opcion"
	exit;;
	esac
	echo "Configurando las carpetas"
	echo "Purgando..."
	rm -R Tool-AC
	echo "Instalando"
	mkdir Tool-AC
	cd Tool-AC
	#ingresar link valido
	wget https://github.com/Kedap/Tool-AC/releases/download/Beta/Tool-AC_1.1.0-beta.zip;
	unzip Tool-AC_1.1.0-beta.zip;
	bundle install
	chmod +x main.rb
	echo "Troyano instalado con exito, para potenciarlo ejecuta:"
	echo "Tool-AC/main.rb"
}

userd()
{
	
	echo "Se instalaran o actualizaran las siguientes dependencias"
	echo "Ruby"
	echo "Bundler"
	echo "Gema colorize"
	echo "Gema tty-platform"
	echo "Gema ipaddr"
	echo "Gema macaddr"
	echo "Gema uri"
	echo "Gema json"
	echo "Estas deacuerdo con esto? [S/n]"
	read ola
	if [ $ola = "n" ]; then
		echo ":: > [1.0]"
		echo "Es de awebo bro :("
		exit
	else
		echo "Cargando"
	fi
	echo "Instalando dependiendo con tu paqueteria"
	case $pack in "apt") apt-get install ruby bundler git;;
	"pacman") pacman -Sy ruby bundler git;;
	"yum") yum install ruby bundler git;;
	*)
	echo ":: > [1] | [1.3]"
	echo "Mala opcion"
	exit;;
	esac
	echo "Purgando..."
	rm -R Tool-AC
	echo "Extrayendo codigo fuente desde el repositorio"
	git clone https://github.com/Kedap/Tool-AC;
	cd Tool-AC/ConsolaV/;
	echo "Cambiando a la rama de desarrollador"
	git switch develop
	echo "instalando gemas"
	bundle install
	gem install tty-platform
	chmod +x main.rb
	echo "Instalado!"
	echo "Para abrir ejecuta:"
	echo "'Tool-AC/ConsolaV/main.rb'"
	echo "Recuerda que si vez una anomalia no dudes en comentarla en:"
	echo "https://github.com/Kedap/Tool-AC/issues"
}

#separador

case $opc in "1") usern $pack;;
"2") userd $pack;;
*)
echo ":: > [1]"
echo "Vuelve a intentar"
esac

