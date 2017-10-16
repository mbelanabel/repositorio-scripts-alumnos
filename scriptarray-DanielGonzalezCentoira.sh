#Script que crea dos arrays, uno con el nombre detus 6  mejores amigos y otro con sus telefonos
#!bin/bash
#DanielGonzálezCentoira
# rev. comentarios porJuan T.
#
# keywords for (bucle que pasa por todos los valores del array), declare -a "definir array"
# for : toma los valores (primer valor= usuariio "nombres de los amigos"; segundo valor= numero
# "números de teléfono")
# for -> valor (*) "todos los elementos del array"
# variables: valor - auxiliar cambia (nombres y números)
# contador: índice (/no será necesario ; cuando se pida amigo (índice del array); se podría 
# utilizar para ello. localización del índice posteriormente 
# 
clear
# contador=1
declare -a usuario=( Sergio Jorge Juan Antonio David Alvaro )
declare -a numero=( 669 848 776 565 443 221 )
for valor in ${usuario[*]}
do
	echo "El usuario $contador vale $valor"
#	contador=`expr $contador + 1`
done
# contador=1
for valor in ${numero[*]}
do
	echo "El numero $contador vale $valor"
#	contador=`expr $contador + 1`
done
