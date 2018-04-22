#!/bin/bash

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/games:/usr/games
DATE=$(date +"%Y-%m-%d_%H%M")
raspistill -o camera/image-$DATE.jpg -q 5
drive push camera/image-*
rm camera/image-*
