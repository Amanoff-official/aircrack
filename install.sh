#!/bin/bash

print_with_effect() {
    local text="$1"
    local delay="$2"
    for (( i=0; i<${#text}; i++ )); do
        echo -n "${text:$i:1}"
        sleep "$delay"
    done
    echo
}

NC='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'

logo="┌───────────────\nÝasan Amanoff Official\n├───────────────\n𝗞𝗔𝗡𝗔𝗟: @hzm_hacker\n└───────────────"

pkg install wget git
apt install libc++ libnl libpcap libsqlite openssl pcre zlib -y
echo -e "${GREEN}" 
print_with_effect "$logo" 0.1
echo -e "${NC}"

ARCH=$(uname -m)

# Определение, является ли архитектура ARM
if [[ "$ARCH" == arm* ]]; then
    echo "$ARCH üçin aircrack-ng gurnalýa"
    wget https://raw.githubusercontent.com/pitube08642/aircrack-ng-for-termux/main/dists/termux/aircrack-ng/binary-arm/aircrack-ng_3_1.7_arm.deb
    dpkg -i aircrack-ng_3_1.7_arm.deb
    print_with_effect "✅ $ARCH üçin aircrack-ng gurnaldy ✅" 0.1
    echo "Aircrack-ng test edilýä"
    aircrack-ng -S
elif [ "$ARCH" = "i686" ]; then
    echo "i686 üçin aircrack-ng gurnalýa"
    wget https://raw.githubusercontent.com/pitube08642/aircrack-ng-for-termux/main/dists/termux/aircrack-ng/binary-i686/aircrack-ng_3_1.7_i686.deb
    dpkg -i aircrack-ng_3_1.7_i686.deb
    print_with_effect "✅ $ARCH üçin aircrack-ng gurnaldy ✅" 0.1
    echo "Aircrack-ng test edilýä"
    aircrack-ng -S
elif [ "$ARCH" = "x86_64" ]; then
    echo "x86_64 üçin aircrack-ng gurnalýa"
    wget https://raw.githubusercontent.com/pitube08642/aircrack-ng-for-termux/main/dists/termux/aircrack-ng/binary-x86_64/aircrack-ng_3_1.7_x86_64.deb
    dpkg -i aircrack-ng_3_1.7_x86_64.deb
    print_with_effect "✅ $ARCH üçin aircrack-ng gurnaldy ✅" 0.1
    echo "Aircrack-ng test edilýä"
    aircrack-ng -S
elif [ "$ARCH" = "aarch64" ]; then
    echo "aarch64 üçin aircrack-ng gurnalýa"
    wget https://raw.githubusercontent.com/pitube08642/aircrack-ng-for-termux/main/dists/termux/aircrack-ng/binary-aarch64/aircrack-ng_3_1.7_aarch64.deb
    dpkg -i aircrack-ng_3_1.7_aarch64.deb
    print_with_effect "✅ $ARCH üçin aircrack-ng gurnaldy ✅" 0.1
    echo "Aircrack-ng test edilýä"
    aircrack-ng -S
else
    echo "⚠️ $ARCH ⚠️"
    echo "@Official_amanoff bilen habarlaş"
fi

print_with_effect "Eger aircrack-ng error berse @Official_amanoff bilen habarlaşyň" 0.1