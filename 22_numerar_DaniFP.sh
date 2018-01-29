#!/bin/bash
#Escribe un script que devuelva el numero de ficheros de mas de 1Mb dado
#un directorio
clear
buscar (){
read -p "Intoduce un directorio: " dir
}
buscar
if [ -z $dir ]; then
	echo "No has escrito ningun directorio"
elif  [ -d $dir ]; then
	find $dir -type f -size +1000k -exec ls -l {} \; | wc -l
elid [ -f $dir ]; then
	echo "Has escrito un archivo y no un directorio"
fi
