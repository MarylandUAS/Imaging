echo 'Connecting...'
sshpass -p "odroid" ssh  192.168.1.3 -l odroid 'bash ./script.sh && exit'
echo 'Connection closed'





