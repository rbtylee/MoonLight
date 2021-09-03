#!/bin/sh

if [ $# -eq 0 ]
  then
    echo "ERROR: No arguments supplied"
    exit 1
fi

is_user_root () { [ "${EUID:-$(id -u)}" -eq 0 ]; }

gtk_src="$MESON_SOURCE_ROOT/gtk/MokshaMoonlight/"
if is_user_root; then
    gtk_dst="/usr/share/themes"
else
  if [ -z ${HOME+x} ]; then 
    echo "FATAL ERROR: Environmmental variable HOME is not set."
    exit 1
  fi
  gtk_dst="$HOME/.themes"
fi
cp -r "$gtk_src" "$gtk_dst/$1"

exit 0
