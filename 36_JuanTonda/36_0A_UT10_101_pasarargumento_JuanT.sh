# jt. octubre 2017 
# tipo de archivo: 0A
# 1. Script que al pasarle por argumento un parámetro, determine si es
# archivo, directorio, o si el parametro no existe.
# función mensaje. verificar tipo de parametro
# keyword: estructura de control IF con TEST (archivo y control de parametro).

tipo_mensaje() {
 echo "*** MENSAJE DE EJECUCIÓN EN EL SCRIPT ****"
 echo "Resultado: " $mensaje
 read -p "Pulsa una tecla para continuar " pausa
}


dir=`pwd` #para poder seguir quedando en el mismo directorio de ejecución
clear

# comprobar el paso de parámetros
 if test $# -eq 0; then
     mensaje=" No ha sido pasado ningún parámetro. " 
   else 
     mensaje="se ha pasado un "
    if test -f $1; then 
       mensaje=" El parametro $1 es un fichero. "
     elif test -d $1; then
       mensaje=" El parametro $1 es un directorio. "
     else
       mensaje=" No existe $1 . "     
    fi 
     echo $1
     tipo_mensaje  
 fi 
 cd $dir
