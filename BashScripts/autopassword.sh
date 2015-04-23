echo 'Connecting...'
sshpass -p "odroid" ssh -X odroid@192.168.1.5 -l odroid 'bash ~/Imaging/BashScripts/MarylandDay.sh && exit'
echo 'Connection closed'





