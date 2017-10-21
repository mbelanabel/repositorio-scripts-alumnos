# autor: Juan Tonda
# ejecutar NETSTAT para ver las conexiones en curso
# parametro opcion toma los valores para netstat, según le sea solicitado
# 
while true; do
clear
echo "** NETSTAT (linux) **"
echo "1) Conexiones establecidas"
echo "2) Programas hacia el servidor"
echo "3) Puertos TCP a la escucha"
echo "4) Mostrar todo (escucha y conexiones activas"
echo "5) Puertos UDP a la escucha"
echo "6) Salir"
echo "Selecciona opción:"
read x;
case $x in
1)
 echo "CONEXIONES ESTABLECIDAS" > conexiones
 echo "comando: netstat -tn" >> conexiones
 opcion="tn"
 netstat -tn >> conexiones
 break
 ;;
2)
 echo "PROGRAMAS HACIA EL SERVIDOR" > conexiones
 echo "comando: netstat -tpn" >> conexiones
 opcion="tpn"
 netstat -tpn >> conexiones
 break
 ;;
3)
  echo "PUERTOS TCP (a la escucha)" > conexiones
  echo "comando: netstat -ltn" >> conexiones
  opcion="ltn"
  netstat -ltn >> conexiones
  break
  ;;
4) 
  echo "MOSTRAR TODO" > conexiones
  echo "comando: netstat -atn" >> conexiones
  opcion="atn"
  netstat -atn >> conexiones
  break
  ;;
5)
  echo "UDP a la escucha" > conexiones 
  echo "comando: netstat -lun" >> conexiones
  opcion="lun"
  netstat -lun >> conexiones
  break
  ;;
6)
 exit;;
 esac
done
cat conexiones
echo "fichero 'conexiones' creado"
echo $opcion

