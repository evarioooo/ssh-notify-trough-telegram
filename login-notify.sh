#!/bin/bash
    
# prepare any message you want
login_ip="$(echo $SSH_CONNECTION | cut -d " " -f 1)"
login_date="$(date +"%e %b %Y, %a %r")"
login_name="$(whoami)"

# For new line I use $'\n' here
message="New" + "test"

#send it to telegram
telegram-send "$message"
