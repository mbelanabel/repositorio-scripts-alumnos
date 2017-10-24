# Ejercicio 8. MIRAR SI UN USUARIO SE CONECTA AL SISTEMA 
# Juan tonda. (septiembre 2017)
# interprete de comandos: bash
# 
#   until [ `who -a | grep $usuario | wc -l` -gt "0" ]
#   hasta que se conecte el usuario (cuando sea mayor que 0), el resultado
#
#!/bin/bash
clear
   read -p "Introduce usuario a verificar .... " usuario
   echo "Estoy esperando a ... " $usuario
   until [ `who -a | grep $usuario | wc -l` -gt "0" ]
    do
     sleep 5
     tput cup 4 19
     echo $usuario no conectado .....
    done
     tput cup 4 10 
     echo Atencion $usuario conectado
  fi


