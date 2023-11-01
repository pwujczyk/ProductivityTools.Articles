
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

# Cheap distaster recovery

<!--og-image-->

Setup application and SQL server database replication. This describes how I setup two laptops as servers and did replication between them. I am not using them at the same time, but one is waiting **on hold** if the main one will break.
<!--more-->

## HL arch

Architecture is simple

![](Images/2023-11-01-16-04-50.png)

## DNS


This normal. In the DNS I defined a host (**meetings**) that points points to the IP address of the router. I do not have external IP but it could be easily managed. 

The full address will be **meetings.productivitytools.top**. 

DNS not managing ports, this important information as we will use them later.

![](Images/2023-11-01-16-06-21.png)

## Router

On router I am doing two entries for port forwarding. All configuration is important here:

- I am pointing to two servers (51 & 52)
- For each server I am using different port

![](Images/2023-11-01-16-13-32.png)

## Server
On the server I have echo method

```c#
[HttpGet]
[Route("echo")]
public string echo(string name)
{
    return $"Welcome request performed at {DateTime.Now} with param {name} on server {System.Environment.MachineName} to Application Transfers";
}
```





