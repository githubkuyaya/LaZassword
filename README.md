# LaZassword
Password recovery payload for the BashBunny, using LaZagne.

• Author: kuyaya

• Firmware support: Should work for all firmwares, but I haven't tested it for all yet

• Target: Windows

## Description
The payload makes and Antivirus exclusion for the BB, unzips laZagne and runs it as admin (using powershell).

Payload length: ~ 30 seconds

## Configuration
You need to download the latest version of LaZagne from the [release page of LaZagne](https://github.com/AlessandroZ/LaZagne/releases)
Be sure to download it in Edge (or just any browser that doesn't block the download) and temporarily disable the AV so it doesn't get deleted. Then make a Zip-file (not 7zip or rar, just the normal zip format that windows provides) out of it, and place it in the /root folder of the Bunny.
Example: 
> G:\lazagne.zip\lazagne.exe

Then just copy-paste the payload into one of the switch folders. (Doesn't matter if switch1 or switch2)
