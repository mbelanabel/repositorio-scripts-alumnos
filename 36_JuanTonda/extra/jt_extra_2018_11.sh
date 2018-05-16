# 2018
# jt. partiendo de Anabel
# 11 - Realizar un script llamado 'area' que calcule el area de un rectángulo o de un triángulo llamando a cada uno de los scripts
# anteriormente creaados ('09 rectangulo' y '10 triangulo'). Verificará que sólo se le introduce 2 parámetros y en caso de error mostrará el
# siguiente mensaje de error “Hay que introducir 3 parámetros.” y devolverá un código de retorno igual a 1. La synopsis del script
# será ./area rectangulo|triangulo base altura. Si se le pasa una opción distinta a rectangulo o triangulo mostrará el siguiente mensaje
# de error “La opción '$OPCION_INTRODUCIDA' es inválida.” y devolverá un código de retorno igual a 2.
#! /bin/bash
function ayuda() {
cat << DESCRIPCION_AYUDA
SYNOPIS
$0 USUARIO
DESCRIPCION
Devuelve el area de un triangulo o de un rectangulo
CODIGOS DE RETORNO
0 Si no hay ningún error
1 Si se ha introducido un numero distinto de 3 parametros
2 Si no se introduce correctamente la sintaxis
DESCRIPCION_AYUDA
}
function error() {
# muestra un mensaje de error
echo $1
# muestra la ayuda
ayuda
# sale con el código de error
echo exit $2
}
if [ $# -eq 3 ];then
case $1 in
triangulo)
. 10.sh $2 $3
;;
rectangulo)
. 09.sh $2 $3
;;
*)
error "La sintaxis es area triangulo|rectangulo base altura." 2
;;
esac
else
error "Hay que introducir 3 parámetros." 1
fi
