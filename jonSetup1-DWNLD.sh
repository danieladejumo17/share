#!/bin/bash

# --- Download a folder with various edited files ---
echo "Setting up some path aliases..." 
HOME_DIR="/home/vk-jn-or"
cd "$HOME_DIR"
DWNLD_PARENT="$HOME_DIR/Downloads/Jetson-Orin-Nano"
mkdir -p $DWNLD_PARENT
# Correct format for wget to download from goggle drive
echo "Downloading and unzipping a folder with various pre-edited files..." 
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1tI9cJS2W5OOhivBIsbwpRjh5MJDfygCk' -O "$DWNLD_PARENT/AM_JON_2SHARE.zip"
cd "$DWNLD_PARENT"
unzip AM_JON_2SHARE.zip
rm AM_JON_2SHARE.zip 
cd "$HOME_DIR"

echo "Converting shell scripts to executables..." 
find "$DWNLD_PARENT/AM_JON_2SHARE/shellScripts/" -type f -name "*.sh" -exec chmod +x {} \; 

echo "Download and unzip completed..."
