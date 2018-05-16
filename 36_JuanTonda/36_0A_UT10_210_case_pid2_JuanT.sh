#!/bin/bash
# jt. Octubre 2017 (prueba10.sh)
# 10.- Nos presente el siguiente:
# menu 
# 1. ver en el PID 1, comando que se ejecuta
# 2. lo que vale HOME
# 3. fecha de hoy y variables de entorno
# keyword: case (grep para recortar con cut el proceso " 1" >> PID 1
# date (fecha sistema); printenv: variables de entorno
 

clear
echo "** MENU **"
echo "1. - PID 1 (comando)"
echo "2. - Variable HOME"
echo "3. - Guardar en un fichero (fecha de hoy y variables entorno)"
echo "4. - Salir"
read -p " Selecciona una opción: " opcion
 case $opcion in
    1) 
      echo "1. comando PID 1"
      ps -e | grep "    1 " | cut -c25-35 
      ;;
    2) 
      echo "2. variable HOME" 
      echo $HOME
      ;;
    3)
      echo "3. fichero (fecha de hoy y variables de entorno)"
      echo "---- LISTADO DE VARIABLES DE ENTORNO ---" > ficherosalida.txt
      echo " Fecha: " >> ficherosalida.txt
      date >> ficherosalida.txt
      printenv >> ficherosalida.txt
      echo " Se ha creado el archivo 'ficherosalida.txt' con dicho contenido"
      ;;
    4) 
      echo "salir"
      ;;
    *)
      echo "opción incorrecta"
      ;;
  esac 

