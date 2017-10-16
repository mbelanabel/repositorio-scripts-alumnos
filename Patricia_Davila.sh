# MENU ELECCION ELIMINAR ARCHIVO/DIRECTORIO MOSTAR DIRECTORIO ACTUAL Y SALIR
#!/bin/bash
#Realizado por Patricia Davila Fernñandez
#Corregido por Andrea Rioja Fernández


echo MENU
echo 1 ELIMINAR ARCHIVO
echo 2 ELIMINAR DIRECTORIO
echo 3 DIRECTORIO ACTUAL
echo 4 SALIR
echo "Introduzca una opcion"
read opcion #Se lee la opcion que deseamos realizar
echo "La opcion elegida es la $opcion"
case $opcion in #Comienza las opciones del menu
1) echo "1 Vamos a Eliminar un archivo"
   echo "Introduzca el archivo a eliminar"
   read archivo #Cargamos el fichero que deseamos borrar
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
   read directorio #Cargamos el directorio que vamos a borrar
   #(Tiene que existir el directorio que se quiere borrar)
   echo "SEGURO DESEA BORRAR?"
   echo "1 si"
   echo "2 no"
   echo "Introduzca su opcion"
   read respuesta
   case $respuesta in
      1|si|SI|s|S|Y|y) rmdir $directorio  ;;
      2|no|n|NO|N) "Conserva su directorio"  ;;
      *) echo "OPCION INCORRECTA"   ;;
   esac   ;;
3) echo "3 Mostrar el directorio en el que estas"
   echo "El diretorio actual es:"  $HOME   ;; 
   #El $home nos realiza lo mismo que pwd
4) echo "Gracias por utilizar este shell-script"   ;;
*) echo "OPCION INCORRECTA"  ;;

esac  
