# autor: Jt.
# Enero 2018
#
# Script que devuelva el número de ficheros, con capacidad de  
# mas de 1 M., dado un directorio
# keyword: Con find combinado size (tamaño: > 1M), type f (archivo)
#          y du -sh {}, mostrar el archivo con su tamaño
# Creará el archivo 'salida.txt' en el lugar correspondiente
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
 cd $dir
 cat salida.txt 
 total=`cat salida.txt | wc -l`
 echo $total "archivos"
else
 echo " No hay ningún directorio con dicho nombre " $directorio
fi
