#!/bin/bash
#Adrián Jarne
#Script que muestra menú
#Elementos clave: funciones, case, ps -ef, sed -n, date, printenv 
menu()
{
echo ........MENÚ........
echo "1 Visualizar PID 1"
echo "2 Consultar variable PATH"
echo "3 Crear fichero con la fecha actual y los valores de las variables de entorno"
echo "4 Salir"
read opcion
case ${opcion} in
1) clear
	echo "Mostrando PID 1"
	ps -ef | sed -n 2p # ps -ef muestra los procesos activos del sistema, sed -n 2p muestra la segunda linea del fichero indicado
	menu
	;;
2) clear
	echo "Consultando variables PATH"
	echo "$PATH"
	menu
	;;
3) clear
	date > nuevoFichero.txt #date muestra la fecha actual
	printenv >> nuevoFichero.txt #printenv lista todas las variables de entorno
	echo "Datos incluidos en el fichero"
	menu
;;
4) clear
	break 
	;;
*) echo "Opción no valida"
	menu
	;;
esac
}
menu
