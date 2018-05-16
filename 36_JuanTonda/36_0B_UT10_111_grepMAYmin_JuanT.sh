# jt. octubre 2017    
# tipo de archivo: 0B 
# 11. Script que muestre las líneas de un fichero cualquiera que contengan
# las palabras uno y dos sin importar sin van en mayúsculas y
# minúsculas.
# keywords: grep -iE (expresión regular extendida y sensible a mayúsculas / minúsculas ) 
# cat archivo.txt - se irá sustituyendo por el que se quiera comprobar 
# pendiente revisión una version con parametros
cat archivo.txt | grep -iE "uno|dos" 
