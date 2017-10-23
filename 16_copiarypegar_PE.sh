#/bin/bash
#sript copiar y pegar mediante parametros
if [[ $1 = "" ]]
	then
		echo "No hay parametros suficientes."
	else
		if [[ $2 = "" ]]
			then
				echo "No hay parametros suficientes."
			else
				if [[ -f $1 ]]
					then
						if [[ -d $2 ]]
							then
								cp $1 $2
							else
								echo "$2 No existe."
						fi
					else
						if [[ -f $2 ]]
							then
								echo "$1 No existe."
							else
								echo "$1 y $2 no existen."
						fi
				fi
		fi
fi
