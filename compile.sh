echo "======================="
echo "start compile"
echo "======================="
echo ""
function compiler() {
    make -j$(nproc --all) O=out ARCH=arm64 <CODE_NAME>_defconfig
    make -j$(nproc --all) ARCH=arm64 O=out \
                          CROSS_COMPILE=aarch64-linux-gnu- \
                          CROSS_COMPILE_ARM32=arm-linux-gnueabi-
}
compiler
echo "======================="
echo "Compile complete"
echo "======================="