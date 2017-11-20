#!/bin/bash
# Mostrar del fichero shadow los usuarios con contraseñas
# Que tipos: encriptadas, expiradas, desactivadas y de grupo
# Y cuantos hay de cada uno
# Autor Santiago Sanguino
# Corregido por Anabel
opcion=0
while [ $opcion != 5 ] ; do
echo "0 usuarios sin contraseña"
echo "1 contraseñas encriptadas"
echo "2 contraseñas expiradas"
echo "3 contraseñas desactivadas"
echo "4 contraseñas de grupo"
echo "5 SALIR"
echo " "
read -p "Introduzca la opcion: " opcion
case $opcion in
0)	sudo cut -f2 -d":" /etc/shadow |grep "::" |wc -l
	;;
1)	sudo grep "/$6" /etc/shadow |wc -l 
	echo "Usuarios con contraseñas encriptadas "
	;;
2)	sudo grep "!!" /etc/shadow |wc -l 
	echo "Usuarios con contraseñas expiradas "
	;;
3)	sudo grep "!" /etc/shadow |wc -l 
	echo "Usuarios con contraseñas desactivadas "
	;;
4)	sudo grep "*" /etc/shadow |wc -l 
	echo "Usuarios con contraseñas de grupo "
	;;
5)	echo "Hasta luego"
	;;
*)	echo "opcion invalida"
	;;
esac
done
