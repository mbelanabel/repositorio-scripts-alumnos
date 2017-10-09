#!/home/alumno
#Redacta un script que compruebe si esta en el directorio /, si es así muestra los permisos que tienen los ficheros que contiene, si no, cambia de directorio /.

#Hecho por Mayco Costa Bustamanter

echo "Aqui muestra el directorio / y los permisos"
#ls -l ; pwd
#cambiar de directorio
directorio=`pwd`
if [ $directorio = "/" ] ; then
 	echo "Si estas en el directorio $directorio "
        ls -l 
else
 	echo "No estas en el directorio $directorio "
fi
