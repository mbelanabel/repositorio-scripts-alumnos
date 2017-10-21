# prueba05.sh
# jt. Octubre 2017
# pasamos por parametro ARCHIVO o DIRECTORIO; 
# lo borramos (si/no)
# falta depurar si es archivo o directorio
# no se elimina igual
PS3="Estas seguro de borrarlo ? "
OPCIONES="si no fin"
x="$1"
op=0
select opt in $OPCIONES
 do
 echo "BORRAR $1"
 if [ $opt = "si" ]; then
   echo "eliminamos  $1"
   opt="fin"
  elif [ $opt = "no" ]; then
   echo "no eliminamos $1"
   opt="fin"
 fi
 if [ $opt = "fin" ]; then
   break
 fi
done
