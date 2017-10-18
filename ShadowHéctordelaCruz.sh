opcion=0
while [ $opcion != 5 ] ; do
echo "MENU"
echo "______________________"
echo "1) Usuarios con contraseña de desactivada"
echo "2) Usuarios con contraseña expirada"
echo "3) Usuarios con contraseña de grupo"
echo "4) Usuarios sin contraseña"
echo "5) Salir"
echo "Introduzca una opción"
read opcion
clear
case $opcion in

	1) sudo cut -f2 -d":" /etc/shadow | grep "!" | wc -l 
	;;
	2) sudo cut -f2 -d":" /etc/shadow | grep "!!" |	wc -l
	;;
	3) sudo cut -f2 -d":" /etc/shadow | grep "*" | wc -l
	;;
	4) sudo cut -f2 -d":" /etc/shadow | grep "::" | wc -l
	;;
	5) echo "saliendo"
	;;	
	*) echo "Opcion incorrecta"
	;;
esac
done
