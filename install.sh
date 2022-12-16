# generic applications
sudo apt install neovim zsh ripgrep

# default shell zsh
chsh -s $(which zsh)

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install antigen
curl -L git.io/antigen-nightly > antigen.zsh

# install nvim Plug manager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# install autosuggestions zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install for font-size changing for URxvt
https://github.com/majutsushi/urxvt-font-size

# tmux plug manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# special cases for laptop
## check for intel_backlight
## sudo find /sys/ -type f -iname '*brightness*'

## in /etc/X11/xorg.conf add
## Section "Device"
## Identifier  "Card0"
## Driver      "intel"
## Option      "Backlight"  "intel_backlight/acpi_video0"
## EndSection
