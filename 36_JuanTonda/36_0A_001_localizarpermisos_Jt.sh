#!/bin/bash
# version: 2.01
# author: Jt. 2017. Noviembre
# objetivo: ver los permisos de los archivos
# directorios: en principio, está deshabilitado
#              hay que depurar mas el programa
#              para ver todas las posibilidades
# se pasan 3 parametros
# archivo permiso columna
# archivo: se pasa desde find con {}
# permiso: se coloca (l,t,s,r,w,x) 
# link, sticky, setuid, setguid, read, write, execution
# columna: se corresponde con U, G, O (usuarios, grupos u otros)
# ejecución: el programa es llamado desde find
#   find [directorio] -name "*" -exec ./permisos.sh {} permiso columna \;
#   find /Descargas -name "*" -exec ./permisos.sh {} l U \;
# script: permisos.sh
#
archivo=$1
tipo_columna=$3
if test -d $archivo; then
  tipo_archivo="$1 es un directorio!"
 else

  # columna USUARIO (tipo_columna="usuario") 
  if [ "$tipo_columna" = "U" ]; then
    tipo_permiso=$2
    salida_tipo_columna="Usuarios"
    case $tipo_permiso in
      l)
       columna=1;;
      r)
       columna=2;;
      w)
       columna=3;;
      x|s|t)
       columna=4;;
    esac
   fi


  # columna GRUPOS (tipo_columna="grupos") 
  if [ "$tipo_columna" = "G" ]; then
    tipo_permiso=$2
    salida_tipo_columna="Grupos"
    case $tipo_permiso in
      l)
       columna=1;;
      r)
       columna=5;;
      w)
       columna=6;;
      x|s|t)
       columna=7;;
    esac
   fi


  # columna OTROS (tipo_columna="otros") 
  if [ "$tipo_columna" = "O" ]; then
    tipo_permiso=$2
    salida_tipo_columna="Otros"
    case $tipo_permiso in
      l)
       columna=1;;
      r)
       columna=8;;
      w)
       columna=9;;
      x|s|t)
       columna=10;;
    esac
   fi

   campo=`ls -l $1 | cut -c$columna` 
   archivo="Permisos del archivo: $1 :"

   if   [ "$campo" = "r" ]; then
    salida="read"
   elif [ "$campo" = "w" ]; then 
    salida="write" 
   elif [ "$campo" = "x" ]; then
    salida="execution"
   elif [ "$campo" = "l" ]; then
    salida="link"
   elif [ "$campo" = "s" ]  && [ "tipo_columna"="U" ]; then
    salida="setuid user"
   elif [ "$campo" = "s" ]  && [ "tipo_columan"="G" ]; then
    salida="setgid group"
   elif [ "$campo" = "t" ]; then
    salida="sticky (t)"
   fi

   if   [ "$campo" = "$tipo_permiso" ]; then
      echo "Archivo $1 tiene en $salida_tipo_columna, permiso  $salida"
   fi

fi


