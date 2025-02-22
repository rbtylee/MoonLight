[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/paypalme/rbtylee)

# MokshaMoonlight

This repo contains the MokshaMoonlight Moksha theme with matching elementary theme, application theme and icons.

The Moksha theme is a continuation of the [OpenGEU](https://en.wikipedia.org/wiki/OpenGEU) Quarto di Luna Theme, updated originally by Alberto "Duma" Verdoja.

![Current Image](http://i.imgur.com/kM9AIVv.png "Moonlight Theme")

# Dependencies

## Build

The below are only needed if you use the meson/ninja build system:

* [meson](https://mesonbuild.com/) version >= 1.3.0
* pkg-config
* The development files for Moksha and EFL.

To install and use the Moksha Theme you will need:

* [EFL](https://www.enlightenment.org/download)
* [Moksha](https://github.com/JeffHoogland/moksha)

## Fonts

The Moksha Theme Moonlight uses a sans fontface. Be sure one is installed and fontconfig is properly set up. Bodhi by default uses:

* fonts-dejavu-core

## Icons
It is recommended you have the hicolor-icon-theme installed as it is the default fallback theme for FreeDesktop.org icon themes.

Since the MoskhaMoonlight Icon theme *inherits* from the below icon sets, it is suggested you install one or more of them as well.

* gnome-icon-theme
* ubuntu-mono
* breeze-icon-theme
* oxygen-icon-theme

## Application Theme

* gtk2-engines-murrine

# Installation

It is recommended Bodhi Linux users install from Bodhi's repo:

```ShellSession
sudo apt update
sudo apt install bodhi-theme-moksha-moonlight
```

Other users need to manually install or use the meson build system.

To install the Moksha theme, and the matching elementary theme, icons and application theme system wide for all users run the following commands in the top directory of this repo:

```ShellSession
meson setup build
ninja -C build
sudo ninja -C build install
```

# Uninstalling

```ShellSession
sudo ninja -C build uninstall
```

# Reporting bugs

Please use the GitHub issue tracker for any bugs or feature suggestions.

# Contributing

Help is always Welcome, as with all Open Source Projects the more people that help the better it gets!
More icons would be especially welcome and much needed.

Please submit patches as GitHub pull requests!

Contributions must be licensed under this project's copyright (see LICENSE).

# Support This Project

Donations to [Bodhi Linux](https://www.bodhilinux.com/donate/) would be greatly appreciate and keep our distro moving along. But if you like the work we do for Bodhi and wish to see more of it, we'd be happy about a donation. You can either donate via [PayPall](https://www.paypal.com/paypalme/rbtylee).

# Credits

## Moksha Theme

Full credit for the original code of the Moksha theme go to the OpenGEU team and Duma:

* _*Luca De Marini*_
* _*Art Pulse*_

Bodhi specific modifications:

* _*Alberto "Duma" Verdoja*_
* _*Štefan Uram*_
* _*Robert Wiley*_

## Icon Source

The Icons are a modification of the [archdroid-icon-theme](https://github.com/GreenRaccoon23/archdroid-icon-theme), a port of Google's [material design icons](https://material.io/guidelines/) for Android Lollipop 5.0 to Linux.

* _*[The Google Devs](https://github.com/google/material-design-icons/graphs/contributors)*_
* _*[Dan Gorby](https://github.com/GreenRaccoon23)*

Bodhi specific modifications:

* _*Štefan Uram*_

## GTK Theme

The GTK theme produced using the [Themix GUI designer](https://github.com/themix-project/oomox)

* _*[Themix project](https://github.com/themix-project)*_
* _*Štefan Uram*_

## Build System

Meson Build system and file reorganization:

* _*Robert Wiley*_

For a little more detail, see also the [CREDITS FILE](https://github.com/rbtylee/MoonLIght/blob/master/CREDITS).
