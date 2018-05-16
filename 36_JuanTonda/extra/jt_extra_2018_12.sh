# marzo 2018
# jt. partiendo de Anabel
# 12 crear INDEX.HTML, a través de comprobación
# propina
function ayuda()
{
cat << DESCRIPCION_AYUDA
SYNOPIS
$0 RED_1 [RED_2]
DESCRIPCION
Genera una pagina web llamada index.html en /var/www donde podremos observar todos
los equipos de la red de clase C que elijamos
CODIGOS DE RETORNO
0 Si no hay ningún error
1 Si no se ha introducido ningún parámetro.
2 Si algún usuario no está registrado en el sistema.
DESCRIPCION_AYUDA
}
function error()
{
# muestra un mensaje de error (pasado en el primer parámetro)
echo $1
# muestra un mensaje de ayuda
ayuda
# sale con el código de error (pasado en el segundo parámetro)
echo exit $2
}
red=$1
red=`echo $red |cut --delimiter=. --field=1,2,3`
red=$red.
nulo=0
tupla=10
rm -rf /var/www/index.html
cp /var/www/plantilla /var/www/index.html
if [ $# -eq 0 ]; then
error "Hay que introducir al menos un parámetro." 1
fi
for ((i=1 ; $i<254 ; i++))
do
if [ $i -eq $tupla ]; then
echo "<tr></tr>" >> /var/www/index.html
tupla=$(($tupla+10))
fi
ping -c 1 -W 1 $red$i
if [ $? -eq $nulo ]; then
echo "<td bgcolor="green">$red$i</td>" >> /var/www/index.html
else
echo "<td bgcolor="red">$red$i</td>" >> /var/www/index.html
fi
done
echo "</table></body></html>" >> /var/www/index.html

