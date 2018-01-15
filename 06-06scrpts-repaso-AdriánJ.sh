#!/bin/bash
#Adrián Jarne
#Script que comprueba cuantos parámetros se introducen y si son ficheros.
#Elementos clave: read, if, elif

# No funciona bien

echo Introduce los ficheros
read param1
read param2
if [[ $# = "2" ]]; then #comprueba si el numero de parametros introducidos es igual a 2
	echo "Se van a empaquetar y comprimir los ficheros $param1 y $param2"
	if [[ -f $param1 && -f $param2 ]]; then #comprueba si son ficheros los parametros pasados
		tar -cvf ficheros.tar $param1 $param2 #comprime
	fi
elif [[ $# -lt 1 ]]; then #comprueba si el numero de parametros introducidos es menor que 1
	echo "El $param1 será desempaquetado y descomprimido" #descomprime
	if [[ -f $param1 ]]; then
		tar -cvfz "$param1"
	fi
else
	echo "Error"
fi
