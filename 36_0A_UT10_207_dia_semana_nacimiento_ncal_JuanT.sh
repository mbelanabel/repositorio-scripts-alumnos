#!/bin/bash (prueba7.sh)
# jt. 2017
# 
# 7.- Script que te diga tu nombre, te muestre el calendario del mes en que naciste y te muestre
# un mensaje que calcule el dia de la semana que naciste
#
# keywords: NCAL el día de la semana
#

clear
 tput cup 1 1 
 echo "Calcular el día en que naciste" 
 tput cup 2 10 
 read -p "Indicame tu nombre: " nombre 
 tput cup 3 10 
 read -p "Introduzca el dia: " dia  
 tput cup 5 10
 read -p "Introduzca el mes: " mes
 tput cup 7 10
 read -p "Introduzca el año: " anio

clear
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
 clear
 echo "HOLA $nombre"
 echo "CALCULANDO DÍA DE LA SEMANA .... "
 # sleep 20 
 tput cup 10 5
 echo "Se corresponde al dia de la semana: " $dia_semana
 read -p "Pulsa una tecla para el calendario del año" tecla
 tput cup 20 1
 echo " "
 cal $anio
 rm dia



