#!bin/bash 
# JUAN TONDA. Mayo 2018 
# cambiar el tamaño de un disco virtual
# solicita el fichero que queremos cambiar

# vboxmanage modifyhd [fichero_vdi] --resize [tamaño]
#  fichero_vdi-> sustituir por el que correspondar a extender
#  tamaño -> p.e. (para 40 GB.) - 40960  (indicado en bytes)
clear

# solicitamos el fichero que queremos cambiar
 echo " "
 read -p " ¿ Qué archivo VDI quieres cambiar su UUID  ?  : " archivo

 echo " "
 read -p " ¿ Tamaño de ampliación  (indicado en bytes 40GB - 40960) ? : " cantidad

 if test -f $archivo; then
  vboxmanage modifyhd $archivo --resize $cantidad
 else 
  echo "No existe el archivo VDI: " $archivo
 fi

 




