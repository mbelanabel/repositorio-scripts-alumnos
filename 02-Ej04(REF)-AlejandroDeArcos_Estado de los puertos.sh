#Redacta un script que pida una contraseña. Si la contraseña es correcta, leo$
#mostramos el mensaje de contraseña correcta y muestra el estado de los puert$
#y despues guarda esta información en un fichero llamado puertos.txt.
#si la contraseña es incorrecta que muestre un mensaje de error
#!/bin/bash
clear
read -p "Por favor introduzca la contraseña:" pass
if [ $pass = "iesleonardo" ]; then
                echo "Contraseña correcta se mostrara el estado de los puerto$
                netstat -a
                echo "Se procede a recoger dicha informacion en el fichero `n$
        else
                echo "Contraseña incorrecta por favor intentelo de nuevo"
fi
