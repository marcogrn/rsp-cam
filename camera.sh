#!/bin/bash

# define the path where is installed drive
# es. PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# You don't know it? use this command: echo $PATH 
PATH=INSERT_YOUR_PATH

# every file need unique name
# so I use date and time value
DATE=$(date +"%Y-%m-%d_%H%M")

# take a shot!
# es. raspistill -o directory/filename.jpg -q 5
# application -output directory/file_name -quality 5  
# full documentation here: https://www.raspberrypi.org/app/uploads/2013/07/RaspiCam-Documentation.pdf
raspistill -o camera/image-$DATE.jpg -q 5

# come to daddy
# uploads all the files whose name begins with image-
drive push camera/image-*

# save memory
# remove the files whose name begins with image-
rm camera/image-*

# now you just need to setup a basic CRON to execute this script
# es. */30 * * * * yes | /home/pi/camera.sh > /dev/null 2>&1
# the example above execute the script - in silent mode, and forcing yes answer -  every 30min

# so long and thanks for all the fish
