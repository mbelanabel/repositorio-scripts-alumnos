#script: 2 arrays , uno con el nombre de 6 amigos; y otro con sus telefonos 
#!bin/bash 
# declare -a para la declaración del array
# declaracion de 2 arrays usuario (nombre de amigos)
# y telefono (para los telefonos), colocados en orden de los amigos
# ojo: no está correcto. es para para probar las 2 dimensiones
# al parecer no se puede, se graba secuencial !!??;
# de alguna forma hay que separar hasta que índice se puede realizar
# *** hay que estudiar con detenimiento **
# JUAN TONDA. Octubre 2017. simulacro/arrays 2 dimensiones
# ---- array asociativos para hacer una tabla 2 dimensiones (analizar) , éste no funciona !!
# hay que retocar para actualizar dicha funcionalidad

 #declare -a usuarios
 usuarios[0,1]="Nombres"
 usuarios[0,2]="Teléfonos"
 usuarios[1,3]="uno.trew" 
 usuarios[1,4]="n.cuatro"
 usuarios[2,5]="dos.cinco"
 usuarios[2,6]="dos.seis"
 usuarios[3,7]="tes.siet" 
 usuarios[3,8]="tes.och"

 echo "valores por separado"
 valor=${usuarios[0,1]}
 echo $valor
 valor=${usuarios[0,2]}
 echo $valor
 valor=${usuarios[1,3]}
 echo $valor
 valor=${usuarios[1,4]}
 echo $valor
 valor=${usuarios[2,5]}
 echo $valor
 valor=${usuarios[2,6]}
 echo $valor
 valor=${usuarios[3,7]}
 echo $valor
 valor=${usuarios[3,8]}
 echo $valor

fils=3
cols=8

for ((i=1;i<=fils;i++)) do
 for ((j=1;j<=cols;j++)) do
   echo $i $j
   valor=${usuarios[$i,$j]}
   echo $valor
 done
done
