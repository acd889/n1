#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.11.1/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

# 更换最新的golang版本
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 23.x feeds/packages/lang/golang

# 加入E8820S支持
#wget https://gitee.com/jin3014/openwrt-swind/raw/master/target/linux/ramips/dts/mt7621_zte_e8820s.dts
#rsync -a  mt7621_* target/linux/ramips/dts
#wget https://gitee.com/jin3014/Actions-OpenWrt/raw/main/0001-2305-Add-ZTE-E8820S-with-MTK-SDK-partition-support.patch
#patch -p1 -N < 0001-2305-Add-ZTE-E8820S-with-MTK-SDK-partition-support.patch
#rm  0001-2305-Add-ZTE-E8820S-with-MTK-SDK-partition-support.patch

