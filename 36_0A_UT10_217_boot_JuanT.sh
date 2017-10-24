#
#! /bin/bash
# (script de refuerzo nº17) ref: 15
# rev. Juan Tonda (24-10-2017)
# keywords: 
# se guardan valores en variables 
# dir  (directorio actual)
# listar_archivos (lista de archivos de boot)
# crear un menú, tal y como aparece a continuación
 dir=`pwd
 op=0

while [ $op -eq 0 ] ; do
clear
echo MENU
echo 1.- Ver cuales son y lo que ocupan los perfiles de usuario
echo 2.- Crear informe con esa informacion
echo 3.- Saber cuantos ficheros hay en boot
echo 4.- Listar los archivos, 10 segundos despues pasar un informe de ello
echo 5.- salir
echo "Introduce una opcion"
read opcion
echo "La opcion seleccionada es $opcion"
case $opcion in

1) echo "1 vamos a ver cuales son y lo que ocupan los perfiles de usuario"
  op=0
  usuarios=`cat /etc/passwd`
  perfiles=`ls -l /etc/passwd`
  echo "PERFILES"
  read -p "pulsa una tecla para mostrarlo ... " pausa
  echo $perfiles
  echo "USUARIOS" 
  read -p "pulsa una tecla para mostrarlo ... " pausa
  echo $usuarios
  ;;
2) echo "2 Creamos un informe con la informacion"
  op=0
  echo $perfiles $usuarios > informe.txt
  read -p "pulsa una tecla para continuar ..."
  ;;
3) echo "3 Ficheros en boot"
  op=0
  ls /boot | wc -w 
  ;;
4) echo "4 Listar ficheros"
  ls /boot 
  sleep 10
  ls /boot > informe.txt  
  ;;
5) echo "5 Salir"
  op=1
  ;;
*)
  echo "opcion equivocada"
esac 
done 
 cd $dir
