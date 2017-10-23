clear
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
	read -p "Nombre: " Nombre
	read -p "Apellido: " Apellido
	read -p "Telefono: " Telefono
	read -p "Email: " Email
	read -p "Notas: " Notas
	echo $Nombre : $Apellido : $Telefono : $Email : $Notas >> Contactos.txt
	echo "Datos Introducidos"
;;
2) echo "Introduza los datos (minimo 2 campos)"
	 read -p "Nombre: " Nombre
        read -p "Apellido: " Apellido
        read -p "Telefono: " Telefono
        read -p "Email: " Email
echo "Este es el contacto encontrado"
        grep -i -e $Nombre -e $Apellido -e $Telefono -e $Email -e $Notas Contactos.txt
;;
3) echo "Introduzca los datos del contacto que desea modificar"
	 read -p "Nombre: " Nombre
        read -p "Apellido: " Apellido
        read -p "Telefono: " Telefono
        read -p "Email: " Email
        read -p "Notas: " Notas
echo "Introduce los datos nuevos"
	 read -p "Nombre: " Nombre
        read -p "Apellido: " Apellido
        read -p "Telefono: " Telefono
        read -p "Email: " Email
        read -p "Notas: " Notas

        sed -i "s/$Nombre : $Apellido : $Telefono : $Email : $Email/$Nombre : $Apellido : $Telefono : $Email : $Notas/g" Contactos.txt

;;

4) echo "Introduzca el contato que desea eliminar"
        read -p "Nombre: " Nombre
        read -p "Apellido: " Apellido
 sed -i "/$Nombre : $Apellido/d" Contactos.txt
;;
esac


