
#enunciado: Redacta  un script que nos pida el nombre de un usuario y nos
#avise si el usuario en concreto esta conectado al sistema. 
#Mientras no se conecte que nos muestre cada 10 minutos ,un mensaje que  diga:
#" usuario **nombre** no conectado "

#PALEBRAS CLAVE
#read -p: recoge un valor a introducir y con -p nos permite mostrar el mensaje que enuncia al usuario que debe introducir
#until:   ejecuta de manera repetida la lista de órdenes, si el valor es verdadero se cumple la condición y ejecuta el comando
#do:	  si no se cumple ejecuta el sleep 10 y muestra el mensaje de $nick que esta desconectado
#done: 	  si se cumple nos muestra el usuario $nick con el mensaje de que esta conectado
#Corrección: Alejandro de Arcos

#!/bin/bash
#Maricarmen Arroyo Rodriguez

echo "Introduce el nombre de usuario"
# Queremos saber el $nombre de usuario
read -p "nombre: " nick
until [ `who -a | grep $nick | wc -l ` -gt "0" ];
do
	sleep 10
	echo  "El usuario $nick no esta conectado"
done #si se cumple nos muestra el usuario $nick con el mensaje de que esta conectado
echo  "El usuario $nick esta conectado"


