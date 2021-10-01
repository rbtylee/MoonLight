#!/bin/bash

# Copyright 2021 ylee@bodhilinux.com# License: GPL-3.0+
#  This program is free software: you can redistribute it and/or modify it under
#  the terms of the GNU General Public License as published by the Free Software
#  Foundation, either version 3 of the License, or (at your option) any later
#  version.
#
#  This package is distributed in the hope that it will be useful, but WITHOUT ANY
#  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
#  PARTICULAR PURPOSE. See the GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License along with
#  this program. If not, see <http://www.gnu.org/licenses/>.
#
#  On Debian systems, the complete text of the GNU General Public License version 3
#  can be found in "/usr/share/common-licenses/GPL-3".
#

if [ ! $# -eq 4 ]
  then
    echo "ERROR: Not enough arguments supplied"
    exit 1
fi

is_user_root () { [ "${EUID:-$(id -u)}" -eq 0 ]; }

edj_src="$MESON_BUILD_ROOT/src/MokshaMoonlight/MokshaMoonlight.edj"

if is_user_root; then
    edj_dst="$DESTDIR$1/$2.edj"
    elm_dst="$DESTDIR$4/$2.edj"
    mkdir -p "$DESTDIR$1"
    mkdir -p "$DESTDIR$4"
else
  if [ -z "${HOME+x}" ]; then
    echo "FATAL ERROR: Environmmental variable HOME is not set."
    exit 1
  fi
  edj_dst="$HOME/.e/e/themes/$2.edj"
  elm_dst="$HOME/.elementary/themes/$2.edj"
fi

# Install moksha theme
chmod 644 "$edj_src"
cp "$edj_src" "$edj_dst"
# create symlink for elm if installing
if [ "$3" = "true" ]; then
    ln -sf "$edj_dst" "$elm_dst"
fi

exit 0
