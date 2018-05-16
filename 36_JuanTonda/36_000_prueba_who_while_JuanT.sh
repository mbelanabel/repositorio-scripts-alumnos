# Ejercicio 4. MIRAR SI UN USUARIO SE CONECTA AL SISTEMA 
# Juan tonda. (septiembre 2017) prueba08.sh
# interprete de comandos: bash
# version 1
# 
#   until [ `who -a | grep $1 | wc -l` -gt "0" ]
#   hasta que se conecte el usuario (cuando sea mayor que 0), el resultado
#
# for = pruebas de contador (1 a 10 )-simular 10 sg. hay que trastear mas 
# su depuración
#!/bin/bash
  x=0
  if [ $# -eq 0 ] ; then
   clear 
   tput cup 3 10
   echo "*****************************************************" 
   tput cup 4 10  
   echo "No has introducido ningún parámetro"
   tput cup 5 10 
   echo "Ejecución:   ejercicio4_96_1.sh <usuario a comprobar>"
   tput cup 6 10 
   echo "*****************************************************" 
   echo " "
  else
   clear
   tput cup 3 10 
   echo "Estoy esperando a ... " $1
   i=0
   while [ $i -lt 10 ] ; do
   x=`expr $x + 1`
   for i in `expr $i + 1` 
    do
     comprueba=`who -a | grep $1 | wc -l` 
     if [ $comprueba -gt 0 ]; then
        echo $1 conectado
       else
        if [ $i -eq 10 ] ; then
           tput cup 4 10
           echo $1 no conectado $x
           i=0 
        fi
     fi
    done
   done
  fi

