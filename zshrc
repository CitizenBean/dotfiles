# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export DISABLE_UNTRACKED_FILES_DIRTY="true"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

source ~/.shell/bootstrap.sh
#source ~/.shell/external.sh
#source ~/.shell/aliases.sh

plugins=(
  git
  git-prompt
  ruby
  brew
  bundler
  gem
  node
  golang
  shopify_dev
  zsh-completions
  zsh-syntax-highlighting
  zsh_reload
  misc
  vi-mode
)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

export GOPATH=$HOME/go
export PATH="/usr/local/share:$PATH"
export FZF_DEFAULT_COMMAND='rg --files --ignore-vcs --hidden'
export KEYTIMEOUT=1

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

