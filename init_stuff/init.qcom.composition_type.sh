#!/system/bin/sh

soc_id=`cat /sys/devices/system/soc/soc0/id`

case $soc_id in
     90 | 91 | 92 | 97 | 101 | 102 | 103)
        comp_7x27A=`getprop debug.composition.7x27A.type`
        setprop debug.composition.type $comp_7x27A
    ;;
esac

case $soc_id in
     88 | 89 | 96 | 98 | 99 | 100)
        comp_7x25A=`getprop debug.composition.7x25A.type`
        setprop debug.composition.type $comp_7x25A
    ;;
esac
