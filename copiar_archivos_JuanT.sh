# jt. ABRIL 2013
# comprobar la existencia o no de un fichero
# si existe: BORRAR
# si no existe: CREAR
#
dir=`pwd`
clear
if test $# -lt 1
 then
   echo "ERROR -----------------------------------"
   read -p "No has pasado ningún parametro !!  " pausa
   op=0
  elif test $# -eq 1
   then 
    echo "error. solo has pasado un único archivo "
    read -p "Pulsa una tecla para continuar ..." pausa
  elif test $# -eq 2
    then 
     op=1
     echo "ok. tengo 2 parametros"
     read -p "Pulsa una tecla para continuar ..." pausa
 fi

if [ $op -eq 1 ]; then
 if test -a $1    
  then 
   echo "El fichero origen existe" 
     if test -a $2
       then 
         echo "Destino existente. no se puede copiar"
       else 
         echo "copiando $1 en $2"
         cp $1 $2
    fi
  else 
   echo "FICHERO origen inexistente"
 fi
fi

cd $dir
