#!/bin/bash
# jt. octubre 2017    
# tipo de archivo: 0A 
# 13. Script que, por medio de un menú, permitirá:
# 1. Comparar dos ficheros que el usuario elija, y si son iguales, borrar uno de ellos.
# 2. Visualizar la configuración tcp/ip.
# 3. Salir.

solicita_archivo() {
 clear
 echo $tipo
 read -p "Introduce el NOMBRE .... " fichero
}

clear
echo "** MENU **"
echo "1. - Comparar archivos"
echo "2. - Visualizar la configuración TCP/IP"
echo "3. - Salir"
read -p " Selecciona una opción: " opcion
 case $opcion in
    1)
      tipo="PRIMER ARCHIVO"
      solicita_archivo
      primer_archivo="$fichero"
      tipo="SEGUNDO ARCHIVO"
      solicita_archivo
      segundo_archivo="$fichero"
      echo "compara $primer_archivo $segundo_archivo"
      diff $primer_archivo $segundo_archivo > salida.txt
      if test -s salida.txt; then
        echo "los ficheros no son iguales"
       else
        echo "fichero iguales"
        read -p "¿ qué fichero quieres borrar $primer_archivo o $segundo_archivo ?" archivo_borrar  
        echo "borramos $archivo_borrar"
        rm $archivo_borrar
      fi      
      ;;
    2) 
      ifconfig
      ;;
    3) 
      echo "salir"
      ;;
    *)
      echo "opción incorrecta"
      ;;
  esac 


