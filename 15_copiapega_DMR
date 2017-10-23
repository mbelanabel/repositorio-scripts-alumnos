#/bin/bash
#Author= Diego Muñoz-Reja Armida

clear

##Si no nos dan todos los parametros.
if [[ $1 = "" ]]
	then
		echo "No se han proporcionado parametros suficientes."
	else
		if [[ $2 = "" ]]
			then
				echo "No se han proporcionado parametros suficientes."
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
								echo "$1 y $2 No existen."
						fi
				fi
		fi
fi
