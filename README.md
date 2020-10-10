# Server Info

### IP: waltoncloud.ddns.net
### Port: 19132

# Server Maintenance & Backups
The server will reboot for maintenance and to back up the world files on Mondays, Wednesdays, and Fridays at 4am EST.

<span style="color:red">**WARNING:**</span> Being logged in during this time may result in corruption of the world save!

## Cronjob Example:
```
@reboot /opt/minecraft/minecraft_bedrock.sh > /opt/minecraft/server_console.log
```