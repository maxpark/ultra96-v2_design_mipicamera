cmd_lib/irq_regs.o := aarch64-xilinx-linux-gcc   -fuse-ld=bfd -fdebug-prefix-map=/home/zw/share/ultra96/mipitest/build/tmp/work/ultra96_zynqmp-xilinx-linux/linux-xlnx/4.19-xilinx-v2019.1+git999-r0=/usr/src/debug/linux-xlnx/4.19-xilinx-v2019.1+git999-r0 -fdebug-prefix-map=/home/zw/share/ultra96/mipitest/build/tmp/work/ultra96_zynqmp-xilinx-linux/linux-xlnx/4.19-xilinx-v2019.1+git999-r0/recipe-sysroot= -fdebug-prefix-map=/home/zw/share/ultra96/mipitest/build/tmp/work/ultra96_zynqmp-xilinx-linux/linux-xlnx/4.19-xilinx-v2019.1+git999-r0/recipe-sysroot-native=  -fdebug-prefix-map=/home/zw/share/ultra96/mipitest/build/tmp/work-shared/ultra96-zynqmp/kernel-source=/usr/src/kernel  --sysroot=/home/zw/share/ultra96/mipitest/build/tmp/work/ultra96_zynqmp-xilinx-linux/linux-xlnx/4.19-xilinx-v2019.1+git999-r0/recipe-sysroot   -Wp,-MD,lib/.irq_regs.o.d  -nostdinc -isystem /home/zw/share/ultra96/mipitest/build/tmp/work/ultra96_zynqmp-xilinx-linux/linux-xlnx/4.19-xilinx-v2019.1+git999-r0/recipe-sysroot-native/usr/bin/aarch64-xilinx-linux/../../lib/aarch64-xilinx-linux/gcc/aarch64-xilinx-linux/8.2.0/include -I/home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include -I./arch/arm64/include/generated  -I/home/zw/share/ultra96/mipitest/linux-xlnx/include -I./include -I/home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I/home/zw/share/ultra96/mipitest/linux-xlnx/include/uapi -I./include/generated/uapi -include /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/kconfig.h -include /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/compiler_types.h  -I/home/zw/share/ultra96/mipitest/linux-xlnx/lib -Ilib -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -fno-PIE -DCC_HAVE_ASM_GOTO -mgeneral-regs-only -DCONFIG_AS_LSE=1 -fno-asynchronous-unwind-tables -mabi=lp64 -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -O2 --param=allow-store-data-races=0 -Wframe-larger-than=2048 -fstack-protector-strong -Wno-unused-but-set-variable -Wno-unused-const-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -g -Wdeclaration-after-statement -Wno-pointer-sign -Wno-stringop-truncation -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fno-stack-check -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -fmacro-prefix-map=/home/zw/share/ultra96/mipitest/linux-xlnx/= -Wno-packed-not-aligned    -DKBUILD_BASENAME='"irq_regs"' -DKBUILD_MODNAME='"irq_regs"' -c -o lib/irq_regs.o /home/zw/share/ultra96/mipitest/linux-xlnx/lib/irq_regs.c

source_lib/irq_regs.o := /home/zw/share/ultra96/mipitest/linux-xlnx/lib/irq_regs.c

