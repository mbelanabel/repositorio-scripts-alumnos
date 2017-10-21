#Ejercicio a modificar/terminar por los alumnos
# versión del profesor (revisión Juan T.)
# recorrido por el archivo de contraseñas para averiguar algoritmo
# hay otro archivo creado que averirgua el tipo de algoritmo utilizado
# en la contraseña encriptada 
# !/bin/bash
# falta la primera contraseña (hay que controlar por un IF ??)
# CONTABILIZACIÓN DEL FOR (de Anabel)
# hay otra versión sin necesidad de case y contadores
# utilizando "grep"
# keywords: while (la variable va comprobando el contenido del archivo)
#           y = se guarda el contenido del campo2 para averiguar el
#               algoritmo de las contraseñas
#
unset usuario
unset cuent
sudo cat /etc/shadow > .shadow
usuario=( "Encriptada" "Cuenta desactivada" "Contraseña de grupo" "Expirada")
cuent=(0 0 0 0)
while read var
do
echo $var > x 
y=`cat x | cut -f2 -d":"`
# sustitución del if por un case; en select se utilizaría "if" igualmente
case $y in
     "!") cuent[1]=`expr ${cuent[1]} + 1`
        ;;
     "*")
        cuent[2]=`expr ${cuent[2]} + 1`
        ;;
    "!!")
        cuent[3]=`expr ${cuent[3]} + 1`
        ;;
       *)
        cuent[0]=`expr ${cuent[0]} + 1`;;
esac
done < .shadow

##Ahora muestra el resultado de cada uno de los algoritmos 
clear
echo "** Resultados de algoritmos de contraseñas en shadow **"
# recorrido por los 2 arrays para mostrar el contenido 
#
for ((i=0;i<${#usuario[@]};i++))
 do
   echo ${usuario[i]} ${cuent[$i]}
 done

