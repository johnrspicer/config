# generic applications
sudo apt install neovim compton xrandr xbacklight ranger caca-utils highlight atool w3m poppler-utils mediainfo xfonts-terminus maim

# special cases for laptop
## check for intel_backlight
sudo find /sys/ -type f -iname '*brightness*'

# install for font-size changing for URxvt
https://github.com/majutsushi/urxvt-font-size

## in /etc/X11/xorg.conf add
Section "Device"
Identifier  "Card0"
Driver      "intel"
Option      "Backlight"  "intel_backlight/acpi_video0"
EndSection
