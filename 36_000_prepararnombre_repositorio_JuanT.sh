#
# jt. octubre 2017
# !/bin/bash
# archivo_limpio=nombre del archivo sin la extension (quita .sh)
# propuesta=es la propuesta del cambio // se está estudiando para  
#  cambiar a otra opcion (indicar un read, y tratarlo otra propuesta )
# $1 != "repocop.sh" indicar el correct
# / si el archivo a cambiar es el script no lo realiza /
# adecuarlo al nombre del script. (este nombre es la primera versión)
# para que funcione probar antes con el resultado del "echo" en 'mv'
#  se puede realizar el cambio
# funcion_ cambiar_nombre , donde realiza el cambio si se está de acuerdo
#
cambiar_nombre()
 {
  clear
  echo "cambiando el nombre .... " $archivo
  read -p "pulsa una tecla para continuar ..." pausa
  echo mv $archivo $propuesta 
  #echo $archivo_limpio
  # analizando el cambio; quitar echo para (mv)
  # su funcionamiento 
 }

clear
opcion=1
if [ $1 != "repocop.sh" ]; then
    if test -a $1 ; then
      archivo=$1 
      archivo_limpio=`echo $archivo | cut -f1 -d"."`  # quitamos la extensión
      propuesta="36_000_"$archivo_limpio"_JuanT.sh" 
      while [ $opcion -eq 1 ] ; do  
      echo "procedemos a cambiar de nombre el archivo $1 a $propuesta "
      tput cup 5 10
      read -p "Estas seguro s/n ? " opciones
       case $opciones in
        s)
         archivo=$1
         echo "propuesta $propuesta aceptada" 
         cambiar_nombre
         opcion=0
        ;;
        n)
         echo "no se procede al cambio"
         opcion=0
        ;;
        *)
         read -p " opción no válida " pause
         clear
         opcion=1
        ;;
       esac 
      done
     else
      echo "el archivo $1 no existe"
    fi
 else
  echo "el archivo script no es válido para cambiar el nombre"
fi 
