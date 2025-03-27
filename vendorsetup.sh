echo 'Cloning stuff needed to build for vili'

echo 'Cloning common device tree'
git clone https://github.com/TYRBadingBuilds/device_xiaomi_sm8350-common -b RisingOS_Branch device/xiaomi/sm8350-common
  
# Kernel
echo 'Cloning kernel'
git clone https://github.com/AOSP-for-vili/android_kernel_xiaomi_sm8350.git -b lineage-22.1-ksunext kernel/xiaomi/sm8350
cd kernel/xiaomi/sm8350 
git submodule init 
git submodule update 
cd ../../../
  
# Hardware Xiaomi
echo 'Cloning hardware xiaomi'
git clone https://github.com/AOSP-for-vili/android_hardware_xiaomi.git -b lineage-22.1 hardware/xiaomi

# Vendor
echo 'Cloning vendor tree'
git clone https://github.com/TYRBadingBuilds/vendor_xiaomi_vili -b lineage-22.1 vendor/xiaomi/vili
  
# Vendor common
echo 'Cloning common vendor tree'
git clone https://github.com/TYRBadingBuilds/vendor_xiaomi_sm8350-common -b lineage-22.1 vendor/xiaomi/sm8350-common
  
# Meme camera
# echo 'Cloning meme camera'
# git clone https://github.com/AOSP-for-vili/vendor_xiaomi_camera.git vendor/xiaomi/camera
  
# Firmware
echo 'Cloning firmware'
git clone https://gitlab.com/0mar99/vendor-xiaomi-vili-firmware.git vendor/xiaomi/vili-firmware
  
# Leica patch
 
# echo 'Adding Leica camera patch'
# cd frameworks/base
# get https://raw.githubusercontent.com/xiaomi-haydn-devs/Patch-Haydn/14/Leicamera/0001-Add-backwards-compatible-CaptureResultExtras-constructor.patch
# patch -p1 <0001-Add-backwards-compatible-CaptureResultExtras-constructor.patch
# cd ../..

echo 'delete vendorsetup.sh from device tree once this is done'
