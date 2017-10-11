#!/bin/bash
# Andres Bautista Aispur
echo "MENU"
echo "_________________________"
echo "1) Ver cuales son y lo que ocupan los perfiles de usuario"
echo "2) Crear un informe con esa informacion"
echo "3) Saber cuántos ficheros que hay en /boot"
echo "4) Listar los ficheros y 10 segundos despues, meter ese listado en un fichero"
echo "5) Salir"
echo "Introduzca una opcion"
read opcion
case $opcion in 
	#con este comando sacamos el usuario y el espacio que ocupa
	1)	echo "los usuarios son"
	id -un | du -sh 
	;;
	2) 	echo "guarda este informe en un documento llamado informe-txt"
	#aqui saca el resultado anterior y lo guarda en un fichero
	id -un | du -sh >> /home/alumno/Documentos/informe.txt
	;;
	3)	echo "El total de fiheros de /boot son"
	#este comando nos busca los ficheros que hay en /boot y nos cuenta los ficheros
	find /boot -type f | wc -l 
	;;
	4) 	echo "Listamos ficheros esperamos un poco y guardamos en un fichero"
	find /boot -type f | more
	echo "esperamos 10 seg";
	sleep 10;
	echo "guardamos documento en ficheros.txt"
	find /boot -type f >>/home/alumno/Documentos/ficheros.txt
	;;
	5) 	echo "Saliendo del menu"
	;;
	*)	echo "Opcion incorrecta"
	;;



esac
