#!/bin/bash
# Juan Tonda. oct.2017
# mostrar resultados de shadow (valor de tipo de contraseñas)
# keywords: cut -f2 -d":" (delimitar contraseña)
#           grep "buscar tipo de contraseña"
# guardar en un archivo y contar con una variable
#
cat /etc/shadow | cut -f2 -d":" > archivo.txt 
cat archivo.txt | grep "\$6" | wc -l >  e
enc=`cat e`
cat archivo.txt | grep "!" | wc -l > e
des=`cat e`
cat archivo.txt | grep "!!" | wc -l > e
exp=`cat e`
cat archivo.txt | grep "*" | wc -l > e
gru=`cat e`
clear
echo "** RESULTADOS **"
echo "Encriptados ....... " $enc
echo "Deshabilitados .... " $des
echo "Expirados ......... " $exp
echo "Grupo ............. " $gru
