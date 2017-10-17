#!/bin/bash
# author: Daniel Fernández
# revisión: Juan Tonda
# keywords: break (saltar la condición "if"; ya no continua evaluando)
# modificación de la estructura IF para verificar la existencia o no del amigo
#
clear
declare -A numeros 
numeros=([dela]="658" [ruben]="686" [nerea]="666" [patri]="621")
for nombre in "${!numeros[@]}"
   do
	numero=${numeros[$nombre]}
	echo "El usuario $nombre tiene el numero $numero"
   done
read -p "Intoducir amigo a consultar: " amigo

for nombre in "${!numeros[@]}" 
   do
     numero=${numeros[$nombre]}
     if [ $amigo = $nombre ]; then 
	echo "El telefono de $amigo es $numero"
        op=0
        break # saltar la condición, cuando encuentra el amigo
       else
        op=1
     fi
   done
 
      if [ $op -eq 1 ]; then
        echo "Has introducido el amigo $amigo, que no se encuentra en la lista"
      fi
