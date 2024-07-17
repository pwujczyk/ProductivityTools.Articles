https://www.ionos.com/digitalguide/e-mail/technical-matters/set-up-docker-mail-server/

doker pull mailserver/docker-mailserver

new docker-compose.yml with content

```
version: '3.8'
services:
    mailserver:
        image: docker.io/mailserver/docker-mailserver:latest
        container_name: mailserver
        hostname: mail-server
        # example.com should be replaced with the own domain for the mail server:
        domain name: example.com
        ports:
            - "25:25"
            - "587:587"
            - "465:465"
        volumes:
            - ./docker-data/dms/mail-data/:/var/mail/
            - ./docker-data/dms/mail-state/:/var/mail-state/
            - ./docker-data/dms/mail-logs/:/var/log/mail/
            - ./docker-data/dms/config/:/tmp/docker-mailserver/
            # Path should be adjusted accordingly:
            - ./docker-data/nginx-proxy/certs/:/etc/letsencrypt/
            - /etc/localtime:/etc/localtime:ro
        environment:
            - ENABLE_FAIL2BAN=1
            # If letsencrypt for SSL/TLS certificate is used (otherwise adapt)
            - SSL_TYPE=letsencrypt
            - PERMIT_DOCKER=network
            - ONE_DIR=1
            - ENABLE_POSTGREY=0
            - ENABLE_CLAMAV=0
            - ENABLE_SPAMASSASSIN=0
            - SPOOF_PROTECTION=0
        cap_add:
            - NET_ADMIN # For Fail2Ban to work
            - SYS_PTRACE
```


sudo ufw status verbose

sudo ufw allow 25/tcp
sudo ufw allow 465/tcp
sudo ufw allow 587/tcp


