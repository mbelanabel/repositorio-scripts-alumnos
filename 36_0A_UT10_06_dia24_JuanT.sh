# jt. octubre 2017    
# tipo de archivo: 0A 
# 6. Script que compruebe si estamos a 24 de este mes, si es así
# mostrará el texto “Feliz cumplemes”.
# keyword: estructura de control IF, date +%d (día del mes)



clear
echo "Bienvenido --" 
dia=`date +%d`

    if [ $dia -eq 24 ] ; then
      echo "*** FELICIDADES ***"
      echo "es día 24 del mes ...... "
      echo " !!! FELIZ CUMPLEMES !!! "
     else
      echo "Que pases un buen dia "
      echo " !!! ADIÓS !!! "
    fi

