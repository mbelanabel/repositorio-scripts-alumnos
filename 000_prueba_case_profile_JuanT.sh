# jt. Octubre 2017 (prueba12.sh)

clear

echo "** MENU **"
echo "1. - archivos directorio root (segundo plano)"
echo "2. - usuarios del sistema"
echo "3. - usuario actual"
echo "4. - ver cuales son y ocupan los perfiles de usuario"
echo "5. - SALIR"
read -p " Selecciona una opción: " opcion
 case $opcion in
    1) 
      echo "1"
      # aqui ira el comando para averiguar dicha implementación
      ;;
    2) 
      echo "2" 
      cat /etc/passwd | cut -f1 -d":" 
      ;;
    3)
      echo "3"
      who 
      ;;
    4) 
      echo "perfiles"
      dir=`pwd`
      cd / 
      find -name ".profile" -exec ls -l {} \; 
      cd $dir
      ;;
    5)
      echo "salirt"
      ;;
    *)
      echo "opción incorrecta"
      ;;
  esac 
