#!/bin/bash
#Adrián Jarne
#Script que comprueba si estoy en el directorio raiz, si no es así cambia a raiz.
#Elementos clave: pwd, if
echo "Estoy en el directorio raiz?"
pwd
raiz="/"
variable=`pwd`
if [ "$raiz" = "$variable" ];
then
	ls -l $variable
else
	echo "Cambiando a raiz"
	sleep 2
	cd $raiz
fi
