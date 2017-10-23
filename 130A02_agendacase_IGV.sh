!/bin/bash
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
	PS3="Selecciona una opcion : "
	select opt in busqueda-nombre busqueda-apellido busqueda-telefono crear-contacto modificar-contacto borrar-contacto listar-contactos borrar-todos-los-contactos salir
	do
	if [ "$opt" = "busqueda-nombre" ]; then
	buscar
	pausa
	menu
	elif [ "$opt" = "busqueda-apellido" ]; then
	buscar1
	pausa
	menu
	elif [ "$opt" = "busqueda-telefono" ]; then
	buscar2
	pausa
	menu
	elif [ "$opt" = "crear-contacto" ]; then
	Crear
	pausa
	menu
	elif [ "$opt" = "modificar-contacto" ]; then
	modificar
	pausa
	menu
	elif [ "$opt" = "borrar-contacto" ]; then
	borrar
	pausa
	menu
	elif [ "$opt" = "listar-contactos" ]; then
	lista
	pausa
	menu
	elif [ "$opt" = "borrar-todos-los-contactos" ]; then
	limpiar	
	pausa
	menu
	elif [ "$opt" = "salir" ]; then
	exit
	fi
	done
#Menu
pausa
menu
}

#Inicio
menu
