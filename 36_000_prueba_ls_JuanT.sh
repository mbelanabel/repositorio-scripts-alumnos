# jt. Octubre 2017
# prueba02.sh 
# si esta en el directorio / mostrar los permisos de los archivos (ls -l)   
directorio_actual=`pwd`
if [ $directorio_actual = "/" ]; then
  echo "bien"
 else 
  echo "voy a cd / " 
  echo "imprimo permisos: ls -l"
fi
