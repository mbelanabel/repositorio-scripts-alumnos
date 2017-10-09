#script: 2 arrays , uno con el nombre de 6 amigos; y otro con sus telefonos 
#!bin/bash 
# declare -a para la declaración del array
# declaracion de 2 arrays usuario (nombre de amigos)
# y telefono (para los telefonos), colocados en orden de los amigos
#
# JUAN TONDA. Octubre 2017. simulacro02 /arrays
clear
contador=0
declare -a usuario=( Alberto Roberto Laura Sergio Cristian Dani )
declare -a telefonos=( 911 811 711 611 511 411 )
echo "Datos cargados en el array"
clear
for valor in ${usuario[*]}
 do 
   echo $valor 
   contador=`expr $contador + 1`
 done
read -p " Dime el nombre del amigo : " amigo
contador=0
for valor in ${usuario[*]}
 do
   if [ $valor = $amigo ]; then 
    telefono=${telefonos[$contador]}
   fi
   contador=`expr $contador + 1`
 done
 echo "el telefono de $amigo es $telefono"

