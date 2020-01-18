# LaZassword
Password recovery payload for the BashBunny, using LaZagne.

• Author: kuyaya

• Firmware support: Should work for all firmwares, but I haven't tested it yet

• Target: Windows

## Description
Uses powershell to execute laZagne and store the passwords in a loot file on the Bunny.

Payload length: ~ 30 seconds


## Configuration
You need to download the latest version of LaZagne from the [release page of LaZagne](https://github.com/AlessandroZ/LaZagne/releases)
Be sure to download it in Edge (Chrome blocks the download) and temporarily disable the AV. Then make a Zip-file (not 7zip or rar, just the normal zip format that windows provides) out of it, and place it in the /root folder of the Bunny. 
Example: 
> G:\lazagne.zip\lazagne.exe

Then just copy-paste the payload into one of the switch folders. (Doesn't matter if switch1 or switch2)
