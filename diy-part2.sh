#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
#修改主题
sed -i 's/Bootstrap/design/g' feeds/luci/collections/luci/Makefile
sed -i 's/bootstrap/design/g' feeds/luci/collections/luci/Makefile
#修改默认wifi名
sed -i 's/OpenWrt/Vision/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/Openwrt/Vision/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
#修改默认打开wifi，0打开，1关闭
sed -i 's/disabled=1/disabled=0/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
#修改flash为32MB
sed -i 's/<0x50000 0x7b0000>/<0x50000 0x1fb0000>/g' target/linux/ramips/dts/mt7620a_phicomm_psg1218a.dts
sed -i 's/7872k/32448k/g' target/linux/ramips/image/mt7620.mk
