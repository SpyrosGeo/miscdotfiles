#!/bin/bash

# argument to set a new string or print the set string
arg=$1
# possible string as second argument
string=$2
# path to your config file
configfile="/home/thatguy/.config/i3/config"

# if the argument is: "set", write the string (second argument) to a file
if [ "$arg" == "set" ]
then
echo "$string" > $configfile 
# if the argunment is "print": print out the set string, as defined in your file
elif [ "$arg" == "print" ]
then 
echo "$( cat $configfile )"
fi
