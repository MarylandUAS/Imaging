#!/bin/bash
echo 'Connected'
echo 'Starting syncthing...'
xterm -e './Documents/syncthing-linux-arm-v0.10.29/syncthing' &
echo 'Syncthing started'
echo 'Press Enter to start image capture'
read continue2
cd Test
echo 'Capturing images...'
i=1
while(true)
do
env LANG=C gphoto2 --capture-image
sleep 4
env LANG=C gphoto2 --get-file $i
read -r -t 2 -p "Type ' (apostrophe) and press Enter to stop: " stop
if [[ $stop == "'" ]]
then
break
fi
i=$((i+1))
done
echo 'Done capturing'
echo 'Once all images have been transferred, type y or n to delete photos from camera or not.'
read delete
if [[ $delete == 'y' ]]
then
gphoto2 -RD
fi
killall xterm
killall chromium-browser
