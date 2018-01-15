#!/bin/bash
#Adrián Jarne
#Script que comprueba si una contraseña dada por el usuario es correcta, si es asi, vuelca la configuración de las interfaces de red en un fichero.
#Elementos clave: read, if
echo Introduce contraseña
read contra
pass="leonardo"
if [[ "$contra" != "$pass" ]]; then #comprueba si el parametro pasado por el usuario coincide con la contraseña fijada
	echo "Contraseña incorrecta"
else
    ifconfig
	ifconfig >> mytcpip.txt
fi