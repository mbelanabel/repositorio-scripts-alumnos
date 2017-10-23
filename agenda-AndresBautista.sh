#!/bin/bash
#Menu agenda Andres Bautista falta como quedarnos en el menu cuando escojamos alguna opcion o despues de meter datos al igual cuando entremos en el menu modificar poder hacerlo sin salir del menu asta darle en la opcion salir

opcion=0
while [ $opcion != 5 ] ; do

echo "Menu"
echo "_________"
echo "1) Añadir contacto"
echo "2) Borrar contacto"
echo "3) Modificar contacto"
echo "4) Consultar"
echo "5) Salir"
echo "Introduzca una opción"
read opcion
clear
case $opcion in
	1) read -p "Añadir Codigo: " codigo
	   read -p "Añadir Nombre: " nombre
	   read -p "Añadir Apellido: " apellido
	   read -p "Añadir Direccion: " direccion
	   read -p "Añadir Correo: "  correo
	echo $codigo $nombre $apellido $direccion $correo >> /home/alumno/Documentos/agenda.txt
	;;

 	2) read -p "Añadir codigo a borrar: " codigo
	sed -i /$codigo/d /home/alumno/Documentos/agenda.txt	
	  echo "linea con $codigo introducido borrado"
	;;

	3)
 opcion1=0
 while [ $opcion1 != 6 ] ; do
	   echo "Menu para modificar"
	   echo "___________________"
	   echo "1) Codigo" 
	   echo "2) Nombre"
	   echo "3) Apellido"
	   echo "4) Direccion"
	   echo "5) Correo"
	   echo "6) Salir"
	   echo "Introduzca opcion"
	   read opcion1
 clear
	   case $opcion1 in 

	1)read -p "Añadir codigo a modificar: " codigo	
	  read -p "Valor del nuevo codigo: " codigo2	
	  sed -i s/$codigo/$codigo2/g /home/alumno/Documentos/agenda.txt
	;;
	2)read -p "Añadir nombre a modificar: " nombre
	  read -p "Valor del nuevo nombre : " nombre2
	  sed -i s/$nombre/$nombre2/g /home/alumno/Documentos/agenda.txt
	;;
	3)read -p "Añadir Apellido a modificar: " apellido
	  read -p "Valor del nuevo Apeliido: " apellido2
	  sed -i s/$apellido/$apellido2/g /home/alumno/Documentos/agenda.txt
	;;
	4)read -p "Añadir Direccion a modificar: " direccion
	  read -p "Valor de la nueva Direccion: " direccion2
	  sed -i s/$direccion/$direccion2/g /home/alumno/Documentos/agenda.txt
	;;
	5)read -p "Añadir Correo a modificar: " correo
	  read -p "Valor del nuevo Correo: " correo2
	  sed -i s/$correo/$correo2/g /home/alumno/Documentos/agenda.txt
	;;	
	
	6) echo "Saliendo del menu modificar "
        ;;

	*) echo "Opcion incorrecta"
	;;
esac
done
	;;

	4)echo "Indroduzca codigo a consultar: "
	  read codigo
	  grep $codigo /home/alumno/Documentos/agenda.txt
      	;;
	5) echo "Saliendo del menu" 
	;;
	*) echo "Opcion incorrecta"
	;;
esac
done
