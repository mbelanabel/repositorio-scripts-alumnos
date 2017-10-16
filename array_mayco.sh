
#Script de arrays, uno con el nombre de 5 amigos y otro con sus telefonos
#!/bin/bash
#Mayco Costa
clear
contador=0
declare -a usuario=( Alberto Josh Roberto Laura Sergio )
declare -a telefono=( 9111 9122 9133 9144 9155 )
for valora in ${usuario[*]}
do
	echo "El usuario $contador es $valora"
	contador=`expr $contador + 1`
done
contador=0
for valort  in ${telefono[*]}
do
	echo "El teléfono $contador es $valort"
	contador=`expr $contador + 1`
done

echo "Introduce el nombre de tu amigo"
read amigo
contador=0
for valorb in ${usuario[*]}
do
	if [ $amigo = $valorb ]; then
	telefono=${telefono[$contador]}
fi

	contador=`expr $contador + 1`
done
echo "el telefono de $amigo es $telefono"
