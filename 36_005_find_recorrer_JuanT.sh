# Abril 2013
# PRÁCTICA: Linux (script15.sh)
# NOMBRE: Juan Tonda
#
# Shell Script
#
# (utilizar FIND para verificar)
# 1.- Cree un directorio "copro" (en el directorio por defecto)
# VERIFICAR QUE SE HA CREADO
# 2.- Cree los ficheros p1.kk, p2.kk, p3.kk, p4.kk y p5.kk (en el directorio por defecto)
# VERIFICAR 
# 3.- Cree los ficheros p1.pis, p2.pis, p3.pis, p4.pis y p5.pis (en el directorio por defecto)
# VERIFICAR
# 4.- Copie los ficheros .kk en el directorio "copro"
# VERIFICAR
# 5.- Mover los ficheros .pis en el directorio "copro"
# VERIFICAR
# 6.- Actualizar los ficheros (fecha)
# VERIFICAR CON "ls"
# 7.- Borre ficheros .kk del directorio por defecto (-ok CONFIRMA)
# VERIFICAR   
# 8.- Copie los ficheros .pis en el directorio por defecto
# VERIFICAR
# 9.- Borrar todo lo que se ha creado
# COMPROBAR
# ***********************************************************************************************************
# rev. octubre 2017
# anotación: (no en ejecución) una opción para recorrer por todos los directorios
# p.e. buscando el fichero "my*.cnf" (todo lo que empiece por "my" y acabe ".cnf")
#    ls -R -> recorrer "recursivamente" desde donde estemos todo el directorio 
#    find -name "--- archivo a buscar ---"
#         -print (para visualizar el archivo encontrado)
#         -exec grep "bind" {} buscar dentro del archivo encontrado "bind"
#         \;   cerrar la sentencia
# !! nos da muchas posibilidades !!
# puesta en marcha.  
# *********************************************************************
#   ls -R | find -name "my*.cnf" -print -exec grep "bind" {} \;
# *********************************************************************
#
#
#
clear
# 1.-
mkdir copro
find . -name "copro"
# 2.- y 3.-
# se coloca el contador, para que trabaje con bastante archivos, y
# haya una única ejecución de creación de archivos.
i=0
while test $i -lt 5
do
 for i in `expr $i + 1`
  do
   touch p$i.kk p$i.pis  
  done
done
# 4.-
find . -name "*.kk" -exec cp {} copro \;
find . -name "*.kk"
# 5.-
find . -maxdepth 1 -name "*.pis" -exec mv {} copro \;
find . -name "*.pis"
# 6.-
find . -name "*.kk" -exec touch {} \;
find ./copro -name "*.pis" -exec touch {} \;
find . -name "*.pis"
# 7.-
find . -name "*.kk" -ok rm {} \;
find . -name "*.kk"
# 8.-
find ./copro -maxdepth 1 -name "*.pis" -exec cp {} . \;
# 9.-
find . -name "*.kk" -ok rm {} \;
find . -name "*.pis" -ok rm {} \;
rmdir copro
find . -name "*.kk" -o -name "*.pis"

