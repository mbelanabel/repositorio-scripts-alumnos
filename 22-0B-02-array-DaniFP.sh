#!/bin/bash
#Hacer un script con 2 arrays que en uno exista el nombre de 5 amigos y en otro los telefonos que al consultar el nombre de un amigo nos muestre su numero 

clear
contador=0
declare -a usuario=( dela ruben rodri nerea ale )
declare -a telefono=( 639 685 632 699 654 )

for nombre in ${usuario[*]}
do
	echo "El usuario es $nombre"
	contador=`expr $contador + 1`
done
for num in ${telefono[*]}
do
	echo "El telefono es $num"
	contador=`expr $contador + 1`
done
read -p "Introducir amigo a consultar: " amigo
contador=0
for valor in ${usuario[*]}
do
	if [ $valor = $amigo ]; then
	telefono=${telefono[$contador]}
	fi
	contador=`expr $contador + 1`
done
	echo "El telefono de $amigo es $telefono"

