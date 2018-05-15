# jt. Mayo 2018
# ficheros de cuotas para /etc/fstab, de los dispositivos indicados
# extraer UUID de un dispositivo indicadp
# visualizar linea posible para automontar en el fichero fstab
#
clear
#sudo su
numero=0
dispositivos=" "
opcion="S"
echo " Preparar archivo fstab "
cp /etc/fstab /etc/fstab.copia_cuotas
while test $opcion = "S"
 do
  numero=`expr $numero + 1` 
  echo " Dispositivo número _ " $numero
  read -p " Punto montaje (/media/...) _ " punto_montaje
  grep "$punto_montaje" /etc/fstab > x 
  if test -s x; then
   echo " Punto de montaje $punto_montaje ya realizado en /etc/fstab" 
  else
   read -p " Dispositivo (/dev/...) _ " dispositivo
   read -p " Nivel de cuota (usrquota,grpquota) _ " nivel_cuota
   id=`blkid $dispositivo | cut -d\" -f2`
   tipo=`blkid $dispositivo | cut -d\" -f4`
   echo "UUID=$id $punto_montaje $tipo defaults,$nivel_cuota 0 0" >> /etc/fstab 
  fi
  read -p " Algún dispositivo más (S/N)? " opcion 
 done
 echo " ------------------ "
 echo " Comandos de cuotas "
 echo " ------------------ "
 echo " " 
 echo " ASIGNACION DE CUOTAS (usuario o grupo) "
 echo " $_ edquota -u usuario -g grupo"
 echo " CREACION DE CUOTAS (crear usuario grupo) "
 echo " $_  quotacheck -cug punto-montaje"
 echo " * depende del fichero /etc/fstab "
 echo " --------------------------- "

