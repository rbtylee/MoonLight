#!/bin/bash

# Copyright 2021 ylee@bodhilinux.com
#
# Removes all files, system and local, installed by MokshaMoonlight default meson options.
#
#	USE AT YOUR OWN RISK!!
#
# This work is free. You can redistribute it and/or modify it under the
# terms of the Do What The Fuck You Want To Public License, Version 2,
# as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.

is_user_root () { [ "${EUID:-$(id -u)}" -eq 0 ]; }

rm "$HOME/.elementary/themes/MokshaMoonlight.edj" 2> /dev/null
rm "$HOME/.e/e/themes/MokshaMoonlight.edj" 2> /dev/null
rm -rf "$HOME/.local/icons/Icons-Moksha-Moonlight" 2> /dev/null
rm -rf "$HOME/.themes/Moonlight-GTK" 2> /dev/null

if is_user_root; then
	rm /usr/share/elementary/themes/MokshaMoonlight.edj 2> /dev/null
	rm /usr/share/enlightenment/data/themes/MokshaMoonlight.edj 2> /dev/null
	rm -rf /usr/share/icons/Icons-Moksha-Moonlight 2> /dev/null
	rm -rf /usr/share/themes/Moonlight-GTK 2> /dev/null
else
	echo "Warning: Unable to remove system files. Rerun as root!!"
fi
