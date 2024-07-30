# Passbolt

Pasbolt is open source password manager. It has integration with browser, android. You can also share the passwords between people.

<!--more-->

Docker installation is difficult. I failed to do it twice. So I tried native deployment, I think right now I will be able to do docker, 
[Docker tutorial](https://www.passbolt.com/docs/hosting/install/ce/ubuntu/)


## Firewall configuration

Often I failed on the firewall configuration. I did not open https 443 port even I forced application to use https. Remember also to open ports on your router if required.

```
ufw status  
sudo ufw allow 80

sudo ufw status numbered
sudo ufw delete 3
```

## Create first user manually 

Beacuse of mistakes in my stmtp configuration I cannot login to the first user account. So I thought I will create user manually. But it does not make sense beacuse still I need to have SMTP working correctly. I found commands so I am pasting it here.

[liink](https://community.passbolt.com/t/how-to-create-a-user-manually-in-cli/2118)
Command:

My command:
```
su -s /bin/bash -c "/usr/share/php/passbolt/bin/cake passbolt register_user -u pwujczyk@gmail.com -f pawel -l wujczyk -r admin" www-data
```
Internet command


```
su -s /bin/bash -c “/var/www/passbolt/bin/cake passbolt register_user -u email -f firstname -l lastname -r admin” nginx
```

General command:
```
you@passbolt:/var/www/passbolt$ ./bin/cake passbolt register_user --help
```


## Restarting the wizard:

If something won't work. For me it was wrong SMTP configuration to this:

```
- Delete the file located in your passbolt directory: config/passbolt.php
- Make sure config directory is writable
- Delete or create a new database instance
- Clear the private and public keys from the passbolt/config/gpg/ (I left alone /home/www-data/.gpg)

```
On my computer the path was;  ```/etc/passbolt/gpg```


##  Changing port
I tried to change the port but I was afraid that it could result in too much issues. So I resigned, but to change the port:

- Change in the /etc/nginx/sites-available/nginx-passbolt.conf
- Change in the /etc/nginx/sites-enabled/nginx-passbolt.conf
- Change in the /etc/passbolt/passbolt.php 

```
    'App' => [
        // A base URL to use for absolute links.
        // The url where the passbolt instance will be reachable to your end users.
        // This information is need to render images in emails for example
        'fullBaseUrl' => 'https://passbolt.productivitytools.top:8080',
    ],
```    

To find the config use command ```find . -name "nginx-passbolt.conf"``` 
    
Restart nginx:
```    
root@T460Ubuntu1:/etc/nginx/sites-available# sudo /etc/init.d/nginx stop
```