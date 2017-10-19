genda de contactos

#Adrián Jarne



#elementos usados: funciones, case, comando sed.

#Creo la función nuevo para recojer los datos del nuevo contacto y redireccionarlos a un fichero de texto.

menu()

{

echo ........MENÚ........

echo "1 Nuevo contacto"

echo "2 Buscar datos de contacto"

echo "3 Modificar datos de contacto"

echo "4 Eliminar datos de contacto"

echo "5 Salir"

read opcion

case ${opcion} in

1) clear

nuevo

;;

2) clear

buscar

;;

3) clear

modificar

;;

4) clear

borrar

;;

5) clear

salir

;;

*) echo "Opción no valida"

menu

;;

esac

}

menu

nuevo()

{

clear

echo "Introduce nombre"

read nombre

clear

echo "Introduce apellido"

read apellido

clear

echo "Introduce telefono"

read telefono

clear

echo "Introduce email"

read email

echo Nombre: "${nombre} - Telefono: ${telefono} - Email: ${email}" >> agenda.txt

menu

}

#Creo la función buscar para almacenar la variable dato qeu introduce el usuario

#y mostrar las coincidencias en el fichero de texto con la variable.

buscar()

{

clear

echo "Introduce los datos a buscar"

read dato

cat agenda.txt | grep ${dato}

menu

}

#El usuario indica el dato que quiere modificar y a continuacion escribe los nuevos datos. Utilizo el comando sed y un if para comprobar si existe el dato.

#No funciona

modificar()

{

echo "Introduce los datos que quieres modificar"

read datos

grep ${datos} agenda.txt

if [ $? -eq 0 ]; then

echo "Introduce los nuevos datos"

read dato2

sed -i 's/"${dato}"/"${dato2}"/g' agenda.txt

else

echo "Ese dato no existe"

fi

menu

}

#La función borrar es parecida a la de modificar, también con el comando sed

borrar()

{

echo "Introduce los datos a borrar"

read dato

sed '/"${dato}"/d' agenda.txt

menu

}

salir()

{

exit

}
