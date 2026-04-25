#!/system/bin/sh
HOSTS_DIR="$MODPATH/system/etc"
TARGET_HOSTS="$HOSTS_DIR/hosts"
mkdir -p "$HOSTS_DIR"
if [ -f "$MODPATH/hosts" ]; then
    mv -f "$MODPATH/hosts" "$TARGET_HOSTS"
    set_perm "$TARGET_HOSTS" 0 0 0777
    ui_print "- ADS Blocker installed!"
else
    ui_print "! ERROR: 'hosts' file not found in module!"
    abort
fi

ui_print "-------------------------------"
ui_print "      Made with love 💗        "
ui_print "-------------------------------"