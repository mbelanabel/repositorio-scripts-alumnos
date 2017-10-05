#!/bin/bash
# borrar archivo de resultado, para comprobar archivo vacío
#
clear
rm resultado
 echo "Introduzca el dia"
 read dia

 echo "Introduzca el mes"
 read mes
 
 echo "Introduzca el año"
 read anio

if [ $dia -lt 10 ]
 then
  dia=" $dia"
 fi

dia_semana="domingo"
empezar=0
inicio=1
fin=2
     

while [ $empezar = 0 ]; do
cal $mes $anio | grep "$dia" > resultado
  if test -s resultado
   then 
     echo "bienvenido"     
   else 
     echo "no encontrado 1 !!"
     inicio=21
     break
  fi


cal $mes $anio | cut -c$inicio,$fin | grep "$dia" > resultado

 if test -s resultado
   then 
     echo "encontrado !!"
     empezar=1
     
   else 
     echo $inicio
     inicio=`expr $inicio + 3`
     fin=`expr $fin + 3`
         if [ $inicio = 19 ]
          then 
            empezar=1
          fi
 fi
done

echo "inicio:" $inicio
echo "fin:" $fin

    case $inicio in
 	 1)
          dia_semana="domingo"
          ;;
	 4)
	  dia_semana="lunes"
          ;;
         7)
	  dia_semana="martes"
          ;;
         10)
	  dia_semana="miercoles"
          ;;
         13)
	  dia_semana="jueves"
          ;;
         16)
	  dia_semana="viernes"
          ;;
         19)
	  dia_semana="sabado"
          ;;
         21)
          dia_semana="no existe el dia"
          ;;
	esac
  
echo "dia_semana:" $dia_semana
