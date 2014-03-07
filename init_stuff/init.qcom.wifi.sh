#!/system/bin/sh
target=`getprop ro.product.device`
case "$target" in
    msm8960*)
        wcnssmod=`ls /system/lib/modules/wcnss*.ko`
        case "$wcnssmod" in
            *wcnss*)
                # A kernel module is present, so load it
                insmod $wcnssmod
                ;;
            *)
                wcnssnode=`ls /dev/wcnss*`
                case "$wcnssnode" in
                    *wcnss*)
                        echo 1 > $wcnssnode
                        ;;
                    *)
                        echo "No WCNSS module or device node detected"
                        ;;
                esac
                ;;
        esac
        ;;
    msm8660*)
    exit 0
    ;;
    msm7627a*)
        wlanchip=`cat /persist/wlan_chip_id`
        echo "The WLAN Chip ID is $wlanchip"
        case "$wlanchip" in
            "AR6003")
             rm  /system/lib/modules/wlan.ko
             ln -s /system/wifi/ar6000.ko /system/lib/modules/wlan.ko
             mv /system/bin/wpa_supplicant /system/bin/wpa_supplicant_wcn
             ln -s /system/others/wpa_supplicant /system/bin/wpa_supplicant
             ;;
            *)
             echo "********************************************************************"
              echo "*** Error:WI-FI chip ID is not specified in /persist/wlan_chip_id **"
             echo "*******    WI-FI may not work    ***********************************"
             ;;
        esac
    ;;
    GT-S7500*)
        wlanchip=`cat /persist/wlan_chip_id`
        echo "The WLAN Chip ID is $wlanchip"
        case "$wlanchip" in
            "AR6003")
             rm  /system/lib/modules/wlan.ko
             ln -s /system/wifi/ar6000.ko /system/lib/modules/wlan.ko
             mv /system/bin/wpa_supplicant /system/bin/wpa_supplicant_wcn
             ln -s /system/others/wpa_supplicant /system/bin/wpa_supplicant
             ;;
            *)
             echo "********************************************************************"
              echo "*** Error:WI-FI chip ID is not specified in /persist/wlan_chip_id **"
             echo "*******    WI-FI may not work    ***********************************"
             ;;
        esac
    ;;
    GT-S7500W*)
        wlanchip=`cat /persist/wlan_chip_id`
        echo "The WLAN Chip ID is $wlanchip"
        case "$wlanchip" in
            "AR6003")
             rm  /system/lib/modules/wlan.ko
             ln -s /system/wifi/ar6000.ko /system/lib/modules/wlan.ko
             mv /system/bin/wpa_supplicant /system/bin/wpa_supplicant_wcn
             ln -s /system/others/wpa_supplicant /system/bin/wpa_supplicant
             ;;
            *)
             echo "********************************************************************"
              echo "*** Error:WI-FI chip ID is not specified in /persist/wlan_chip_id **"
             echo "*******    WI-FI may not work    ***********************************"
             ;;
        esac
    ;;
    GT-S6500*)
        wlanchip=`cat /persist/wlan_chip_id`
        echo "The WLAN Chip ID is $wlanchip"
        case "$wlanchip" in
            "AR6003")
             rm  /system/lib/modules/wlan.ko
             ln -s /system/wifi/ar6000.ko /system/lib/modules/wlan.ko
             mv /system/bin/wpa_supplicant /system/bin/wpa_supplicant_wcn
             ln -s /system/others/wpa_supplicant /system/bin/wpa_supplicant
             ;;
            *)
             echo "********************************************************************"
              echo "*** Error:WI-FI chip ID is not specified in /persist/wlan_chip_id **"
             echo "*******    WI-FI may not work    ***********************************"
             ;;
        esac
    ;;
    GT-S6500D*)
        wlanchip=`cat /persist/wlan_chip_id`
        echo "The WLAN Chip ID is $wlanchip"
        case "$wlanchip" in
            "AR6003")
             rm  /system/lib/modules/wlan.ko
             ln -s /system/wifi/ar6000.ko /system/lib/modules/wlan.ko
             mv /system/bin/wpa_supplicant /system/bin/wpa_supplicant_wcn
             ln -s /system/others/wpa_supplicant /system/bin/wpa_supplicant
             ;;
            *)
             echo "********************************************************************"
              echo "*** Error:WI-FI chip ID is not specified in /persist/wlan_chip_id **"
             echo "*******    WI-FI may not work    ***********************************"
             ;;
        esac
    ;;
    GT-S7509*)
        wlanchip=`cat /persist/wlan_chip_id`
        echo "The WLAN Chip ID is $wlanchip"
        case "$wlanchip" in
            "AR6003")
             rm  /system/lib/modules/wlan.ko
             ln -s /system/wifi/ar6000.ko /system/lib/modules/wlan.ko
             mv /system/bin/wpa_supplicant /system/bin/wpa_supplicant_wcn
             ln -s /system/others/wpa_supplicant /system/bin/wpa_supplicant
             ;;
            *)
             echo "********************************************************************"
              echo "*** Error:WI-FI chip ID is not specified in /persist/wlan_chip_id **"
             echo "*******    WI-FI may not work    ***********************************"
             ;;
        esac
    ;;
    SGH-I827*)
        wlanchip=`cat /persist/wlan_chip_id`
        echo "The WLAN Chip ID is $wlanchip"
        case "$wlanchip" in
            "AR6003")
             rm  /system/lib/modules/wlan.ko
             ln -s /system/wifi/ar6000.ko /system/lib/modules/wlan.ko
             mv /system/bin/wpa_supplicant /system/bin/wpa_supplicant_wcn
             ln -s /system/others/wpa_supplicant /system/bin/wpa_supplicant
             ;;
            *)
             echo "********************************************************************"
              echo "*** Error:WI-FI chip ID is not specified in /persist/wlan_chip_id **"
             echo "*******    WI-FI may not work    ***********************************"
             ;;
        esac
    ;;
    msm7630*)
        wifishd=`getprop wlan.driver.status`
        wlanchip=`cat /persist/wlan_chip_id`
        echo "The WLAN Chip ID is $wlanchip"
        case "$wlanchip" in
            "WCN1314")
             ln -s /system/lib/modules/volans/WCN1314_rf.ko /system/lib/modules/wlan.ko
             ;;
            "WCN1312")
             ln -s /system/lib/modules/libra/libra.ko /system/lib/modules/wlan.ko
	      ln -s /data/hostapd/qcom_cfg.ini /etc/firmware/wlan/qcom_cfg.ini
             ln -s /persist/qcom_wlan_nv.bin /etc/firmware/wlan/qcom_wlan_nv.bin
	      ;;
           *)
            echo "********************************************************************"
	     echo "*** Error:WI-FI chip ID is not specified in /persist/wlan_chip_id **"
            echo "*******    WI-FI may not work    ***********************************"
            ;;
        esac
        case "$wifishd" in
            "ok")
             ;;
            "loading")
            ;;
           *)
               case "$wlanchip" in
                   "WCN1314")
                    ;;

                   "WCN1312")
                        /system/bin/amploader -i
                        ;;
                   *)
	                ;;
               esac
        esac
    ;;
    GT-S6202)
        wifishd=`getprop wlan.driver.status`
        case "$wifishd" in
            "ok")
             ;;
            "loading")
             ;;
            *)
# For the new .38 kernel for 1312, there was an FFA panic
# when no 1312/1314 chip was present. Hence this is commented out
# Will need to reenable this code for 1312.
#
#                /system/bin/amploader -i
            ;;
        esac
    ;;
    msm7627*)
        ln -s /data/hostapd/qcom_cfg.ini /etc/firmware/wlan/qcom_cfg.ini
        ln -s /persist/qcom_wlan_nv.bin /etc/firmware/wlan/qcom_wlan_nv.bin
        wifishd=`getprop wlan.driver.status`
        case "$wifishd" in
            "ok")
             ;;
            "loading")
             ;;
            *)
# For the new .38 kernel for 1312, there was an FFA panic
# when no 1312/1314 chip was present. Hence this is commented out
# Will need to reenable this code for 1312.
#
#                /system/bin/amploader -i
            ;;
        esac
    ;;
    *)
      ;;
esac
exit 0
