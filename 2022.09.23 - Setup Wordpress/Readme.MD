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


Sometimes i need to recreate the AWS wordpress server. This tutorial sumarizes all the steps together with moving the blog.
<!--more-->

## Backup previous blog
- Update the Wordpress
- Update plugins
- Go to All-in-One WP Migration
- Choose settings
<!--og-image-->
![](Images/2022-09-24-14-08-07.png)

- Export data to file



## Create AWS instance
- Fre tier currently is offered for t2.micro and t3.micro instances

![](Images/2022-09-23-13-51-43.png)

- It need to be marked as Free tier eligible

![](Images/2022-11-03-13-18-38.png)

- After creating isntance we can go to the /wp-admin 
- Password we can take from **Get system log**

![](Images/2022-09-23-13-53-57.png)

- there we have a password

![](Images/2022-09-23-13-54-30.png)
xVMbuhPPklt9

## Add plugins if required
- All-in-One WP Migration
- WP Maximum Uplad File size


## How I think I did it
UnMark only 
- Do not export themes (files) & import theme
- Do not export must-use plugins (files) 
- Do not export plugins (files) 

- Maybe copy theme




## Plugins:
- Ajax Load More


- WordPress Rest API Authentication



## Theme
- /opt/bitnami/apps/wordpress/htdocs/wp-content/themes
- /bitnami/wordpress/wp-content/themes

