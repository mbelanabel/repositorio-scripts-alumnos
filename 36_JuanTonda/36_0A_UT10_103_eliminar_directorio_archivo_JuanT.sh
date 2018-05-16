# jt. octubre 2017    
# tipo de archivo: 0A 
# 3. Un script que elimine un archivo o directorio pasado como parámetro,
# y le pregunte si está seguro de llevar a cabo la acción.
# keyword: estructura de control IF con TEST (archivo y control de parametro).

tipo_mensaje() {
 echo "*** MENSAJE DE EJECUCIÓN EN EL SCRIPT ****"
 echo "Resultado: " $salida
 read -p "Pulsa una tecla para continuar " pausa
}


clear
# comprobar el paso de parámetros
 if test $# -eq 1; then
# comprobar si el parametro es fichero o directorio     
    if test -f $1; then 
       op=1
       tipo="fichero"
     elif test -d $1; then
       op=2
       tipo="directorio"
     else
       salida=" No existe $1 "     
       op=0
    fi 
    salida="El parametro -- $1 -- es un $tipo."
   else
    salida="es solo un parametro"
    op=0
 fi 
 tipo_mensaje

if [ $op != 0 ]; then 
  PS3=" ¿ Estas seguro de borrar este $tipo: ($1)? "
  OPCIONES="si no fin"
   select opt in $OPCIONES
    do
     if [ $opt = "si" ]; then
       echo "eliminamos  $1"
       opt="fin"
       seguro="si"
     elif [ $opt = "no" ]; then
       echo "no eliminamos $1"
       opt="fin"
       seguro="no"
     fi
    if [ $opt = "fin" ]; then
     break
    fi
   done

   if [ $seguro = "si" ]; then
    if [ $op -eq 1 ]; then
     echo "rm $1"
    elif [ $op -eq 2 ]; then
     echo "rmdir $1"
    fi
   fi
fi
