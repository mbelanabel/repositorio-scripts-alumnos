#!/bin/bash
# (script de refuerzo nº17) ref: 15
# rev. Juan Tonda (24-10-2017)
# 17. Realizar un menu
# MENU
# 1.- Ver cuales son y lo que ocupan los perfiles de usuario
# 2.- Crear informe con esa informacion
# 3.- Saber cuantos ficheros hay en boot
# 4.- Listar los archivos, 10 segundos despues pasar un informe de ello
# 5.- salir
# keywords: 
# se guardan valores en variables 
# dir  (directorio actual)
# listar_archivos (lista de archivos de boot)
# crear un menú, tal y como aparece a continuación
 dir=`pwd`
 op=0

while [ $op -eq 0 ] ; do
clear
echo "MENU"
echo "1.- Ver cuales son y lo que ocupan los perfiles de usuario"
echo "2.- Crear informe con esa informacion"
echo "3.- Saber cuantos ficheros hay en boot"
echo "4.- Listar los archivos, 10 segundos despues pasar un informe de ello"
echo "5.- Salir"
echo "Introduce una opcion"
read opcion
case $opcion in

1) echo "Vamos a ver cuales son y lo que ocupan los perfiles de usuario"
  op=0
  usuarios=`cat /etc/passwd`
  perfiles=`ls -l /etc/passwd`
  echo "PERFILES"
  echo $perfiles
  read -p "pulsa una tecla para mostrarlo ... " pausa
  echo "USUARIOS" 
  echo $usuarios
  read -p "pulsa una tecla para mostrarlo ... " pausa
  ;;
2) echo "Creamos un informe con la informacion (op1)"
  op=0
  echo $perfiles $usuarios > informe.txt
  read -p "pulsa una tecla para continuar ..."
  ;;
3) echo "Ficheros en boot"
  op=0
  ls /boot | wc -w 
  read -p "pulsa una tecla para continuar ..."
  ;;
4) echo "Listar ficheros"
  ls /boot 
  sleep 10
  ls /boot > informe.txt  
  read -p "pulsa una tecla para continuar ..."
  ;;
5) echo "Salir"
  op=1
  ;;
*)
  ;;
esac 
done 
 cd $dir
