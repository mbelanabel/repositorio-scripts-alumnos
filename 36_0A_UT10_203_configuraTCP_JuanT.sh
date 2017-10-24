# jt. octubre 2017    
# tipo de archivo: 0B 
# 3. Redacta un script que pida una contraseña. Si la contraseña es incorrecta mostramos el mensaje de
# “Contraseña incorrecta”. Si la contraseña es correcta, es decir, iesleonardo, el script debe mostrar la
# configuración tcp/ip del equipo y posteriormente guardarla en un fichero llamado mytcpip.txt.
# keyword: 

password="iesleonardo"

clear
read -p "Introduce la contraseña ... " contrasena
if [ $contrasena = "$password" ]; then
  echo "Bienvenido. Has introducido la contraseña"
  echo "Configuración de red del equipo"
  ifconfig
  ifconfig > mytcpip.txt
 else
  echo "Lo sentimos. No has introducido la contraseña adecuada"
fi


