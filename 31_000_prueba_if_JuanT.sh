# jt. Octubre 2017 (prueba14.sh)
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
