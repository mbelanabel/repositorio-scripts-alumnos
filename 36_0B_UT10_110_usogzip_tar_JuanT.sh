# jt. octubre 2017     (uso "gzip" pendiente de analizar !!!!)
# tipo de archivo: 0A 
# 10. Tengo un tar con tres ficheros. Se pide realizar un script que genere
# un fichero canciones.gz con las líneas de los tres primeros ficheros
# que contengan la cadena “give up”.
#
# keywords: tar; gzip 
# fichero - acumular el nombre de los archivos y pasarlos a gzip - 
# valor - guardar la primera linea donde se encuentre "give up"
# preparo la cabecera del archivo acumulandosé al archivo original
# asimismo se hace una copia del mismo
# for (recorrer todos los archivos contenidos en fichero tar)
# tar (ver la lista de archivos)

valor_buscar="give up"
fichero=" "
tar -tvf a.tar | cut -c49-60 > a.txt
tar -xvf a.tar
for i in `cat a.txt`
do
  cat $i | grep "give up" > resultado.txt   
  valor=`cat -n resultado.txt | grep "1" | cut -c8-16`
  echo "valor: $i ... $valor"
  if [ "$valor" = "give up" ]; then
    echo "ARCHIVO: $i" > archivof.txt
    cat $i >> archivof.txt
    cp archivof.txt $i
    cp $i $i.cop
    fichero=`echo $fichero $i`
  fi
done
echo $fichero
gzip -c $fichero > canciones.gz
cat $fichero | gzip > canciones2.gz  # probando "gzip" e intentando entender ???
rm archivof.txt
rm resultado.txt
rm a.txt
