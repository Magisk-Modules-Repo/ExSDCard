### Hello !

![alt text](https://img11.hostingpics.net/pics/401005microsdcardicon66397.png "Logo ExSDCard")


### Introduction
Since the first version of the module "v9 Module - SD Write Access Enabler v1" is no longer compatible with Magisk v14, i have decided to update it.


### Short explanations
Since Nougat, many apps (old and recently) cannot longer read/write propeply on external SDCard, its due to 6.0 permissions storage updates/changes.

So apps devs must update to date their apps, or you must change your habit, that isn't cool.

With the v3, the modification script has been completly review and tested. However, the Oreo version is always under development, sorry for the delay. I work hard on it.

**The new access path for your external SDCard: /mnt/media_rw/SDCARDNUMBER/

Due to some users bugs reports, its seems that on some ROMs/kernels, its impossible to take into account the changes made to the proper xml file without toggler the SELinux from enforcing to the permissive mode.
Its that why i have added two versions with one wich contain the SELinux toggler (in other words: two Magisk Modules in one).

### Changelog
v3:
- The default patch was reviewed, so now, only the necessary parts of the system file will be eddited correctly
- The module has been updated to the v15 (1500 - last stable) template from topjhonwu
-- As explained the previous module version is always taked in consideration in the Magisk module flash process. In other words, the previous and this new version works on v15.0.

- Several ZIP versions available:
-- one will be for Android 7.1.2 and lower
-- one for Android 7.1.2 and lower with an SELinux toggler
-- one for Android 8.x.x
-- one for Android 8.x.x with an SELinux toggler


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
[https://github.com/xerta555/ExSDCard-Write-Access-Enabler-Nougat-v3/](https://github.com/xerta555/ExSDCard-Write-Access-Enabler-Nougat-v3/)
