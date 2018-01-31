#!/bin/bash
#Escribe un script que devuelva el numero de ficheros de mas de 1Mb dado
#un directorio
clear

read -p "Intoduce un directorio: " dir
if [ -z $dir ]; then
	echo "No has escrito ningun directorio"
elif  [ -d $dir ]; then
	find $dir -type f -size +1000k -exec wc -l {} \;
elif [ -f $dir ]; then
	echo "Has escrito un archivo y no un directorio"
fi
