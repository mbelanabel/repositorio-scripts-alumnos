#Alberto Jimenez Martinez 
#Este script nos permitirá generar un listado de todos los ficheros del
#directorio root en segundo plano, mostrar un listado de todos los usuarios del
#sistema(existentes) y mostrar el usuario actual
#!/bin/bash
echo "Eliga una opcion"
echo ""
echo "1) Generar el listado de todos los ficheros que contiene el directorio root en segundo plano"
echo "2) Mostrar un listado de todos los usuarios del sistema existentes"
echo "3) Mostrar el usuario actual"
echo "4) Salir"

read opcion
case $opcion  in

	 1)	echo "Listado de todos los ficheros del directorio actual en segundo plano, en la ruta /home/alumno/listado_c"
		ls -alFR >> /home/alumno/listado_c &
		;;

	 2)     echo "Muestra un listado de los usuarios existentes del sistema"  
                finger
                ;;

	 3)     echo "El usuario actual es"  
                whoami
                ;;

	 4)	echo "Salir"
		#fallaba "break" que solo se usa con for, while y until.
		return
		;;

esac

