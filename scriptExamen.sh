#Author: Diego Muñoz-Reja Armida
#/bin/bash

#Menu Visible.

clear
echo
echo "---------------MENU---------------"
echo
echo "1)Eliminar una archivo."
echo "2)Eliminar Directorio."
echo "3)Mostrar directorio actual."
echo "0)Salir."
echo
echo "----------------------------------"
echo

#Menu practico.

read opcion
case $opcion in

	1)	echo "Escriba el nombre del archivo: "
		read archivo

		rm -r $archivo
		;;

	2)	echo "Escribe el nombre del Directorio (tenga en cuenta que se borrara su interior): "
		read directorio

		rm -r $directorio
		;;

	3)	echo "Se muestra el directorio actual por pantalla: "

		echo $PWD
		;;

	0)	echo "Adiosito :D"

		return
		;;

esac
