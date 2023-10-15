# Orange Pi 5, B, & Plus
CCminer on Orange Pi 5, 5B, &amp; Plus with Overclock and tweaks.
1. Run installer with:
```
curl -o- -k https://raw.githubusercontent.com/Darktron/piccminer/main/install.sh | bash && cd ~/piccminer
```

2. Change your pools, address, and miner name with:
```
nano config.json
```

3. Start miner with:
```
~/piccminer/start.sh
```

4. View miner with:
```
screen -x ccminer
```

5. Detach miner with:
```
CTRL-a then d
```

6. Optional (ONLY Orange Pi 5B Model) can brick the SBC and will need to flash OS:
```
sudo orangepi-config
```
From here we go to `System > Bootenv` in this list he need to modify fdtfile to: `fdtfile=rockchip/mod5b.dtb`

Then `Save > Back > Exit` now perform a reboot with: `reboot`
