#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}
while [ "$(getprop sys.boot_completed)" != "1" ]; do
sleep 4
done
sleep 2
battery_level="$(dumpsys battery get level)"
power_stop="45"
if [[ $battery_level -gt $power_stop ]]; then
    echo 1 > /sys/class/qcom-battery/charging_suspend_battery
fi