#/bin/bash
#Script pide contraseña al usuario
echo "Bienvenido, para ver configuración de red escriba contraseña"

	read -p "Contraseña: " pass


	if [ $pass = "iesleonardo" ]; then
	echo "Correcto"
	ifconfig > mytcpip.txt
	echo "Configuración guardada en el fichero mytcpip.txt"
else
	echo "error"
fi
