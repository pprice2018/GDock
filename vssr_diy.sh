#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate
sed -i 's/Openwrt/Kyara HelloWorld/g' package/base-files/files/bin/config_generate
sed -i 's/Openwrt/Kyara/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
git clone https://github.com/jerrykuku/lua-maxminddb package/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr package/luci-app-vssr
./scripts/feeds update -a
./scripts/feeds install -a
