#script si es dia 24 de octubre y te felicita
#/bin/bash

fecha=$(date | cut -c 5-10)
#cumple=$(echo "oct 24")
if [[ $fecha = "oct 24" ]];
then
echo "Feliz cumpleaños"
else 
echo "Buen día, hoy será el cumpleaños de otro"
fi
