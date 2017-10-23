#!/bin/bash

FICHERO="fichero.txt"

function Menu
{
	echo "MENU"
	echo ""
	echo "1) Introducir Contacto"
	echo "2) Consultar Contacto"
	echo "3) Modificar Contacto"
	echo "4) Borrar Contacto"
	echo "5) Salir"
}

function Introducir
{
	if [ -e "fichero.txt" ]; then
		echo "Introduzca los datos de la persona: "
		read -p "NOMBRE: " nombre
		read -p "PRIMER APELLIDO: " apellido1
		read -p "SEGUNDO APELLIDO: " apellido2
		read -p "TELEFONO: " telefono
		read -p "EMAIL: " 	email
		echo "$nombre:$apellido1:$apellido2:$telefono:$email" >> $FICHERO
		echo
		read -p "¿Desea meter otro usuario? (Y/N) " otro
		case $otro in
			1 | Y | y | si | SI ) Intorducir
				;;
			2 | N | n | no | NO ) echo "Hasta la vista."
				;;
		esac		
	else
		echo "No se ha podido acceder a la agenda"
		touch $FICHERO
		read -p "¿Desea desea realizar otra operación? (Y/N) " otro
		case $otro in
			1 | Y | y | si | SI ) 
				Menu
				read -p "¿Qué desea hacer?: " di
				case $di in
					1)Introducir
					;;
					2)Buscar
					;;
					3)Modificar
					;;
					4)Borrar
					;;
					5)echo "Gracias por su consulta"
				esac
				;;
			2 | N | n | no | NO ) echo "Hasta la vista."
				;;
		esac		
	fi
	
}

function Buscar
{
	if [ -s $FICHERO ]; then
		echo "Introdizca los siguientes datos:"
		read -p "NOMBRE: " nombre
		read -p "PRIMER APELLIDO: " apellido1
		read -p "SEGUNDO APELLIDO: " apellido2
		
		DATOS="$nombre:$apellido1:$apellido2"

		grep -i $DATOS $FICHERO 
		echo
		read -p "¿Desea desea realizar otra operación? (Y/N) " otro
		case $otro in
			1 | Y | y | si | SI ) 
				Menu
				read -p "¿Qué desea hacer?: " di
				case $di in
					1)Introducir
					;;
					2)Buscar
					;;
					3)Modificar
					;;
					4)Borrar
					;;
					5)echo "Gracias por su consulta"
				esac
				;;
			2 | N | n | no | NO ) echo "Hasta la vista."
				;;
		esac
	else
		echo "No se puede acceder a la agenda"
		echo
		read -p "¿Desea desea realizar otra operación? (Y/N) " otro
		case $otro in
			1 | Y | y | si | SI ) 
				Menu
				read -p "¿Qué desea hacer?: " di
				case $di in
					1)Introducir
					;;
					2)Buscar
					;;
					3)Modificar
					;;
					4)Borrar
					;;
					5)echo "Gracias por su consulta"
				esac
				;;
			2 | N | n | no | NO ) echo "Hasta la vista."
				;;
		esac
	fi
}

function Modificar
{

	if [ -s $FICHERO ]; then
		echo "Introdizca los siguientes datos:"
		read -p "NOMBRE: " nombre
		read -p "PRIMER APELLIDO: " apellido1
		read -p "SEGUNDO APELLIDO: " apellido2
		
		DATOS="$nombre:$apellido1:$apellido2"
		
		grep -i $DATOS $FICHERO

		echo "Datos que quieres modificar:"
		read -p "TELEFONO: " telefonom
		read -p "EMAIL: " emailm
		
		BUSQUEDA="$nombre:$apellido1:$apellido2:$telefonom:$emailm"
		sed -i /"$DATOS"/!d $FICHERO 
		echo "$BUSQUEDA" > $FICHERO
		echo "Se modifico el usuario $nombre"
		grep -i $BUSQUEDA $FICHERO
		echo
		read -p "¿Desea desea realizar otra operación? (Y/N) " otro
		case $otro in
			1 | Y | y | si | SI ) 
				Menu
				read -p "¿Qué desea hacer?: " di
				case $di in
					1)Introducir
					;;
					2)Buscar
					;;
					3)Modificar
					;;
					4)Borrar
					;;
					5)echo "Gracias por su consulta"
				esac
				;;
			2 | N | n | no | NO ) echo "Hasta la vista."
				;;
		esac
	else
		echo "No se pudo modificar el usuario"
		echo
		read -p "¿Desea desea realizar otra operación? (Y/N) " otro
		case $otro in
			1 | Y | y | si | SI ) 
				Menu
				read -p "¿Qué desea hacer?: " di
				case $di in
					1)Introducir
					;;
					2)Buscar
					;;
					3)Modificar
					;;
					4)Borrar
					;;
					5)echo "Gracias por su consulta"
				esac
				;;
			2 | N | n | no | NO ) echo "Hasta la vista."
				;;
		esac
		
	fi
}

function Borrar

{


	if [ -s $FICHERO ]; then
		echo "Introdizca los siguientes datos:"
		read -p "NOMBRE: " nombre
		read -p "PRIMER APELLIDO: " apellido1
		read -p "SEGUNDO APELLIDO: " apellido2
		
		DATOS="$nombre:$apellido1:$apellido2"
		
		sed -i /"$DATOS"/d $FICHERO
		echo "Se borro el  usuario $nombre"
		echo
		read -p "¿Desea desea realizar otra operación? (Y/N) " otro
		case $otro in
			1 | Y | y | si | SI ) 
				Menu
				read -p "¿Qué desea hacer?: " di
				case $di in
					1)Introducir
					;;
					2)Buscar
					;;
					3)Modificar
					;;
					4)Borrar
					;;
					5)echo "Gracias por su consulta"
				esac
				;;
			2 | N | n | no | NO ) echo "Hasta la vista."
				;;
		esac
	else
		echo "No se pudo borrar el usuario $nombre." 
		echo
		read -p "¿Desea desea realizar otra operación? (Y/N) " otro
		case $otro in
			1 | Y | y | si | SI ) 
				Menu
				read -p "¿Qué desea hacer?: " di
				case $di in
					1)Introducir
					;;
					2)Buscar
					;;
					3)Modificar
					;;
					4)Borrar
					;;
					5)echo "Gracias por su consulta"
				esac
				;;
			2 | N | n | no | NO ) echo "Hasta la vista."
				;;
		esac
	fi
}
clear
Menu
read -p "¿Qué desea hacer?: " di
case $di in
	1)Introducir
	;;
	2)Buscar
	;;
	3)Modificar
	;;
	4)Borrar
	;;
	5)echo "Gracias por su consulta"
esac

