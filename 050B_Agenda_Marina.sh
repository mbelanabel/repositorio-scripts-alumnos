#Mi agenda  Marina Mateos  
#!/bin/bash
echo "MENU"
echo "------------------"
echo "1) Nuevo contacto"
echo "2) Buscar contacto"
echo "3) Modificar contacto"
echo "4) Eliminar contacto"
echo "5) Salir"
echo "Introduzca la opcion"
read opcion
case $opcion in
	1) echo "Nuevo contacto:"
	read -p "Nombre:" c1
	read -p "Apellidos:" c2
	read -p "Empresa:" c3
	#read -p "Telefono:" c4
	#read -p "Correo:" c5
	echo $c1 : $c2 : $c3 : $c4 : $c5 >> ContactosAgenta.txt
	echo "Datos"
;;
	2) echo "Buscar contacto:"
	read -p "Nombre:" c1
	read -p "Apellidos:" c2
	#read -p "Empresa:" c3
	#read -p "Telefono:" c4
	#read -p "Correo:" c5
	echo "Resultado de la Busqueda:"
	dato=$(grep -i -e "$c1 : $c2" ContactosAgenda.txt)
	echo $dato
;;
	3) echo "Modificacion de Datos:"
	read -p "Nombre:" c1
	read -p "Apellidos:" c2
	#read -p "Empresa" c3
	#read -p "Telefono:" c4
	#read -p "Correo:" c5
	echo  "Datos modificados:"
	#read -p "Nombre:" m1
	#read -p "Apellidos:" m2
	read -p "Empresa:" m3
	read -p "Telefono:" m4
	read -p "Correro:" m5
	datos=$(grep -i -e "$m1 : $m2" ContactosAgenda.txt)
	sed -i "s/$c1 : $c2 : $c3 : $c4 : $c5/g" ContactosAgenda.txt
;;
	4) echo "Eliminar contacto:"
	read -p "Nombre:" c1
	read -p "Telefono:" c2
	sed -i "/$c1 : $c2/d" ContactosAgenda.txt
;;
	5) echo "Salir"
;;
esac	
