#Vamos a recoger la información de un fichero con una serie de campos
#1er_campo nombreusuario, 2ºcampo contraseña(con cuatro valores diferentes),
#script para ver que y cuantos usuarios:
#está encriptada su contraseña ($6)
#está deshabilitado (!)
#está expirado (!!)
#pertenece a un grpo (*)
#y compiamos el resultado en un fichero creado por nosotros llamado fichero_contra.
#estructuras posibles: if, case o select.
#!/bin/bash
clear
echo "Script para la consulta del estado de la contraseña de los usuarios"
echo ----Menú----
echo " "
echo "1) ver usuarios con contraseña encriptada"
echo "2) ver usuarios deshabilitados"
echo "3) ver usuarios expirados"
echo "4) ver usuarios que pertenecen a un grupo"
echo "5) salir del script"
echo " "
echo "Introduzca una opción"
read opcion
case $opcion in
	1) 	echo "Visualizacion de usuarios con contraseñas encriptadas"
		echo hay un total de `cat /etc/shadow | grep -e '$6' | wc -w` usuarios con contraseñas encriptadas
		echo "GRACIAS POR USAR ESTE SCRIPT"
	;;
	2)	echo "Visualización de usuarios deshabilitados"
		echo hay un total de `cat /etc/shadow | grep -e '!' | wc -w` usuarios deshabilitados
		echo "GRACIAS POR USAR ESTE SCRIPT"
	;;
	3)	echo "Visualización de usuarios expirados"
		echo hay un total de `cat /etc/shadow | grep -e '!!' | wc -w` usuarios expirados
		echo "GRACIAS POR USAR ESTE SCRIPT"
	;;
	4)	echo "Visualización de usuarios que pertenecen a un grupo"
		echo hay un total de `cat /etc/shadow | grep -e '*' | wc -w` usuarios que pertenecen a un grupo
		echo "GRACIAS POR USAR ESTE SCRIPT"
	;;
	*) 	echo "OPCIÓN INCORRECTA VUELVA A EJECUTAR EL SCRIPT"
	;;
esac
