#!/bin/sh
sudo apt-get -y update && apt-get -y upgrade
sudo apt-get -y install libcurl4-openssl-dev libjansson-dev libomp-dev git screen nano jq wget
wget http://ports.ubuntu.com/pool/main/o/openssl/libssl1.1_1.1.0g-2ubuntu4_arm64.deb
sudo dpkg -i libssl1.1_1.1.0g-2ubuntu4_arm64.deb
rm libssl1.1_1.1.0g-2ubuntu4_arm64.deb
git clone https://github.com/Darktron/piccminer.git
cd ~/piccminer
chmod +x oc.sh ccminer start.sh
chmod 755 mod5b.dtb
mv mod5b.dtb /boot/dtb/rockchip/
mv oc.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start oc.service
sudo systemctl enable oc.service
export VISUAL=nano
export EDITOR=nano
(crontab -l ; echo "@reboot sleep 10 && ~/piccminer/start.sh") | crontab -
