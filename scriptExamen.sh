#! /bin/bash
#Author: Asiel Ramirez Carral.
#Revision: Diego Muñoz-Reja Armida.
#KeyWords: echo, if, else read, then,fi.

clear

#Introducimos los datos en el script.

echo "El primer equipo es: "
read equipo1
echo "El segundo equipo es: "
read equipo2
echo "Los goles del primer equipo son: "
read goles1
echo "Los goles del segundo equipo son: "
read goles2

#Mandamos los datos a un archivo de texto

echo $equipo1:$goles1:-:$equipo2:$goles2 >> acta.txt

#Combinando dos if podemos preguntar si el primer equipo es el
#Atletico, en caso de que no sea asi, preguntamos al si
#el segundo equipo es el atletico. En caso de que alguno de los
#dos equipos sea el Atletico, mostrara el mensaje por pantalla de
#"ser campeon es una actitud" en caso de que ningun equipo sea el
#Atletico, mostrara el texto de "No hay Atletico :(".

if [ "$equipo1" == "Atletico" ]; then

		echo "Ser un campeon no es una meta es una actitud"

	else
		if [ "$equipo2" == "Atletico" ]; then

		echo "Ser un campeon no es una meta esuna actitud"

		else

		echo "No hay atletico :("

		fi
fi
