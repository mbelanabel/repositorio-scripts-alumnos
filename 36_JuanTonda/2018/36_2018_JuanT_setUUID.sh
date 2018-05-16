#!bin/bash 
# JUAN TONDA. Mayo 2018 
# cambiar el UUID de una máquina virtual
# solicita el fichero que queremos cambiar

# vboxmanage internalcommands sethduuid fichero-disco-virtual
clear

# solicitamos el fichero que queremos cambiar
 echo " "
 read -p " ¿ Qué archivo VDI quieres cambiar su UUID  ?  : " archivo
 if test -f $archivo; then
  vboxmanage internalcommands sethduuid $archivo
 else 
  echo "No existe el archivo VDI: " $archivo
 fi

 




