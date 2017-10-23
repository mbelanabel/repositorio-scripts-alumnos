#/bin/bash
#Script pide contraseña al usuario
#Revisado por Andrea_Rioja y Patricia_Davila,Correcto
#Palabra clave: if (Mira si se cumple la condicion)

echo "Bienvenido, para ver configuración de red escriba contraseña"

	read -p "Contraseña: " pass


if [ $pass = "iesleonardo" ]; then
	echo "Correcto"
	ifconfig > mytcpip.txt
	echo "Configuración guardada en el fichero mytcpip.txt"
	cat mytcpip.txt
else
	echo "error contraseña incorrecta"
fi
