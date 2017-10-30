#script si es dia 24 de octubre y te felicita
#/bin/bash

fecha=$(date | cut -c 9-10)
#cumple=$(echo "oct 24")
if [[ $fecha = "24" ]];
then
echo "Feliz cumpleaños"
else 
echo "Buen día, hoy será el cumpleaños de otro"
fi
