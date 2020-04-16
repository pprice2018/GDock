#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate
sed -i 's/Openwrt/Kyara SSR+/g' package/base-files/files/bin/config_generate
sed -i 's/Openwrt/Kyara/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
git clone https://github.com/fw876/helloworld package/SSR_Plus
./scripts/feeds update -a
./scripts/feeds install -a
