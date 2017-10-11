#Script que por medio de un menu permitira:
#1- Visulizar el contenido del directorio hom del usuario actual
#2- Visualizar el espacio libre del disco
#3- Si el usuario se llama Noel, mostrar mensaje "Animo Noel, el 25 de diciembre esta al caer

#!/bin/bash
clear
PS3="Elija opcion:"
OPCIONES="Directorioactual Espaciolibredisco MensajeNoel Salir"
select opt in $OPCIONES
do
	if [[ $opt = "Directorioactual" ]]
	then
		ls ~
	elif [[ $opt = "Espaciolibredisco" ]]
	then 
		echo "El espacio libre es de:"
		df -h 
	elif [[ $opt = "MensajeNoel" ]]
	then
		echo "Eres el usuario Noel?"
		echo "1 si lo soy"
		echo "2 No lo soy"
		echo "Introducir opcion"
		read respuesta 
		case $respuesta in 
			1 |si|s|yes|y ) echo "Animo Noel el 25 de diciembre esta al caer"
			;;
			2 |no|n ) echo "Lo siento no puedes leer"
			;;
			*) echo "Opcion incorrecta"
			;;
		esac
	elif [[ $opt = "Salir" ]]
	then 
		echo "Final script"
		break 
	else
		echo "Opcion incorrecta"
	fi
done
