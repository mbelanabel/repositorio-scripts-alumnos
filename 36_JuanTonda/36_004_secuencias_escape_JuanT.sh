# jt.Octubre 2017
# echo -e (permite ejecución secuencias de escape)
# cuando el shell se ejecuta $_ . nombre_programa.sh
# 
#
# \b  Backspace
# \c  imprimir línea sin NEWLINE 
# \f  siguiente página
# \n  NEWLINE
# \r  RETURN 
# \t  Tab
# \v  Vertical Tab
# \\  Backslash
# \On Código ASCII (octal), de cualquier carácter 
#

echo -e "introduce valor 1 \c"; read var1
echo -e "introduce valor 2 \c"; read var2
echo -e "introduce valor 3 \c"; read var3
if test "$var1" = "$var2" -a "$var1" = "$var3"
  then
   echo los tres valores son iguales
  else
   if [ "$var1" = "$var2" ]
    then
     echo "los dos primeros valores son iguales"
    else
        if [ "$var1" = "$var3" ]
         then
          echo "el primer y tercer valor son iguales"
         else
           if [ "$var2" = "$var3" ]
            then
             echo "los dos últimos valores iguales"
            else
             echo "ningún valor igual"
            fi
        fi
    fi
fi
