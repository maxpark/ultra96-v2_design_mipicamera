cmd_drivers/firmware/efi/libstub/fdt.stub.o := if aarch64-xilinx-linux-strip --strip-debug -R *ksymtab* -R *kcrctab* -o drivers/firmware/efi/libstub/fdt.stub.o drivers/firmware/efi/libstub/fdt.o; then if aarch64-xilinx-linux-objdump -r drivers/firmware/efi/libstub/fdt.stub.o | grep R_AARCH64_ABS; then (echo >&2 "drivers/firmware/efi/libstub/fdt.stub.o: absolute symbol references not allowed in the EFI stub"; rm -f drivers/firmware/efi/libstub/fdt.stub.o; /bin/false); else aarch64-xilinx-linux-objcopy --prefix-alloc-sections=.init --prefix-symbols=__efistub_ drivers/firmware/efi/libstub/fdt.o drivers/firmware/efi/libstub/fdt.stub.o; fi else /bin/false; fi
