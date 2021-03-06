#!/bin/bash
#Para este escript se opta por usar la estructura de control CASE para las opciones 1, 2, 3
#Para la opción 4 que es la de consultar usaremos SELECT
echo "Agenda de contactos"
echo "Menú"
echo "			"
echo "1) Incluir contacto"
echo "2) Borrar contacto"
echo "3) Modificar contacto"
echo "4) Consultar"
echo "0) Salir"
echo "			"
echo "Introduzca una opción"
read opcion
case $opcion in
	1) echo  "Introduzca contacto nuevo"
	   echo  "Introduzca dni direccion nombre mote nºtel email"
		read dni direccion nombre mote tel email
	   echo	"Los datos son los siguientes $dni::$direccion::$nombre::$mote::$tel::$email"
		echo "Se va a proceder al Guardado del contacto"
		echo "¿Es la primera vez que registra un contacto?"
		echo "1 Si (GUARDAR Y CREAR FICHERO DE AGENDA)"
		echo "2 No (GUARDAR CON NORMALIDAD EN LA AGENDA)"
		echo "3 Salir (ESCRIBA 'exit' PARA SALIR DEL PROGRAMA)"
		echo "	"
		echo "Introduzca una opcion"
		read opcion
		case $opcion in
			1 |SI|S|si|s|YES|Y|yes|y)
			echo $dni $direccion $nombre $mote $tel $email > ~/agenda.txt
			;;
			2 |NO|N|no|n) 
			echo $dni $direccion $nombre $mote $tel $email >> ~/agenda.txt
			;;
			3 |exit)
			echo "Operacion cancelada, Ha salido de la agenda (Ejecute de nuevo)"
			;;
			*) 
			echo "Opción incorrecta"
			;;
			esac
			;;
#	2) echo "Se va a proceder al borrado de un contacto"
#           echo "¿Esta seguro de borrar un contacto?"
#           echo "1 Si (Continuar borrando el contacto deseado)"
#           echo "2 No (Salir del programa sin efectuar cambios)"
#           echo " "
#           echo "Elija una opción"
#           read opcion
#           case $opcion
#			1 |SI|S|si|s|YES|Y|yes|y) 
                        echo $dni $direccion $nombre $mote $tel $email > ~/agenda.txt 
			#http://es.ccm.net/faq/3031-sed-eliminar-una-o-varias-lineas-de-un-fichero sed -i / /
#			;;
#			2 |NO|N|no|n) 
                        echo "Operación cancelada, Ha salido de la agenda (Ejecute de nuevo)"
#			;;
#			*) echo "Opción incorrecta"
#			;;
        3) echo "Se va a proceder a la edición de un contacto"
           echo "¿Esta seguro de editar un contacto?"
           echo "1 Si (Continuar editando el contacto deseado)"
           echo "2 No (Salir del programa sin efectuar cambios)"
           echo " "
           echo "Elija una opción"
           read opcion
           case $opcion in
                        1 |SI|S|si|s|YES|Y|yes|y)
			echo "Contactos a modificar"
			cat ~/agenda.txt | nl
			echo "Escriba nombre apellido mote direccion nºtel email para editar el campo deseado: "
                        read -p "Introduzca un dato: " dato1 dato2
                        sed -i s/$dato1/$dato2/g ~/agenda.txt
			echo "El contacto se ha modificado correctamente"
			echo " "
                        cat ~/agenda.txt
                        ;;
                        2 |NO|N|no|n) echo "Operación cancelada, Ha salido de la agenda (Ejecute de nuevo)"
                        ;;
                        *) echo "Opción incorrecta"
                        ;;
           esac
           ;;
	4)echo "Se va a realizar la busqueda del contacto"
	  echo "¿Está seguro de realizar la busqueda?"
	  echo "1 Si, estoy seguro"
	  echo "2 No, Salir de la agenda"
	  echo " "
	  echo "Eliga una opción"
	  read opcion
	  case $opcion in
			1 |SI|S|si|s|YES|Y|yes|y)
                        read -p "Introduzca algun dato como nombre, mote, direccion para realizar la búsqueda: " dato
                        grep -e $dato ~/agenda.txt
                        ;;
                        2 |NO|N|no|n) echo "Operación cancelada, Ha salido de la agenda (Ejecute de nuevo)"
                        ;;
                        *) echo "Opción incorrecta"
               		;;
	  esac
	  ;;
	0) echo "Ha salido de la agenda"
	;;
	*) echo "Opción incorrecta, elija una opción válida"
	;;
esac
