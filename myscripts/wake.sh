#!/bin/bash
ssh 192.168.8.2
while test $? -gt 0
do
   echo "Trying again..."
   ssh 192.168.8.2
done
