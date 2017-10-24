# jt. octubre 2017    
# tipo de archivo: 0A 
# 8. Script que compruebe si las tres primeras columnas de un fichero
# (que contiene solamente una línea) son iguales o diferentes.

clear
op=1 
salida=" "
# comprobar el paso de parámetros
 if test $# -eq 1; then
# comprobar si el parametro es fichero o directorio     
    if test -f $1; then 
       columna1=`cat $1 | cut -f1 -d" "`
       columna2=`cat $1 | cut -f2 -d" "`
       columna3=`cat $1 | cut -f3 -d" "`
     elif test -d $1; then
       salida="$1 es un directorio"  
       op=2
     else
       op=0 
    fi 
 
    if [[ "$columna1" = "$columna2" && "$columna1" = "$columna3" ]] ; then
      echo "*** FELICIDADES ***"
      salida="El archivo $1 contiene las 3 columnas iguales (una línea)"
     else  
      op=3
    fi

       if [ $op = 0 ]; then
         salida="No existe el archivo $1"
        elif [ $op = 3 ]; then
         salida="El archivo $1 no contiene las 3 columnas iguales"
       fi

 fi
 echo "Que pases un buen dia." 
 echo " !!! ADIÓS !!! "
 echo $salida
