#Script que,por medio de un menu, permitira:
#!/bin/bash
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
