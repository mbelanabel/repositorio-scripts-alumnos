#!/bin/bash
# Ejercicio 8. MIRAR SI UN USUARIO SE CONECTA AL SISTEMA 
# Juan tonda. (septiembre 2017)
# interprete de comandos: bash
# 8. Script que nos pida el nombre de un usuario. Nos avise si es usuario concreto
# se conecta al sistema. Mientras no se conecte que nos muestre cada 10 segundos (sleep)
# un mensaje "Usuario xxx no conectado"
#
# keywords: 
#   until [ `who -a | grep $usuario | wc -l` -gt "0" ]
#   hasta que se conecte el usuario (cuando sea mayor que 0), el resultado
#

clear
   read -p "Introduce usuario a verificar .... " usuario
   echo "Estoy esperando a ... " $usuario
   until [ `who -a | grep $usuario | wc -l` -gt "0" ]
    do
     sleep 5
     tput cup 4 19
     echo $usuario no conectado .....
    done
     tput cup 4 10 
     echo Atencion $usuario conectado
  fi


