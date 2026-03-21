#!/system/bin/sh

# Checking for installation environment
if [ $BOOTMODE = true ]; then
 ROOT=$(find `magisk --path` -type d -name "mirror" | head -n 1)
	ui_print "- Root path: $ROOT"
else
 ROOT=""
fi

# Patch default hosts file
PATH=/system/etc
	ui_print "- Patching hosts file"
mkdir -p $MODPATH$PATH
mv -f $MODPATH/hosts $MODPATH$PATH

# Clean up
rm -rf $MODPATH/hosts
echo - Made with love 💗💗