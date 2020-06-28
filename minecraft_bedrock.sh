#!/bin/bash

##################################################################
# Notes: This script is run as sudo by crontab on server reboot. #
# It will push a backup the world, then start the server.        #
# All directory references are relative to BEDROCK_SERVER_DIR.   #
##################################################################
BEDROCK_SERVER_DIR="/opt/minecraft_bedrock"
REPO_DIR="$BEDROCK_SERVER_DIR/worlds"


######## Run GitHub Backup ########

# Stage all Files
cd $REPO_DIR
git add -A

# Create commit with timestamp as message
CURRENT_TIME=$(date "+%Y.%m.%d-%H.%M.%S")
git commit -m "$CURRENT_TIME"

# Push to GitHub using SSH (as root)
git push origin master


######## Start Minecraft Bedrock Server ########
cd $BEDROCK_SERVER_DIR
LD_LIBRARY_PATH=.
sudo ./bedrock_server