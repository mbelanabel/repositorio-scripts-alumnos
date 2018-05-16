# 
# jt. Mayo 2018
# SAMBA (básicamente modifica fichero /etc/samba/smb.conf), con parametros introducidos
# ojo: los cambios se realizan sobre un fichero de copia 
# falta analizar parametros introducidos (p.e. verificar que existe el punto de montaje)
#*** SERVIDOR 
#(sudo su) [equipos en red interna]
#_ apt-get install samba samba-common smbclient python-glade2 (INSTALACION)
#_ service smbd status
#_ vi /etc/samba/smb.conf (copiar y modificar)
clear
cp /etc/samba/smb.conf /etc/samba/smb.conf.copia
# linea=`cat -n /etc/samba/smb.conf.copia | grep "  server role =" | cut -f1`
# comentada, por un posible uso futuro 
#
echo " ** CONFIGURACIÓN **"	
echo "- PREVIAMENTE disponer del punto de montaje "
echo " * modificaciones en el archivo * "
read -p " Indicar nombre del grupo _ " n_workgroup
read -p " Indicar nombre del equipo en red _ " n_netbios
read -p " Indicar nombre del recurso _ " n_recurso
read -p " Indicar punto de montaje _ " n_path 
read -p " Indicar comentario _ " n_comment
read -p " Indicar solo lectura (yes|no)  _ " n_lectura
 if [ $n_lectura = "yes" ]; then
   n_escritura="writeable = no " 
  elif [ $n_lectura = "no" ]; then
   n_escritura="writeable = yes"
 fi
echo "Fichero de configuración ..."
echo " workgroup = $n_workgroup "
echo " netbios name = $n_netbios "
echo "Resultado de la configuración ... (recurso compartido) "
echo " [ $n_recurso ]"
echo " comment = $n_comment "
echo " path = $n_path"
echo " guest ok = yes"
echo " public = yes"
echo " browseable = yes"
echo " read only = $n_lectura"
echo " writeable = $n_escritura"
#
# n_linea=`echo $linea | cut -c1-3`
#
# sed -i "${n_linea}a  security = user " /etc/samba/smb.conf.copia
# en estudio
# 
# localizamos la linea de server role, y se sustituye añadiendo una línea 
# nueva (security = user)
#
sed -i 's/\(.*\)server role =\(.*\) / server role = standalone server\n security = user\n# /' /etc/samba/smb.conf.copia
n_workgroup="workgroup = $n_workgroup "
#
# localizamos workgroup = linea com todo el patrón completo
# y sustituimos la línea con el patrón nuevo
#
sed -i "s/\(.*\)workgroup =\(.*\) / ${n_workgroup} \n netbios name = ${n_netbios}\n# /" /etc/samba/smb.conf.copia
echo " " >> /etc/samba/smb.conf.copia
echo "# Nuevo recurso compartido " >> /etc/samba/smb.conf.copia
echo " [ $n_recurso ]" >> /etc/samba/smb.conf.copia
echo " comment = $n_comment " >> /etc/samba/smb.conf.copia
echo " path = $n_path" >> /etc/samba/smb.conf.copia
echo " guest ok = yes" >> /etc/samba/smb.conf.copia
echo " public = yes" >> /etc/samba/smb.conf.copia
echo " browseable = yes" >> /etc/samba/smb.conf.copia
echo " read only = $n_lectura" >> /etc/samba/smb.conf.copia
echo " writeable = $n_escritura" >> /etc/samba/smb.conf.copia
echo " comment = $n_comment " >> /etc/samba/smb.conf.copia
echo " comprobar contenido en el fichero /etc/samba/smb.conf.copia" 
# mount -a 
# mount
# mount -t cifs //ip_recurso punto-montaje

