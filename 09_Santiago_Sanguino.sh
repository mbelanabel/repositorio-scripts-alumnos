#!/bin/bash
#Script que, por medio de un menu, permitira:
#Comparamos dos ficheros y si son iguales borramos uno
#Visualizar la configuracion tcp/ip
#Salir
#Autor: Santiago
#Corregido: Ivan Gonzalez
echo "MENU"
echo 1 Compara dos ficheros a elegir
echo 2 Visualiza la configuracion tcp/ip
echo 3 Salir
read -p "Introduzca la opcion " opcion
echo "La opcion elegida es $opcion"
case $opcion in
1)	echo "1 Comparamos dos ficheros"
	echo "Introduzca los ficheros" 
	read -p "Fichero 1: " fichero1
	read -p "Fichero 2: " fichero2
	echo "Comparamos si son iguales"
	diff $fichero1 $fichero2 > /dev/null
	if [ $? -ne 0 ]
	then
		echo "Son distintos"
	else
		echo "Son iguales"
		rm $fichero2
	fi
	;;
2)	echo "2 Visualizamos la configuracion tcp/ip"
	ifconfig
	;;
3)	echo "3 Gracias por venir vuelva pronto";;
*) 	echo "Opcion incorrecta";;
esac
