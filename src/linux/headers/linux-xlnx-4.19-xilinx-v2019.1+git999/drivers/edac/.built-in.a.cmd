cmd_drivers/edac/built-in.a := rm -f drivers/edac/built-in.a; aarch64-xilinx-linux-ar rcSTPD drivers/edac/built-in.a drivers/edac/edac_mc.o drivers/edac/edac_device.o drivers/edac/edac_mc_sysfs.o drivers/edac/edac_module.o drivers/edac/edac_device_sysfs.o drivers/edac/wq.o drivers/edac/edac_pci.o drivers/edac/edac_pci_sysfs.o drivers/edac/synopsys_edac.o drivers/edac/cortex_arm64_edac.o drivers/edac/zynqmp_ocm_edac.o
