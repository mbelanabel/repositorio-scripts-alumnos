#!/bin/bash
#Adrián Jarne
#Script que muestra menú
#Elementos clave: funciones, case, ps, head
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
ps -ef | head -2
menu
;;
2) clear
echo "$PATH"
menu
;;
3) clear
date > nuevoFichero.txt
printenv >> nuevoFichero.txt
echo "Datos incluidos en el fichero"
menu
;;
4) clear
exit
;;
*) echo "Opción no valida"
menu
;;
esac
}
menu
