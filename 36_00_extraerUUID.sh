# jt. Mayo 2018
# extraer UUID de un dispositivo indicadp
# visualizar linea posible para automontar en el fichero fstab
#
read -p " Punto montaje _ " punto_montaje
read -p " Dispositivo _ " dispositivo
id=`blkid $dispositivo | cut -d\" -f2`
tipo=`blkid $dispositivo | cut -d\" -f4`
echo "UUID=$id $punto_montaje $tipo defaults 0 0"
