#!/bin/bash
# author: Juan T. (nov. 2017)
# fichero: buscar_texto.sh cadena_busqueda
# sobre el directorio que se encuentra
# este archivo, se ejecuta con un paso de parametro
# que se indica una "cadena de texto a buscar en los ficheros"
# depuracion: analizar todas las posibles entradas
# diferentes del usuario 
#
# keyword: $? (para comprobar que la ejecución del comando
#          anterior ha generado un resultado verdadero
#
# resultado: archivos_t.txt (se hace un borrado al inicio
#            para generar nuevo el archivo
#
# version (sin script): find . -print -exec grep "cadena_busqueda" {} \;
# te imprime toda la lista de archivos (incluidos los que no),
# además lo hace en todo el directorio y ejecución en el momento por el 
# parametro -exec ... {} (el cual {}, ya le pasa el archivo
#

rm archivos_t.txt
ls > archivos.txt
archivo=`cat archivos.txt`
texto=$1
for nombre in $archivo
 do
  cat $nombre | grep "$texto" 
  if [ $? = 0 ] ; then
    echo $nombre >> archivos_t.txt
  fi
 done
