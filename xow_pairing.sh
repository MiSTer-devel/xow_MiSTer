#!/bin/bash

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Copyright 2021 John "sofakng" Klimek

# You can download the latest version of this script from:
# https://github.com/MiSTer-devel/Scripts_MiSTer

# Version 1.0 - 2021-01-21 - First commit

LINUX_PATH="/media/fat/linux"
XOW_INIT_SCRIPT="$LINUX_PATH/xow_init_script"

if [ "$(uname -n)" != "MiSTer" ]
then
	echo "This script must be run"
	echo "on a MiSTer system."
	exit 1
fi

if [ ! -f "${LINUX_PATH}/xow" ]
then
	echo "xow binary not found."
	echo "Please run updater script."
	exit 1
fi

if [ ! -f "${LINUX_PATH}/xow" ]
then
        echo "xow binary not found."
        echo "Please run updater script."
        exit 1
fi

if [ -z "$(pidof xow)" ]
then
        echo "ERROR: xow service is not running!"
	exit 1
fi

/etc/init.d/S40xow pair

echo "xow service has enabled pairing mode."
exit 0
