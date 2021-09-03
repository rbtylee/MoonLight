#!/bin/sh

if [ $# -eq 0 ]
  then
    echo "ERROR: No arguments supplied"
    exit 1
fi

is_user_root () { [ "${EUID:-$(id -u)}" -eq 0 ]; }

icon_src="$MESON_SOURCE_ROOT/icons/MokshaMoonlight/"
if is_user_root; then
    icon_dst="/usr/share/icons"
else
  if [ -z ${HOME+x} ]; then 
    echo "FATAL ERROR: Environmmental variable HOME is not set."
    exit 1
  fi
  # If XDG_DATA_HOME is unset set it to default value
  if [ -z ${XDG_DATA_HOME+x} ]; then 
    XDG_DATA_HOME="$HOME/.local/share"
  fi
  icon_dst="$XDG_DATA_HOME/icons"
fi
cp -r "$icon_src" "$icon_dst/$1"

exit 0
