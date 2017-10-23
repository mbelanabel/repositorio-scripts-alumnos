r
contador=0
declare -a usuario=( Rodrigo Ruben Carmelo Ico Nira Aitana )
declare -a telefono=( 111 222 333 444 555 666 )
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
	telefono_amigo=${telefono[$contador]}
fi

	contador=`expr $contador + 1`
done
echo "el telefono de $amigo es $telefono_amigo"
