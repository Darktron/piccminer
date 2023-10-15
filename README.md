# Orange Pi 5, B, & Plus CCminer
CCminer on Orange Pi 5, 5B, &amp; Plus with Overclock and tweaks.
1. Clone repo and enter dir with:
```
git clone https://github.com/Darktron/piccminer.git
cd piccminer
```

2. Run installer with:
```
sudo ./install.sh
```

3. Change your pools, address, and miner name with:
```
nano config.json
```

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
Ctrl+a then d
```

7. Optional (ONLY Orange Pi 5B Model) can brick the SBC and will need to flash OS:
```
sudo orangepi-config
```
From here we go to System > Bootenv
in this list he need to modify to ``` fdtfile=rockchip/mod5b.dtb ```
then Save > Back > Exit
Now perform a reboot by ``` reboot ```
