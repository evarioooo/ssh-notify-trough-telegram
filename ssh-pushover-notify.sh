#!/bin/bash
    
login_ip="$(echo $SSH_CONNECTION | cut -d " " -f 1)"
login_date="$(date +"%e %b %Y, %a %r")"
login_name="$(whoami)"

# For new line I use $'\n' here
message="Neuer SSH Login"$'\n'"Benutzer: $login_name"$'\n'"IP: $login_ip"$'\n'"Datum: $login_date"

#send it to pushover
pushover-send "$message"