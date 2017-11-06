#Este es un script con dos arrays
#!/bin/bash
# autor:
# keyword:
# anotaciones:

clear
contador=0
declare -a usuario=( Daniel Juan Sergio Roberto Maria )
declare -a telefono=( 123 456 789 134 178 )
for valora in ${usuario[*]}
do
	echo "El usuario $contador es $valora"
	contador=`expr $contador + 1`
done
contador=0
for valor in ${telefono[*]}
do
	echo "El telefono $contador es $valor"
	contador=`expr $contador + 1`
done
	echo "Introduce el nombre de tu amigo"
	read amigo
	contador=0
	for valord in ${usuario[*]}
	do
		if [ $amigo = $valord ]; then
		telefono=${telefono[$contador]}
	fi
		contador=`expr $contador + 1`
	done
	echo "El telefono de $amigo es $telefono"
