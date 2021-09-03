#!/bin/sh
echo "here"
echo $2 $3 $4 
# TO DO test for proper number of arguments
if [ $# -eq 0 ]
  then
    echo "ERROR: No arguments supplied"
    exit 1
fi

is_user_root () { [ "${EUID:-$(id -u)}" -eq 0 ]; }

edj_src="$MESON_BUILD_ROOT/src/MokshaMoonlight/MokshaMoonlight.edj"

if is_user_root; then
    edj_dst="$1/$2.edj"
    elm_dst="$4/$2.edj"
else
  if [ -z ${HOME+x} ]; then 
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
