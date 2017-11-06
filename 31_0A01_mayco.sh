#!bin/bash
#Redacta un script que compruebe si esta en el directorio /, si es así muestra los permisos que tienen los ficheros que contiene, si no, cambia de directorio /.
#Autor Mayco Costa
#Revisado por Andrea Rioja, Daniel Fernández
#(1)Fallo, Tiene que ir al directorio raiz para que funcione

echo "Aqui muestra el directorio / y los permisos"
#ls -l ; pwd
#cambiar de directorio
directorio=`pwd`
if [ $directorio = "/" ] ; then
#Aquí esta diciendo si estoy en el directorio o no, ya que sino es porque antes tengo que situarme en el directorio / para que funcione.
 	echo "Si estas en el directorio $directorio "
        ls -l 
        cd $directorio // vuelves a donde está el script
else
 	echo "No estas en el directorio $directorio "
fi

