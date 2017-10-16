#!/bin/bash

FICHERO="agenda.txt"

function Menu
{
   echo "_____________MENU_____________"
   echo "   1. Introducir Contacto"
   echo "     2. Buscar Contacto"
   echo "     3. Listar Contactos"
   echo "         4. Salir"
}

function Introducir
{
   if [ -e "agenda.txt" ]; then  # Si el fichero existe...
      echo "Introduzca datos de la persona: "
      read -p "Nombre:" NOMBRE
      read -p "Primer apellido: " APELLIDO1
      read -p "Segundo apellido: " APELLIDO2
      read -p "Telefono: " TELEFONO
	  read -p "Correo: " CORREO
      # Redireccionamos los datos introducidos al fichero de la agenda
      echo "$NOMBRE:$APELLIDO1:$APELLIDO2:$TELEFONO:$CORREO" >> $FICHERO
   else
      # Si no existe el fichero, damos el mensaje de error
      echo "No se ha podido acceder al archivo de agenda!"
   fi
   
   echo 
}

function Buscar
{   
   if [ -s $FICHERO ]; then
      echo "Introduzca datos de la persona a buscar: "
      read -p "Nombre: " NOMBRE
      read -p "Primer apellido: " APELLIDO1
   
      DATOS="$NOMBRE:$APELLIDO1"  # Datos de la busqueda
      SALIDA=$(grep "$DATOS" $FICHERO)  # Con grep asigna a salida el contenido de la linea
      echo -e "${SALIDA//:/\n}"  # Cambiamos los ":" por saltos de linea "\n"
   else
      echo "El fichero no existe o no contiene entradas en la agenda"
   fi
}

function Listar
{
   if [ -s $FICHERO ]; then  # Si existe el fichero y contiene datos
      for linea in $(cat $FICHERO)  # Recorremos cada linea del fichero
      do
         echo "__________________"
         echo -e "${linea//:/\n}"  # Sacamos la linea con formato
         echo "__________________"
         echo ""
         echo "Pulse una tecla..."
         read
      done
   else
      echo "No existen datos en la agenda"
   fi
}

opc=0
salir=5

while [ $opc -ne $salir ];  # Mientras el valor de $opt es distinto del valor de $salir
do   
   clear
   Menu  # Dibujamos el menu en pantalla
   read -p "Opcion:..." opc  # Escogemos la opcion deseada
      
   if [ $opc -ge 1 ] && [ $opc -le 5 ]; then  # No se por que no funciona el rango
      clear
      case $opc in   # Acciones para las diferentes opciones del menu

         1)Introducir   
            ;;       
         
         2)Buscar
            ;;

         3)Listar
            ;;

         4)echo   
            ;;
      esac
   else
      echo "No ha introducido una opcion correcta!!"
   fi
   echo "Pulse una tecla..."
   read
done
