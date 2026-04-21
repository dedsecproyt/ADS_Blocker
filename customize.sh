#!/system/bin/sh
HOSTS_DIR="$MODPATH/system/etc"
TARGET_HOSTS="$HOSTS_DIR/hosts"
mkdir -p "$HOSTS_DIR"
if [ -f "$MODPATH/hosts" ]; then
    ui_print "- Installing ADS Blocked hosts file..."
    mv -f "$MODPATH/hosts" "$TARGET_HOSTS"
    ui_print "- Setting permissions..."
    set_perm "$TARGET_HOSTS" 0 0 0777
    ui_print "- ADS Blocker applied successfully."
else
    ui_print "!"
    ui_print "! ERROR: 'hosts' file not found in module!"
    ui_print "!"
    abort
fi

ui_print "-------------------------------"
ui_print "      Made with love 💗        "
ui_print "-------------------------------"