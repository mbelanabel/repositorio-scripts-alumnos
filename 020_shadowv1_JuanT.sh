#!/bin/bash
# Juan Tonda. oct.2017
# mostrar resultados de shadow (valor de tipo de contraseñas)
# visualizando el total de cada una de ellas
# utilización de grep, junto con cat y wc -l (contar líneas)
# keywords: cut -f2 -d":" (delimitar contraseña)
#           grep "buscar tipo de contraseña"
# guardar en un archivo y contar con una variable
#
# si se hace en una misma instrucción no se corresponde con lo real
# explicación: (1 por cada tipo de contraseña)
# 1.- extrae en una archivo el campo de las contraseñas
# 2.- de ese archivo, se extrae a otro archivo para contar el
#  número de contraseñas de ese tipo
# las variables se pueden comprobar por el resumen visualizado en pantalla
# existe unas variables que realizan la totalidad (como auxiliares)
#
cat /etc/shadow | cut -f2 -d":" > archivo.txt 
cat archivo.txt | grep "\$6" | wc -l >  e
enc_4=`cat e`
cat archivo.txt | grep "\$1" | wc -l >  e
enc_1=`cat e`
cat archivo.txt | grep "\$2" | wc -l >  e
enc_2=`cat e`
cat archivo.txt | grep "\$5" | wc -l >  e
enc_3=`cat e`
enc=`expr $enc_1 + $enc_2 + $enc_3 + $enc_4`

cat archivo.txt | grep "!" | wc -l > e
des=`cat e`
cat archivo.txt | grep "!!" | wc -l > e
exp=`cat e`
cat archivo.txt | grep "*" | wc -l > e
gru=`cat e`
total=`expr $des + $exp + $gru`

clear
tput cup 5 10
echo "** RESULTADOS ** (archivo 'shadow')"
echo " "
echo " *** Encriptados *** (total) " $enc
echo " Tipo de algoritmo utilizado en el encriptado **** " 
echo " MD5 (22 caracteres) .... " $enc_1
echo " blowfish ............... " $enc_2
echo " SHA-256 (43 caracteres)  " $enc_3
echo " SHA-512 (86 caracteres) ." $enc_4
echo " "
echo " *** No encriptados *** (total) " $total 
echo " Deshabilitados .... " $des
echo " Expirados ......... " $exp
echo " Grupo ............. " $gru
echo " "
total=`expr $total + $enc`
echo " TOTAL CONTRASEÑAS (archivo shadow .... ) " $total
echo " "
