# información de arrays: http://www.linuxtopia.org/online_books/advanced_bash_scripting_guide/arrays.html
# 
# pruebas para mejorar la entrada de datos con array
# jt. Octubre 2017. v.1.0
#
# ojo: *** NO ESTÁ TERMINADO, ADEMÁS DE ALGÚN ERROR QUE DA Y AUNQUE EN INTERNET SE ENCUENTRA CORRECTO
# ?? VERSIÓN LINUX, ¿¿ está preparado para otro lenguaje, o qué ocurre con ello ?
#
#
num_rows=3
num_columns=2
declare -A matrix #da un error en este comando xxxx
for ((i=1;i<=num_columns;i++)) do         # se mueve por las columnas
    for ((j=1;j<=num_rows;j++)) do        # se mueve por las filas
        matrix[$i,$j]=$RANDOM             # saca el aleatorio
        echo $i $j ... ${matrix[$i,$j]}   # imprimo valores
    done
done
# presentacion de los datos
# se introduce datos y sale otro resultado !!
echo "**** RESULTADO FINAL ***** " # no es el resultado que debería dar  
# parece como sí pasará de la tabla bidemensional (en este caso array)
for ((j=1;j<=num_columns;j++)) do
    for ((i=1;i<=num_rows;i++)) do
        echo $j $i ${matrix[$i,$j]}
    done
done
