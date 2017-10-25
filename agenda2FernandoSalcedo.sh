#/bin/bash
#Agenda creada por Fernando Salcedo con elemento case

echo "Menu"
echo "-------------------"
echo "1) Introducir nuevo contacto"
echo "2) Buscar contacto"
echo "3) Modificar contacto"
echo "4) Eliminar contacto"
echo "0) Salir"
echo "Introduzca opción"
read opcion
case $opcion in
1) echo "Introduzca los datos"
	read -p "Nombre: " d1
	read -p "Apellido1: " d2
	read -p "Telefono: " d3
	read -p "Email: " d4
	read -p "Notas: " d5
	echo $d1 : $d2 : $d3 : $d4 : $d5 >> Contactos.txt
	echo "Datos Introducidos"
;;
2) echo "Introduza los datos"
	 read -p "Nombre: " d1
        read -p "Apellido1: " d2
#        read -p "Telefono: " d3
#        read -p "Email: " d4
        dato=$(grep -i -e "$d1 : $d2" Contactos.txt)
echo $dato
;;
3) echo "Introduzca los datos del contacto que desea modificar"
	 read -p "Nombre: " d1
        read -p "Apellido1: " d2
#        read -p "Telefono: " d3
#        read -p "Email: " d4
#        read -p "Notas: " d5
echo "Introduce los datos nuevos"
#	 read -p "Nombre: " p1
#        read -p "Apellido1: " p2
        read -p "Telefono: " p3
        read -p "Email: " p4
        read -p "Notas: " p5
	datos=$(grep -i -e  "$d1 : $d2" Contactos.txt)

        sed -i "s/$datos/$d1 : $d2 : $p3 : $p4 : $p5/g" Contactos.txt

;;

4) echo "Introduzca el contato que desea eliminar"
        read -p "Nombre: " d1
        read -p "Apellido1: " d2
 sed -i "/$d1 : $d2/d" Contactos.txt
;;
esac

