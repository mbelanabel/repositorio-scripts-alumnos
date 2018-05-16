# prueba01.sh
#jt. Octubre 2017
#script si el usuario actual del sistema es un usuario llamado roberto, 
# hay que probar el comando `who` mas detenidamente y con mas pruebas
usuario=`who | cut -c1-9` 
if [ $usuario = "$saludo" ]; then 
  echo $usuario tienes una reunión a las 19h.
 elif [ $usuario = "juan" ]; then
  echo soy JUAN 
fi 
