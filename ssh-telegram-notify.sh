#!/bin/bash

# Credits: https://bogomolov.tech/Telegram-notification-on-SSH-login/

# This file determines the content of your message.
# If you know what you are doing, you can extend 
# the script with other parameters.
# For example, it would be conceivable to query
# the respective IP with an API in order to obtain more data.
    
# prepare any message you want
login_ip="$(echo $SSH_CONNECTION | cut -d " " -f 1)"
login_date="$(date +"%e %b %Y, %a %r")"
login_name="$(whoami)"
hostname="$(hostname -s)"

# For new line I use $'\n' here
message="Neuer Login auf $hostname"$'\n'"Benutzer: $login_name"$'\n'"IP: $login_ip"$'\n'"Datum: $login_date"

#send it to telegram
telegram-send "$message"
