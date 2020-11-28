# LaZassword
Password recovery payload for the BashBunny, using LaZagne.

• Author: kuyaya

• Firmware support: I tested it for 1.6, but it should work for all firmwares

• Target: Windows

• Creds: [PoSHMagiC0de](https://github.com/PoSHMagiC0de)

## Requirements
• A BashBunny

• You have to be a local administrator for the payload to work.

## Description
The payload uses powershell to run LaZagne as admin without a UAC prompt popping up.

Payload running time: ~ 2 minutes

As soon as the payload finishes, the bunny shuts itself down and thus ejects itself.

The AV will probably detect LaZagne, even when you set an exclusion (tested on Windows Defender). You'll have to find a way to bypass that.

## Configuration
You need to download the latest version of LaZagne from the [release page of LaZagne](https://github.com/AlessandroZ/LaZagne/releases).

Be sure to temporarily disable the AV so it doesn't get removed during download and installation. Then make a Zip-file (not 7zip or rar, just the normal zip format that windows provides) out of it, and drag-and-drop it on the bunny (on the main folder).
Example: 
> G:\lazagne.zip\lazagne.exe

or

> E:\lazagne.zip\lazagne.exe

Of course, download the all the files from this repo (payload.txt, bypass.ps1, LaZassword.ps1) and drag-and-drop 'em on one of the switch folder (switch1 or switch2).

If you have a non-default keyboard layout, be sure to change that in the payload.txt under DUCKY_LANG=xx

You can configurate most of the things (e.g. folder and file names). Just take a look at the #configuration# section in the files.

If you have an idea on how to improve the payload or if you have an issue (e.g. the payload itself is not working) don't hesitate to PM me by E-Mail or at the [Hak5 Forums](https://forums.hak5.org/profile/63440-kuyaya/).

## Latest update information
Making things more configurable and overall more well-arranged.
