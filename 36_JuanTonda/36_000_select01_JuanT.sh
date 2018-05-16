# prueba05.sh (version 2)
# jt. Octubre 2017
# pasamos por parametro ARCHIVO o DIRECTORIO; 
# lo borramos (si/no)
# falta depurar si es archivo o directorio
# no se elimina igual
# este script solo es para un uso de prueba de select
# si quisieramos preparar el borrado habria que retocar
#
# importante: encerrar "entrecoillas" la variable "$opt" 
# para evitar un error de programa (se ejecuta, pero no es correcto)
#
#
clear
PS3=" ¿ Estas seguro de borrar (** $1 **) ? "
OPCIONES="si no fin"
op=0
select opt in $OPCIONES
 do

  if [ "$opt" = "si" ]; then
   echo "eliminamos  $x"
   opt="fin"
   clear
  elif [ "$opt" = "no" ]; then
   echo "no eliminamos $x"
   opt="fin"
  elif [ "$opt" = "fin" ]; then
   echo "saliendo ...!!"
  elif test -z $opt ; then 
   echo "error ... opción no válida"
 fi 
  
    if [ "$opt" = "fin" ]; then
     break
    fi

 done


