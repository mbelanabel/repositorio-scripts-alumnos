#!/bin/bash

# Juan Tonda
# jt. 2017 SEPTIEMBRE
# PREPARAR ARCHIVOS DE INTERFACES 
# SELECCIONAR CONFIGURACION DE CASA o INSTITUTO (en este caso, son 2 opciones)
# EL ARCHIVO DEBERIA ESTAR CREADO EN EL DIRECTORIO /etc/network, 
# QUE ES DONDE SE ENCUENTRA EL ARCHIVO interfaces inicial.
#
# COMANDOS:
# clear (limpiar pantalla)
# tput cup (posicionar cursor en la pantalla "fila, columna"
# echo (mostrar datos en pantalla)
# while (mientras opcion = 0 muestras menú primera vez) ; luego "0" sirve para salir
#  opciones: 1. instituto, 2. casa [**** se debe disponer de los ficheros interfaces creados para cada caso ***]
#  este shell ejecuta un menú (ubicado en donde se encuentren dichos ficheros creados) !! ES UN MENÚ !!
# read (leer valor de la variable, en este caso "opcion")
# case (según valor de la variable "opcion" ejecuta 0.salir, 1. instituto, 2. casa)
#
# QUE HACE CADA OPCION:
# 1. sustituir interfaces por el de interfaces.instituto 
# 2. sustituir interfaces por el de interfaces.casa
# después para el servicio y arranca nuevamente la red (los interfaces)
#
# importante: 
#  disponer de una copia del interfaces como interfaces.original (copia de seguridad)
#  el fichero que vayas a utilizar como shell-script, donde se lanza el menú ha de 
#  contener los permisos necesarios "de ejecución" (chmod 755, o todos chmod 777)
#  para la ejecución:   $_ . seleccion (en este caso)
#


clear
opcion=0
while  [ $opcion = 0 ]; do
 clear
 tput cup 3 30
 echo " ***************************"
 tput cup 4 30
 echo "       INTERFACES"
 tput cup 5 30
 echo " ***************************"
 tput cup 8 30
 echo " 1.- INSTITUTO"
 tput cup 9 30
 echo " 2.- CASA"
 tput cup 11 30
 echo " 0.- SALIR"
 tput cup 17 30
 echo " Selecciona INTERFACE CORRECTA : "
 tput cup 17 65
 read opcion

case $opcion in
 1)
   clear
   tput cup 5 1
   echo "cambiando a interfaces del instituto"
   tput cup 6 1
   cp interfaces.instituto interfaces
   service networking stop
   service networking start
 break;;
 2)
   clear
   tput cup 5 1
   echo "cambiando a interfaces de casa"
   tput cup 6 1
   cp interfaces.casa interfaces
   service networking stop
   service networking start
 break;;
 0)
 clear
 break;;
 *)
   opcion=0;;

esac
done
