#!/bin/bsh
#Adrián Jarne
#Script que muestra menú
#Elementos clave: funciones, case, &, whoami
menu()
{
echo ........MENÚ........
echo "1 Listado de ficheros en root en segundo plano"
echo "2 Mostrar usuarios del sistema"
echo "3 Mostrar usuario actual"
echo "4 Salir"
read opcion
case ${opcion} in
1) clear
echo "Monstrando ficheros de root en segundo plano"
ls / & # & se utiliza para ejecutar un comando en segund plano
menu
;;
2) clear
echo "Mostrando usuarios del sistema"
cat /etc/passwd
menu
;;
3) clear
echo "Mostrando usuario actual"
whoami
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
