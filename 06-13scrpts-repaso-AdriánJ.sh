#!/bin/bash
#Adrián Jarne
#Script que muestra menú
#Elementos clave: funciones, case, read, diff, ifconfig, -d, -f
menu()
{
echo ........MENÚ........
echo "1 Comparar ficheros y borrarlos si son iguales"
echo "2 Visualizar la configuración tcp/ip"
echo "3 Salir"
read opcion
case ${opcion} in
1) clear
echo "Introduzca los ficheros a comparar"
read -p "Fichero 1: " fichero1
read -p "Fichero 2: " fichero2
if [[ `diff ${fichero1} ${fichero2}` ]]; then #si los ficheros son diferentes
	rm  "$fichero2"
fi
menu
;;
2) clear
ifconfig
menu
;;
3) clear
exit
;;
*) echo "Opción no valida"
menu
;;
esac
}
menu
