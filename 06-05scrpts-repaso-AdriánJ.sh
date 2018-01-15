#!/bin/bash
#Adrián Jarne
#Script que comprueba si una variable pasada por el usuario es un fichero o un dorectorio.
#Elementos clave: read, if, elif
var1='/fichero'
var2='/directorio'
si="S"
no="N"

read -p "Escribe el nombre de un fichero o directorio para borrarlo: " var
if [[ -f "$var1" ]]; then
	echo "Está seguro que quiere borrar el archivo? S/N"
	read opcion
	if [[ "$opcion" = "$si" ]]; then
        rm $var1
        echo "El archivo $var1 ha sido eliminado"
	elif [[ "$opcion" = "$no" ]]; then
        break
	else
        echo "Respuesta incorecta"
        . 06-05scrpts-repaso-AdriánJ.sh
	fi
elif [[ -d "$var2" ]]; then
	echo "Está seguro que quiere borrar el directorio? S/N"
	read opcion
	if [[ "$opcion" = "$si" ]]; then
		rmdir $var2
	echo "El directorio $var2 ha sido eliminado"
	elif [[ "$opcion" = "$no" ]]; then
        break
	else
        echo "Respuesta incorecta"
        . 06-05scrpts-repaso-AdriánJ.sh
	fi
else
	echo "No es un fichero ni un directorio"
fi

