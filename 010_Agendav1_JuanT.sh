# script: agenda.sh
# 
# ADMINISTRACION DE SISTEMAS OPERATIVOS. Shell-Scripting
# Juan Tonda. Octubre 2017
#
# FUNCIONES
# ALTAS : grabar datos del contacto
# BAJAS : dar de baja un contacto por identificador
# MODIFICAR : cambiar algun dato del contacto ---> PROCESO: se elimina la fila donde 
# se encuentra el dato a modificar y es sustituido todo el registro. 
# nota.- los datos modificados pasaran al final del archivo
# /restaurar toda la fila
# CONSULTAR : identificador (email y telefono)
# COMPROBAR : verificar si existe el contacto en la agenda (por identificador /dni) id_numero
# la variable $resultado retornada se comprueba en $? (valor)
#
# utilizacion de ** BREAK ** en los saltos condicionales; para provocar el salto una vez elegida 
# la opción correcta
#
#

function comprobar() {
 local resultado
 if [ "$identificador" = "" ]; then
   resultado=1
  else
   resultado=0
 fi 
   return $resultado
}

altas() {
  clear
  echo "INTRODUCIR UN NUEVO CONTACTO"
  read -p "IDENTIFICADOR:            " dni
  echo "comprobando datos "
  identificador=`cat datos.txt | grep id_$dni | cut -d":" -f1`
  comprobar
 
  if [ $? = "1" ]; then
    read -p "NOMBRE:                 " nombre
    read -p "APELLIDOS:              " apellidos
    read -p "MOTE:                   " mote
    read -p "TELÉFONO:               " telefono
    read -p "DIRECCIÓN:              " direccion
    read -p "EMAIL:                  " email
    echo id_$dni:$nombre:$apellidos:$mote:$telefono:$direccion:$email >> datos.txt
   else 
    echo "El identificador (DNI nº: $dni) ya ha sido dado de ALTA"  
fi
   read -p "Pulsa una tecla para continuar ..."
}

bajas() { 
  PS3=" ¿ Correcto ? "
  clear
  echo "ELIMINAR UN CONTACTO EXISTENTE"
  read -p "IDENTIFICADOR (dni nº): " dni
  x=`cat -n datos.txt | grep id_$dni | cut -f1`d
  nombre=`cat datos.txt | grep id_$dni | cut -d":" -f2`
  identificador=`cat datos.txt | grep id_$dni | cut -d":" -f1`
  comprobar 


  if [ $? = "0" ]; then

   echo "Vas a eliminar el identificador: " id_$dni " Nombre: " $nombre
   sed $x datos.txt > agendanueva.txt
   read -p "Pulsa una tecla para continuar " pausa
   OPCIONES="Si No"
    select opt in $OPCIONES
     do 
      if [[ $opt = "Si" ]]
       then
        rm datos.txt 
        mv agendanueva.txt datos.txt 
        break
       elif [[ $opt = "No" ]]
        then
         #echo "no se procederá a borrar"
         break
      fi
     done
   else 
     echo "No se ha encontrado ningún registro con el identificador indicado " $dni
  fi
    read -p "Pulsa una tecla para continuar ... "

}

consultar() {
 clear
 echo "CONSULTAR DATOS DEL CONTACTO"
 read -p "Introduce identificador a consultar " dni 
 identificador=`cat datos.txt | grep id_$dni | cut -d":" -f1`
 comprobar 

     if [ $? = "0" ]; then 
 	nombre=`cat datos.txt | grep id_$dni | cut -d":" -f2`
	apellidos=`cat datos.txt | grep id_$dni | cut -d":" -f3`
 	mote=`cat datos.txt | grep id_$dni | cut -d":" -f4`
 	telefono=`cat datos.txt | grep id_$dni | cut -d":" -f5`
 	direccion=`cat datos.txt | grep id_$dni | cut -d":" -f6`
 	email=`cat datos.txt | grep id_$dni | cut -d":" -f7`
 	echo "IDENTIFICADOR ... " $identificador
 	echo "NOMBRE .......... " $nombre
	echo "APELLIDOS ....... " $apellidos
 	echo "MOTE ............ " $mote
 	echo "TELEFONO ........ " $telefono
 	echo "DIRECCIÓN ....... " $direccion 
 	echo "EMAIL ........... " $email 
      else
        echo "** EL IDENTIFICADOR INTRODUCIDO NO EXISTE $dni " 

    fi
        read -p "Pulsa una tecla para continuar ... " pausa
}

