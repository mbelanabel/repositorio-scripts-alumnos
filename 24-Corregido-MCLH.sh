#Redacta un script que pida una contraseña. Si la contraseña es correcta, leonardo, mostramos el mensaje de contraseña correcta y muestra el estado de los puertos y despues guarda esta informacion en un fichero llamado puertos.txt. Si la contraseña es incorrecta que muestre un mensaje de error.
#Héctor de la Cruz
#Revision y comentarios por Men Cheung, no errores.
#!/bin/bash 
# Definimos la contraseña en una variable
valid_password="leonardo" 
#Comparamos la contraseña introducida en el read con la palabra introducida en el valid_password. Si es correcta ejecuta el then y si no es correcta el else
echo "Introduzca contraseña"
read contrasena
if [ "$contrasena" == "$valid_password" ] 
then
		echo "Contraseña correcta"
		echo "Información sobre los puertos"
		netstat
		netstat > puertos.txt
		
else
	echo "Contraseña incorrecta"
fi
