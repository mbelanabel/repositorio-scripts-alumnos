#!/bin/bash
#Adrián Jarne
#Script que muestra menú
#Elementos clave: funciones, case, read, df -h, whoami
menu()
{
echo ........MENÚ........
echo "1 Visualizar el contenido del directorio home del usuario actual"
echo "2 Visualizar el espacio libre del disco"
echo "3 Si el usuario se llama Noel, mostrar mensaje"
read -p "Elije una opción: " opcion
case ${opcion} in
1) clear
	echo "Visualizando contenido de /home"
	ls -l $HOME
	menu
	;;
2) clear
	echo "Mostrando espacio libre del disco"
	df -h #ver particiones montadas y espacio libre de cada una
	menu
	;;
3) clear
	sleep 2
	usuario="Noel"
	if [[ whoami == $usuario ]]; then
		echo "Ánimo $usuario, el 25 de diciembre está al caer"
	else
		echo "No eres Noel"
	fi
	menu
	;;
*) echo "Opción no valida"
	menu
	;;
esac
}
menu
