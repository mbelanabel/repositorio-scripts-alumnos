# !/bin/bash
# Men Cheung Luk Hsieh
# Script que por medio de 3 arrays (lago, área, lugar) son la siguiente información permitirá consultar el país/paises dado un lago o numero
# de la lista y viceversa (es decir, dado un país, que nos diga los lagos que tiene, para simplificar omite los paises que estan entre paréntesis
# Debe completar casos de error
# Elementos clave: estructura case, declare -a (array), banderas (flags)
clear
contador=0
op=1
declare -a lago=( Caspio Superior Victoria Aral Huron Michigan Tanganica ) # Array compuesto de lagos
declare -a area=( 370100 82100 68422 66458 59600 57800 32892 ) # Array compuesto de area
declare -a lugar=( Azerbaiyan CanadaEEUU Kenia Kazajistan CanadaEEUU EEUU Burundi) # Array compuesto por lugar

for valor in ${lago[*]} # Bucle para asociar los lagos con posiciones
do
        echo "El lago es $valor"
        contador=`expr $contador + 1`
done
for valor in ${area[*]} #Bucle para asociar el area con posiciones
do
        echo "El area es $valor"
        contador=`expr $contador + 1`
done
for valor in ${lugar[*]} #Bucle para asociar lugar con posiciones
do
        echo "El lugar de ubicacion es $valor"
        contador=`expr $contador + 1`
done
echo ........MENÚ........
echo " 1) Consulta mediante lago"
echo " 2) Consulta mediante lugar"
echo " 3) Salir"
read opcion
case ${opcion} in
1) clear
echo "Introducir lago a consultar: "
read consultalago # Variable
contador=0
for valor in ${lago[*]} #Bucle
do
        if [ $valor = $consultalago ]; then # Si el valor es igual a la$
        lugar=${lugar[$contador]}
	echo "El lago con nombre $consultalago esta en $lugar"
	op=0 #Si el valor se encuentra que levante una bandera
        fi
        contador=`expr $contador + 1`
done
if [ $op -eq 1 ]; then # Si la variable es igual a 1
	echo "El lago $consultalago no existe" # Este será el mensaje que se mostrara si se levanta la bandera
fi
;;

2) clear
echo "Introduzca el lugar a consultar"
read consultalugar
contador=0
for valor in ${lugar[*]} #Bucle
do
        if [ $valor = $consultalugar ]; then # Si el valor es igual a la$
        lago=${lago[$contador]}
		echo "El lugar $consultalugar contiene el lago $lago"
        	op=0
	fi
        contador=`expr $contador + 1`
done
if [ $op -eq 1 ]; then
	echo "No existe el lugar $consultalugar"
fi
;;

3) clear
echo "EXIT"
;;
*) echo "Opción no válida"
;;
esac
