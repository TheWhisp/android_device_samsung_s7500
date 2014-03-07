#!/system/bin/sh

# For successful WLAN card detection, WLAN needs SDIO polling turned on.
# This script can be used to turn on/off SDIO polling on appropriate
# SDIO slot on the MSM target (e.g. slot 3 on 7x30 surf).

arg=$1
echo "$arg" > /sys/devices/platform/msm_sdcc.2/polling
exit 0
