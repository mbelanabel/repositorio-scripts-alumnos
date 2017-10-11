
#enunciado: Redacta  un script que no spida el nombre de un usuario y nos
# avise si el usuario en concreto esta conectado al sistema. 
#Mientras no se conecte que nos muestre cada 10 minutos ,un mensaje que  diga:
# " usuario **nombre** no conectado "


#!/bin/bash
#Maricarmen Arroyo Rodriguez

echo "Introduce el nombre de usuario"
# Queremos saber el $nombre de usuario
read -p "nombre: " nick
until [ `who -a | grep $nick | wc -l ` -gt "0" ]; 
	do
	sleep 10
	echo  "El usuario $nick no esta conectado"
	done
	echo  "El usuario $nick esta conectado"


