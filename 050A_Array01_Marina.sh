#Script que crea un array y muestra su contenido.
#!/bin/bash
clear
contador=0
declare -a usuario=( Alberto Josh Roberto Laura Sergio Cristian Dani )
for valor in ${usuario[*]}
do
	echo "El usuario $contador vale $valor"
	contador=`expr $contador + 1`
done
