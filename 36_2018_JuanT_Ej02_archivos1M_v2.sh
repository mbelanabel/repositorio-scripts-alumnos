# jt. Enero 2018 v2
# v1. recorrido con "find"
# dir, variable directorio actual, al finalizar se situa en este    
# directorio nuevamente
# recorremos los archivos del directorio,
# variable var - lista de los archivos
#          tamano - del resultado de ls -l $var ... (extrae el tamaño del archivo)
# comprobamos variable tamano, supere 1000000 (mayor de 1Mb.)
#
clear
dir=`pwd`
read -p " Directorio que deseas comprobar ? " directorio
if test -d $directorio ; then
 echo " Vamos a consultar archivos de más de 1 Mb. "
 echo " en el directorio siguiente: " $directorio
 cd $directorio
 ls > salida.txt
 archivo=`cat salida.txt`

  for var in $archivo
   do
   if test -f $var; then
    echo "archivo : $var"
    ls -l $var | cut -f5 -d" " > tamaño.txt 
    tamano=`cat tamaño.txt` 
     if [ $tamano -gt 1000000 ]; then
       echo "El archivo $var supera 1Mb con un tamaño de $tamano."  
      else
       echo "el archivo $var no supera 1Mb"
     fi
   else
    echo "no se corresponde con un archivo: $var"
   fi 
     read -p "pulsa una tecla para continuar con el siguiente ..."
   done
 else
  echo " no es un directorio: $directorio"
fi
rm tamaño.txt
rm salida.txt
cd $dir
