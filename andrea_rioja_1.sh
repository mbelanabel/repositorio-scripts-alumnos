#Hecho por Andrea Rioja Fernandez
#Revisado por Mayco Costa Bustamante
#En el revisado no existen fallos
#Script que por medio de un menu permitira:
#1- Visulizar el contenido del directorio hom del usuario actual
#2- Visualizar el espacio libre del disco
#3- Si el usuario se llama Noel, mostrar mensaje "Animo Noel, el 25 de diciembre esta al caer

#!/bin/bash
clear
PS3="Elija opcion:"
#Vamos a proceder a hacer una lista con las opciones del script
OPCIONES="Directorio_actual Espacio_libre_disco Mensaje_Noel Salir"
select opt in $OPCIONES #Empieza el menu de opciones de que hace cada una  
do
	if [[ $opt = "Directorio_actual" ]]
	then
		ls ~ #Listar el Directorio Home del usuario actual
	elif [[ $opt = "Espacio_libre_disco" ]]
	then 
		echo "El espacio libre es de:"
		df -h  #Muestra el espacio libre del disco
	elif [[ $opt = "Mensaje_Noel" ]]
	then
		echo "Eres el usuario Noel?"
		echo "1 si lo soy"
		echo "2 No lo soy"
		echo "Introducir opcion"
		read respuesta 
		case $respuesta in #Creamos un menu de las opciones del mensaje a Noel 
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
