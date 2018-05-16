# práctica. UbuntuServer_04_06 (script)
# copia integra del enunciado de la práctica
# jt. Octubre 2017
#	Borrado	de usuarios y grupos existentes
sudo deluser --remove-home rigel
sudo deluser --remove-home betelgeuse
sudo delgroup rigel
sudo delgroup betelgeuse
sudo delgroup orion
sudo rm -R /home/rigel
sudo rm -R /usuarios/rigel
sudo rm -R /home/betelgeuse
sudo rm -R /usuarios/betelgeuse

#	Creación de nuevos usuarios y grupos
echo "Contraseña del usuario rigel..."
sudo adduser --quiet--gecos "" rigel
echo "Contraseña del usuario betelgeuse..."
sudo adduser --quiet --gecos "" betelgeuse
sudo addgroup orion
sudo usermod rigel -g orion -a -G rigel
sudo usermod betelgeuse -g orion -a -G betelgeuse

# posible mejora
# pasar por parametros el usuario
# y comprobar si hay contenido en los directorios
# *** EN ESTUDIO ***
#
#

