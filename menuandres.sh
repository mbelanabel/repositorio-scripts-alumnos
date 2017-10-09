#!/bin/bash
# Andres Bautista Aispur
echo "MENU"
echo "_________________________"
echo "1) Ver cuales son y cuales y lo que ocupan los perfiles de usuario"
echo "2) Crear un informe con esa informacion"
echo "3) Saber cuántos ficheros que hay rn /boot"
echo "4) Listar los ficheros y 10 segundos despues, meter ese listado en un fichero"
echo "5) Salir"
echo "Introduzca una opcion"
read opcion
case $opcion in 
	1)	echo "los usuarios son"
	id | du -sh /home/alumno
	;;
	2) 	echo "guarda este informe en un documento llamado informe-txt"
	id | du -sh /home/alumno >> /home/alumno/Documentos/informe.txt
	;;
	3)	echo "El total de fiheros de /boot son"
	find /boot -type f | wc -c 
	;;
	4) 	echo "Listamos ficheros esperamos un poco y guardamos en un fichero"
	find /boot -type f | more
	echo "esperamos 10 seg"
	echo sleep 10;
	sleep 10;
	echo "guardamos documento en ficheros.txt"
	find /boot -type f >>/home/alumno/Documentos/ficheros.txt
	;;
	5) 	echo "Saliendo del menu"
	;;
	*)	echo "Opcion incorrecta"
	;;



esac
