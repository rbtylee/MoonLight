[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/paypalme/rbtylee)

# MokshaMoonlight
This repo contains the MokshaMoonlight Moksha theme with matching elementary theme, application theme and icons.

The Moksha theme is a continuation of the [OpenGEU](https://en.wikipedia.org/wiki/OpenGEU) Quarto di Luna Theme, updated originally by Alberto "Duma" Verdoja. 

![Current Image](http://i.imgur.com/kM9AIVv.png "Moonlight Theme")

# Dependencies

### Build
The below are only needed if you use the meson/ninja build system:

* [meson](https://mesonbuild.com/)
* pkg-config
* The development files for Moksha/e17 and for EFL.

To install and use the Moksha Theme you will need:
* [EFL](https://www.enlightenment.org/download): only need the edje_cc bin, a part of efreet.
* [Moksha](https://github.com/JeffHoogland/moksha)

This package will install on e17 and current versions of enlightenment. It is not a proper e theme for versions of e>17 so this is not recommended. 

### Fonts

The Moksha Theme Moonlight uses a sans fontface. Be sure one is installed and fontconfig is properly set up. Bodhi by default uses:

* fonts-dejavu-core

### Icons
It is recommended you have the hicolor-icon-theme installed as it is the default fallback theme for FreeDesktop.org icon themes.

Since the MoskhaMoonlight Icon theme *inherits* from the below icon sets, it is suggested you install one or more of them as well.

* gnome-icon-theme
* ubuntu-mono
* breeze-icon-theme
* oxygen-icon-theme
### Application Theme

* gtk2-engines-murrine

# Installation

It is recommended Bodhi users install from Bodhi's repo:

```ShellSession
sudo apt update
sudo apt install bodhi-theme-moksha-moonlight
```
Other users need to manually install or use the meson build system.

To install the Moksha theme, and the matching elementary theme, icons and application theme system wide for all users run the following commands in the top directory of this repo:

```ShellSession
meson . build
ninja -C build
sudo ninja -C build install
```
To install the Moksha theme and the matching elementary theme icons and application theme system wide only for the current user run the following commands in the top directory of this repo:

```ShellSession
meson . build
ninja -C build
ninja -C build install
```
Note each component can be install seperately, see [meson_options.txt](https://github.com/rbtylee/MoonLIght/blob/master/meson_options.txt). For example to install only the icons system wide:

```ShellSession
meson -Dedj=false -Delm=false -Dgtk=false . build
ninja -C build
sudo ninja -C build install
```
### Uninstalling

The ninja build system does not properly support uninstalling components install by scripts. Therefore everything installed has to be manually uninstalled by the user. If you install the theme using the meson defaults you can use the provided *uninstall-theme.sh* script to remove everything installed. Run this script as root if you wish to remove the files installed system wide, just note this will remove the files even they were installed by apt!

# Reporting bugs

Please use the GitHub issue tracker for any bugs or feature suggestions:

>https://github.com/rbtylee/MoonLIght/issues

# Contributing

Help is always Welcome, as with all Open Source Projects the more people that help the better it gets!
More icons would be especially welcome and much needed.

Please submit patches as GitHub pull requests!

Contributions must be licensed under this project's copyright (see LICENSE).

# Support This Project

Donations to [Bodhi Linux](https://www.bodhilinux.com/donate/) would be greatly appreciate and keep our distro moving along. But if you like the work we do for Bodhi and wish to see more of it, we'd be happy about a donation. You can either donate via [PayPall](https://www.paypal.com/paypalme/rbtylee) or [Liberapay](https://liberapay.com/ylee/). 

# Credits
###  Moksha Theme
Full credit for the original code of the Moksha theme go to the OpenGEU team and Duma:
* _*Luca De Marini*_
* _*Art Pulse*_

Bodhi specific modifications:
* _*Alberto "Duma" Verdoja*_
* _*Štefan Uram*_
* _*Robert Wiley*_

###  Icons
The Icons are a modification of the [archdroid-icon-theme](https://github.com/GreenRaccoon23/archdroid-icon-theme), a port of Google's [material design icons](https://material.io/guidelines/) for Android Lollipop 5.0 to Linux.
* _*[The Google Devs](https://github.com/google/material-design-icons/graphs/contributors)*_
* _*[Dan Gorby](https://github.com/GreenRaccoon23)*_
 
Bodhi specific modifications:
* _*Štefan Uram*_

###  Application Theme
The GTK theme produced using the [Themix GUI designer](https://github.com/themix-project/oomox)
* _*[Themix project](https://github.com/themix-project)*_
* _*Štefan Uram*_

###  Build System
Meson Build system and file reorganization:
* _*Robert Wiley*_

For a little more detail, see also the [CREDITS FILE](https://github.com/rbtylee/MoonLIght/blob/master/CREDITS).
