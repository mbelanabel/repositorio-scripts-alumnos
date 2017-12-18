#!/bin/bash
#Adrián Jarne
#Script que comprueba si una contraseña dada por el usuario es correcta, si es asi, vuelca la configuración de las interfaces de red en un fichero.
#Elementos clave: date, calculos fechas
nombre=Adrián
echo "Mi nombre es $nombre"
cal 10 1989
dia=$(date --date "Oct 3, 1989" +%A) #Creo la variable dia en la que guardo el calculo del dia de la semana (--date -> meter una fecha en concreto, +%A -> formato de fecha que muestra dia de la semana)
echo "Nací el $dia"
