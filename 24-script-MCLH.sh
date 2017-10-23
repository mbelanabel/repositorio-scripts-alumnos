#!/bin/bash
#Script que, por medio de un menú, permitirá:
	# Visualizar el contenido del directorio home del usuario actual
	# Visualizar el espacio libre del disco
	# Si el usuario se llama Noel, mostrar mensaje "Ánimo Noel, el 25 de diciembre está al caer"

PS3="Elija una opción: "
OPCIONES="UsuarioActual EspacioLibre Mensaje Salir"
select opt in $OPCIONES
do
	if [[ $opt = "UsuarioActual" ]]
	then
		echo Estas en el directorio:
		pwd
		echo Visualizamos su contenido:
		ls -l .

	elif [[ $opt = "EspacioLibre" ]]
	then
		echo Las estadisticas del espacio del disco son:
		df -h
	
	elif [[ $opt = "Mensaje" ]]
	then
		echo "¿Es el usuario Noel?"
		echo "1 si"
		echo "2 no"
		echo "Introduzca su opción:"
		read respuesta
		case $respuesta in 
			1 | si | s ) echo "Ánimo Noel, el 25 de diciembre esta al caer"
			;;
			2 | no | n ) echo "No se ha detectado coincidencia"
			;;
			*) echo "Opción incorrecta"
			;;
		esac
		

	elif [[ $opt = "Salir" ]]
	then
		echo "FIN"
		break
	else
		echo "Opción errónea."
	fi
done

