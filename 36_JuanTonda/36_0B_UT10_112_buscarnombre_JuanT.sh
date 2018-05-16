# jt. octubre 2017    
# tipo de archivo: 0B 
# 12. Tengo un fichero personajes.gz que contiene dos columnas 
# <país de procedencia>. Se desea saber el nombre de los ciudadanos de
# “islandia”. Ejemplo de fichero:
# Juan holanda
# Pedro islandia
# Ramiro rusia
# Josue dinamarca
# keywords: zcat (visualizar archivos "gzip"
# pendiente revisión una version con parametros
zcat personajes.gz | grep "Islandia"
 
