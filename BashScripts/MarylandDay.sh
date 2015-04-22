#!/bin/bash
echo 'Connected'
echo 'Starting syncthing...'
xterm -e '.Documents/syncthing-linux-arm-v0.10.29/syncthing' &
echo 'Syncthing started'
cd Test
while(true)
do
echo "Press Enter to capture an image or ' to quit: "
read capture
if [[$capture == "s"]]
then
break
else
gphoto2 --capture-image
sleep 3
gphoto2 --get-file $i
fi
done
echo 'Done'




