# jt. octubre 2017 
# pasar 2 archivos como parametros 
# si existe el archivo origen y no existe el destino: copiar ORIGEN a DESTINO
# si no existe el archivo origen: mostrar mensaje de error y salir
# si existe el archivo destino:   mostrar mensaje de error y salir 
#

# función error. para sacar el tipo de error, por el mensaje
error() {
 clear 
 echo "*** ERROR EN LA EJECUCIÓN DEL SCRIPT ****"
 echo "Tipo de error: " $mensaje
 read -p "Pulsa una tecla para continuar " pausa
}

dir=`pwd` #para poder seguir quedando en el mismo directorio de ejecución
clear

# comprobar el paso de parámetros
op=0
if test $# -lt 1
 then
  mensaje=" NO HAN SIDO PASADO PARAMETROS " 
  error
  elif test $# -eq 1
   then 
    mensaje=" HA SIDO PASADO UN ÚNICO ARCHIVO " 
    error
  elif test $# -eq 2
    then 
     op=1
 fi

# comprobar la existencia de los archivos
if [ $op -eq 1 ]; then
 if test -a $1    
  then 
     if test -a $2
       then 
         mensaje="Destino existente. No se puede copiar: $2"
         error
       else 
         clear
         echo " ** Copiando $1 en $2 **"
         cp $1 $2
    fi
  else 
   mensaje="FICHERO origen inexistente: $1"
   error
 fi
fi

cd $dir
