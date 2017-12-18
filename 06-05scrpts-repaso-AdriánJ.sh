#!/bin/bash
#Adrián Jarne
#Script que comprueba si una variable pasada por el usuario es un fichero o un dorectorio.
#Elementos clave: read, if, elif
var='/fichero'
var2='/directorio'
echo Está seguro que quiere continuar con el borrado? S/N
read opcion
if [[ "$opcion" = "$S" ]]; then
        if [[ -f "$var" ]]; then
		rm $var
		echo "El archivo $var ha sido eliminado"
	elif [[ -d "$var2" ]]; then
		rmdir $var2
		echo "El directorio $var2 ha sido eliminado"
	else
		echo "No es un fichero ni un directorio"
	fi
elif [[ "$opcion" = "$N" ]]; then
        exit
else
        echo "Respuesta incorecta"
fi
