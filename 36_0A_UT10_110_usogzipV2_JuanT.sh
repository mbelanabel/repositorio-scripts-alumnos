# jt. octubre 2017     (v2) ** el funcionamiento GZIP pendiente de analizar **
# comprime todo en un solo fichero
# tipo de archivo: 0A 
# 10. Tengo un tar con tres ficheros. Se pide realizar un script que genere
# un fichero canciones.gz con las líneas de los tres primeros ficheros
# que contengan la cadena “give up”.
#
# keywords: tar; gzip 
# fichero
rm canciones.gz
valor_buscar="give up"
tar -tvf a.tar | cut -c49-60 > a.txt
tar -xvf a.tar
for i in `cat a.txt`
do
  cat $i | grep "give up" > resultado.txt   
  valor=`cat -n resultado.txt | grep "1" | cut -c8-16`
  echo "valor: $i ... $valor"
  if [ "$valor" = "give up" ]; then
    gzip -c $i >> canciones.gz
    # localizar version 1 - para copiar archivo con un encabezado al inicio
  fi
done
rm resultado.txt
rm a.txt
