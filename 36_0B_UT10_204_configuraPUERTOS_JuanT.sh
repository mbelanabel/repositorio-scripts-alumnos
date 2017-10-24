# jt. octubre 2017    
# tipo de archivo: 0B 
# 4. Redacta un script que pida una contraseña. Si la contraseña es correcta, leonardo, mostramos el mensaje
# de “Contraseña correcta” y muestra el estado de los puertos y despues guarda esta información en un
# fichero llamado puertos.txt. 
# keyword: 

password="leonardo"

clear
read -p "Introduce la contraseña ... " contrasena
if [ $contrasena = "$password" ]; then
  echo "Bienvenido. Has introducido la contraseña correcta"
  echo "Estado de los puertos"
  netstat -ltn
 else
  echo "Lo sentimos. No has introducido la contraseña adecuada"
fi


