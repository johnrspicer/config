# generic applications
sudo apt install neovim compton xrandr xbacklight ranger caca-utils highlight atool w3m poppler-utils mediainfo xclip xfonts-terminus maim rxvt-unicode i3 pavucontrol rofi zsh
sudo snap install spotify

# default shell zsh
chsh -s $(which zsh)

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install autosuggestions zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install for font-size changing for URxvt
https://github.com/majutsushi/urxvt-font-size

# tmux plug manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#neovim Plug manager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# special cases for laptop
## check for intel_backlight
sudo find /sys/ -type f -iname '*brightness*'

## in /etc/X11/xorg.conf add
Section "Device"
Identifier  "Card0"
Driver      "intel"
Option      "Backlight"  "intel_backlight/acpi_video0"
EndSection
