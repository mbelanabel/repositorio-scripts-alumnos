#script: 2 arrays , uno con el nombre de 6 amigos; y otro con sus telefonos 
#!bin/bash 
# declare -a para la declaración del array
# declaracion de 2 arrays usuario (nombre de amigos)
# y telefono (para los telefonos), colocados en orden de los amigos
#
# JUAN TONDA. Octubre 2017. simulacro02 /arrays
clear
contador=0
# revisado por Adrian, añadiendo nuevos comentarios
# y controlando que exista el nombre en el array
# se declaran los arrays
declare -a usuario=( Alberto Roberto Laura Sergio Cristian Dani )
declare -a telefonos=( 911 811 711 611 511 411 )
echo "Datos cargados en el array"
clear
# mostramos los valores del array de los amigos 
# contador le vamos dando el valor desde 0 
for valor in ${usuario[*]}
 do 
   echo $valor 
   contador=`expr $contador + 1`
 done
# solicitamos el amigo para mostrarnos su teléfono
read -p " Dime el nombre del amigo : " amigo

# vamos a comprobar el array del telefono, basando en la información
# del array de los amigos, y una vez localizado mostramos el teléfono
# con el contador nos situamos en el valor adecuado
# y con IF verificamos que existe el amigo, guardando el teléfon para
# su visualización posterior
contador=0
for valor in ${usuario[*]}
 do
   if [ $valor = $amigo ]; then 
     telefono=${telefonos[$contador]}
    else
     telefono=0
   fi
   contador=`expr $contador + 1`
 done
 if [ $telefono -eq 0 ] ; then
    echo " $amigo inexistente" 
   else
    echo "el telefono de $amigo es $telefono"
 fi
