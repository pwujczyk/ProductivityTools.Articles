<!--Category:Article,Azure--> 
 <p align="right">
    <a href="http://productivitytools.tech/"><img src="Images/Header/ProductivityTools_green_40px_2.png" /><a> 
    <a href="https://github.com/pwujczyk/ProductivityTools.Articles"><img src="Images/Header/Github_border_40px.png" /></a>
</p>
<p align="center">
    <a href="http://productivitytools.tech/">
        <img src='Images/Header/LogoTitle_green_500px.png' />
    </a>
</p>

# Create wordpress page for ProductivityTools



<!--more-->


Compose file:
https://github.com/bitnami/containers/blob/main/bitnami/wordpress-nginx/docker-compose.yml

user: user
password: bitnami

# plugins
- All-in-One WP Migration
- Increase Maximum Upload File Size | Increase Execution Time

## 413 Request Entity Too Large
/opt/bitnami/nginx/conf/nginx.conf
/opt/bitnami/nginx/conf.default/nginx.conf

```
server {
    client_max_body_size 100M;
    ...
}
```

Plugin:  WPCode – Insert Headers and Footers + Custom Code Snippets – WordPress Code Manager
```
@ini_set( 'upload_max_size' , '204M' );
@ini_set( 'post_max_size', '204M');
@ini_set( 'max_execution_time', '400' );
```
/opt/bitnami/wordpress/wp-includes/functions.php


https://stackoverflow.com/questions/44741514/nginx-error-client-intended-to-send-too-large-body
## Theme
- /opt/bitnami/apps/wordpress/htdocs/wp-content/themes
- /bitnami/wordpress/wp-content/themes



