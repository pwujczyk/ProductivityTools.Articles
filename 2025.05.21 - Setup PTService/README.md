
The tutorial below shows how to move the service from one server to another.

[30 min]
- Backup from origin and restore database to the target server
- [optional] Take db offline and try to load data 
- Change the configuration in the [webhooks config](https://github.com/ProductivityTools-Services/ProductivityTools.Webhooks/blob/master/Configuration.json) and invoke  ```Set-WebhooksAsInConfigurationFile```
- Update .net framework 
- Add Debug controller
- Change jenkins file

[30 min task]
- Update domain configuration in the alibaba 
- add configuration in the ReverseProxy configuration file
    - invoke script to create certifate for reverse proxy
- add items in the [PT.Services file](https://docs.google.com/spreadsheets/d/1hXh5dXvfFDWqe9OjMx5aaXzGYTXsCI7M2jwCCXCyPI0/edit?gid=0#gid=0)
- Validate with service status or direct test from spreadsheet

