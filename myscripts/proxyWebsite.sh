#!/bin/bash

SSH_SERVER=$1
WEBSITE=$2

if [ -z "$SSH_SERVER" ] || [ -z "$WEBSITE" ];
then
    echo "$(basename "$0") <ssh_server> <domain>";
else
    ADDRESSES=$(host -t A -4 "$WEBSITE" | awk '{print $4"/32"}' | tr '\n' ' ' | sed 's/ $//');
    sshuttle --dns -r $(echo "$SSH_SERVER $ADDRESSES");
fi