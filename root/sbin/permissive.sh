#!/sbin/sh

setenforce 0

mkdir -p /dev/block/platform/soc/11270000.ufshci/by-name/
busybox mount -o bind /dev/block/platform/soc/11270000.ufshci/by-name/ /dev/block/platform/soc/11270000.ufshci/by-name/