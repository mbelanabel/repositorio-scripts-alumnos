# 2018
# jt. partiendo de Anabel
# 09 - Realizar un script llamado 'rectangulo' que calcule el área de un rectángulo, pasándole la base y la altura por parámetro (a=b*h).
# Verificará que sólo se le introduce 2 parámetros y en caso de error mostrará el siguiente mensaje de error “Hay que introducir 2
# parámetros.” y devolverá un código de retorno igual a 1.
#!/bin/bash
#script que calcula la superficie de un rectangulo
#s=b*a
function error() {
# muestra un mensaje de error
echo $1
# sale con el código de error
echo exit $2
}
if [ $# -ne 2 ]; then
    error "Hay que introducir 2 parámetros." 1
   else
    echo $1 $2 | awk '{ print $1*$2 }'
fi
