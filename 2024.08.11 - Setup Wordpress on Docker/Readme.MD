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
- UpdraftPlus - Backup/Restore
- Increase Maximum Upload File Size | Increase Execution Time

## 413 Request Entity Too Large
Configuration is placed in those files
But maybe this won't be needed for the undraftPlus plugin

/opt/bitnami/nginx/conf/nginx.conf
/opt/bitnami/nginx/conf.default/nginx.conf

To mitigate the error we can change the first one. Copy the file to the disk
```
docker ps
docker cp eb9594e54f41:/opt/bitnami/nginx/conf/nginx.conf .
docker cp nginx.conf eb9594e54f41:/opt/bitnami/nginx/conf/nginx.conf
```
Add the lines and copy back
```
http {
	client_max_body_size 400M;
}

server {
    client_max_body_size 100M;
    ...
}

```
Next copy data with the plugin. 
Plugin does not copy everything. For example it restores the plugins but you need to activate and configure it:

## Ajax Load more
In the templates add:
```
<article class="post">
						<p class="article-category">
							<?php
								$categories	=	get_the_category();
								$separator	=	",	";
								$output	=	'Category: ';
								if($categories){
									foreach($categories	as	$category){
										$output	.=	'<a	href="'.get_category_link($category->term_id).'">'.
										$category->cat_name.'</a>'.$separator;
									}
								}
							echo trim($output,	$separator);
							?>
						</p>

						<h3>
							<a href="<?php the_permalink(); ?>">
								<?php the_title();?>
							</a>
						</h3>
						<?php the_content(); ?>
					</article>
```

## Theme

- /opt/bitnami/apps/wordpress/htdocs/wp-content/themes
- /bitnami/wordpress/wp-content/themes

-----------------------------------------


