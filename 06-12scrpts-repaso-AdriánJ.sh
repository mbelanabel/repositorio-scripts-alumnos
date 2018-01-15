#!/bin/bsh
#Adrián Jarne
#Script que muestra menú
#Elementos clave: funciones, options, read, if, -d, -f
menu()
{
options=("Eliminar archivo" "Eliminar directorio" "Mostrar directorio actual" "Salir")
select opt in "${options[@]}" #"$options[@]" selecciona cada uno de los valores de $options
do
	case $opt in
		"Eliminar archivo") clear
			echo "Introduzce el fichero a eliminar"
			read fichero
			if [[ -f $fichero ]]; then # compruebo si existe el fichero
				rm $fichero # borrar fichero
				echo "Ha borrado el fichero $fichero"
			else
				echo "No existe el fichero"
			fi
			menu
			;;
		"Eliminar directorio") clear
			echo "Introduzce el directorio a eliminar"
			read directorio
			if [[ -d $directorio ]]; then #compruebo si existe el directorio
				rm -rf $directorio # borrar directorio recursivamente y sin preguntar
				echo "Ha borrado el directorio $directorio"
			else
				echo "No existe el directorio"
			fi
			menu
			;;
		"Mostrar directorio actual") clear
			echo "Mostrando directorio actual"
			pwd # muestra directorio actual
			menu
			;;
		"Salir") clear
			break
			;;
		*) clear
			echo "Opción no valida"
			menu
			;;
	esac
done
}
menu
