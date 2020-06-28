#!/bin/bash

##################################################################
# Notes: This script is run as sudo by crontab on server reboot. #
# It will push a backup the world, then start the server.        #
# All directory references are relative to BEDROCK_SERVER_DIR.   #
##################################################################
BEDROCK_SERVER_DIR='/opt/minecraft_bedrock'
REPO_DIR="$BEDROCK_SERVER_DIR/worlds"


######## Run GitHub Backup ########

# Create commit on all files with timestamp as message
CURRENT_TIME=$(date "+%Y.%m.%d-%H.%M.%S")
cd $REPO_DIR && git commit -a -m "$CURRENT_TIME"

# Push to GitHub using SSH (as root)
echo "WHY THE FUCK ISNT THIS WORKING"
cd $REPO_DIR && git push origin master -v --repo git@github.com:IronWalnut/minecraft.git
echo "WHY THE FUCK ISNT THIS WORKING 2"

######## Start Minecraft Bedrock Server ########
cd $BEDROCK_SERVER_DIR
LD_LIBRARY_PATH="$BEDROCK_SERVER_DIR"
sudo ./bedrock_server