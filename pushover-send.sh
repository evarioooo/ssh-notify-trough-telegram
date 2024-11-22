#!/bin/bash

app_token=awo8a5ktxc6v47wt42k1nmuadfj5sw
user_token=u3qqhnpamroo4navzm8njsitbfrem6
hostname="$(hostname)"

if [ "$1" == "-h" ]; then
  echo "Usage: `basename $0` \"text message\""
  exit 0
fi

if [ -z "$1" ]
  then
    echo "Add message text as second arguments"
    exit 0
fi

if [ "$#" -ne 1 ]; then
    echo "You can pass only one argument. For string with spaces put it on quotes"
    exit 0
fi

/usr/bin/curl -s -F "token=$app_token" -F "user=$user_token" -F "title=Push from $hostname" -F "message=$1" 'https://api.pushover.net/1/messages' > /dev/null