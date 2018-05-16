# creacion con solicitud de parametros de NFS
# JT. Mayo 2018
clear
echo "*** SERVIDOR NFS ***"
x=1
p=0
totalIP=" "
ip=" "
# apt-get install nfs-kernel-server nfs-common rpcbind 
cat /proc/filesystems | grep "nfsd"
service nfs-kernel-server status
# cp /etc/exports /etc/exports.copia
echo "Modificación del fichero /etc/exports"
echo "Solicitud de parametros "
read -p "Punto de montaje (previamente creado) _ " punto
while [ x=1 ]
do
read -p "ip o subred accesible                 _ " ip
read -p "tipo de acceso (ro|rw)                _ " tipo
read -p "¿alguna IP más ? (1.Si; 2.No) " op
totalIP="$totalIP$ip($tipo) "
   if [[ $op = "1" ]]
    then
     x=1 
   elif [[ $op = "2" ]]
    then
     x=0
     break
   fi
   if [ $tipo = "rw" ]; then  
    p=1
   fi
done
#  echo $totalIP
#  vi /etc/exports (copiar y modificar) previamente "copiar"
# punto-montaje ip_accesible(ro|rw) rango_ip/máscara(ro|rw)
echo "$punto $totalIP | tee -a /etc/exports"
 if [ $p = 0 ]; then 
  echo chmod 755 $punto
   else
  echo chmod 777 $punto
 fi
 echo chown nobody:nogroup $punto
 echo service nfs-kernel-server restart
 echo cd $punto
 if [ $p = 0 ]; then
  echo chmod 644 archivos 
   else
  echo chmod 666 archivos
 fi
# echo "*** CLIENTE ***"
# echo "en Linux"
# vi /etc/fstab (copiar y modificar) previamente "copiar"
# ip:recurso punto-montaje (ro rw)
# Windows
# activar característica cliente NFS
# mount -a anon,noblock,r,casesensitive ip:recurso * (símbolo sistema como "administrador")
# (ojo: rango de IP’s (subred), en fichero de configuración)

