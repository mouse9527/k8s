#!/bin/bash

if [ ! -e /app/linuxgsm.sh ];
then
    echo "Will start server"
else
    echo "Initializing Linuxgsm User Script in New Volume"
    cp /linuxgsm.sh /app/linuxgsm.sh
fi
echo "Execute /app/start.sh"
bash /app/start.sh
