#!/bin/bash
i=1
while(true)
do
echo $i
sleep 4
echo 'hello'

read -r -t 2 -p "Type s and press Enter to stop: " stop 
if [[ $stop == 's' ]]
then
break
fi
i=$((i+1))
done
