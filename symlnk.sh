#!/bin/sh

# generic applications
sudo apt install neovim compton xrandr xbacklight ranger caca-utils highlight atool w3m poppler-utils mediainfo xclip xfonts-terminus maim rxvt-unicode i3 pavucontrol rofi zsh
sudo snap install spotify

# default shell zsh
chsh -s $(which zsh)

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install antigen
curl -L git.io/antigen-nightly > antigen.zsh

# install nvim Plug manager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# compton.conf
mv -f ~/.config/compton.conf ~/.config/compton.conf.old
ln -sf ./compton.conf ~/.config/compton.conf

# i3
mv -f ~/.config/i3/config ~/.config/i3/config.old 
ln -sf ./i3/config ~/.config/i3/config

# nvim
mv -f ~/.config/nvim/init.vim ~/.config/nvim/init.vim.old
ln -sf ./init.vim ~/.config/nvim/init.vim

