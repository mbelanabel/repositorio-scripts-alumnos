#
# jt. octubre 2017 (prueba06.sh) refuerzo nº 6
# Redacta un script que pasándole dos ficheros por parámetros, 
# los empaquete y comprima. 
# 6.- Si le pasamos
#  un fichero como parametro:       desempaquete y descomprimir. 
#  no pasamos ninguno o más de 2:   que muestre un mensaje de error.
#
# esta preparado; no ejecuta nada simplemente pasa por probar funcionamiento
# antes de implementar (en caso de error, verificar sentencia tar)
# keyword: tar (ver parametros del comando)
#
comprimir()  
{
  clear
  echo "EMPAQUETAR / COMPRIMIR" 
  tar -czvf empaquetar.tar.gz  $fichero1 $fichero2 
  echo "fichero creado: empaquetar.tar.gz"
  rm $fichero1
  rm $fichero2
  echo "borrados los 2 archivos: $fichero1 $fichero2"
 }

descomprimir()   
 { 
  clear
  echo "DESEMPAQUETAR / DESCOMPRIMIR"  $fichero1
  tar -xzvf $fichero1 
 }

echo $#
 fichero1=$1
 fichero2=$2
 if [ $# -eq 1 ] ; then 
   #has pasado 1 parametro
   if test -f $fichero1; then
    descomprimir
   else
    echo "Archivo no encontrado: $fichero1"
   fi
  elif [ $# -eq 2 ] ; then
   #has pasado 2 parametros
   if test -f $fichero1 && test -f $fichero2 ; then
    comprimir 
   else
    echo "Archivos no encontrados: $fichero1 y $fichero2"
   fi
  elif [ $# -ge 2 ] ; then 
   echo "Has introducido mas parametros de lo permitido."
  elif [ $# -eq 0 ] ; then
   echo "No has pasado ningún parametro."  
 fi

