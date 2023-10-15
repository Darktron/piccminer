#!/bin/bash

# Set the governor and frequency for cores 0 to 7
sudo cpufreq-set -g userspace -d 1.8GHz -u 1.8GHz -c 0 #cortex-a55
sudo cpufreq-set -g userspace -d 1.8GHz -u 1.8GHz -c 1 #cortex-a55
sudo cpufreq-set -g userspace -d 1.8GHz -u 1.8GHz -c 2 #cortex-a55
sudo cpufreq-set -g userspace -d 1.8GHz -u 1.8GHz -c 3 #cortex-a55
sudo cpufreq-set -g userspace -d 2.256GHz -u 2.400GHz -c 4 #cortex-a76
sudo cpufreq-set -g userspace -d 2.256GHz -u 2.400GHz -c 5 #cortex-a76
sudo cpufreq-set -g userspace -d 2.256GHz -u 2.400GHz -c 6 #cortex-a76
sudo cpufreq-set -g userspace -d 2.256GHz -u 2.400GHz -c 7 #cortex-a76