#!/bin/bash
#Adrián Jarne
#Script que muestra menú
#Elementos clave: funciones, case, read
menu()
{
echo ........MENÚ........
echo "1 Añadir contacto"
echo "2 Consultar telfono"
echo "3 Consultar dirección"
echo "4 Salir"
read opcion
case ${opcion} in
1) clear
read -p "Introduce nombre: " nombre
read -p "Introduce telefono: " telefono
read -p "Introduce dirección: " direccion
echo "Nombre: ${nombre} - Telefono: ${telefono} - Dirección: ${direccion}" >> contactos.txt
echo "Contacto guardado"
menu
;;
2) clear
read -p "Introduce el telefono del contacto a consultar: " telefono
grep "$telefono" contactos.txt
menu
;;
3) clear
read -p "Introduce la dirección del contacto a consultar: " direccion
grep "$direccion" contactos.txt
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
