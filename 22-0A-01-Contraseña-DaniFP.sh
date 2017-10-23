#!/bin/bash
#Redacta un script que pida una contraseña. Si la contraseña es correcta, leonardo, mostramos un mensaje de "Contraseña correcta" y muestra el estado de los puertos y despues guarda esta información en un fichero llamado puertos.txt. Si la contraseña es incorrecta que muestre mensaje de error.
#Script de Daniel Fernández de Pablos
clear 
read -p "Introduzca contraseña: " pass
if [ $pass = "leonardo" ]; then
	echo "Contraseña correcta"
	netstat -a > puertos.txt
	echo "Se almaceno los estados de los puertos en el fichero puertos.txt"
else
	echo "Contraseña incorrecta"
fi