deps_lib/irq_regs.o := \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/kconfig.h \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/export.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/module/rel/crcs.h) \
    $(wildcard include/config/have/arch/prel32/relocations.h) \
    $(wildcard include/config/trim/unused/ksyms.h) \
    $(wildcard include/config/unused/symbols.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/kasan.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/compiler_types.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/uapi/linux/types.h \
  arch/arm64/include/generated/uapi/asm/types.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/uapi/asm-generic/types.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/int-ll64.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/uapi/asm-generic/int-ll64.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/uapi/asm/bitsperlong.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/bitsperlong.h \
    $(wildcard include/config/64bit.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/uapi/asm-generic/bitsperlong.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/uapi/linux/posix_types.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/stddef.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/uapi/linux/stddef.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/uapi/asm/posix_types.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/uapi/asm-generic/posix_types.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/asm/barrier.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/barrier.h \
    $(wildcard include/config/smp.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/kasan-checks.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
    $(wildcard include/config/debug/vm/pgflags.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/bug/on/data/corruption.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/asm/bug.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/stringify.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/asm/asm-bug.h \
    $(wildcard include/config/debug/bugverbose.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/asm/brk-imm.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/kernel.h \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/arch/has/refcount.h) \
    $(wildcard include/config/panic/timeout.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /home/zw/share/ultra96/mipitest/build/tmp/work/ultra96_zynqmp-xilinx-linux/linux-xlnx/4.19-xilinx-v2019.1+git999-r0/recipe-sysroot-native/usr/lib/aarch64-xilinx-linux/gcc/aarch64-xilinx-linux/8.2.0/include/stdarg.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/linkage.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/asm/linkage.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/bitops.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/bits.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/asm/bitops.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/bitops/builtin-__ffs.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/bitops/builtin-ffs.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/bitops/builtin-__fls.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/bitops/builtin-fls.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/bitops/ffz.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/bitops/fls64.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/bitops/sched.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/bitops/hweight.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/bitops/arch_hweight.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/bitops/const_hweight.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/bitops/atomic.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/atomic.h \
    $(wildcard include/config/generic/atomic64.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/asm/atomic.h \
    $(wildcard include/config/arm64/lse/atomics.h) \
    $(wildcard include/config/as/lse.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/asm/lse.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/asm/alternative.h \
    $(wildcard include/config/arm64/uao.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/asm/cpucaps.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/asm/insn.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/init.h \
    $(wildcard include/config/strict/kernel/rwx.h) \
    $(wildcard include/config/strict/module/rwx.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/asm/atomic_lse.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/asm/cmpxchg.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/build_bug.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/atomic-long.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/bitops/lock.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/bitops/non-atomic.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/bitops/le.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/uapi/asm/byteorder.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/byteorder/little_endian.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/uapi/linux/byteorder/little_endian.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/swab.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/uapi/linux/swab.h \
  arch/arm64/include/generated/uapi/asm/swab.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/uapi/asm-generic/swab.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/byteorder/generic.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/typecheck.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/printk.h \
    $(wildcard include/config/message/loglevel/default.h) \
    $(wildcard include/config/console/loglevel/default.h) \
    $(wildcard include/config/console/loglevel/quiet.h) \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk/nmi.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/kern_levels.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/uapi/linux/kernel.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/uapi/linux/sysinfo.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/asm/cache.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/asm/cputype.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/asm/sysreg.h \
    $(wildcard include/config/broken/gas/inst.h) \
    $(wildcard include/config/arm64/pa/bits/52.h) \
    $(wildcard include/config/arm64/4k/pages.h) \
    $(wildcard include/config/arm64/16k/pages.h) \
    $(wildcard include/config/arm64/64k/pages.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/asm/compiler.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/preempt.h \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/trace/preempt/toggle.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
    $(wildcard include/config/page/poisoning/zero.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/const.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/uapi/linux/const.h \
  arch/arm64/include/generated/asm/preempt.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/preempt.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/thread_info.h \
    $(wildcard include/config/thread/info/in/task.h) \
    $(wildcard include/config/have/arch/within/stack/frames.h) \
    $(wildcard include/config/hardened/usercopy.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/restart_block.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/time64.h \
    $(wildcard include/config/64bit/time.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/math64.h \
    $(wildcard include/config/arch/supports/int128.h) \
  arch/arm64/include/generated/asm/div64.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/div64.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/uapi/linux/time.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/asm/current.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/asm/thread_info.h \
    $(wildcard include/config/arm64/sw/ttbr0/pan.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/asm/memory.h \
    $(wildcard include/config/arm64/va/bits.h) \
    $(wildcard include/config/vmap/stack.h) \
    $(wildcard include/config/debug/align/rodata.h) \
    $(wildcard include/config/blk/dev/initrd.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/asm/page-def.h \
    $(wildcard include/config/arm64/page/shift.h) \
    $(wildcard include/config/arm64/cont/shift.h) \
  arch/arm64/include/generated/asm/sizes.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/sizes.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/sizes.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/pfn.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/asm/stack_pointer.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/smp.h \
    $(wildcard include/config/up/late/init.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/errno.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/uapi/linux/errno.h \
  arch/arm64/include/generated/uapi/asm/errno.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/uapi/asm-generic/errno.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/uapi/asm-generic/errno-base.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/bitmap.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
    $(wildcard include/config/fortify/source.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/uapi/linux/string.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/asm/string.h \
    $(wildcard include/config/arch/has/uaccess/flushcache.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/asm/smp.h \
    $(wildcard include/config/arm64/acpi/parking/protocol.h) \
  /home/zw/share/ultra96/mipitest/linux-xlnx/arch/arm64/include/asm/percpu.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/percpu.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
    $(wildcard include/config/virtualization.h) \
    $(wildcard include/config/amd/mem/encrypt.h) \
  arch/arm64/include/generated/asm/irq_regs.h \
  /home/zw/share/ultra96/mipitest/linux-xlnx/include/asm-generic/irq_regs.h \

lib/irq_regs.o: $(deps_lib/irq_regs.o)

$(deps_lib/irq_regs.o):