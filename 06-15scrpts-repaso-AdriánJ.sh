#!/bin/bash
#Adrián Jarne
#Script que muestra menú
#Elementos clave: funciones, case, read, du, grep
menu()
{
echo ........MENÚ........
echo "1 Mostrar cuántos ficheros tipo carácter hay en /dev"
echo "2 Cuales son y cuanto ocupan los perfiles de usuario"
echo "3 Crear informe"
echo "4 Salir"
read -p "Elije una opción: " opcion
case ${opcion} in
1) clear
	echo "Mostrando cantidad de ficheros tipo caracter"
	ls -l /dev | grep -c '^c' #muestro las lineas que empiezan por la letra c, que son los ficheros tipo carácter.
	menu
	;;
2) clear
	echo "Mostrando cuales son y cuanto ocupan los perfiles de usuaurio"
	sudo du -hs /home/* # du muestra el espacio ocupado por cada uno de los usuarios dentro de /home "-h" muestra la unidad, "-s" muestra lo que ocupa el total de cada
	menu
	;;
3) clear
	ls -l /dev | grep -c '^c' > informe.txt #">" Vuelca la informacion y borra si habia algo ántes
	sudo du -hs /home/* >> informe.txt #">>" Vuelca la información sin borrar lo qeu habia ántes
	echo "Informe creado"
	menu
	;;
4) clear
	break
	;;
*) clear
	echo "Opción no valida"
	menu
	;;
esac
}
menu
