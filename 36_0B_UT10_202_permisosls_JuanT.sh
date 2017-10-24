# jt. Octubre 2017
# !/bin/bash
# prueba02.sh 
# Redacta un script que compruebe si esta en el directorio /, si es así muestra los permisos que tienen los
# ficheros que contiene, si no, cambia de directorio al directorio /.   
directorio_actual=`pwd`
if [ $directorio_actual = "/" ]; then
  echo "estoy en el directorio /"
 else 
  echo "voy a cd / " 
  echo "imprimo permisos: ls -l"
  cd /
  ls -l
fi

cd $directorio_actual
