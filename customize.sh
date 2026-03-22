#!/system/bin/sh
HOSTS_DIR="$MODPATH/system/etc"
ui_print "- Installing hosts patch..."
mkdir -p "$HOSTS_DIR"
if [ -f "$MODPATH/hosts" ]; then
    mv -f "$MODPATH/hosts" "$HOSTS_DIR/hosts"
    ui_print "- Hosts file moved successfully."
else
    ui_print "! Error: hosts file not found in module root!"
    abort
fi
set_perm "$HOSTS_DIR/hosts" 0 0 0644
ui_print "- Made with love 💗"