#
# jt. octubre 2017 (prueba06.sh) refuerzo nº 6
# Redacta un script que pasándole dos ficheros por parámetros, 
# los empaquete y comprima. 
# Si le pasamos un fichero como parametro 
# que lo desempaquete y descomprimir. 
# Si no le pasamos ninguno o más de 2 que muestre un mensaje de error.
# esta preparado; no ejecuta nada simplemente pasa por probar funcionamiento
# antes de implementar
comprimir()  
{
  clear
  echo "EMPAQUETAR / COMPRIMIR" 
  echo "tar -czvf ---.tar.gz"  $fichero1 $fichero2 
 }

descomprimir()   
 { 
  clear
  echo "DESEMPAQUETAR / DESCOMPRIMIR"  $fichero1
  echo tar -xzvf ---.tar.gz $fichero1 
 }

echo $#
 fichero1=$1
 fichero2=$2
 if [ $# -eq 1 ] ; then 
   echo "has pasado 1 parametro"  
   if test -f $fichero1; then
    descomprimir
   else
    echo "archivo no encontrado: $fichero1"
   fi
  elif [ $# -eq 2 ] ; then
   echo "has pasado 2 parametros"
   if test -f $fichero1 && test -f $fichero2 ; then
    comprimir 
   else
    echo "archivos no encontrados: $fichero1 y $fichero2"
   fi
  elif [ $# -ge 2 ] ; then 
   echo "has introducido mas parametros de lo permitido"
  elif [ $# -eq 0 ] ; then
   echo "no me has dado ningún parametro"  
 fi

