#!/bin/bash
#Script que, por medio de un menú permitirá:
#1. Ver cuáles son y lo que ocupan los perfiles de usuario.
#2. Crear un informe con esa información.
#3. Saber cuántos ficheros hay en /boot.
#4. Listar los ficheros y 10 segundos despues, meter ese listado en un fichero.
#5. Salir
echo "Script para la consulta información del sistema"
echo "Menú"
echo "                  "
echo "1) Información perfiles de usuario"
echo "2) Creacion de informe de perfiles de usuario en perfuser.txt"
echo "3) Consulta cuántos ficheros hay en /boot"
echo "4) Listado de ficheros y directorios y almacenamiento en el fichero listado.txt"
echo "0) Salir"
echo "                  "
echo "Introduzca una opción"
read opcion
case $opcion in
	1)	echo "Informacion de perfil de usuario"
		ls -l /home
		du -b /home
		;;
	2)	echo "Se creará un informe con la informacion de los usuarios"
		ls -l /home | du -b /home > perfuser.txt
		echo "informe creado"
		echo "el informe ha sido guardado se va a mostrar el resultado"
		sleep 3
		cat perfuser.txt
		;;
	3)	echo "Se va a ver cuantos ficheros hay en el directorio /boot"
		echo "Hay un total de `find /boot -maxdepth 1 -type f | wc -l ` ficheros en el directorio /boot"
		;;
	4)	echo "Se va a proceder al listado de ficheros y directorios del directorio de tabajo del usuario actual"
		ls -l ~/
		echo "se va a copiar la informacion mostrada por pantalla en el fichero listado.txt"
		sleep 10
		ls -l ~/ > listado.txt
		;;
	0)	echo "Ha salido del script"
		;;
esac
