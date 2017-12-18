#!/bin/bash
#Adrián Jarne
#Script que comprueba si estoy en el directorio raiz, si no es así cambia a raiz.
#Elementos clave: pwd, if
echo "Estoy en el directorio raiz?"
raiz="/"
variable ="pwd"
if [ "$raiz" = "$variable" ] 
then
ls -l $variable
else
cd $raiz
fi
