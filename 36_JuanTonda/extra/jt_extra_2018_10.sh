# 2018
# jt. partiendo de Anabel
# 10 - Realizar un script llamado 'triangulo' que calcule el área de un triángulo, pasándole la base y la altura por parámetro
# (a=(b*h)/2). Verificará que sólo se le introduce 2 parámetros y en caso de error mostrará el siguiente mensaje de error “Hay que
# introducir 2 parámetros.” y devolverá un código de retorno igual a 1.
#!/bin/bash
#script que calcula la superficie de un trianngulo
#s=b*a*0.5
function error() {
# muestra un mensaje de error
echo $1
# sale con el código de error
echo exit $2
}
if [ $# -ne 2 ]; then
 error "Hay que introducir 2 parámetros." 1
   else
 echo $1 $2 | awk '{ print $1*$2*0.5 }'
fi
