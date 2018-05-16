# RAID (jt. Mayo 2018)
# falta depuración y pruebas reales
# comprobar parametros (existe dispositivo, tipo raid indicado, ...)
# preparar correctamente fstab con la línea del dispositivo
#
# lineas comentadas para ver el proceso en la línea de comandos
#
clear
# solicitud de parametros
echo "#(sudo su) "
echo "** Instalación RAID **"
echo "apt-get install mdadm"
read -p " Tipo RAID (raid0, raid1, ...) _" tipo_raid
echo "modprobe $tipo_raid"
read -p " Dispositivo RAID /dev/_ " dispositivo_raid
echo "mknod /dev/$dispositivo_raid b 9 0 "
echo "** Preparar sistemas de archivos LINUX RAID **"
echo " gdisk (gpt – fd00); fdisk (mbr – fd) "
echo "#_ gdisk -l /dev/ … sistema de archivos; fdisk -l ...."
# 
# creación del array con el número de dispositivos que indiquemos
#
echo "** Creación del array RAID **"
read -p " Indicar número de dispositivos _ " n_dispositivos
numero=0
dispositivos=" "
echo " Numero de dispositivos " $n_dispositivos
while test $numero -lt $n_dispositivos 
 do
  numero=`expr $numero + 1`
  echo " Indicar dispositivo numero " $numero
  read -p " nombre del dispositivo _ (indicar /dev/sd? ... ) " nombre_dispositivo 
  dispositivos="$dispositivos $nombre_dispositivo"
 done
#
# creamos el array con los parametros indicados
#
echo "mdadm --create $dispositivo_raid --level=tipo_raid --devices=$numero $dispositivos"
#
# preparar sistemas archivos y montaje del mismo 
#
echo " ** Montaje **"
echo " preparar sistemas archivos mke2fs -t ext4 /dev/md127 "
read -p " Indicar punto de montaje _" punto_montaje
echo " mkdir $punto_montaje "
echo " mount -t ext4 /dev/md127 $punto_montaje"
#
# preparar fstab para arranque automático del dispositivo array
#
echo "** Automático **"
echo "#_ vi /etc/fstab (copiar y modificar)"
echo "** Averiguar UUID (2 opciones) **"
echo " blkid /dev/md127 (completar con tee -a, para añadir a /etc/fstab"
echo " ls -l /dev/disk/by-uuid"
echo "* Configuración fstab" 
echo "-> uuid punto_montaje ext4 defaults 0 0"
#
# extraer información de UUID y TIPO de ARCHIVOS de dispositivo /dev/md127
# creado por defecto
#
id=`blkid /dev/md127 | cut -d\" -f2`
tipo=`blkid /dev/md127 | cut -d\" -f4`
echo "Línea en fstab"
echo "UUID=$id $punto_montaje $tipo defaults 0 0"
echo " mount -a "    
echo " mount "
echo " mdadm --detail --scan /dev/md127"
