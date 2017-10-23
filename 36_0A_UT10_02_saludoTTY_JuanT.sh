# jt. octubre 2017 
# tipo de archivo: 0A
# 2. Script que lo salude con su nombre completo cada vez que ingrese en
# la consola tty1 como usuario que creado con su nombre.
# 
# keyword: estructura de control IF
#
#
tipo_mensaje() {
  echo "Resultado de la ejecución del script " $mensaje
 }

clear
terminal=`tty`

# comprobar el terminal
 if [ $terminal = "/dev/tty1" ]; then
     mensaje=" Hola USUARIO: $LOGNAME " 
   else 
     mensaje=" No estoy en la terminal tty1. Estoy en $terminal "   
 fi 
   tipo_mensaje  

