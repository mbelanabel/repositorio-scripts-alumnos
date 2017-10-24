# jt. Octubre 2017 (prueba09.sh)
# !/bin/bash
# menu 
# 1. ver en el PID 1, comando que se ejecuta
# 2. lo que vale PATH
# 3. usuarios conectados (ver con mas detalle)
# keyword: case (grep para recortar con cut el proceso " 1" >> PID 1
#
 

clear

echo "** MENU **"
echo "1. - PID 1 (comando)"
echo "2. - variable PATH"
echo "3. - número de usuarios conectados"
echo "4. - SALIR"
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
