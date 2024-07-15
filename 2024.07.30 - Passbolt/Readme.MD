# Passbolt

Pasbolt is open source password manager

<!--more-->

docker installation is difficult
trying this one
https://www.passbolt.com/docs/hosting/install/ce/ubuntu/


## firewall configuration
```
ufw status  
sudo ufw allow 80

sudo ufw status numbered
sudo ufw delete 3
```

## Create first user manually 
[liink](https://community.passbolt.com/t/how-to-create-a-user-manually-in-cli/2118)
Command:

my command:
```
su -s /bin/bash -c "/usr/share/php/passbolt/bin/cake passbolt register_user -u pwujczyk@gmail.com -f pawel -l wujczyk -r admin" www-data
```
internet command


```
su -s /bin/bash -c “/var/www/passbolt/bin/cake passbolt register_user -u email -f firstname -l lastname -r admin” nginx
```

General command:
```
you@passbolt:/var/www/passbolt$ ./bin/cake passbolt register_user --help
```


Restarting the wizard:
```
However if you want to restart the wizard you need to:

- Delete the file located in your passbolt directory: config/passbolt.php
- Make sure config directory is writable
- Delete or create a new database instance
- You can also delete the keys from the keyring (optional)

That should be able to trigger the installation wizard.
```

I had to clear also the private and public keys from the passbolt/config/gpg/ (I left alone /home/www-data/.gpg)

```
/etc/passbolt/gpg
```

##  Changing port

Finally I resigned from it as it could result in too much issues. But to change the port:

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

To find the config use command
```    
find . -name "nginx-passbolt.conf"
``` 
    
Restart nginx:
```    
root@T460Ubuntu1:/etc/nginx/sites-available# sudo /etc/init.d/nginx stop
```

Remember to open ports
    
  
  
