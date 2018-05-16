#!bin/bash 
# JUAN TONDA. Enero 2018 
# declare -a para la declaración del array
# declaracion de 2 arrays
# tipo partido y precio 
#
# he añadido un array para sacar el nombre del partido (cuartos, ...)
# se relaciona con numero 1 2 3 (cuartos, semifinales, finales)
# se crea el array del partido para sacar un menu
# array partidos => se asocia con nombre_partidos
# array precios  => se asocia con partidos
# todos han de tener el mismo número de elementos para validar posteriormente
# solicita el partido (indice), que deseamos consultar su precio.

clear
declare -a nombre_partidos=(Cuartos Semifinales Finales)
declare -a partidos=(1 2 3)
declare -a precios=(9.12 18.12 27)
clear
echo " "
echo "========"
echo "Partidos"
echo "========"
echo " "

# mostramos el menú, para seleccionar el partido que deseemos escoger
contador=0
for valorP in ${partidos[*]}
 do 
   echo $valorP"." ${nombre_partidos[$contador]}
   contador=`expr $contador + 1`
 done

##################### código no implementado, pero está a modo "borrador"!
# comentario: se coloco para realizar pruebas
#echo "precios"
#for valorR in ${precios[*]}
# do 
#   echo $valorR
# done  
#####################

# solicitamos el partido para mostrarnos su precio 
 echo " "
 read -p " ¿ Qué partido quieres consultar el precio ?  : " partido



# recorre la matriz de partidos 
# se comprueba si el partido introducido (indice) 
# coincide con uno existente, y en ese caso se guarda
# se recorre todo el array por completo

contador=0
precio=0
for valorT in ${partidos[*]}
 do
    if [ $partido = $valorT ] ; then 
     precio=${precios[$contador]}
     nombre_partido=${nombre_partidos[$contador]}
    fi
   contador=`expr $contador + 1`
done

# como hay una variable (precio=0), si este valor es 0
# no se ha cambiado el valor del precio (ojo: problema - cuando la entrada (precio) es 0)
# una vez tenga valor se mostrará el resultado guardado

 if [ $precio =  0 ] ; then
    echo " No existe el número indicado " 
   else
    echo "Partido: $nombre_partido; Precio: $precio €"
  fi




