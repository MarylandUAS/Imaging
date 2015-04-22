#/bin/bash
echo 'Connected'
echo 'Starting syncthing...'
xterm -e './Documents/syncthing-linux-arm-v0.10.29/syncthing' &
echo 'Syncthing started'
echo 'Press Enter to start image capture'
read continue
cd Test
echo 'Capturing images...'
for i in $(seq 1 5)
do
env LANG=C gphoto2 --capture-image
sleep 5
env LANG=C gphoto2 --get-file $i
done
echo 'Done capturing'
echo 'Once all images have been transferred, press Enter to continue'
read continue
killall xterm
killall chromium-browse
