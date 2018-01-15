#!/bin/bash
#Adrián Jarne
#Script que muestra menu con diferentes opciones
#Elementos clave: funciones, menu select, $@, ps -ef, who, head
menu()
{
echo "Elije una opción:"
options=("Visualizar PID1" "Consultar variable PATH" "Consultar usuarios conectados" "Salir")
select opt in "${options[@]}" #"$options[@]" selecciona cada uno de los valores de $options
do
	case $opt in
		"Visualizar PID1") clear
			echo "Visualizando PID 1"
			ps -ef | head -2 # ps -ef -> muestra los procesos activos del sistema, head -2 -> coje las 2 primeras lineas
			;;
		"Consultar variable PATH") clear
			echo "Mostrando variables PATH"
			echo "$PATH"
			;;
		"Consultar usuarios conectados") clear
			echo "Consultando usuarios conectados"
			who #muestra usuarios conectados
			;;
		"Salir") clear
			break
			;;
		*) clear
			echo "Opción no valida"
			menu
			;;
	esac
done
}
menu


