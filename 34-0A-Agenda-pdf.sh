#key word:
#-- read -p: recoge el valor a introducir y con -p nos permite mostrar el mensaje que ponemos
#-- case: permite bifurcar la ejecucion entre varias ramas alternativas, segun el valor de la expresion $opcion 
#-- sed -i: buscamos las variables y las borramos la linea correspondiente con el -i
#-- cat: mostrar la agenda
#-- grep: buscamos las variables a buscar en la agenda
#
#Creado por Patricia_Davila
#Script que hacemos un menu para introducir algunos datos (agenda)
#! /bin/bash

clear

echo "        MENU"
echo
echo "1) Agregar contacto"
echo "2) Modificar contacto"
echo "3) Borrar contacto"
echo "4) Consultar contacto"
echo "5) Consultar todos los contactos"
echo "6) Salir"
echo
echo "-Elige una opcion-"
read opcion
case $opcion in
			#opcion para añadir datos
	1)read -p "Nombre contacto: " n1
	  read -p "Apellidos contacto: " n2
	  read -p "Telefono contacto: " n3
	  read -p "E-mail contacto: " n4
	  read -p "Notas Contacto: " n5
	echo $n1 : $n2 : $n3 : $n4 : $n5 >>AgendaPatri.txt
	echo
	echo "Contacto Guardado"
				;;
			#opcion para modificar datos
	2)echo "Introduzca datos del contacto a modificar: "
		read -p "Nombre: " var1
		read -p "Apellido: " var2
		sed -i "/$var1 : $var2/d" AgendaPatri.txt
		echo
		echo "Introduzca los nuevos datos del contacto: "
		echo
		read -p "Introducir nombre: " n1
		read -p "Introducir Apellido: " n2
		read -p "Introducir Telefono: " n3
		read -p "Introducir E-mail: " n4
		read -p "Introducir Notas del contacto: " n5
		echo
		echo $n1 : $n2 : $n3 : $n4 : $n5 >> AgendaPatri.txt
		echo
		echo "Contacto modificado"
	;;
			#opcion para borrar datos
	3)echo "Introduzca  datos para borrar contacto: "
		read -p "Introducir Nombre: " n1
		read -p "Introducir Apellido" n2
		echo
		sed -i "/$n1 : $n2/d" AgendaPatri.txt
		echo
		echo "contacto Borrado"
	;;
			#opcion para consultar un contacto
	4)echo "Introduzca Datos a Consultar: "
		read -p "Introduzca Nombre a Consultar: " c1
		read -p "Introduzca Apellido a Consultar: " c2
		echo
		cat AgendaPatri.txt | grep -i -e "$c1 : $c2"
	;;
			#opcion para consultar todos datos
	5) 
	echo "Contactos: "
	cat AgendaPatri.txt 
	;;
			#opcion salir
	6) echo "gracias, hasta la proxima consulta!! "
	   return
	;;

esac
