#!/bin/bash
# (script de refuerzo nº18) 
# rev. Juan Tonda (24-10-2017)
# keywords:  df (espacio disponible en disco)
# 18. Realizar un menu
#
#
# MENU
# 1.- Visualizar el contenido del directorio HOME (usuario actual)
# 2.- Visualizar el espacio libre del disco
# 3.- Usuario NOEL
# 4.- salir
# se guardan valores en variables 
# dir  (directorio actual)
# listar_archivos (lista de archivos de boot)
# crear un menú, tal y como aparece a continuación
 dir=`pwd
 op=0

while [ $op -eq 0 ] ; do
clear
echo "MENU"
echo "1.- Visualizar el contenido del directorio HOME (usuario actual)"
echo "2.- Visualizar el espacio libre del disco"
echo "3.- Usuario NOEL"
echo "4.- Salir"
read -p "Introduce una opcion" opcion
echo "La opcion seleccionada es $opcion"
case $opcion in

1) echo "Contenido del directorio HOME (del usario)"
  op=0
  ls -l $HOME
  read -p "pulsa una tecla para continuar ... " pausa
  ;;
2) echo "Visualizar el espacio disponible en disco"
  op=0
  df -H | cut -c1-10,31-36
  read -p "pulsa una tecla para continuar ..."
  ;;
3) echo "Comprobar USUARIO NOEL"
  op=0
  usuario=`whoami` 
  if [ $usuario = "noel" ]; then
     echo "Animo NOEL, el 25 de diciembre esta al caer"
    else
     echo "no eres NOEL "
  fi
  ;;
4) echo "4 Salir"
  op=1
  ;;
*)
  echo "opcion equivocada"
esac 
done 
 cd $dir
