export GOPATH=$HOME/go
export PATH=$HOME/bin:/usr/local/bin:$PATH:$GOPATH:$GOPATH/bin
export VISUAL=nvim
export EDITOR=$VISUAL
export ZSH=$HOME/.oh-my-zsh
export LANG=en_US.UTF-8

source $HOME/antigen.zsh


# load the oh-my-zsh library
antigen use oh-my-zsh

# bundles
antigen bundle git
antigen bundle command-not-found
antigen bundle z
antigen bundle colored-man-pages

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions

antigen theme theunraveler

antigen apply

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
