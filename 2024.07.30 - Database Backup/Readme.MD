
# Backup database on ubuntu

Tutorial how to backp mysql databse and move backup with FTP to remote location
<!--more-->

To backup database use automysqlbackup tool

```
sudo apt-get install automysqlbackup
```

Tool works automatically and backups will be created in: /var/lib/automysqlbackup

To run the script manually:
```
sudo automysqlbackup
```

## move databse to FTP server

Ncftp allows to upload data with one simple commant
```
apt-get install ncftp
```


Run command to upload whole directory to ftp server: 

```
sudo ncftpput -R -v -u admin -p password 192.168.0.1 /G/UbuntuBackup  /var/lib/automysqlbackup/* 
```


### Cron

As a root edit the cron file:
```
crontab -e
```

Add the line:
(daily at 8)
```
0 8 * * * ncftpput -R -v -u admin -p password 192.168.0.1 /G/UbuntuBackup  /var/lib/automysqlbackup/*
```
