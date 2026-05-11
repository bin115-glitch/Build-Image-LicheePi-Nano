cmd_arch/arm/boot/dts/sun9i-a80-optimus.dtb := mkdir -p arch/arm/boot/dts/ ; gcc -E -Wp,-MD,arch/arm/boot/dts/.sun9i-a80-optimus.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.sun9i-a80-optimus.dtb.dts.tmp arch/arm/boot/dts/sun9i-a80-optimus.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/sun9i-a80-optimus.dtb -b 0 -iarch/arm/boot/dts/ -i./scripts/dtc/include-prefixes -Wno-unit_address_vs_reg -Wno-unit_address_format -Wno-avoid_unnecessary_addr_size -Wno-alias_paths -Wno-graph_child_address -Wno-simple_bus_reg -Wno-unique_unit_address -Wno-pci_device_reg  -d arch/arm/boot/dts/.sun9i-a80-optimus.dtb.d.dtc.tmp arch/arm/boot/dts/.sun9i-a80-optimus.dtb.dts.tmp ; cat arch/arm/boot/dts/.sun9i-a80-optimus.dtb.d.pre.tmp arch/arm/boot/dts/.sun9i-a80-optimus.dtb.d.dtc.tmp > arch/arm/boot/dts/.sun9i-a80-optimus.dtb.d

source_arch/arm/boot/dts/sun9i-a80-optimus.dtb := arch/arm/boot/dts/sun9i-a80-optimus.dts

deps_arch/arm/boot/dts/sun9i-a80-optimus.dtb := \
  arch/arm/boot/dts/sun9i-a80.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/arm-gic.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \
  scripts/dtc/include-prefixes/dt-bindings/clock/sun9i-a80-ccu.h \
  scripts/dtc/include-prefixes/dt-bindings/clock/sun9i-a80-de.h \
  scripts/dtc/include-prefixes/dt-bindings/clock/sun9i-a80-usb.h \
  scripts/dtc/include-prefixes/dt-bindings/reset/sun9i-a80-ccu.h \
  scripts/dtc/include-prefixes/dt-bindings/reset/sun9i-a80-de.h \
  scripts/dtc/include-prefixes/dt-bindings/reset/sun9i-a80-usb.h \
  scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h \
  arch/arm/boot/dts/axp809.dtsi \

arch/arm/boot/dts/sun9i-a80-optimus.dtb: $(deps_arch/arm/boot/dts/sun9i-a80-optimus.dtb)

$(deps_arch/arm/boot/dts/sun9i-a80-optimus.dtb):
