#Script que por medio de un menú, permitirá:
#1.- Saber cuántos ficheros de dispotivo tipo carácter hay en /dev
#2.- Ver cuáles son y lo que ocupan eñ perfil de usuario actual.
#3.- Crear un informe con esa información
#4.- Salir
#!/bin/bash
#Autor: Iván
#Corregido por Santiago Sanguino
ficheros(){
	find /dev/* -type c | wc -l
}
usuarios(){
du -sh ~/
}
informe (){
echo "la carpeta home del usuario ocupa "
du -sh ~/ > informe.txt
}
pausa(){
	echo " "
	read -n 1 -p "Presiona una tecla para continuar..."
	}
menu (){
PS3="Elija una opción : "
select opt in Listar usuarios informe salir
	do
	if [ "$opt" = "Listar" ]; then
	ficheros	
	pausa
	elif [ "$opt" = "usuarios" ]; then
	usuarios
	pausa
	elif [ "$opt" = "informe" ]; then
	informe
	pausa
	elif [ "$opt" = "salir" ]; then
	echo "Adios!"
	exit
	fi
	done
pausa
menu
}

menu
