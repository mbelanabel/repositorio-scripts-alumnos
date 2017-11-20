#!/bin/bash
#Autor: Santiago Sanguino
echo "MENU"
echo 1 Incluir contacto
echo 2 Borrar contacto
echo 3 Modificar contacto
echo 4 Consultar contacto
echo 5 Salir
echo " "
read -p "Introduzca la opcion: " option
case $option in
1)	read -p "Id: " i1
	read -p "Nombre: " n1
	read -p "Mote: " m1
	read -p "Numero: " u1
	read -p "Gmail: " g1
	echo $i1 : $n1 : $m1 : $u1 : $g1 >> contacto.txt
	;;
2)	read -p "Nombre a eliminar: " nombre0
	sed -i /$nombre0/d contacto.txt
	;;
3)	read -p "Nombre a modificar: " nombre1
	read -p "Nuevo nombre: " nombre2
	sed -i "s/$nombre1/$nombre2/g" contacto.txt
	;;
4)	if [ -s contacto.txt ];
	then
	echo "Introduzca el nombre y mote u otro dato a consultar " 
read busqueda
	SALIDA=$(grep -i "$busqueda" contacto.txt)
	echo -e "${SALIDA//:/\|}"
	#Manda un mensaje como separador | 
else
	echo "El fichero no existe o no esta el dato introducido"
fi
	;;
5)	echo "Adios"
	;;
esac
