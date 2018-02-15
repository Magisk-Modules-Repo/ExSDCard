### Hello !

![alt text](https://img11.hostingpics.net/pics/401005microsdcardicon66397.png "Logo ExSDCard")


### Introduction
Since the first version of the module "v9 Module - SD Write Access Enabler v1" is no longer compatible with Magisk v14, i have decided to update it.


### Short explanations
Since Nougat, many apps (old and recently) cannot longer read/write propeply on external SDCard, its due to 6.0 permissions storage updates/changes.

So apps devs must update to date their apps, or you must change your habit, that isn't very cool.

By edit an xml file in system partition, we can get a new access to our external SDcard with all necessary permissions.
This mod make that in system-lessy mode (powered by Magisk).
The new access path for your external SDCard: /mnt/media_rw/SDCARDNUMBER/

With the v3, the modification script has been completly review and tested.
The v3.1 is especially designed for Oreo users, but it stay compatible for any Android version, it has been completly review and tested.

Please note: On Oreo, many manufacturers have started to replacing FUSE by SDCardFS, some users have reported to me that my module have works on their stocks/customs ROMs, and not for other ones.
Unfortunatly i cannot make anything versus it and honestly i don't think that the situation will evolve because the config of SDcardFS is setup at the kernel level.

About special feature on V3.1, look @XDA thread.

Due to some users bugs reports, its seems that on some ROMs/kernels, its impossible to MODD the system propeply without toggler the SELinux from enforcing to the permissive mode.
Its why i have added two versions with one wich contain the SELinux toggler

In other words: one Modules ZIP version with an SELinux toggler for each module versions.

### Changelog
V3.1:
- Two other txt files can be taked in consideration, they contains some more/less permissions, its has help been help some users.
- If you want to use one of them, to make it happen, you must change the desired value from no to yes in the "ExSDCard.config.txt" file
- For Oreo users:
- You can setup same as explained before the txt config file, and place them in "/data/media/0/"
- If needed, you can edit the "ExSDCard.O.*.applist.txt" file(s) by write your app(s) package(s) name(s) one by file, two different apps packages names have been writed in two separated TXT files in attachment, you can replace or lets them, as you want. By adding one of this file, the corresponding XML files will be created and putted in the right MODDIR path, needless to say do not touch the "privapp-permissions-com.package.name.xml" file, otherwise the boot script willn't works, you are warned now.
- Several ZIP versions available:
- one will be for Android 7.1.2 and lower
- one for Android 7.1.2 and lower with an SELinux toggler
- one for Android 8.x.x and lower
- one for Android 8.x.x and lower with an SELinux toggler
If you don't get any permissions issues with the v3, you can continue to use it, you will not see the notification in Download section from Magisk Manager app.
If you would like to get the new version and that the v3 version works successfull on your phone, you can simply install the v3.1 and nothing more, it will works same as on v3.

For old changelogs, check on [XDA link](https://forum.xda-developers.com/apps/magisk/module-exsdcard-write-access-enabler-t3670428)


### On your phones:
![alt text](https://img11.hostingpics.net/pics/435669Screenshot20171008172017.png "SCR_Onyourphone1")
![alt text](https://img11.hostingpics.net/pics/944605Screenshot20170909143851.png "SCR_Onyourphone2")


### News
News (12/31/2017)
V3 for Nougat and lower android versions added to Magisk Rep
V3 BETA for Oreo version always under development, sorry for delay..

### Compatibilities

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
Many thanks to theses users/devs to have helped me for this update !
@_Exeedy
@m0yP
@VR25
@Didgeridoohan
@ahrion


### XDA officials downloads thread:
[https://forum.xda-developers.com/apps/magisk/module-exsdcard-write-access-enabler-t3670428](https://forum.xda-developers.com/apps/magisk/module-exsdcard-write-access-enabler-t3670428)


Please give your feedbacks by specify your ROM name/version and your model phone too on the XDA thread.


### Github source: <br />
[https://github.com/xerta555/ExSDCard_Write_Access_Enabler_v3.1](https://github.com/xerta555/ExSDCard_Write_Access_Enabler_v3.1)
