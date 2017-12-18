#!/bin/bsh
#Adrián Jarne
#Script que muestra menú
#Elementos clave: funciones, options, read, if, -d, -f
menu()
{
options=("Eliminar archivo" "Eliminar directorio" "Mostrar directorio actual" "Salir")
select opt in "${options[*]}" #"$options[*]" lista los todos los valores de $options
do
	case $opt in
		"Eliminar archivo") clear
			echo "Introduzce el fichero a eliminar"
			read fichero
			if [[ -f $fichero ]]; then # compruebo si existe el fichero
				rm $fichero
				echo "Ha borrado el fichero $fichero"
			else
				echo "No existe el fichero"
			fi
			;;
		"Eliminar directorio") clear
			echo "Introduzce el directorio a eliminar"
			read directorio
			if [[ -d $directorio ]]; then #compruebo si existe el directorio
				rm -Rf $directorio
				echo "Ha borrado el directorio $directorio"
			else
				echo "No existe el directorio"
			fi
			;;
		"Mostrar directorio actual") clear
			pwd
			;;
		"Salir") clear
			exit
			;;
		*) clear
			exit
			;;
	esac
done
}
menu
