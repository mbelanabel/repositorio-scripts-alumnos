#!/bin/bash
# jt. Octubre 2017 (prueba09.sh)
# 9. Nos presente el siguiente menu
# menu 
# 1. ver en el PID 1, comando que se ejecuta
# 2. lo que vale PATH
# 3. usuarios conectados (ver con mas detalle)
# keyword: case (grep para encontrar con cut el proceso " 1" >> PID 1 -- se extrae de PS -- (ejecución de procesos)
#
 
clear
echo "** MENU **"
echo "1. - PID 1 (comando)"
echo "2. - Variable PATH"
echo "3. - Número de usuarios conectados"
echo "4. - Salir"
read -p " Selecciona una opción: " opcion
 case $opcion in
    1) 
      echo "1. comando PID 1"
      ps -e | grep "    1 " | cut -c25-35 
      ;;
    2) 
      echo "2. variable PATH" 
      echo $PATH
      ;;
    3)
      echo "3. usuarios conectados"
      who -a | wc -l
      ;;
    4) 
      echo "salir"
      ;;
    *)
      echo "opción incorrecta"
      ;;
  esac 
