#Script que, por medio de un menu permitirá:
#1. Eliminar un archivo. Pediremos al usuario el nombre del fichero.
#2. Eliminar un directorio. Pediremos al usuario el nombre del directorio.
#3. Mostrar el directorio actual.
#4. Salir
#!/bin/bash
echo "MENU"
echo "----------------"
echo "1) Eliminar Archivo"
echo "2) Eliminar Directorio"
echo "3) Mostrar Directorio Actual"
echo "0) Salir"
echo "Introduzca la ocpión"
read opcion
case $opcion in
	1) echo "Introduzca ruta del archivo a eliminar (a partir de /home): "
	read rutaarchivo
	rm $rutaarchivo
	;;
	2) echo "Introduzca ruta del directorio a eliminar (a partir de /home): "
	read rutadirectorio
	rm -R $rutadirectorio
	;;
	3) echo "Este es el directorio actual: "
	pwd
	;;
	0) echo "Saliendo..."
	;;
	*) echo "Opción incorrecta"
	;;
esac
