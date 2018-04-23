<h1>rsp-cam</h1>
<h3>A simple script to use raspberry like a webcam</h3>

1. This script need to be configured into a CRON job. 
2. take a shot with the application raspistill.
3. upload the image into your personal google drive.
4. delete the image from the raspberry to save space.

take a look inside camera.sh

connect and enable camera module on your raspberry:
https://www.raspberrypi.org/documentation/usage/camera/README.md

install and configure drive for raspberry:
https://github.com/odeke-em/drive/releases

set up a CRON job to repeat the script when you want
take a look inside camera.sh
