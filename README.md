# Server Info

### IP: waltoncloud.ddns.net
### Port: 19132

# Server Maintenance & Backups
The server will reboot for maintenance and to back up the world files nightly at 4am EST.

<span style="color:red">**WARNING:**</span> Being logged in during this time may result in corruption of the world save!

## Cronjob Example:
```
@reboot /opt/minecraft_bedrock/minecraft_bedrock.sh > /opt/minecraft_bedrock/server_console.log
```