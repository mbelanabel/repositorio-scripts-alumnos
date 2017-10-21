# jt. Octubre 2017
# convertir a PDF los archivos ODT
# pasando por todos los directorios desde el punto donde
# estamos situados
raiz=`pwd`
x=`ls -lR | grep "/" | cut -f1 -d:`
for dir in $x
 do 
  echo $dir
  cd $dir
  y=`ls *.odt`
   for archivo in $y
    do
     echo "archivo odt a convertir: $archivo"
     unoconv -f pdf $archivo      # unoconv, es un programa LINUX, que te permite convertir un archivo (odt), de Writer en PDF
    done                          # sin tener que hacerlo desde el propio Writer (libre office)
  cd $raiz                        # útil cuando son muchos archivos a realizar esta operación
 done                             # necesario instalar "unoconv" 





# pdftk (archivos_origen_unir) output (archivo_salida)    
# utilidad para unir archivos PDF // esta es una idea, en Internet te muestra otras opciones
