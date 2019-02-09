#!/bin/bash

TITLE=$1
OUTPUT_DIR="/Users/Shared/DVDRips"

# Use makemkvcon to decrypt the Blu Ray disk
makemkvcon backup --decrypt --cache=16 --noscan -r --progress=-same disc:1 \
  "${OUTPUT_DIR}/${TITLE}/"

# Eject the disk
hdiutil eject /dev/disk1
