#!/bin/bash
#Agenda

function menu(){
	echo "Menu"
	echo "- ----- ----- - -----"
	echo "1) Introduce un contacto"
	echo "2) Borrar contacto"
	echo "3) Modificar contacto"
	echo "4) Consultar datos"
	echo "5) Salir"
	echo " - ---------- - --------"

	echo "Introduzca una opcion"
	read opcion
	case $opcion in
		1) introduce;;
		2) borrar;;
		3) modificar;;
		4) Consultar;;
		5) Salir;;
	esac
 }
echo ""
menu

function introduce(){
		read -p "Nombre contacto: " nombre;
		read -p "apellidos: " apellidos;
		read -p "Telefono: " telefono;
		read -p "email: " email;
		read -p  "mote: " mote;
		echo "nombre: $nombre apellidos: $apellidos telefono: $telefono email: $email mote: $mote" >> agenda.txt
	 
	menu

	}
	
function borrar(){
	read -p " Introduce el contacto que deseas borrar: " nb
	sed -i /$nb/d agenda.txt
	echo " "
	menu
	}

function modificar(){	
	read -p " Introduce el contacto que deseas modificar: " contacto2 
	read -p " Introduce el valor que deseas darle: " contacto1 
        sed -i s/$contacto2/$contacto1/g agenda.txt
	echo " El contacto Se ha modificado "
	menu
	}
	
function Consultar(){
	read -p "Usuario a consultar " nombre
	grep $nombre agenda.txt
	pausa
	menu
	}

function pausa(){
	echo " "
	read -p " Pulsa una tecla para continuar "
	}	

function Salir(){
		echo adios...
	}

