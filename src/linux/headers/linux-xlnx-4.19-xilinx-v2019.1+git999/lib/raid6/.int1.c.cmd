cmd_lib/raid6/int1.c := awk -f/home/zw/share/ultra96/mipitest/linux-xlnx/lib/raid6/unroll.awk -vN=1 < /home/zw/share/ultra96/mipitest/linux-xlnx/lib/raid6/int.uc > lib/raid6/int1.c || ( rm -f lib/raid6/int1.c && exit 1 )
