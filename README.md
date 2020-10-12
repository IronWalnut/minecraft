# Server Info

#### IP: waltoncloud.ddns.net
#### Port: 19132

# Server Maintenance & Backups
The server will reboot for maintenance and to back up the world files on Mondays, Wednesdays, and Fridays at 4am EST. Being logged in during this time may result in corruption of the world save!


# Installation Notes
The `minecraft_bedrock` executable file is not included with this repo and can be downloaded from [minecraft.net](https://www.minecraft.net/en-us/download/server/bedrock).

### Cronjob Example:
```
@reboot /opt/minecraft/minecraft_bedrock.sh > /opt/minecraft/server_console.log
```