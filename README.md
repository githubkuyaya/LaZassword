# LaZassword
Password recovery payload for the BashBunny, using LaZagne.

• Author: kuyaya

• Firmware support: I tested it for 1.6, but it should work for all firmwares

• Target: Windows

## Description
The payload uses powershell to bypass the AV and stores the output of lazagne (runned as admin) in a lootfile.

Payload running time: ~ 30 seconds

## Configuration
You need to download the latest version of LaZagne from the [release page of LaZagne](https://github.com/AlessandroZ/LaZagne/releases).

Be sure to temporarily disable the AV so it doesn't get removed during download and installation. Then make a Zip-file (not 7zip or rar, just the normal zip format that windows provides) out of it, and place it in the /root folder of the Bunny.
Example: 
> G:\lazagne.zip\lazagne.exe

Then just copy-paste the payload into one of the switch folders. (Doesn't matter if switch1 or switch2)

***It is important to change the keyboard layouts in the payload. There are some notes in the payload that tell you if you should change something there.***

If something doesn't work because of the keyboard layout (e.g. printing wrong letters) you have to change the payload by yourself. Just replace the letters who aren't printed out correctly with altcode. 

If you have an idea on how to improve the payload or if you have an issue (e.g. the payload itself is not working) don't hesitate to PM me by E-Mail or at the [Hak5 Forums](https://forums.hak5.org/profile/63440-kuyaya/).
