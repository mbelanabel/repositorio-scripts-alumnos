# jt. Octubre 2017
# !/bin/bash
# prueba01.sh 
# Redacta un script que compruebe si el usuario actual del sistema es un usuario llamado roberto, si es así
# salúdalo y recuérdale que tiene una reunión hoy a las 19 h, si no es roberto, saluda a la persona conectada.   
usuario="roberto"
if [ $usuario = "roberto" ]; then
  echo "Recordatorio !!!"
  echo "REUNIÓN A LAS 19h."
 else 
  echo "BIENVENIDO $usuario" 
 fi


