#!/bin/bash

##################################################################
# Notes: This script is run as sudo by crontab on server reboot. #
# It will push a backup the world, then start the server.        #
# All directory references are relative to BEDROCK_SERVER_DIR.   #
##################################################################
BEDROCK_SERVER_DIR='/opt/minecraft_bedrock'
LD_LIBRARY_PATH="$BEDROCK_SERVER_DIR"

######## Wait for networking stuff to come online ########
sleep 120

######## Run Server GitHub Backup ########
# Create commit on all files with timestamp as message
CURRENT_TIME=$(date "+%Y.%m.%d-%H.%M.%S")
cd $BEDROCK_SERVER_DIR && git add -A && git commit -a -m "$CURRENT_TIME"

# Push to GitHub using SSH (as root)
cd $BEDROCK_SERVER_DIR && git push origin master -v

######## Start Minecraft Bedrock Server ########
cd $BEDROCK_SERVER_DIR && sudo ./bedrock_server