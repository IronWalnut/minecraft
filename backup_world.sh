#!/bin/bash

# Timestamp helper
timestamp() {
  date +"%T"
}

# Make sure this is the working dir 
cd "$(dirname "$0")"

# Stage all Files
git add -A

# Create commit with timestamp as message
git commit -m timestamp

# Push to github
git push origin master