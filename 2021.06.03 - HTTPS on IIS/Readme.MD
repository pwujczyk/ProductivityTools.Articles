
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

# HTTPS on IIS

<!--og-image-->
![](Images/https.png)

Setup SSL certificate on IIS can be cheap and easy. 

<!--more-->

## IIS
Create new website on the IIS with the http binding. Remember to add proper host name.

![IIS](Images/IIS.png)

## DNS

Create A Record in the DNS settings.

![DNS](Images/Dns.png)

## Server

Download win-acme from https://www.win-acme.com/. Extract it and run as administrator.

Chose **n** and checkout for your website. In my case it is TeamManagement.
![Binding](Images/WacsBinding.png)

After couple next obvious steps if DNS and IIS is correctly setup, we should see proper result.

![WACS](Images/CertificateCreated.png)

Go to IIS and open Bindings. You should see new binding created. You can change the port of it to what you would like, and remove the http.

![PortChange](Images/PortChange.png)
