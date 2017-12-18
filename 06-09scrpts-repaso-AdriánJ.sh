#!/bin/bash
#Adrián Jarne
#Script que muestra menu con diferentes opciones
#Elementos clave: funciones, menu select, $*, ps head
menu()
{
options=("Visualizar PID1" "Consultar variable PATH" "Consultar usuarios conectados" "Salir")
select opt in "${options[*]}" #"$options[*]" lista los todos los valores de $options
do
	case $opt in
		"Visualizar PID1") clear
			ps -ef | head -2
			;;
		"Consultar variable PATH") clear
			echo "$PATH"
			;;
		"Consultar usuarios conectados") clear
			who | sort
			;;
		"Salir") clear
			exit
			;;
		*) clear
			exit
			;;
	esac
done
}
menu


