# 2018
# jt. partiendo de Anabel
# 06 - Ídem y que además verifique que sean usuarios conectados al sistema en cuyo caso se mostrará el siguiente mensaje de error
# “El usuario $NOMBRE_DE_USUARIO no está conectado.” y devolverá un código de retorno igual a 3 ('adios06').
#!/bin/bash
function ayuda() {
cat << DESCRIPCION_AYUDA
SYNOPIS
$0 USUARIO
DESCRIPCION
Muestra "Hasta luego [USUARIO1 USUARIO2 USUARIO3]".
CODIGOS DE RETORNO
0 Si no hay ningún error
1 Si no se ha introducido ningún parámetro.
2 Si se ha introducido mas de 3 parametros
3 El usuario no esta conectado
DESCRIPCION_AYUDA
}
function error() {
echo $1
# muestra un mensaje de error
ayuda
# muestra la ayuda
echo exit $2
# sale con el código de error
}
usuarios_conectados=0
NOMBRE_DE_USUARIO=$1
 if [ -z $@ ];then
  error "Debes introducir al menos un parámetro." 1
    elif [ -z $4 ];then
     usuarios_conectados=`who | cut -d" " -f1`
     verificacion=`echo $usuarios_conectados | grep $1`
    if [ "$verificacion" == "$1" ];then
      echo "El usuario $NOMBRE_DE_USUARIO esta conectado."
     else
      error "El usuario $NOMBRE_DE_USUARIO no esta conectado" 3
    fi
   echo "Hasta luego $@"
  else
   error "No puedes introducir más de 3 parámetros." 2
 fi
#fi
