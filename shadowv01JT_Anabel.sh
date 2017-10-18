#Ejercicio a modificar/terminar por los alumnos
# versión del profesor (revisión Juan T.)
# cuenta el mismo número xxxx
#!/bin/bash
# falta la primera contraseña (hay que controlar por un IF ??)
# CONTABILIZACIÓN DEL FOR (de Anabel)
# hay otra versión sin necesidad de case y contadores
# utilizando "grep"
unset usuario
unset cuent
sudo cat /etc/shadow > .shadow
usuario=( "Sin contraseña:" "Cuenta desactivada" "Contraseña de grupo" "Expirada")
cuent=(0 0 0 0)
while read var
do
echo $var > x 
y=`cat x | cut -f2 -d":"`
case $y in
     "!") cuent[1]=`expr ${cuent[1]} + 1`
        ;;
   "*" )
        cuent[2]=`expr ${cuent[2]} + 1`
        ;;
   "!!" )
        cuent[3]=`expr ${cuent[3]} + 1`
        ;;
#   *)
#        cuent[0]=`expr ${cuent[0]} + 1`;;
esac
done < .shadow

##Ahora muestra el cuantas cuentas hay de cada tipo"
for ((i=0;i<${#usuario[@]};i++))
 do
   echo ${usuario[i]} ${cuent[$i]}
 done

