# jt. Abril 2013 (opción case)
# introduce parametro
# tput cup para ubicarlo en pantalla
#
# 
# Juan Tonda. 1º SMR-T Sistemas Operativos Monpuesto
#
#!/bin/bash 
opcion=1
if [ $# -lt 1 ]; then     
   clear
   cat ayudamenu.hlp # tendriamos un archivo de texto "ayudamenu.hlp", en el cual se indica la ejecución del mismo (menu parametro) 
 else

#while [ $opcion -ne 0 ]; do
while true; do
 clear
 echo " "
 echo " Has introducido el siguiente parametro:: $1"
 echo " ¿Qué deseas hacer?"
 echo " "
 tput cup 3 10
 echo "*******************************"
 tput cup 4 10
 echo "* versión CASE                *"
 tput cup 5 10
 echo "*                             *"
 tput cup 6 10
 echo "*   1. Crear fichero          *"
 tput cup 7 10
 echo "*                             *" 
 tput cup 8 10
 echo "*   2. Borrar fichero         *"
 tput cup 9 10
 echo "*                             *"
 tput cup 10 10 
 echo "*   3. Crear directorio       *"
 tput cup 11 10
 echo "*                             *"
 tput cup 12 10
 echo "*   4. Borrar directorio      *"
 tput cup 13 10
 echo "*                             *"
 tput cup 14 10
 echo "*   0. Terminar o MENU INCIAL *"
 tput cup 15 10
 echo "*******************************"
 tput cup 17 10
 echo -n "Introduce opción: "
 read opcion
 tput cup 19 10
 echo "Opción seleccionada $opcion"
 clear
 case $opcion in 
  1) 
   tput cup 5 10
   echo "Opción 1. CREANDO ARCHIVO"
   if [ -f $1 ];then
     tput cup 6 10
     echo "Archivo -$1- ya creado"
    else
    if [ -d $1 ]; then
      tput cup 6 10
      echo "-$1- es un directorio. Opción incorrecta"
     else
      touch $1
      tput cup 6 10
      echo "El archivo -$1- ha sido creado"
      tput cup 7 10
      echo "Pulsa una tecla para continuar ..."
    fi
   fi
   read xx;;
#     exit
   2)
   tput cup 5 10
   echo "Opción 2. BORRANDO ARCHIVO"
   if test -f $1 ; then
      tput cup 6 10
      echo "El archivo -$1- será borrado"
     if rm $1 ; then
       tput cup 7 10
       echo "El archivo ha sido borrado"
       tput cup 8 10
       echo "Pulsa una tecla para continuar ..."
     fi  
      else
       tput cup 6 10
       echo "Archivo -$1- inexistente"
   fi
   read xx;;
#     exit
   3)
   tput cup 5 10
   echo "Opción 3. CREANDO DIRECTORIO"  
   if test -d -$1-; then
      tput cup 6 10
      echo "El directorio -$1- existe"
     else
     if test -f $1; then
       tput cup 6 10
       echo "-$1- existe como archivo; no es posible realizar esta opción."
      else
       mkdir $1
       tput cup 6 10
       echo "Directorio -$1- creado"
       tput cup 7 10
       echo "Pulsa una tecla para continuar ..."
     fi
   fi
   read xx;;
#     exit
   4)  # tratando la opción 4
   tput cup 5 10
   echo "Opción 4. BORRANDO DIRECTORIO"
   if test -d $1; then
      tput cup 6 10
      echo "El directorio -$1- será borrado"
     if rmdir $1; then
       tput cup 7 10
       echo "El directorio ha sido borrado"
       tput cup 8 10
       echo "Pulsa una tecla para continuar ..."
     fi  
      else
       tput cup 6 10
       echo "Directorio -$1- inexistente"
   fi
   read xx;;
#     exit    
# fi
   0) 
     exit ;;
esac
done
fi

