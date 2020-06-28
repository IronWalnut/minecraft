#!/bin/bash

##################################################################
# Notes: This script is run as sudo by crontab on server reboot. #
# It will push a backup the world, then start the server.        #
# All directory references are relative to BEDROCK_SERVER_DIR.   #
##################################################################
BEDROCK_SERVER_DIR="/opt/minecraft_bedrock"
USERNAME="notkevinwalton@gmail.com"
PASSWORD="7oub$GIT*%^"
GIT_URL="https://$USERNAME:$PASSWORD@github.com/IronWalnut/minecraft.git"


######## Run GitHub Backup ########

# Stage all Files
cd $BEDROCK_SERVER_DIR/worlds
git add -A

# Create commit with timestamp as message
current_time=$(date "+%Y.%m.%d-%H.%M.%S")
git commit -m $current_time

# Push to GitHub
git push  master


######## Start Minecraft Bedrock Server ########
cd $BEDROCK_SERVER_DIR
LD_LIBRARY_PATH=.
sudo ./bedrock_server