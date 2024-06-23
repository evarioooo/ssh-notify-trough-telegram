<p align="center">
    <a href="https://www.evarioo.de" target="_blank"><img src="https://i.ibb.co/sPVdY46/github-readme-logo.png" width="493" /></a><br>
    <img src="https://img.shields.io/github/stars/evarioooo/ssh-notify-trough-telegram?style=for-the-badge&label=Repo%20stars" />
</p>

# Are you having some trouble?

Do you really need some help and are stuck? Don't hesitate and just contact me in Discord or alternatively by email:

[<img src="https://img.shields.io/badge/h4zebust3r90-me?style=for-the-badge&logo=telegram&logoColor=white&labelColor=%23ffba13&color=grey">](https://t.me/h4zebust3r90)<br>
[<img src="https://img.shields.io/badge/h4zebust3r90-me?style=for-the-badge&logo=discord&logoColor=white&labelColor=%23ffba13&color=grey">](https://discord.gg/9qqKZuAbsa)<br>
[<img src="https://img.shields.io/badge/evarioo_x-me?style=for-the-badge&logo=x&labelColor=%23ffba13&color=grey">](https://x.com/evarioo_x)<br>
[<img src="https://img.shields.io/badge/hello%40evarioo.de-me?style=for-the-badge&logo=maildotru&labelColor=%23ffba13&color=grey">](mailto:hello@evarioo.de?subject=Kontakt%20%C3%BCber%20GitHub)

# Installation

1.) git clone this repo  
2.) navigato to ssh-notify-trough-telegram/  
`cd ssh-notify-trough-telegram/`  
3.) edit your id and token inside telegram-send.sh  
4.) make telegram-send.sh executable  
`chmod +x telegram-send.sh`  
  
5.) To be able to use the script system-wide, we move the Telegram script to another location:
`sudo cp telegram-send.sh /usr/bin/telegram-send`

We can test it out with:
`telegram-send <yourmessage>`

If you have done everything correctly so far, you should now receive a message from your Telegram bot.

6.) So that we can now be notified via Telegram every time a user logs in
via SSH, we can now move the script to the following location in our system:
`sudo cp telegram-notify.sh /etc/profile.d/telegram-notify.sh`
  
---
# Usage
Lorem  
---
# Credits
https://bogomolov.tech/Telegram-notification-on-SSH-login/
---
