#Script que, por medio de un menú, permitirá:
#1. Crear un grupo.
#2. Crear un usuario.
#3. Saber cuántos ficheros de hay en /mnt.
#4. Listar los ficheros y 10 segundos después, meter ese listado en un fichero.
#5. Salir.
#!/bin/bash
clear
echo __Menú__
echo " "
echo "1) Crear un grupo."
echo "2) Crear un usuario."
echo "3) Saber cuántos ficheros hay en /mnt."
echo "4) Listar los ficheros y 10 segundos después, meter ese listado en un f$
echo "5) Salir."
read -p "elija una opción:" opcion
echo "la opcion elegida es $opcion"
case $opcion in
        1) echo "Se va a crear un grupo"
           read -p "Introduzca el nombre del grupo: " grupo
           sudo addgroup $grupo
           echo "Se ha creado el grupo $grupo en el sistema"
        ;;
        2) echo "Se va a crear un usuario"
           read -p "Introduzca el nombre del usuario: " usuario
           sudo adduser $usuario
           echo "Se ha creado el usuario $usuario en el sistema"
        ;;
        3) echo "Se va a comprobar cuantos ficheros hay en /mnt"
           echo "Hay `ls -al /mnt | wc -l` ficheros en el directorio /mnt"
        ;;
        4) echo "Se van a listar los ficheros para su posterior almacenamient$
           ls -l
           sleep 10
           ls -l >> fichContados.txt
           echo "Información guardada en fichContados.txt"
        ;;
        5) echo "Gracias por usar este script"
        ;;
        *) echo "opción incorrecta"
        ;;
esac
