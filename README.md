# Orange Pi 5, B, & Plus
CCminer on Orange Pi 5, 5B, & Plus with Overclock and tweaks.

This is an installation script integrated with optimized ccminer for cortex-a76 & cortex-a55 compiled in clang 18.

This script has been tested to work in `Orangepi5b_1.0.2_ubuntu_jammy_server_linux5.10.110.img` firmware.

Here is a list of features done by the installation script:
- Install ccminer and dependencies.
- Makes a "oc.sh & oc.service" for easy overclocking on boot.
- Makes the ccminer start on boot via crontab.
- Lastly integrates a modified kernel file for a slight overvoltage (ONLY Orange Pi 5B Model).

1. Clone repo with:
```
git clone https://github.com/Darktron/piccminer.git && cd ~/piccminer
```

2. Make executable & run installer with:
```
chmod +x install.sh && ./install.sh
```

3. Change your pools, address, and miner name with:
```
nano config.json
```

**At this point I highly recommend a reboot: `reboot`**

4. Start miner with:
```
~/piccminer/start.sh
```

5. View miner with:
```
screen -x ccminer
```

6. Detach miner with:
```
CTRL-a then d
```

7. Optional edit overclock with:
```
nano ~/piccminer/oc.sh
```
- Perform a reboot after editing overclock with: `reboot`

8. Optional (ONLY Orange Pi 5B Model) can brick the SBC and will need to reflash OS:
```
sudo orangepi-config
```
- From here we go to `System > Bootenv` in this list he need to modify fdtfile to: `fdtfile=rockchip/mod5b.dtb`

- Then `Save > Back > Exit` now perform a reboot with: `reboot`
