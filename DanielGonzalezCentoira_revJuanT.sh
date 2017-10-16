#
#! /bin/bash
# DanielGonzálezCentoira
# rev. Juan Tonda (16-10-2017)
# keywords: test -c (verificar que el fichero es dispositivo carácter)
# 
# se guardan valores en variables 
# dir  (directorio actual)
# listar_archivos (lista de archivos de dev)
# posteriormente se comprueba con test -c (si es o no es tipo "caracter"
#
# 
 dir=`pwd`
 caracter=0

echo MENU
echo 1 Saber cuantos ficheros de dispositivo tipo caracter hay en dev
echo 2 Ver cuales son y lo que ocupan los perfiles de usuario
echo 3 Crear informe con esa informacion
echo 4 salir
echo "Introduce una opcion"
read opcion
echo "La opcion seleccionada es $opcion"
case $opcion in

1) echo "Vamos a ver los ficheros que hay" 
 cd /dev
 listar_archivos=`ls`
 caracter=0
 for comprobar_archivo in $listar_archivos
 do 
  if test -c $comprobar_archivo ; then 
   caracter=`expr $caracter + 1`
   echo "Dispositivo caracter nº$caracter  : $comprobar_archivo"
  fi
  echo "total dispositivos carácter: " $caracter
 done
 ;;
2) echo "2 vamos a ver cuales son y lo que ocupan los perfiles de usuario"
  cat /etc/passwd
  perfiles=`ls -l /etc/passwd` 
  ;;
3) echo "3 Creamos un informe con la informacion"
  echo "total dispositivos carácter: " $caracter $perfiles > "informe.txt"
  cat informe.txt
  ;;
4) echo "4 Salir"
  ;;
esac 

 cd $dir
