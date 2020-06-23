#!/bin/bash

# Make sure this is the working dir 
cd "$(dirname "$0")"

# Stage all Files
git add -A

# Create commit with timestamp as message
current_time=$(date "+%Y.%m.%d-%H.%M.%S")
git commit -m $current_time

# Push to github
git push origin master
