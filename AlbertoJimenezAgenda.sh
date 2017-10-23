#Alberto Jimenez Martinez
#!/bin/bash
ag=agenda.txt
echo "Eliga una opcion"
echo ""
echo "1) Agregar contacto"
echo "2) Borrar contacto"
echo "3) Mostrar toda la agenda"
echo "4) Buscar un contacto"
echo "5) Modificar un contacto"
echo "6) Salir"

read opcion
case $opcion  in

	1)	read  -p "Nombre del Contacto: " n1
		read  -p "Primer apellido del Contacto: " n2
		read  -p "Segundo apellido del Contacto: " n3
		read  -p "Telefono del Contacto: " n4
		read  -p "Correo Electronico del Contacto: " n5
		read  -p "Alias del Contacto: " n6

			echo $n1 : $n2 : $n3 : $n4 : $n5 : $n6 >> agenda.txt
		;;

	2)    	echo "Eliminar contacto"
			read -p "Ingrese un nombre: "  n1
			read -p "Ingrese primer apellido: " n2
		sed -i "/$n1 : $n2/d" agenda.txt
		;;

	3)      echo "Contactos"
		echo ""
                cat agenda.txt
                ;;

	4)	read -p "Introduzca contacto a buscar: " n1
 		echo ""
		cat agenda.txt | grep -i -e "$c1"
                ;;

	5)	echo "Introduzca los datos del contacto que desea modificar"
		read -p "Nombre: " n1
        	read -p "Primer apellido: " n2
		read -p "Segundo apellido:" n3
	        read -p "Telefono: " n4
        	read -p "Correo electronico: " n5
	        read -p "Alias: " n6
		echo "Introduce los datos nuevos"
		read -p "Nombre: " p1
	        read -p "Primer apellido: " p2
		read -p "Segundo apellido:" p3
                read -p "Telefono: " p4
                read -p "Correo electronico: " p5
                read -p "Alias: " p6

		sed -i "s/$n1 : $n2 : $n3 : $n4 : $n5 : $n6/$p1 : $p2 : $p3 : $p4 : $p5 : $p6/g" agenda.txt

		;;

	6)	echo "Gracias por su consulta"
		return
		;;

esac
