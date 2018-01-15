#!/bin/bash
#Adrián Jarne
#Script que muestra menú
#Elementos clave: funciones, case, read, wc -l, du -hs
menu()
{
echo ........MENÚ........
echo "1 Cuales son y cuanto ocupan los perfiles de usuario"
echo "2 Crear informe"
echo "3 Saber cuántos ficheros de hay en /boot"
echo "4 Listar los ficheros y 10 segundos despues, meterlo en un fichero"
echo "5 Salir"
read -p "Elije una opción: " opcion
case ${opcion} in
1) clear
	sudo du -hs /home/* #muestra el espacio ocupado por cada uno de los usuarios dentro de /home "-h" muestra la unidad, "-s" muestra lo que ocupa el total de cada
	menu
	;;
2) clear
	sudo du -hs /home/* > informe.txt #creo el fichero informe.txt con la info que muestra du -hs /home
	echo "Informe generado"
	menu
	;;
3) clear
	echo "En /boot/ hay"
	ls /boot/ | wc -l #Con "wc -l" cuento las lineas contenidas en /boot
	echo "ficheros"
	menu
;;
4) clear
	ls /boot/
	sleep 5
	echo "Guardando listado..."
	ls /boot/ > listado.txt #creo el fichero listado.txt con la info de ls /boot
	echo "Listado guardado"
	;;
5) clear
	break
	;;
*) echo "Opción no valida"
	menu
	;;
esac
}
menu
