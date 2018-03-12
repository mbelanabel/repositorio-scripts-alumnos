# 2018
# jt. partiendo de Anabel
# 04 - Ídem y que además verifique que como mucho hayamos introducido 3 parámetros en cuyo caso se mostrará el siguiente
# mensaje de error “No puedes introducir más de 3 parámetros.” y devolverá un código de retorno igual a 2 ('adios04').
#!/bin/bash
dir_actual=`pwd`
function error() {
# muestra un mensaje de error
echo $1
echo "exit $2"
read pause
}
total=$#
echo $#
if test $total -eq 0; then
 error "Debes introducir al menos un parámetro." 1
 else
  if test $total -gt 3 ; then
    error "No puedes introducir más de 3 parámetros." 2
   else  
    echo "Hasta luego $@"
  fi
fi
cd $dir_actual
