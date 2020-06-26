#!/bin/bash

##################################################################
# Notes: This script is run as sudo by crontab on server reboot. #
# It will push a backup the world, then start the server.        #
# All directory references are relative to BEDROCK_SERVER_DIR.   #
##################################################################
BEDROCK_SERVER_DIR="/opt/minecraft_bedrock"


######## Run GitHub Backup ########

# Stage all Files
cd $BEDROCK_SERVER_DIR/worlds
git add -A

# Create commit with timestamp as message
current_time=$(date "+%Y.%m.%d-%H.%M.%S")
git commit -m $current_time

# Push to GitHub
git push origin master


######## Start Minecraft Bedrock Server ########
LD_LIBRARY_PATH=$BEDROCK_SERVER_DIR
sudo $BEDROCK_SERVER_DIR/bedrock_server