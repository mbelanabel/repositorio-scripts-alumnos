#!/bin/bash

PS3="Elija una opción: "
OPCIONES="Añadir Borrar Modificar Consultar Salir"
select opt in $OPCIONES
do
	if [[ $opt = "Añadir" ]]
	then
		echo Introduzca su DNI, nombre, primer apellido, segundo apellido, telefono, correo, direccion:
		read -p "Introduzca el DNI: " DNI
		read -p "Introduzca el nombre: " nombre
		read -p "Introduzca el primer apellido: " apellido1
		read -p "Introduzca el segundo apellido: " apellido2
		read -p "Introduzca el telefono: " telefono
		read -p "Introduzca el correo: " correo
		read -p "Introduzca la dirección: " direccion
		echo $DNI $nombre $apellido1 $apellido2 $telefono $correo $direccion >> contacto.txt
		
	elif [[ $opt = "Borrar" ]]
	then
		echo Introduzca el DNI del usuario que desea borrar:
		read DNID
		sed -i /$DNID/d /home/alumno/contacto.txt
		echo "El usuario con DNI $DNID ha sido eliminado."

	elif [[ $opt = "Modificar" ]]
	then
# Esta pendiente de mejora con el comando while
		opcion=0
		while [ $opcion != 8 ] ; do
		echo "Escoja un campo"
		echo "1) DNI"
		echo "2) Nombre"
		echo "3) Primer apellido"
		echo "4) Segundo apellido"
		echo "5) Telefono"
		echo "6) Correo"
		echo "7) Direccion"
		echo "8) Salir"
		echo -n "Seleccione una opcion[1 - 8]: "
		read opcion
	#	clear
		case $opcion in
		1) read -p "Introduzca el dni del usuario que desea modificar: " DNI
		read -p "Introduzca el nuevo dato: " DNI2
		sed -i s/$DNI/$DNI2/g /home/alumno/contacto.txt
		echo "Ha vuelto al menu principal"
		;;
		2) read -p "Introduzca el nombre del usuario que desea modificar: " nombre
		read -p "Introduzca el nuevo dato: " nombre2
		sed -i s/$nombre/$nombre2/g /home/alumno/contacto.txt
		echo "Ha vuelto al menu principal"
		;;
		3) read -p "Introduzca el primer apellido: " apellido1
		read -p "Introduzca el nuevo dato: " apellido1mod
		sed -i s/apellido1/apellido1mod /home/alumno/contacto.txt
		echo "Ha vuelto al menu principal"
		;;
		4) read -p "Introduzca el segundo apellido: " apellido2
		read -p "Introduzca el nuevo dato: " apellido2mod
		sed -i s/$apellido2/$apellido2mod/g /home/alumno/contacto.txt
		echo "Ha vuelto al menu principal"
		;;
		5) read -p "Introduzca el telefono que desea modificar: " telefono
		read -p "Introduzca el nuevo dato: " telefono2
		sed -i s/$telefono1/$telefono2/g /home/alumno/contacto.txt
		echo "Ha vuelto al menu principal"
		;;
		6) read -p "Introduzca el correo que desea modificar: " correo
		read -p "Introduzca el nuevo dato: " correo2
		sed -i s/$correo/$correo2/g /home/alumno/contacto.txt
		echo "Ha vuelto al menu principal"
		;;
		7) read -p "Introduzca la direccion que desea modificar: " direccion
		read -p "Introduzca el nuevo dato: " direccion2
		sed -i s/$direccion/$direccion2/g /home/alumno/contacto.txt
		echo "Ha vuelto al menu principal"
		;;
		8) echo "Salir"
		echo "Ha vuelto al menu principal"
		;;
		*) echo "Opcion incorrecta"	
		echo "Ha vuelto al menu principal"
		;;
esac
			done

	elif [[ $opt = "Consultar" ]]
	then
		read -p "Introduzca el DNI del usuario que desea consultar: " DNI
		grep "$DNI" contacto.txt	

	elif [[ $opt = "Salir" ]]
	then
		echo "FIN"
		break
	else
		echo "Opción errónea."
	fi
done
