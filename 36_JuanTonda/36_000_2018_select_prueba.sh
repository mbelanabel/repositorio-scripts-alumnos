# jt. 2018 (encontrado en febrero)
# referencia de select en ...https://www.infor.uva.es/~jjalvarez/asignaturas/fundamentos/practicas_linux/SH.pdf
#
# para sacar un listado con números en SELECT, pero con más texto para la opción
# tal y como se aprecia (ejecutar en terminal)
# 
# en pantalla saldrá 1. Ver contenido ....
#                    2. Salir 
# tput cup (para colocar ; habría que seguir investigando para trabajar el diseño de forma más adecuada) 
#

clear
select respuesta in "Ver contenido directorio actual" \
 "Salir"
do
tput cup 5 10
echo "Ha seleccionado la opcion:" $respuesta
case $REPLY in
1) ls .
;;
2) break
;;
*)
echo "incorrecta"
;;
esac
done
