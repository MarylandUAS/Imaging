#!/bin/bash
echo 'Connected Successfully'
echo 'Starting syncthing...'
xterm -e '.Documents/syncthing-linux-arm-v0.10.29/syncthing' &
echo 'Syncthing started'
cd Test
i=1
while(true)
do
echo "Press Enter to capture an image or ' to quit: "
read capture
if [[ $capture == "'" ]]
then
break
else
gphoto2 --capture-image
sleep 3
gphoto2 --get-file $i
i=$((i+1))
fi
done
echo 'Done'




