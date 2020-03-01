#!/bin/bash

#set -e
cd android_kernel_xiaomi_sdm845
## Copy this script inside the kernel directory

echo "**** Setting Toolchain ****"
export CLANG_TOOLCHAIN=~/Desktop/Kernel_Q/toolchain/clang-6032204/bin/clang-

export CROSS_COMPILE=~/Desktop/Kernel_Q/toolchain/aarch64-linux-android-4.9/bin/aarch64-linux-android-

export CROSS_COMPILE_ARM32=~/Desktop/Kernel_Q/toolchain/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-

export ARCH=arm64

export SUBARCH=arm64

export NDKPATH=~/Desktop/Kernel_Q/ndk/android-ndk-r21c

export CCOMPILE=$CROSS_COMPILE

export ANDROID_SYSROOT=~/Desktop/Kernel_Q/ndk/android-ndk-r21c/platforms/android-18/arch-arm64

export USE_CCACHE=1

echo "**** Done Setting Toolchain ****"

echo -e "$blue***********************************************"
echo "          BUILDING KERNEL          "
echo -e "***********************************************$nocol"
rm -r out/arch/arm64/boot/Image
rm -r out/arch/arm64/boot/Image.gz
rm -r out/arch/arm64/boot/Image.gz-dtb
make O=out

#echo -e "$blue***********************************************"
#echo -e "          CREATING IMAGE.GZ-DTB          "
#echo -e "***********************************************$nocol"

echo "************"
echo "*	  DONE	 *"
echo "************"
#sha1sum $ANDROIDDIR/kernel/$FINAL_KERNEL_ZIP
