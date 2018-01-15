#!/bin/bash
#Adrián Jarne
#Script que comprueba si un usuario en concreto está conectado y muestra mensajes en función de si está o no conectado.
#Elementos clave: read, if
echo Voy a comprobar si el usuario Roberto está conectado
echo Introduzca usuario
usuario1="Roberto"
read usuario
if [ "${usuario}" = "${usuario1}" ];
then
echo "Hola $usuario1, tienes una reunion a las 19.00"
else
echo "Hola $usuario"
fi
