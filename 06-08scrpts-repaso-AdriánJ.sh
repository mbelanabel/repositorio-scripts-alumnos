#!/bin/bash
#Adrián Jarne
#Script que comprueba cada 5 segundos si un usuario en concreto se conecta al sistema hasta que se conecte
#Elementos clave: read, while, who, grep, sleep
echo Introduce usuario
read usuario
while [[ `who -a | grep "$usuario" | wc -l` = 0 ]]; do
	sleep 5
	echo "Usuario no conectado"
done
echo "El usuario $usuario se ha conectado"
