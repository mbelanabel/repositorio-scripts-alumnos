#!/bins/bash
echo "MENU"
echo "1) Saber cuantos ficheros de dispositivo de bloques hay en /dev"
echo "2) Ver cuales son y lo que ocupan los perfiles de usuario"
echo "3) Crear un informe con esa informacion"
echo "4) Salir"

echo "Introduzca una opcion"
read opcion
case $opcion in
	1) echo "El numero de ficheros que hay son"
	   ls -f | more
		;;
esac
