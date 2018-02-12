# jt. https://www.infor.uva.es/~jjalvarez/asignaturas/fundamentos/practicas_linux/SH.pdf
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
