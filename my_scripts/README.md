Before using scripts you need to modify the locations of the dependencys
like cross_compiler is located in
/home/user/Desktop/Kernel_Q/toolchain/aarch64-linux-android-4.9/bin/aarch64-linux-android-
if you use same location as the scripts say then you dont need to modify them
but if not then modify the locations in every script.

And remember toolchain requires always a full path /home/user/...... not ~/kernel/toolchain

needed things are only

cross_comiple
cross_compile_arm32
arch
sub_arch

optimal
other thins in toolchain section

And place the scripts in The kernel_source folder (that what you cloned or downloaded).
