# jt. octubre 2017    
# tipo de archivo: 0A 
# 4. Un shell-script denominado fileodir que compruebe que el parámetro
# que se le ha pasado es un fichero y en caso afirmativo
# muestre su contenido . Si el parámetro es un directorio deberá mostrar los ficheros
# que contiene. También debe aceptar más de un parámetro.
# keyword: estructura de control IF con TEST (archivo y control de parametro). 
# //utilizar shift for
# while hasta que llegue al total de parametros


clear
i=0
fin=$#
echo "Total parametros: " $#
while test $i -lt $fin 
do
 for i in `expr $i + 1`
  do
    echo "Pasando parametro $i: $1"
    
    if test -f $1; then 
       cat $1
     elif test -d $1; then
       ls -lR $1
     else 
       echo "este valor $1 no existe, ni como directorio, ni como archivo"
    fi  

   shift
  done
done
