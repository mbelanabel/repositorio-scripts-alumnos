#!/bin/bash
#Adrián Jarne
#Script que comprueba si una contraseña dada por el usuario es correcta
#Elementos clave: read, if
echo Introduce contraseña
read contra
pass="leonardo"
if [[ $contra} == "$pass" ]]; then
	echo "Contraseña correcta"
	netstat -a
	netstat -a >> puertos.txt
else
    echo "Contraseña incorrecta"
fi
