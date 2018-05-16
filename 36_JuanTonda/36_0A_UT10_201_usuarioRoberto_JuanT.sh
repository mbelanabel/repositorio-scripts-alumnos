# jt. Octubre 2017
# !/bin/bash
# prueba01.sh 
# 1. Redacta un script que compruebe si el usuario actual del sistema es un usuario llamado roberto, si es así
# salúdalo y recuérdale que tiene una reunión hoy a las 19 h, si no es roberto, saluda a la persona conectada.   
# keyword: who | podríamos validar con "whoami"

usuario=`who | cut -c1-6`
if [ $usuario = "roberto" ]; then
  echo "Recordatorio !!!"
  echo "REUNIÓN A LAS 19h."
 else 
  echo "BIENVENIDO $usuario" 
 fi


