#Redacta un script que pida una contraseña. Si la contraseña es incorrecta
#mostramos el mensaje de Contraseña incorrecta. Si la contraseña es correcta
# es decir, iesleonardo, el script debe mostrar la configuracion tcp/ip del 
#equipo y posteriormente guardarla en un fichero llamado mytcpip.txt

#!/bin/bash

PASS="iesleonardo"
echo contraseña
 read contraseña
  if [ $contraseña = $PASS ]
    then
      echo "ifconfig" >> /home/alumno/mytcpip.txt
  else [ $contraseña != $PASS ]
      echo "Contraseña incorrecta"
  fi
