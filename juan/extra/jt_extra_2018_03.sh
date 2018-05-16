# 2018
# jt. partiendo de Anabel
# 03 - Ídem y que además verifique que al menos hayamos introducido un parámetro en cuyo caso se mostrará el siguiente mensaje de
# error “Debes introducir al menos un parámetro.” y devolverá un código de retorno igual a 1 ('adios03').
#!/bin/bash
# Funcion de error que muestra por pantalla el primer parametro y
# devuelve el codigo de error del segundo parametro
dir_actual=`pwd`
function error() {
# muestra un mensaje de error
echo $1
read pause
# sale con el código de error
echo "exit $2"
read pause
}
# Si la variable $@ esta vacia ...
if test -z $@ ; then
# Utilizamos la funcion de error y devolvemos los parametros
error "Debes introducir al menos un parámetro." 1
# ... sino ...
 else
# Muestra por pantalla "hasta luego [lista de parametros]"
echo "Hasta luego $@"
# ...fin de la condicion
fi
cd $dir_actual
