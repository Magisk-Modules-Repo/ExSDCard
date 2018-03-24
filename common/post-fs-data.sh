#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread

# Additional VARs
COMMONFILES=$MODDIR/common/
BUILDPROP=/system/build.prop
SYSTEMLESSPROP=$MODDIR/system/build.prop
PHONEID=`grep_prop ro.product.device $BUILDPROP`
ANDROVERSION=`grep_prop ro.build.version.release $BUILDPROP`
SYSSEMODPATH=$MODPATH/system/etc/init.d/
SYSSEMODPATHFILE=$MODPATH/system/etc/init.d/selinux0
PERMDIR=$MODDIR/system/etc/permissions
SYSPERMDIRFILE=/system/etc/permissions/platform.xml
OPERMISSIONS=$MODDIR/system/etc/O-permissions/
EXOREOAPP=/Magisk/ExSDCard/ExSDCard_Oreo_apps
EXOREOAPPBAK=/Magisk/ExSDCard/ExSDCard_Oreo_apps.bak

# Edit perm file settings
mkdir -p $PERMDIR
cp -af $SYSPERMDIRFILE $PERMDIR
sed -i '/<group gid=\"sdcard_rw\" \/>/a\        <group gid="sdcard_all" />\' $PERMDIR/platform.xml
sed -i '/<permission name=\"android\.permission\.WRITE\_EXTERNAL\_STORAGE\" \/>/a\        <group gid=\"sdcard_r\" />\n\ \       \<group gid="sdcard_rw\" />\n\ \       \<group gid="media_rw\" /> ' $PERMDIR/platform.xml
chmod 644 $PERMDIR/platform.xml


# Check if selinux must to be toggle into permissive mode
if grep -wq '8' $ANDROVERSION; then
	if grep -wq 'j5xnlte\|tissot_sprout\|kenzo\|manning\|ha3g\|D5803\|D2303\|maple_dsds\|a3y17\|Z00A\|dreamlte\|tissot_sprout\|GT-P7510\|hlte\|dreamlteks' $PHONEID; then
		mkdir -p $SYSSEMODPATH
		printf "setenforce 0" >> $SYSSEMODPATHFILE
	fi
fi


# Check if FUSE is enabled in build.prop file
if grep -qs 'persist.fuse_sdcard=true' $SYSTEMLESSPROP; then
	sed -i 's/^persist.fuse_sdcard=true/persist.fuse_sdcard=false/' $SYSTEMLESSPROP
fi
if grep -qs 'ro.sys.sdcardfs=true' $SYSTEMLESSPROP; then
	sed -i 's/^ro.sys.sdcardfs=true/ro.sys.sdcardfs=false/' $SYSTEMLESSPROP
fi
if grep -qs 'persist.sys.sdcardfs' $SYSTEMLESSPROP; then
	sed -i 's/^persist.sys.sdcardfs=true/persist.sys.sdcardfs=false/' $SYSTEMLESSPROP
fi


if [ -a "$EXOREOAPP" ]; then
	cp $EXOREOAPP $EXOREOAPPBAK
	NEW=$(awk '{ print }' $EXOREOAPPBAK)
	mkdir $OPERMISSIONS
	printf '<?xml version="1.0" encoding="utf-8"?>\n<permissions>\n  <privapp-permissions package="com.package.name">\n	<permission name="android.permission.DUMP" />\n	<permission name="android.permission.READ_LOGS" />\n	<permission name="android.permission.DEVICE_POWER" />\n  </privapp-permissions>\n</permissions>\n' >> $MODDIR/privapp-permissions-com.package.name.xml
		
		printf '%s\n' "$NEW" | while IFS= read -r line
		do sed "s/com.package.name/$line/" < $MODDIR/privapp-permissions-com.package.name.xml >  $OPERMISSIONS/privapp-permissions-$line.xml

	cp -n $OPERMISSIONS/*.xml $PERMDIR/

	rm -rf $OPERMISSIONS/*
	rm -f $EXOREOAPPBAK

	chmod -R 644 $PERMDIR/*
fi

