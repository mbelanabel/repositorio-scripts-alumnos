#Hecho por Andrea Rioja

#Hacer un script con 2 arrays que en uno exista 
#el nombre de 5 amigos y en otro los telefonos
#que al consultar el nombre de un amigo nos muestre su numero 

#!/bin/bash

clear
contador=0
declare -a usuario=( Patri Marina Jenny Fer Dani )
declare -a telefono=( 1111 2222 3333 4444 5555 )

for valor in ${usuario[*]}
do
	echo "El nombre es $valor"
	contador=`expr $contador + 1`
done
for valor in ${telefono[*]}
do
	echo "telefono es $valor"
	contador=`expr $contador + 1`
done
echo "Introducir amigo a consultar: "
read amigo
contador=0
for valor in ${usuario[*]}
do
	if [ $valor = $amigo ]; then
	telefono=${telefono[$contador]}
	fi
	contador=`expr $contador + 1`
done
	echo "El telefono de $amigo es $telefono"

