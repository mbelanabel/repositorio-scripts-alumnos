#!/bin/bash
#Author Diego Muñoz-Reja Armida

clear

#MENU VISIBLE

echo "--------- MENU ---------"
echo
echo "Eliga una opcion"
echo
echo "1) Agregar contacto"
echo "2) Borrar contacto"
echo "3) Mostrar toda la agenda"
echo "4) Buscar un contacto"
echo "5) Modificar un contacto"
echo "0) Salir"
echo
echo "------------------------"

#MENU PRACTICO CASE

read opcion
case $opcion  in

		#Usando el comando read introducimos unas variables, luego las mandamos todas juntas a un arrchivo.txt.

	1)	read  -p "Nombre del Contacto: " n1
		read  -p "Apellidos del Contacto: " n2
		read  -p "Telefono del Contacto: " n3
		read  -p "Correo Electronico del Contacto: " n4
		read  -p "Alias del Contacto: " n5

		echo $n1 : $n2 : $n3 : $n4 : $n5 >> agenda.txt

		echo "Contacto añadido"
		;;

		#Usando el comando read introducimos 2 variables que correspondan a nombre y apellido ( que no deberian coincidir)
		#Con el comando sed buscamos en agenda.txt ambas variables y borramos la linea correspondiente gracias al  `-i`

	2)	echo "Eliminar contacto"
		echo
			read -p "Ingrese un nombre: " n1
			read -p "Ingrese un apellido: " n2

		sed -i "/$n1 : $n2/d" agenda.txt
		echo
		echo "Contacto borrado"
		;;

		#Para mostrar la agenda basta con hacer un cat

	3)	echo "Contactos: "
		echo
		cat agenda.txt
		;;

		#Para busacr un  contacto lo requerimos con un read y con un cat y grep buscamos dentro del archivo la variable.

	4)	read -p "Introduzca nombre a buscar: " c1
		read -p "Introduzca apellido a buscar: " c2

 		  echo
		  cat agenda.txt | grep -i -e "$c1 : $c2"
		;;

		#Buscamos el contacto de igual forma que en la opcion 4, pero usamos el comando sed para reemplzar la linea
		# por los nuevos datos.

	5)	echo "Introduzca datos del contacto a modificar: "
			read -p "Ingrese nombre: " var1
			read -p "Ingrese apellido: " var2

			sed -i "/$var1 : $var2/d" agenda.txt

			echo "Introduzca los NUEVOS datos del contacto: "

			read -p "Ingrese Nombre: " n1
			read -p "Ingrese Apellido: " n2
			read -p "Ingrese tlf: " n3
			read -p "Ingrese correo electronico: " n4
			read -p "Ingrese alias: " n5

			echo $n1 : $n2 : $n3 : $n4 : $n5 >> agenda.txt

			echo "Contacto modificado."
		;;

	0)	echo "Gracias por su consulta"
		return
		;;

esac
