#script: 
# 
# ADMINISTRACION DE SISTEMAS OPERATIVOS. Shell-Scripting
# Juan Tonda. 2018
#
#

clear
# ejecutar MENU 
#

opcion=0
while [ $opcion = 0 ]; do
clear
echo "** MENU ** Servicios **"
echo " "
echo "1.- NFS"
echo "2.- SAMBA"
echo "3.- RAID"
echo "4.- CUOTAS"
echo "5.- SALIR"
echo " "
read opcion
case $opcion in
  1)
    echo "** NFS **" 
    less nfs.txt 
    read -p "Pulsa una tecla para continuar ..."  
    opcion=0
    ;;
  2)
    echo  "** SAMBA **"
    less samba.txt
    read -p "Pulsa una tecla para continuar ..."  
    opcion=0
    ;; 
  3)
    echo "** RAID **"
    less raid.txt
    read -p "Pulsa una tecla para continuar ..."
    opcion=0
    ;;
  4)
    echo "** CUOTAS **"
    less cuotas.txt
    read -p "Pulsa una tecla para continuar ..."	
    opcion=0
    ;;

  5) 
     ;;
  *)
     echo "LA OPCIÓN SELECCIONADA NO EXISTE. INTRODUCE UNA CORRECTA"
     read pausa
     opcion=0;; 
esac
done 

