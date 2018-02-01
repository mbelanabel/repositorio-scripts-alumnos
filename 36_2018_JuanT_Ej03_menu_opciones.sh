#script: 
# 
# ADMINISTRACION DE SISTEMAS OPERATIVOS. Shell-Scripting
# Juan Tonda. 2018
#
# 1. Contenido del directorio /home, del usuario actual
# 2. Comando de PID01 (se extrae a traves de la combinación de grep, con cut
# 3. Incluir en la variable PATH, un directorio (home), que 
#    previamente pedimos al usuario. Sino existe hay que crearlo.
# 4. Listado de todos los usuarios del sistema (todos los usuarios existentes) 
# opcion 3. ESTA COMENTADA , para prevenir incidencias en maquina real

clear
# ejecutar MENU 
#

opcion=0
while [ $opcion = 0 ]; do
clear
echo "** MENU ** scripting 2018 **"
echo " "
echo "1.- Directorio /home, del usuario actual"
echo "2.- Comando PID01"
echo "3.- Incluir (/home) en variable PATH"
echo "4.- Listado de usuarios"
echo "5.- SALIR"
echo " "
read opcion
case $opcion in
  1)
    echo "Directorio del usuario actual es " $HOME 
    ls -l $HOME     
    read -p "Pulsa una tecla para continuar ..."  
    opcion=0
    ;;
  2) 
    comando=`ps -ef | grep " 1   " | grep "  0  " | cut -c49-90`   
    echo "El comando que está ejecutando PID 1 es ..."	$comando
    read -p "Pulsa una tecla para continuar ..."  
    opcion=0
    ;; 
  3)
    read -p "Que directorio deseas incluir en el path " directorio
    if test -d $directorio; then
      echo "El directorio existe es ... " $directorio
     else
      echo "El directorio no existe ... " $directorio
      echo " CREAREMOS EL DIRECTORIO !!! "
    fi      
    echo " Incluiremos el directorio correspondiente en el PATH " 
    echo " PATH=$PATH:$directorio"
    read -p "Pulsa una tecla para continuar ..."
    opcion=0
    ;;
  4)
    echo " Listado de usuarios ... "
    cat /etc/passwd | cut -f1 -d":"
    read -p "Pulsa una tecla para continuar ..."	
    opcion=0
    ;;

  5) 
     ;;
  *)
     echo "LA OPCIÓN SELECCIONADA NO EXISTE. INTRODUCE UNA CORRECTA"
     read pausa
     opcion=0;; 
esac
done 

