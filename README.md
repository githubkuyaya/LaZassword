# LaZassword
Password recovery payload for the BashBunny, using LaZagne.

• Author: kuyaya

• Firmware support: I tested it for 1.6, but it should work for all firmwares

• Target: Windows

## Description
The payload uses powershell to bypass the AV and stores the output of lazagne (runned as admin) in a lootfile.

Payload running time: ~ 30 seconds

Note: You can't really rely on the LED. You know the payload is finished when the explorer, who automatically pops up because of "storage", closes.

It is only tested with Windows Defender as AV. I don't know if it's also working on other AV's.

## Configuration
You need to download the latest version of LaZagne from the [release page of LaZagne](https://github.com/AlessandroZ/LaZagne/releases).

Be sure to temporarily disable the AV so it doesn't get removed during download and installation. Then make a Zip-file (not 7zip or rar, just the normal zip format that windows provides) out of it, and place it in the /root folder of the Bunny.
Example: 
> G:\lazagne.zip\lazagne.exe

Then just copy-paste the payload.txt and the lazassword.ps1 into one of the switch folders. (Doesn't matter if switch1 or switch2)

***Be sure to change the DUCKY_LANG in the payload.txt***

If you have an idea on how to improve the payload or if you have an issue (e.g. the payload itself is not working) don't hesitate to PM me by E-Mail or at the [Hak5 Forums](https://forums.hak5.org/profile/63440-kuyaya/).
