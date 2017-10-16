#!/bin/bash
clear

declare -A numeros 

numeros=([dela]="658" [ruben]="686" [nerea]="666" [patri]="621")

for nombre in "${!numeros[@]}"
do
	numero=${numeros[$nombre]}
	echo "El usuario $nombre tiene el numero $numero"
done
read -p "Intoducir amigo a consultar: " amigo
if [ $numeros=$amigo ]; then 
	echo "El telefono de $amigo es $numero"
fi

