#!/bin/bash
# jt. 2017/09
# averiguar con NCAL el día de la semana
#
clear
 
 tput cup 3 10 
 echo "Introduzca el dia: "
 tput cup 3 30
 read dia
 tput cup 5 10
 echo "Introduzca el mes: "
 tput cup 5 30
 read mes
 tput cup 7 10
 echo "Introduzca el año: "
 tput cup 7 30
 read anio

if [ $dia -lt 10 ]
 then
  dia="  $dia"
 fi

 ncal $mes $anio -h | grep "$dia" -n | cut -c1,1 > dia
 x=`cat dia`
    
     case $x in
 	  2)
           dia_semana="LUNES"
           ;;
	  3)
  	   dia_semana="MARTES"
           ;;
          4)
	   dia_semana="MIERCOLES"
           ;;
          5)
	   dia_semana="JUEVES"
           ;;
          6)
	   dia_semana="VIERNES"
           ;;
          7)
	   dia_semana="SÁBADO"
           ;;
          8)
           dia_semana="DOMINGO"
           ;;
          *)
           dia_semana="Hay un error en los datos introducidos. Repetir ejecución "
           ;;
	esac

 tput cup 10 5
 echo "Se corresponde al dia de la semana: " $dia_semana
 tput cup 20 1
 echo " "
