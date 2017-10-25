#!/bin/bash
# jt. Octubre 2017 (prueba09.sh)
# menu 
# 11. Script que, por medio de un menú, permitirá:
# menu
# 1. Generar un listado de todos los ficheros que contiene el directorio root en segundo plano.
# 2. Mostrar un listado de todos los usuarios del sistema (todos los usuarios que existen).
# 3. Mostrar el usuario actual.
# 4. Salir.
# keywords: ejecución en segundo plano "&"; passwd (fichero con todos los usuarios del sistema) - se recortar para
# solo sacar el nombre de usuario

clear

echo "** MENU **"
echo "1. - Todos los ficheros, directorio root (ejecución en segundo plano)"
echo "2. - Listado de los usuarios del sistema"
echo "3. - Usuario actual"
echo "4. - SALIR"
read -p " Selecciona una opción: " opcion
 case $opcion in
    1) 
      ls -l /root & 
      ;;
    2) 
      cat /etc/passwd | cut -f1 -d":"
      ;;
    3)
      echo "3. usuarios conectados"
      whoami
      ;;
    4) 
      echo "salir"
      ;;
    *)
      echo "opción incorrecta"
      ;;
  esac 
