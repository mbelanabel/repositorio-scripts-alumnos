# jt. octubre 2017    
# tipo de archivo: 0A 
# 7. En un fichero tengo una palabra clave. Haz un script que muestre si
# dicha palabra es “serendipity” o no.
# keyword: estructura de control IF, cat  - para buscar la palabra clave
# guarda la clave_archivo (con "cat")
# paso el archivo por parametro

clear
clave="serendipity"
clave_archivo="---"
op=1 

# comprobar el paso de parámetros
 if test $# -eq 1; then
# comprobar si el parametro es fichero o directorio     
    if test -f $1; then 
       clave_archivo=`cat $1`
       salida=" Existe $1, pero no contiene la clave"
     elif test -d $1; then
       salida=" No es válido. Has pasado el directorio $1"
     else
       salida=" No existe el archivo $1 "     
       op=0
    fi 
  #echo $clave_archivo $op $salida
    if [[ "$clave" = "$clave_archivo" && $op != 0 ]] ; then
      echo "*** FELICIDADES ***"
      echo "Este archivo contiene la clave ... $1"
     else
      echo "Que pases un buen dia " $salida
      echo " !!! ADIÓS !!! "
    fi
 fi
