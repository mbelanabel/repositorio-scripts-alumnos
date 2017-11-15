#./bin/bash
# script: permisos.sh (para acotar, aunque puede ser válido otro que deseemos)
# juan tonda. Noviembre 2017
# versión 1. (para mejorar resultado y ejecución
# ojo (con los archivos creados en Windows // por los nombres largos y con 
# espacio en blanco)
# FALTA DEPURAR UN POCO MAS
# utilidad: localizar tipo de permisos diferentes a los conocidos
# "rwx" -- en el campo 4 (donde está incluida la X"
# también se podría añadir el tipo de permiso del primer caracter
# no implementado en este script
# permisos del usuario (campo1 (c2), campo2 (c3) y campo4 (c4)
# se guarda en una variable, posteriormente se analiza (por cada uno 
# de ellos
# uso en combinación con:
# buscar (desde directorio_salida) * (todos) 
# ejecutar ./permisos.sh (*) el directorio de salida ha de contener este script
# -- se ejecuta recorriendo todos los archivos (incluidos directorios)
# -- controlando en la estructura para extraer lo que interesa 
# ESTE SCRIPT ES NECESARIO , utilizar esta sentencia, para recorrer todo 
# los archivos.
# COMBINACIÓN AL SCRIPT 
# find directorio_salida  -name "*" -exec ./permisos.sh "{}" ";"
#
# ejemplo:  find ~/Descargas/Sistemas  -name "*" -exec ./permisos.sh "{}" ";"
# asimismo se puede redireccionar a un archivo. (tee archivo, o , > archivo
# ejecuta permisos.sh, con la sentencia incluida arriba
#
if test -f $1; then
  echo "ARCHIVO (permisos): $1 //"
  campo_1=`ls -l $1 | cut -c2`
   if [ $campo_1 = "r" ]
    then
      echo " lectura"
    fi
  campo_2=`ls -l $1 | cut -c3`
   if [ $campo_2 = "w" ]
    then
      echo " escritura"
    fi
  campo_3=`ls -l $1 | cut -c4`
   if [ $campo_3 = "x" ]
    then
      echo " ejecución"
    else
      echo " otro permiso: $campo_3"
   fi
  else
   echo "$1 no es un archivo"
fi
