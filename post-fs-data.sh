#!/system/bin/sh
MODDIR=${0%/*}
MY_HOSTS="$MODDIR/system/etc/hosts"
if [ -f "$MY_HOSTS" ]; then
    mount --bind "$MY_HOSTS" /system/etc/hosts
    mount --bind "$MY_HOSTS" /etc/hosts
fi