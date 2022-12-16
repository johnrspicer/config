#!/bin/sh

# compton.conf
#mv -f "$HOME/.config/compton.conf" "$HOME/.config/compton.conf.old"
ln -sf "$PWD/compton/compton.conf" "$HOME/.config/compton.conf"

# i3
#mv -f "$HOME/.config/i3/config" "$HOME/.config/i3/config.old"
mkdir -p "$HOME/.config/i3"
ln -sf "$PWD/i3/config" "$HOME/.config/i3/config"

# nvim
#mv -f "$HOME/.config/nvim/init.vim" "$HOME/.config/nvim/init.vim.old"
mkdir -p "$HOME/.config/nvim"
ln -sf "$PWD/nvim/init.vim" "$HOME/.config/nvim/init.vim"

# zshrc
#mv -f "$HOME/.zshrc" "$HOME/.config/nvim/.zshrc.old"
ln -sf "$PWD/zsh/.zshrc" "$HOME/.zshrc"

# tmux
#mv -f "$HOME/.zshrc" "$HOME/.config/nvim/.zshrc.old"
mkdir -p "$HOME/.config/tmux"
ln -sf "$PWD/tmux/.tmux.conf" "$HOME/.tmux.conf"