modificar () {

 clear
 echo "CONSULTAR DATOS DEL CONTACTO (para modificar algún dato"
 read -p "Introduce identificador a consultar " dni 
 identificador=`cat datos.txt | grep id_$dni | cut -d":" -f1`
 comprobar 

 if [ $? = "0" ]; then 
 	nombre=`cat datos.txt | grep id_$dni | cut -d":" -f2`
	apellidos=`cat datos.txt | grep id_$dni | cut -d":" -f3`
 	mote=`cat datos.txt | grep id_$dni | cut -d":" -f4`
 	telefono=`cat datos.txt | grep id_$dni | cut -d":" -f5`
 	direccion=`cat datos.txt | grep id_$dni | cut -d":" -f6`
 	email=`cat datos.txt | grep id_$dni | cut -d":" -f7`
 	echo "IDENTIFICADOR ... " $identificador
 	echo "NOMBRE .......... " $nombre
	echo "APELLIDOS ....... " $apellidos
 	echo "MOTE ............ " $mote
 	echo "TELEFONO ........ " $telefono
 	echo "DIRECCIÓN ....... " $direccion 
 	echo "EMAIL ........... " $email 

 PS3=" Elige la modificación que desees "
 OPCIONES="Nombre Apellidos Mote Telefono Direccion Email"
 select opt in $OPCIONES
 do
   clear
   if [[ $opt = "Nombre" ]]; then
     read -p " Dato a modificar: $nombre; Introduce NOMBRE (nuevo): " nombre
     break
    elif [[ $opt = "Apellidos" ]]; then 
     read -p " Dato a modificar: $apellidos; Introduce APELLIDOS (nuevo): " apellidos 
     break
    elif [[ $opt = "Mote" ]]; then
     read -p " Dato a modificar: $nombre; Introduce MOTE (nuevo): " mote
     break
    elif [[ $opt = "Telefono" ]]; then
     read -p " Dato a modificar: $telefono; Introduce TELEFONO (nuevo): " telefono  
     break
    elif [[ $opt = "Direccion" ]]; then
     read -p " Dato a modificar: $direccion; Introduce DIRECCION (nuevo): " direccion 
     break 
    elif [[ $opt = "Email" ]]; then
     read -p " Dato a modificar: $email; Introduce EMAIL (nuevo): " email
     break
   fi
 done 
  x=`cat -n datos.txt | grep id_$dni | cut -f1`d
  sed $x datos.txt > agendanueva.txt
  rm datos.txt 
  mv agendanueva.txt datos.txt
  echo id_$dni:$nombre:$apellidos:$mote:$telefono:$direccion:$email >> datos.txt
  echo "La agenda ha sido modificada. Revisar consulta en identificador (dni nº) $dni"

 else
   echo "** EL IDENTIFICADOR INTRODUCIDO $dni NO EXISTE EN LA AGENDA **" 

 fi
  read -p "Pulsa una tecla para continuar ... " pausa

}

#
# script agenda
# incializando agenda con un backup de la misma
#

clear
if test -f datos.txt ; then
  echo "REALIZANDO UN BACKUP DE LA AGENDA"        
  cp datos.txt copia.txt
 else
  echo "NO HAY NINGUNA AGENDA"
fi  
read -p "Pulsa una tecla para iniciar el menu ..." pausa

#
# ejecutar MENU 
#

opcion=0
while [ $opcion = 0 ]; do
clear
echo "** MENU ** Agenda **"
echo "1.- ALTAS"
echo "2.- BAJAS"
echo "3.- MODIFICAR"
echo "4.- CONSULTAR"
echo "5.- SALIR"
read opcion
case $opcion in
  1) 
    altas
    opcion=0
    ;;
  2) 
    bajas
    opcion=0
    
    ;; 
  3)
    modificar  
    opcion=0
    ;;
  4)
    consultar
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

