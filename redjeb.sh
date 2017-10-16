#Script que,por medio de un menu, permitira:
# 1) Visualizar el comando correspondiente al PID1.
# 2) Consultar la variable \$PATH.
# 3) Consultar el numero de usuarios conectados.
# 4) Salir.
#!/bin/bash
#Autor: Redjeb Sezguin Rustemov
echo "MENU"
echo "1)Visualizar el comando correspondiente al PID1."
echo "2)Consultar la variable \$PATH."
echo "3)Consultar el numero de usuarios conectados."
echo "4)Salir."
read opcion
case $opcion in
        1) ps 1
           ;;
        2) echo "La variable \$PATH es $PATH"
           ;;
        3) who -a | cut -f1 -d" " | sort | uniq | echo "Hay `wc -l` usuarios co$
           ;;
        4) echo "Salir"
           ;;
esac
