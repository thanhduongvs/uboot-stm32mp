# uboot-stm32mp

## 1. Cài đặt ARM Cross Compiler: GCC
- `cd toolchain`
- `wget -c https://releases.linaro.org/components/toolchain/binaries/6.5-2018.12/arm-linux-gnueabihf/gcc-linaro-6.5.0-2018.12-x86_64_arm-linux-gnueabihf.tar.xz`
- `tar xf gcc-linaro-6.5.0-2018.12-x86_64_arm-linux-gnueabihf.tar.xz`
- `vim ~/.bashrc`
- thêm dòng này ở cuối file `export PATH=$PATH:~/toolchain/gcc-linaro-6.5.0-2018.12-x86_64_arm-linux-gnueabihf/bin`
- `source ~/.bashrc`

## 2. Build u-boot
- `git clone https://github.com/thanhduongvs/uboot-stm32mp.git`
- `cd uboot-v2020.01-stm32mp`
- `export CROSS_COMPILE=arm-linux-gnueabihf-`
- `export ARCH=arm`
- `export DEVICE_TREE=stm32mp157c-kmtek-octavo`
- `export KBUILD_OUTPUT=./build`
- `make distclean`
- `make stm32mp15_basic_defconfig` hoặc `make stm32mp15_trusted_defconfig`
- `make -j8 all`

## 3. Output files u-boot
- xem mục **6. Output files** https://github.com/STMicroelectronics/u-boot/blob/v2020.01-stm32mp/doc/board/st/stm32mp1.rst
- xem mục **Step 5a: Configuring SD card to use custom U-Boot (Basic boot chain)** https://octavosystems.com/app_notes/stm32mp1-cubemx-tutorial-for-osd32mp15x/#post-10385-_Toc45627503

## 4. Link tham khảo

1. https://www.digikey.com/eewiki/display/linuxonarm/STM32MP1
2. https://wiki.st.com/stm32mpu/wiki/U-Boot_overview
3. https://wiki.st.com/stm32mpu/wiki/U-Boot_-_How_to_debug
4. https://wiki.st.com/stm32mpu/wiki/How_to_configure_U-Boot_for_your_board