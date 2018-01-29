# autor: Jt.
# Enero 2018
#
# Script que devuelva el número de ficheros, con capacidad de  
# mas de 1 M., dado un directorio
# keyword: Con find combinado size (tamaño: > 1M), type f (archivo)
#          y du -sh {}, mostrar el archivo con su tamaño
# Creará el archivo 'salida.txt' en el lugar correspondiente (ejecución del script)
#
clear
dir=`pwd`
#cd /home/juan
read -p " Directorio que deseas comprobar ? " directorio
if test -d $directorio ; then
 echo " Has introducido el directorio" $directorio
 echo " Procedemos consultando archivos, de más de 1 M."
 cd $directorio
 pwd
 find -type f -and -size +1M -and -exec du -sh {} \; > salida.txt
 ls -l salida.txt
 cp salida.txt $dir
 rm salida.txt
 cat $dir/salida.txt  
 cd $dir
else
 echo " No hay ningún directorio con este nombre " $directorio
fi
