# jt. octubre 2017
# cambiar el nombre a los archivos de un golpe; 
# esta comentada el "mv" para asegurar el cambio
# antes que nada (por evitar "sorpresas !!"
#
dira=`pwd`
cd repositorio-scripts-alumnos-master
ls > x
x=`cat x`
 for var in $x # recorro el directorio por toda la lista de archivos 
   do
    echo $var   
    echo $var > z   # paso el contenido de la variable al archivo "z"
    y=`cat z | cut -c4-40` # recorto el contenido del archivo
    echo $y 
    echo mv $var 39_$y   # una vez verificado, procedo a cambiar el nombre 
 # $var es el nombre actual 
 #   $y es el final del archivo : ojo !! a lo mejor no es necesario
 #   cada uno busca sus necesidades de cambio
 #  a lo mejor hay que nombrarlo igual el final (ojo !!)   
 #
    read pau
   done
cd $dira
rm x
rm z
