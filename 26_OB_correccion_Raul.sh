#Redacta un script que pida una contraseña. Si la contraseña es incorrecta
#mostramos el mensaje de Contraseña incorrecta. Si la contraseña es correcta
# es decir, iesleonardo, el script debe mostrar la configuracion tcp/ip del 
#equipo y posteriormente guardarla en un fichero llamado mytcpip.txt
#!/bin/bash
PASS="iesleonardo"
read -s -p "contraseña: " micontrasena
if [ "$micontrasena" == "$PASS" ]
then
echo "configuracion tcpip"
ifconfig
 >> /home/alumno/mytcpip.txt
else
echo "contraseña incorrecta"
fi
 
