#Redactar un script que pida una contraseña. Si la contraseña es incorrecta mostramos el mensaje de contraseña incorrecta.
#Si la contraseña es correcta, es decir, iesleonardo, el script debe mostrar la configuracion tcp/ip del equipo y
#posteriormente guardarla en un fichero llamado mytcpip.txt
#!/bin/bash
clear
read -p "Por favor introduzca la contraseña:" pass
if [ $pass = "iesleonardo" ]; then
                echo "Contraseña correcta se mostrara la configuracion TCP/ip del equipo"
                ifconfig
                echo "Se procede a recoger dicha informacion en el fichero `ifconfig >> mytcpip.txt` ifconfig >> mytcpip.txt"
        else
                echo "Contraseña incorrecta por favor intentelo de nuevo"
fi
