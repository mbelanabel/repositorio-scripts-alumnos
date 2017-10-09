# MENU ELECCION ELIMINAR ARCHIVO/DIRECTORIO MOSTAR DIRECTORIO ACTUAL Y SALIR
#! /bin/bash

echo MENU
echo 1 ELIMINAR ARCHIVO
echo 2 ELIMINAR DIRECTORIO
echo 3 DIRECTORIO ACTUAL
echo SALIR
echo "Introduzca una opcion"
read opcion
echo "La opcion elegida es la $opcion"
case $opcion in
1) echo "1 Vamos a Eliminar un archivo"
   echo "Introduzca el archivo a eliminar"
   read archivo
   echo "SEGURO desea BORRAR?"
   echo "1 si"
   echo "2 no"
   echo "Introduzca su opcion"
   read respuesta
   case $respuesta in
      1|si|s|SI|S|Y|y) rm $archivo   ;;
      2|no|n|NO|N) echo "Conserva su archivo"  ;;
      *) echo "OPCION INCORRECTA"  ;;
   esac  ;;
2) echo "2 Vamos a Eliminar un directorio"
   echo "Introduzca el directorio a eliminar"
   read directorio
   echo "SEGURO DESEA BORRAR?"
   echo "1 si"
   echo "2 no"
   echo "Introduzca su opcion"
   read respuesta
   case $respuesta in
      1|si|SI|s|S|Y|y) rm $directorio  ;;
      2|no|n|NO|N) "Conserva su directorio"  ;;
      *) echo "OPCION INCORRECTA"   ;;
   esac   ;;
3) echo "3 Mostrar el directorio en el que estas"
   echo "El diretorio actual es:" pwd   ;;
4) echo "Gracias por utilizar este shell-script"   ;;
*) echo "OPCION INCORRECTA"  ;;

esac  
