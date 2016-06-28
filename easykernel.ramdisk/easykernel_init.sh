#!/system/bin/sh

on property:sys.boot_completed=1
    start easykernel
    
service easykernel /sbin/easykernel.sh
    oneshot
    class late_start
    user root
    group root
    disabled
