#!/bin/sh
#exit existing screens with the name ccminer
screen -S ccminer -X quit 1>/dev/null 2>&1
#wipe any existing (dead) screens)
screen -wipe 1>/dev/null 2>&1
#create new disconnected session ccminer
screen -dmS ccminer 1>/dev/null 2>&1
#run the miner
screen -S ccminer -X stuff "~/piccminer/ccminer -c ~/piccminer/config.json\n" 1>/dev/null 2>&1
printf '\nMining started.\n'
printf '===============\n'
printf '\nManual:\n'
printf 'start: ~/.piccminer/start.sh\n'
printf 'stop: screen -X -S ccminer quit\n'
printf '\nmonitor mining: screen -x ccminer\n'
printf "exit monitor: 'CTRL-a' followed by 'd'\n\n"