
<!--Category:Article--> 
 <p align="right">
    <a href="http://productivitytools.tech/send-rocket-into-space-in-parts-how-to-estimate-large-projects/"><img src="Images/Header/ProductivityTools_green_40px_2.png" /><a> 
    <a href="https://github.com/pwujczyk/ProductivityTools.Articles"><img src="Images/Header/Github_border_40px.png" /></a>
</p>
<p align="center">
    <a href="http://productivitytools.tech/">
        <img src='Images/Header/LogoTitle_green_500px.png' />
    </a>
</p>

# SQL Transactional Replication

<!--og-image-->
![](Images/https.png)

Setup SQL Transactional replication between two servers in the same network.

<!--more-->

## Source server


![](Images/2023-10-18-21-53-15.png)

![](Images/2023-10-18-21-53-36.png)

![](Images/2023-10-18-21-53-56.png)

The account is the most tricky one. In a tutorials in the Internet usually people use **Server agent** for me it did not work. I used my account that I am using to login.

![](Images/2023-10-18-21-54-19.png)


## Still on the source server

This is also not described well in the tutorials. Very often tutorials showed how to do transactional replication on the same server - means source and destination server are the same, that does not give a lot of information how to do it. But remember you need to do those steps again on the source server. 

![](Images/2023-10-18-21-55-04.png)

![](Images/2023-10-18-21-55-22.png)

Address of the target server. To do it first connnect from management studio from source server to sql instance in the destination server. This will make sure that you have all ports, remote management enabled. It is also not easy step it took me couple hours, but you can find tutorials on the Internet. The main tip is to use SQL server authentication if you do not have domain, but probably you do not have. 

If you will connect directly from the management studio to remote computer it should also work here.

I needed to enable SQL authentication

![](Images/2023-10-18-21-55-40.png)


Again tricky step provide the source server credentials. 

![](Images/2023-10-18-21-57-27.png)