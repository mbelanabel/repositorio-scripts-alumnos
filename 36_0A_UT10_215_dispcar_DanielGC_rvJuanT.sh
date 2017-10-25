#!/bin/bash
# DanielGonzálezCentoira  (script de refuerzo nº15)
# rev. Juan Tonda (16-10-2017)
# keywords: test -c (verificar que el fichero es dispositivo carácter)
# 15. Realizar el siguiente menu
# 1 Saber cuantos ficheros de dispositivo tipo caracter hay en dev
# 2 Ver cuales son y lo que ocupan los perfiles de usuario
# 3 Crear informe con esa informacion
# 4 salir
#
# se guardan valores en variables 
# dir  (directorio actual)
# listar_archivos (lista de archivos de dev)
# posteriormente se comprueba con test -c (si es o no es tipo "caracter"
#
# 
 dir=`pwd`
 caracter=0
 op=0

while [ $op -eq 0 ] ; do
clear
echo " MENU "
echo "1.- Saber cuantos ficheros de dispositivo tipo caracter hay en dev"
echo "2.- Ver cuales son y lo que ocupan los perfiles de usuario"
echo "3.- Crear informe con esa informacion"
echo "4.- Salir"
read -p "Introduce una opcion: " opcion

case $opcion in

1) echo "FICHEROS TIPO CARÁCTER"  
 op=0
 cd /dev
 listar_archivos=`ls`
 caracter=0
 for comprobar_archivo in $listar_archivos
 do 
  if test -c $comprobar_archivo ; then 
   caracter=`expr $caracter + 1`
   echo "Dispositivo caracter nº$caracter  : $comprobar_archivo"
  fi
  echo "Total dispositivos carácter: " $caracter
 done
 ;;
2) echo "PERFILES DE USUARIO"
  op=0
  cat /etc/passwd
  perfiles=`ls -l /etc/passwd` 
  ;;
3) echo "INFORME"
  cd $dir
  op=0
  echo "total dispositivos carácter: " $caracter $perfiles > "informe.txt"
  cat informe.txt
  read -p "pulsa una tecla para continuar ..."
  ;;
4) echo "SALIDA"
  op=1
  ;;
*)
  echo "opcion equivocada"
esac 
done 
 cd $dir
