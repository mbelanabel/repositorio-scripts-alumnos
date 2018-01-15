#!/bin/bash
#Adrián Jarne
#Script que muestra menú
#Elementos clave: funciones, case, read, grep
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
echo "Nombre: ${nombre} - Telefono: ${telefono} - Dirección: ${direccion}" >> contactos.txt #">>" Vuelca la información sin borrar lo qeu habia ántes
echo "Contacto guardado"
menu
;;
2) clear
read -p "Introduce el nombre para consultar su telefono: " telefono
grep "$telefono" contactos.txt
menu
;;
3) clear
read -p "Introduce el nombre para consultar la dirección: " direccion
grep "$direccion" contactos.txt
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
