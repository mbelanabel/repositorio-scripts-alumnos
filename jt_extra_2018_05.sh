# 2018
# jt. partiendo de Anabel
#05 - Ídem y que además en caso de error muestre una ayuda ('adios05').
#!/bin/bash
function ayuda() {
#cat << DESCRIPCION_AYUDA
cat ayuda.txt
}
function error() {
echo $1 # mensaje de error
ayuda # mensaje de ayuda
echo exit $2 # sale el codigo de error
}
total=$#
if test $total -eq 0 ; then
 error "Debes introducir al menos un parámetro." 1
 else
  if test $total -gt 3 ; then
   error "No puedes introducir más de 3 parámetros." 2
  else
   echo "Hasta luego $@"
  fi
 fi

