#actualizo mi servidor
sudo apt update
sudo apt upgrade -y
#instalo apache
sudo apt install -y apache2
#respaldo la pagina de inicio por defecto
sudo mv /var/www/html/index.html /var/www/html/index.html.bak
#creo mi version 1.0
nano /var/www/html/index.html