#!/sbin/sh
#
# Backup and restore addon /system files
#

export C=/tmp/backupdir
export S=/system

export ADDOND_VERSION=1

# Scripts in /system/addon.d expect to find backuptool.functions in /tmp
cp -f /tmp/install/bin/backuptool.functions /tmp

# Preserve /system/addon.d in /tmp/addon.d
preserve_addon_d() {
  mkdir -p /tmp/addon.d/
  cp -a /system/addon.d/* /tmp/addon.d/

    # Discard any scripts that aren't at least our version level
    for f in /postinstall/tmp/addon.d/*sh; do
      SCRIPT_VERSION=$(grep "^# ADDOND_VERSION=" $f | cut -d= -f2)
      if [ -z "$SCRIPT_VERSION" ]; then
        SCRIPT_VERSION=1
      fi
      if [ $SCRIPT_VERSION -lt $ADDOND_VERSION ]; then
        rm $f
      fi
    done

  chmod 755 /tmp/addon.d/*.sh
}

# Restore /system/addon.d in /tmp/addon.d
restore_addon_d() {
  cp -a /tmp/addon.d/* /system/addon.d/
  rm -rf /tmp/addon.d/
}

# Execute /system/addon.d/*.sh scripts with $1 parameter
run_stage() {
for script in $(find /tmp/addon.d/ -name '*.sh' |sort -n); do
  $script $1
done
}

case "$1" in
  backup)
    mkdir -p $C
    preserve_addon_d
    run_stage pre-backup
    run_stage backup
    run_stage post-backup
  ;;
  restore)
    run_stage pre-restore
    run_stage restore
    run_stage post-restore
    restore_addon_d
    rm -rf $C
    sync
  ;;
  *)
    echo "Usage: $0 {backup|restore}"
    exit 1
esac

exit 0
