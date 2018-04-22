#!/bin/bash

# declare the PATH of gdrive
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/games:/usr/games

# DATE value used into file name
DATE=$(date +"%Y-%m-%d_%H%M")

# rapidstill command
raspistill -o camera/image-$DATE.jpg -q 5

# upload image in gdrive
drive push camera/image-*

# remove image file
rm camera/image-*

# crontab command: */30 *,8-23 * * * yes | /home/pi/camera.sh > /dev/null 2>&1
