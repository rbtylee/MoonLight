#!/bin/bash

# Copyright 2021 ylee@bodhilinux.com
#
# License: GPL-3.0+
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

if [ $# -eq 0 ]
  then
    echo "ERROR: No arguments supplied"
    exit 1
fi

is_user_root () { [ "${EUID:-$(id -u)}" -eq 0 ]; }

gtk_src="$MESON_SOURCE_ROOT/gtk/MokshaMoonlight/"
if is_user_root; then
    gtk_dst="$DESTDIR/usr/share/themes"
    mkdir -p "$gtk_dst"
else
  if [ -z "${HOME+x}" ]; then
    echo "FATAL ERROR: Environmmental variable HOME is not set."
    exit 1
  fi
  gtk_dst="$HOME/.themes"
  mkdir -p "$gtk_dst"
fi
cp -r "$gtk_src" "$gtk_dst/$1"

exit 0
