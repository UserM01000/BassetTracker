#!/bin/bash
#                 COLORES ALTOS
negro="\e[1;30m"
azul="\e[1;34m"
verde="\e[1;32m"
cian="\e[1;36m"
rojo="\e[1;31m"
purpura="\e[1;35m"
amarillo="\e[1;33m"
blanco="\e[1;37m"
#                 COLORES BAJOS
black="\e[0;30m"
blue="\e[0;34m"
green="\e[0;32m"
cyan="\e[0;36m"
red="\e[0;31m"
purple="\e[0;35m"
yellow="\e[0;33m"
white="\e[0;37m"
#

Banner(){
echo -e "${rojo} █▀▀▀▀▀▀▀▀▀▀▀█							       "
echo -e " █           █                          			       "
echo -e " ▀▀▀▀▀   ▀▀▀▀▀▀▀▀▀▀▀▀   ▀▀▀▀▀▀  █▀▀▀▀▀▀█ █▀▀█  █▀█        █▀█ █▀▀▀▀▀█ "
echo -e "     █   █    █      █ █      █ █   ▀▀▀  █  █ █  █        █ █ █     █ "
echo -e "     █   █    █      █ █      █ █  █     █   █  █  █▀▀▀▀█ █ █ █     █ "
echo -e "     █   █    █ █▀█ █  █ █▀▀█ █ █  █     █     █   ▀▀▀▀▀▀ █ █ █ █▀▀▀  "
echo -e "     █   █    █ █  █ █ █ █  █ █ █   ▀▀▀█ █  ██  █         █ █ █ █     "
echo -e "     ▀▀▀▀▀    ▀▀▀   ▀▀ ▀▀▀  ▀▀▀  ▀▀▀▀▀▀  ▀▀▀▀ ▀▀▀         ▀▀▀ ▀▀▀     "
echo -e "              		  		Developer ----> UserM01000"
}
Ip(){
	clear
	curl -s http://ip-api.com/
	echo ""
	sleep 3
echo -e -n "${rojo}
 ${verde}>>>${blanco} Presione una tecla para continuar${verde}
 ${verde}>>>" ${blanco}
read $ENTER
clear
MenuV1
}


IpInfo(){
	clear
	echo ""
echo -e -n "${rojo}
${verde} >>>${blanco} Escribe una ip${verde}
${verde} >>>" ${blanco}
read -r Ip
curl -s http://ip-api.com/$Ip
sleep 3
echo -e -n "${rojo}
${verde} >>>${blanco} Presione una tecla para continuar${verde}
${verde} >>>" ${blanco}
read $ENTER
clear
MenuV1
}

Contact(){
	clear
       Banner
   echo -e "${rojo}>>>> ${rojo}https://t.me/UserM01000${rojo}"
   echo ""
}

Salir(){
    echo -e -n "                Recuerda segirme en GitHub como 
                https://GitHub.com/UserM01000/ 
                porque estare subiendo mas scripts,
                ejecutables, etc echos en Python, Bash y 
                C++!!!. Adios"
}

MenuV1(){
	clear
        Banner	
	sleep 0.5
echo ""
echo -e "${verde}[1]${verde} >>> ${blanco}¿Cúal es mi ip?(Publica)${verde}"
echo ""
echo -e "[2]${verde} >>> ${blanco}Extraer info. de una ip.${verde}"
echo ""
echo -e "[3]${verde} >>> ${blanco}Salir${verde}"
echo ""
echo -e "${rojo}[4]${rojo} >>> ${rojo}Contact Developer${rojo}"
echo -e -n "${verde}
${verde} >>>${blanco} Escribe una opcion${verde}
${verde} >>>" ${blanco}
read -r OPTION

if [[ "${OPTION}" == "1" || "${OPTION}" == "01" ]]; then
	Ip
elif [[ "${OPTION}" == "2" || "${OPTION}" == "02" ]]; then
	IpInfo
elif [[ "${OPTION}" == "3" || "${OPTION}" == "03" ]]; then
        clear
        Salir
        sleep 5
	echo ""
elif [[ "${OPTION}" == "4" || "${OPTION}" == "04" ]]; then	
	Contact
else
echo -e "${rojo}
OPCIÓN INVALIDA!" 
	sleep 1
	MenuV1
fi
}
MenuV1
