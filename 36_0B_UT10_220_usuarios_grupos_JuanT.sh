# !/bin/bash
# simulacro01_JT.sh  (script de refuerzo: nº20)
#jt. Octubre 2017
#
# JUAN TONDA
#
# CREAR UN MENU para realizar las siguientes opciones: 
# 1. Crear un grupo
# 2. Crear un usuario
# 3. Cuántos ficheros hay en /mnt
# 4. Listar los ficheros; 10 segundos después, guardar en un archivo
#
# revision por Adrian 
# funcion: listar_archivos
# en la variable ls se guarda el listado contando el total con wc -w        
# contar palabras (wc -w) -> se graba en variable total

listar_archivos()
 {
    opcion=0
    cd /mnt 
    total=`ls | wc -w`
    echo "Total de archivos encontrados en /mnt: $total "
    ls > $dir_actual/lista_archivos.txt
    read -p " Pulsa una tecla para continuar ..."
 }

dir_actual=`pwd`
opcion=0
while [ $opcion -eq 0 ] ; do
clear
echo "** MENU ****"
echo " "
echo "1.- CREAR UN GRUPO"
echo " "
echo "2.- CREAR UN USUARIO"
echo " "
echo "3.- CUANTOS FICHEROS HAY /MNT"
echo " "
echo "4-  LISTAR LOS FICHEROS, 10 SEGUNDOS DESPUES A UN ARCHIVO"
echo " "
echo "5.- SALIR"
echo " "
read -p " <Introduce una opción> " opcion 
case $opcion in
  1) 
    opcion=0
    clear 
    read -p "Qué grupo quieres crear ? " grupo 
    # groupadd $grupo
    # esta comentado para no realizarse en maquina real
    ;;
  2) 
    opcion=0
    clear 
    read -p "Qué usuario quieres dar de alta ?" usuario
    # adduser $usuario
    # no estaba incluido
    ;; 
  3)
    op=3
    listar_archivos
    cd $dir_actual
    ;;
  4)
    op=4
    listar_archivos
    cd $dir_actual 
    sleep 10
    echo "Procediendo a sacar la lista de archivos ..."
    # verifico que el contenido del archivo no tiene tamaño 0 
    if test -s lista_archivos.txt ; then 
      cat lista_archivos.txt
     else
      echo "Archivo sin datos"
    fi
    read -p "Pulsa una tecla para salir " pausa
    ;;
  5) 
     ;;
  *)
     echo "LA OPCIÓN SELECCIONADA NO EXISTE. INTRODUCE UNA CORRECTA"
     read pausa
     opcion=0
     ;; 
esac
done
