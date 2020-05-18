#!/usr/bin/env bash

# Finds all physical disks on the machine and runs a short or long disk check using smartctl.

if [ "$#" -ne 1 ]; then
    echo "Error: one argument needed."
    echo "Usage: ./check-disks.sh <short|long>"
fi

DISK_LIST=$(fdisk -l | grep "Disk /dev" | grep -v "/dev/loop" | awk '{print $2}' | sed 's/.$//')

for disk in $DISK_LIST; do
  echo "Running $1 disk test on $disk"
  smartctl -t "$1" "$disk"
done
