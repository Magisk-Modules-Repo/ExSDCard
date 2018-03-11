### Hello !

![alt text](https://img11.hostingpics.net/pics/401005microsdcardicon66397.png "Logo ExSDCard")


### Short explanations
Since Nougat, many apps (old and recently) cannot longer read/write propeply on external SDCard, its due to 6.0 permissions storage updates/changes.

So apps devs must update to date their apps, or you must change your habit, that isn't very cool.

By edit an xml file in system partition, we can get a new access to our external SDcard with all necessary permissions.
This mod make that in system-lessy mode (powered by Magisk).

## The new access path for your external SDCard: /mnt/media_rw/SDCARDNUMBER/

With the v3, the modification script has been completly review and tested.
The v3.1 is especially designed for Oreo users, but it stay compatible for any Android version, it has been completly review and tested.

About special feature on V3.2, look @XDA thread.

Due to some users bugs reports, its seems that on some ROMs/kernels, its impossible to MODD the system propeply without toggler the SELinux from enforcing to the permissive mode.
Its why i have added two versions with one wich contain the SELinux toggler

In other words: one Modules ZIP version with an SELinux toggler for each module versions.

### XDA officials downloads thread:
[https://forum.xda-developers.com/apps/magisk/module-exsdcard-write-access-enabler-t3670428](https://forum.xda-developers.com/apps/magisk/module-exsdcard-write-access-enabler-t3670428)


### Changelog
v3.2:
Adjustment made in the module to force SDCardFS to be disabled in favor of FUSE.
From there, various problems encountered on some Oreo ROMs should be fixed.

For old changelogs: [Pastbin](https://pastebin.com/rcxaVbnR)


### On your phones:
![alt text](https://img11.hostingpics.net/pics/435669Screenshot20171008172017.png "SCR_Onyourphone1")
![alt text](https://img11.hostingpics.net/pics/944605Screenshot20170909143851.png "SCR_Onyourphone2")


### News
v3.2 has been added (XDA, Magisk Repo and webhosters dl), it come to fix issues encured by several Oreo users. Flashable ZIP updated too.
Old updates has been moved on Pastbin to clear the main OP.

### Compatibilities
 Certified and tested on:
- LG G3 (D855 - F400L) Resurection Remix 7.1.2
- HTC M8 LOS 14
- HTC Sprint EVO 4G LTE
- Samsung Galaxy S8+ SM-G955F
- Samsung SM-G900P LOS 14
- Samsung Galaxy S7 EDGE SM-G935F
- Samsung Galaxy S5 SM-G900P (Sprint)
- Samsung Galaxy J5 2016 SM-J510FN 7.1.1
- Huawei Honor 5X Silver (KIW-L21) Resurection Remix 7.1.2
- Sony XPeria Z5 Compact stock ROM 7.0
- Sony XZ with stock ROM


It should works on others phones/ROMs too, just test.
If not works propeply, just make fresh Magisk install and install the module again

@ Others members: feedback the module works for you too or not.

Telegram group: [https://t.me/exsdcard](https://t.me/exsdcard)


### Thanks
@topjohnwu
@_Exeedy
@m0yP
@VR25
@Didgeridoohan
@ahrion


Please give your feedbacks by specify your ROM name/version and your model phone too on the XDA thread.


### Github source: <br />
[https://github.com/xerta555/ExSDCard_Write_Access_Enabler_v3.1](https://github.com/xerta555/ExSDCard_Write_Access_Enabler_v3.1)

