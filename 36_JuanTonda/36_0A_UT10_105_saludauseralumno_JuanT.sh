# jt. octubre 2017      
# tipo de archivo: 0A 
# 5. Script que compruebe si el usuario actual del sistema es alumno, si
# es así salúdalo, sino te despides de él amigablemente.
# keyword: estructura de control IF
# //utilizar WHO
# for (efecto de búsqueda )
clear
echo "Bienvenido --" 
usuario=`who | cut -c1-6`
echo "comprobando usuario:  $usuario "
for ((i=100;i<=115;i+=1)); do
  echo -e "* \c"
  sleep 1
 done
 echo -e "\r \r "

 if [ $usuario =  "alumno" ] ; then
      echo "*** HOLA alumno ***"
      echo "que grande eres estudiando grado superior"
     else
      echo -e "\r\r Que pases un buen dia " $usuario
      echo " !!! ADIÓS !!! "
    fi

