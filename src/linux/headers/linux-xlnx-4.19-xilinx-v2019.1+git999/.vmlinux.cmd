cmd_vmlinux := /bin/bash /home/zw/share/ultra96/mipitest/linux-xlnx/scripts/link-vmlinux.sh aarch64-xilinx-linux-ld.bfd    --sysroot=/home/zw/share/ultra96/mipitest/build/tmp/work/ultra96_zynqmp-xilinx-linux/linux-xlnx/4.19-xilinx-v2019.1+git999-r0/recipe-sysroot  -EL  -maarch64elf --no-undefined -X --fix-cortex-a53-843419  --build-id ;  true
