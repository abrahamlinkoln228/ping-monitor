#!/bin/bash
SERVERIP=192.168.52.1
NOTIFYEMAIL=test@example.com

while(true)
do
echo "probing"
sleep 5
ping -c 3 $SERVERIP > /dev/null 2>&1
if [ $? -ne 0 ]
then
   # Use your favorite mailer here:
   #mailx -s "Server $SERVERIP is down" -t "$NOTIFYEMAIL" < /dev/null 
	echo "hello"
fi
done
