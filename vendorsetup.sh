NC='\033[0m'
BBLACK='\033[1;30m'       # Black
BRED='\033[1;31m'         # Red
BGREEN='\033[1;32m'       # Green
BYELLOW='\033[1;33m'      # Yellow
BBLUE='\033[1;34m'        # Blue
BPURPLE='\033[1;35m'      # Purple
BCYAN='\033[1;36m'        # Cyan
BWHITE='\033[1;37m'       # White

echo -e "                                             "
echo -e "${BGREEN}******************************************************** ${NC}"
echo -e "${BGREEN}*************** MANDATORY TREES FOR BUILD ************** ${NC}"
echo -e "${BGREEN}******************************************************** ${NC}"

echo -e "                                             "
echo -e "${BCYAN}Cloning Kernel Tree [1/3] ${NC}"
# Kernel Tree
git clone https://github.com/wshamroukh/android_kernel_xiaomi_cas -b taffy kernel/xiaomi/cas
echo -e "                                             "

echo -e "${BCYAN}Cloning Vendor Tree [2/3] ${NC}"
# Vendor Tree
#rm -rf vendor/xiaomi/cas
git clone https://gitlab.com/wshamroukh/vendor_xiaomi_cas.git -b cas13 vendor/xiaomi/cas
echo -e "                                             "

echo -e "${BCYAN}Cloning Xiaomi HW Tree [3/3] ${NC}"
# Hardware Xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi

echo -e "                                             "
echo -e "${BYELLOW}${BOLD}******************************************************** ${NC}"
echo -e "${BYELLOW}${BOLD}******************** OPTIONAL TREES ******************** ${NC}"
echo -e "${BYELLOW}${BOLD}******************************************************** ${NC}"

# COMMENT OUT UNNECESSARY TREES BELOW AS YOU WISH

echo -e "                                             "
echo -e "${BPURPLE}Cloning USB Drivers [1/5]${NC}"
# USB Tree
#rm -rf vendor/qcom/opensource/usb
git clone https://github.com/ArrowOS/android_vendor_qcom_opensource_usb -b arrow-13.0 vendor/qcom/opensource/usb

echo -e "                                             "
echo -e "${BPURPLE}Cloning QCOM SEPolicy [2/5]${NC}"
# QCOM SEPolicy
#rm -rf device/qcom/sepolicy
git clone https://github.com/ArrowOS/android_device_qcom_sepolicy -b arrow-13.0 device/qcom/sepolicy
#rm -rf device/qcom/sepolicy-legacy
git clone https://github.com/ArrowOS/android_device_qcom_sepolicy-legacy device/qcom/sepolicy-legacy
#rm -rf device/qcom/sepolicy-legacy-um
git clone https://github.com/ArrowOS/android_device_qcom_sepolicy-legacy-um -b arrow-13.0 device/qcom/sepolicy-legacy-um
#rm -rf device/qcom/sepolicy_vndr
git clone https://github.com/ArrowOS/android_device_qcom_sepolicy_vndr -b arrow-13.0 device/qcom/sepolicy_vndr
#rm -rf device/qcom/sepolicy_vndr-legacy-um
git clone https://github.com/ArrowOS/android_device_qcom_sepolicy_vndr-legacy-um -b arrow-13.0 device/qcom/sepolicy_vndr-legacy-um

echo -e "                                             "
echo -e "${BPURPLE}Cloning display HAL [3/5]${NC}"
# Display HALs
#rm -rf hardware/qcom-caf/sm8250/display
git clone --depth=1 https://github.com/AcmeUI/android_hardware_qcom_display -b spring-caf-sm8250 hardware/qcom-caf/sm8250/display

echo -e "                                             "
echo -e "${BPURPLE}Cloning audio HAL [4/5]${NC}"
# Audio HALs
#rm -rf hardware/qcom-caf/sm8250/audio
git clone https://github.com/PixelExperience/hardware_qcom-caf_sm8250_display -b thirteen hardware/qcom-caf/sm8250/display

echo -e "                                             "
echo -e "${BPURPLE}Cloning media HAL [5/5]${NC}"
# Media HALs
#rm -rf hardware/qcom-caf/sm8250/media
git clone --depth=1 https://github.com/AcmeUI/android_hardware_qcom_media -b taffy-caf-sm8250 hardware/qcom-caf/sm8250/media
