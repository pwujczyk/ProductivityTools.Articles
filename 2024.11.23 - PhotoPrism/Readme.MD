docker exec -it pawel-mariadb-1 bash
apt-get install mysql-client
mysql -u root -p

show databases;
use photoprism;
show tables;
