# 
#  jt. Enero 2018
#  se trata de buscar un texto, para posteriormente
#  sacar el listado de los archivos que contiene
#  dicho texto
#  
#  se intenta mejorar combinando con find ... exec
#  para que sea recursible
#  habría que ver (en estudio), como realizar aprovechando
#  la instrucción find con exec para que sea recursivo, y más fácil
#  de buscar los archivos con un texto concreto, en toda la estructura
#  !! es el próximo reto. 
#  -- 
#  *** parametro a pasar: valor del texto a buscar
#
rm archivos
#archivos=`ls -R`
archivos=`ls`
valortexto=$1
for i in $archivos
 do
 echo "probando .... $i"
 if test -f $i; then
  grep $valortexto $i | tee fichero
  if test -s fichero; then
    echo "archivo $i con el contenido a buscar"
    echo $i >> archivos
  fi
 fi 
 done 
