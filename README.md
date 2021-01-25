# xow_MiSTer
Linux driver for the Xbox One wireless dongle compiled for MiSTer.

This is binary release of the xow driver created by medusalix (https://github.com/medusalix/xow).

# Installation (automatic/update script)
This script will be included in the official MiSTer update script after testing is complete.

# Installation (manual)
Copy the following files to the linux directory on your SD card:
* xow
* xow_init_script

Copy these files to the Scripts directory on your SD card:
* xow_on.sh
* xow_off.sh
* xow_pairing.sh

NOTE: This driver requires an updated Linux kernel to work properly with older Xbox Wireless adapters.  This update will automatically be included in the next MiSTer Linux kernel release, but for now you can download the included zImage_dtb and replace the existing one.  (SD card/linux)

# Instructions
On and off scripts are self explantory, but the xow_pairing.sh script allows the Xbox dongle to enter pairing mode so you don't need to press the physical button on the dongle.

# Troubleshooting
Compatibility mode (xow driver setting) can be enabled be setting XOW_COMPATIBILITY to 1 inside the xow_init_script and console logging can be enabled with XOW_CONSOLE_LOG=1.

You may also need to update the controller firmware if you experience instability or other issues.  This can be done using the Xbox Accessories app on Windows 10 or an Xbox console.

# Special Thanks
Huge thanks to medusalix for creating this driver and also a big thanks to Rysha/Kitrix for helping with testing and other information.  Also thanks to Sorgelig for including the neccessary kernel update, and to everybody that contributes to MiSTer.
