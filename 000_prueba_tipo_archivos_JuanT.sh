# jt. Octubre 2017 (prueba13.sh)
# ver cuantos dispositivos caracter se encuentran en /dev
# ver .... bloque
dir=`pwd`
caracter=0
bloque=0
cd /dev
lista_archivos=`ls`
for comprobar_archivo in $lista_archivos
do 
 if test -c $comprobar_archivo ; then 
  caracter=`expr $caracter + 1`
  echo "dispositivo caracter nº$caracter  : $comprobar_archivo"
 elif test -b $comprobar_archivo ; then
  bloque=`expr $bloque + 1`
  echo "dispositivo bloque nº$bloque : $comprobar_archivo"
fi
done
cd $dir
