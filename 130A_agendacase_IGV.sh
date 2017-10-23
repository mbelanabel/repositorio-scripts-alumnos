#!/bin/bash
#script original https://github.com/procamora/Scripts-Bash/blob/master/agenda.sh
#autor: Iván

barra(){
	clear
	echo "------------ Agenda # $1 ------------" 
	}

cancelar(){
	echo "Operacion cancelada"
	}

pausa(){
	echo " "
	read -n 1 -p "Presiona una tecla para continuar..."
	}

buscar(){
barra "Buscar"
	read -p "Ingrese un nombre:   " nombre
	cat agenda.txt | grep $nombre
	} 

buscar1(){
barra "Buscar"
	read -p "Ingrese un apellido:   " apellido
	cat  agenda.txt | grep $apellido
	}

buscar2(){
barra "Buscar"
	read -p "Ingrese un telefono:   " telefono
	cat  agenda.txt | grep $telefono
	}

Crear(){ 
barra "Crear"
	echo " "
	read -p "Ingrese un nombre:   " nombre
	read -p "Ingrese un apellido:   " apellido
	read -p "Ingrese un DNI:   " DNI
	read -p "Ingrese un telefono: " telefono
	read -p "Ingrese una dirección: " direccion
	if [ -n "$nombre" ] && [ -n "$apellido" ] && [ -n "$DNI" ] && [ -n "$telefono" ] && [ -n "$direccion" ]
	then
	echo "nombre: $nombre ; apellido: $apellido ; DNI: $DNI ; telefono: $telefono ; direccion: $direccion" >> agenda.txt
	echo " "
	echo "GUARDADO!"
	else
	echo "Alguno de los parametros no ha sido rellenado correctamente, por favor, introduzca todos los datos"
	fi
	}

modificar(){
barra "Modificar"
read -p "Ingrese el valor a modificar: " valor2
read -p "Ingrese el valor que desea guardar: " valor1
        sed -i s/"$valor2"/"$valor1"/g agenda.txt
        echo " "
        echo "Se ha modificado el contacto correctamente"
        }

borrar(){
barra "Borrar"
	read -p "Ingrese un nombre: " nb
	sed -i /$nb/d agenda.txt
	echo " "
	echo "Se ha eliminado el contacto deseado"
	}  

limpiar(){
barra "Limpiar"
	cat /dev/null > agenda.txt
	echo " "
	echo "Se han borrado todos los contactos"
	}

lista(){
barra "Lista"
	cat agenda.txt
	}

menu(){
barra "Menu principal"
	echo "|  1.) Busqueda por nombre                      |" 
	echo "|  2.) Busqueda por apellido                    |" 
	echo "|  3.) Busqueda por telefono                    |" 
	echo "|  4.) Crear un nuevo contacto                  |"
	echo "|  5.) Modificar un contacto                    |"
	echo "|  6.) Borrar contacto                          |"
	echo "|  7.) Listar todos los contactos               |"
	echo "|  8.) Borrar todos los contactos               |"
	echo "|  0.) Salir                                    |"
	echo "-------------------------------------------------"

	read -n 1 -p "    Que desea hacer? " opt
	case $opt in 
	1) buscar ;;
	2) buscar1 ;;
	3) buscar2 ;;
	4) Crear ;;
	5) modificar ;;
	#Borra un contacto poniendo su nombre unicamente
	6) borrar ;;
	#Lista todos los contactos ordenados por nombre alfabeticamente
	7) lista ;;
	#Lista todos los contactos ordenados por apellido alfabeticamente
	8) limpiar ;;
	0) clear
	exit
	;; 
	*)

	#El resto
	echo " "
	echo "Opcion invalida!"
	;;
	esac

#Menu
pausa
menu
}

#Inicio
menu
