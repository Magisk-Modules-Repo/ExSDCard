#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread

# Additional VARs
COMMONFILES=$MODDIR/common/
OPERMISSIONS=$MODDIR/system/etc/O-permissions/
PERMDIR=$MODDIR/system/etc/permissions/
OAPPLIST=ExSDCard.O.*.applist.xml
INTERNALPATH=/data/media/0

# Check if an platform.xml file already exist in PERMDIR or not
cd $MODDIR/ 
	rm -f Special_XML_perm_file_result.txt
cd $PERMDIR/
if [ -f "platform.xml" ]
then
	printf "Special xml permissions file has been already putted in the MODDIR path.\nIt's due to the fact that you have manually replace "no" by "yes"\nin the "ExSDCard.config.xml" file. If you want to cancel this changes\nand just want an simple edited XML permissions file, so just replace\n the one "yes" values in the config file by "no".\n\nHave a good day and thanks to @topjhonwu for Magisk :)" > $MODDIR/Special_XML_perm_file_result.txt

else

	# Create the perm dir in $MODDIR
	yes | cp -a "/system/etc/permissions/platform.xml" ./platform.xml

		# Edit the xml file using sed
		sed -i '/<permission name=\"android\.permission\.WRITE\_EXTERNAL\_STORAGE\" \/>/a\        <group gid=\"sdcard_r\" />\n\ \       \<group gid="sdcard_rw\" />\n\ \       \<group gid="media_rw\" /> ' ./platform.xml

	# Edit the file permissions
	chmod 644 ./platform.xml

fi
mount /data 2>/dev/null
	if mount | grep -q /data; then
	cd $INTERNALPATH/

		if ls -al | grep -q "ExSDCard.O."
	then
		NEW=$(awk '{ print }' ExSDCard.O.*.applist.txt)

		cd $MODDIR/ && mkdir /TMP/
		printf '%s\n' "$NEW" | while IFS= read -r line
					do sed "s/com.package.name/$line/" < $MODDIR/privapp-permissions-com.package.name.xml >  $MODDIR/TMP/privapp-permissions-$line.xml

		no | cp $MODDIR/TMP/*.xml $PERMDIR/

		rm -rf ./TMP/

		chmod -R 644 $PERMDIR/*
		fi
	else
fi
