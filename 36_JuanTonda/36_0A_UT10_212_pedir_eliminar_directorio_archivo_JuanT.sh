#!/bin/bash
# jt. octubre 2017    
# tipo de archivo: 0A 
# 12. Un script que elimine un archivo o directorio solicitado por menú
# keyword: estructura de control case
# se solicitan los archivos al usuario

solicita_tipo_archivo() {
 clear
 echo "Preparando el borrado de un $tipo"
 read -p "Introduce el NOMBRE .... " fichero
}

clear
echo "** MENU **"
echo "1. - Eliminar ARCHIVO"
echo "2. - Eliminar DIRECTORIO"
echo "3. - Directorio actual"
echo "4. - Salir"
read -p " Selecciona una opción: " opcion
 case $opcion in
    1) 
      tipo="archivo"
      solicita_tipo_archivo
      rm $fichero
      ;;
    2) 
      tipo="directorio" 
      solicita_tipo_archivo
      rmdir $fichero
      ;;
    3)
      echo "3. usuarios conectados"
      diractual=`pwd`
      echo $diractual
      ;;
    4) 
      echo "Salir"
      ;;
    *)
      echo "opción incorrecta"
      ;;
  esac 


