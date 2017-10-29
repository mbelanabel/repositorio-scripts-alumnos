#Redactar un script que compruebe si el usuario roberto esta conectado al siste$
#!/bin/bash
read -p "introduzca el usuario que desea consultar:" usr
who -a | grep $usr
if [ $? -eq 0 ]
 then
    echo "Hola $usr Hoy tienes una reunion a las 19h"
  else
    echo "Hola $usr"
fi
