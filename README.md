# LaZassword
Password recovery payload for the BashBunny, using LaZagne.

• Author: kuyaya

• Firmware support: I tested it for 1.6, but it should work for all firmwares

• Target: Windows

## Description
The payload makes and Antivirus exclusion for the BB, unzips laZagne and runs it as admin (using powershell).

Payload running time: ~ 30 seconds

## Configuration
You need to download the latest version of LaZagne from the [release page of LaZagne](https://github.com/AlessandroZ/LaZagne/releases).

Be sure to temporarily disable the AV so it doesn't get removed during installation. Then make a Zip-file (not 7zip or rar, just the normal zip format that windows provides) out of it, and place it in the /root folder of the Bunny.
Example: 
> G:\lazagne.zip\lazagne.exe

Then just copy-paste the payload into one of the switch folders. (Doesn't matter if switch1 or switch2)
