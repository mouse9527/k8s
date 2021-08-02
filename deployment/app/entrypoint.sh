#!/bin/bash

if [ ! -e /linuxgsm/linuxgsm.sh ]; then
    echo "Initializing Linuxgsm User Script in New Volume"
    cp /linuxgsm.sh /linuxgsm/linuxgsm.sh
    if [ ! -e /linuxgsm/arkserver.sh ]; then
        echo "Starting arkserver"
        bash /linuxgsm/arkserver.sh start
    fi
fi

# with no command, just spawn a running container suitable for exec's
if [ $# = 0 ]; then
    tail -f /dev/null
else
    # execute the command passed through docker
    "$@"

    # if this command was a server start cmd
    # to get around LinuxGSM running everything in
    # tmux;
    # we attempt to attach to tmux to track the server
    # this keeps the container running
    # when invoked via docker run
    # but requires -it or at least -t
    tmux set -g status off && tmux attach 2> /dev/null
fi

exec "$@"