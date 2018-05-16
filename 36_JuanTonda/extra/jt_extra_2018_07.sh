# 2018
# jt. partiendo de Anabel
# 07 - Realizar un script llamado 'usuarioconectado' que retorne un SI si el parámetro coincide con algún usuario conectado al sistema
# o NO en caso contrario. Verificará que sólo se le introduce un parámetro y en caso de error mostrará el siguiente mensaje de error
# “Este script requiere de un sólo parámetro obligatorio.” y devolverá un código de retorno igual a 1.
#!/bin/bash
usuarios_conectados=0
function ayuda() {
#cat << DESCRIPCION_AYUDA
echo Sintaxis
#SYNOPIS
#$0 USUARIO
#DESCRIPCION
#Muestra "Si" o "No" despues de comparar el usuario con los usuarios conectados.
#CODIGOS DE RETORNO
#0 Si no hay ningún error
#1 Si se ha introducido mas de 1 parametro
#2 si no se ha introducido ningún parámetro.
#DESCRIPCION_AYUDA
}
function error() {
# muestra un mensaje de error
echo $1
# muestra la ayuda
ayuda
# sale con el código de error
echo exit $2
}
total_parametros=$#
if test $total_parametros -eq 0 ; then
 error "Debes introducir al menos un parámetro." 2
  else
   if test $total_parametros -gt 1 ;then
       error "Este script requiere de un solo parametro obligatorio." 1
     else
      echo $1
      usuarios_conectados=`who | cut -d" " -f1`
      echo " ... $usuarios_conectados ..."
      verificacion=`echo $usuarios_conectados | grep $1`
      echo "$verificacion"
       if [ "$verificacion" == "$1" ]; then
         echo "SI" 
        else
         echo "No"
       fi
   fi
fi

