#!/bin/sh
sudo apt update -y
sudo apt upgrade -y
sudo apt install libcurl4-openssl-dev libjansson-dev libomp-dev git screen nano jq wget cpufrequtils -y
wget http://ports.ubuntu.com/pool/main/o/openssl/libssl1.1_1.1.0g-2ubuntu4_arm64.deb
sudo dpkg -i libssl1.1_1.1.0g-2ubuntu4_arm64.deb
rm libssl1.1_1.1.0g-2ubuntu4_arm64.deb
chmod +x oc.sh ccminer start.sh
chmod 755 mod5b.dtb
sudo chown root:root mod5b.dtb
sudo mv mod5b.dtb /boot/dtb/rockchip/
sudo mv oc.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start oc.service
sudo systemctl enable oc.service
echo "Overclock added to boot list!!!"
export VISUAL=nano
export EDITOR=nano
if crontab -u orangepi -l 2>/dev/null | grep -q "@reboot sleep 10 && ~/piccminer/start.sh"
then
    echo "CCMiner is not in boot list..."
else
    (crontab -u orangepi -l 2>/dev/null ; echo "@reboot sleep 10 && ~/piccminer/start.sh") | crontab -
    echo "CCMiner added to boot list!!!"
fi
