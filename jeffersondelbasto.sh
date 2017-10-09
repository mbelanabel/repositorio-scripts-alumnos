#bin/bash 
#autor Jefferson del basto
echo "menu"
echo "________________________"
echo "1) Crea un grupo"
echo "2) Crea un usuario"
echo "3) Saber cuantos ficheros hay en /mnt"
echo "4) Listar los ficheros y 10 segundos depues,meter ese listado en un fichero"
echo "5) Salir "
echo "Introduzca una opcion "
read opcion
case $opcion in 
1) echo "las variables del sistema son"
adduser
;;
2) echo "Crea un grupo"
addgroup 
;;
3) echo "Saber cuantos fichero hay en /mnt"
ls -l | wc -w /mnt
;;
4) echo "Listar los ficheros y 10 despues meter ese listado en un fichero"
ls /home/alumno| sleep 10 | > /home/alumno/ejercicio1
;;
5) echo "Salir"
exit
;;
*) echo "opcion incorrecta"
;;
esac
