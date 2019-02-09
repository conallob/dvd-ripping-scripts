#!/bin/bash

# Use makemkvcon to decrypt the Blu Ray disk
makemkvcon backup --decrypt --cache=16 --noscan \
  -r --progress=-same disc:1 \
  $1

# Eject the disk
hdiutil eject /dev/disk1
