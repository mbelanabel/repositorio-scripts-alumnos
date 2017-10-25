#!/bin/bash
# jt. Octubre 2017 (prueba19.sh)
# Objetivo:
# 19.- Script al que le pasamos por parametros el nombre de dos equipos de fútbol y el resultado. Esta
# información debe guardarse en un fichero llamado acta.txt de la siguiente forma:
# equipo1:golesde1:equipo2:golesde2
# Si uno de los equipos es el “Atlético de Madrid” que muestre “Ser campeón no es una meta es una
# actitud”.
# keywords:
#   if (controlar la variable eq1 o eq2, sea A.Madrid
#   read -p (para introducir los valores; sin necesidad de incluir echo)

clear
echo "Introduce datos del partido"
read -p "Equipo 1: " eq1
read -p "Goles (equipo1: $eq1) " gol1
read -p "Equipo 2: " eq2
read -p "Goles (equipo2: $eq2) " gol2
 if [[ $eq1 = "Atlético de Madrid" || $eq2 = "Atlético de Madrid" ]]; then
   echo "ser campeón no es una meta; es una actitud"
 fi
echo $eq1:$gol1:$eq2:$gol2 > acta.txt
