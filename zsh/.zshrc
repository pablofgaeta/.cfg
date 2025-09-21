# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# custom aliases
alias ep="nvim $HOME/.zshrc"
alias sp=". $HOME/.zshrc"
alias et="nvim $HOME/.tmux.conf"
alias ev="cd $HOME/.config/nvim && nvim && cd -"
alias ghostty="open -a Ghostty ."
alias python=python3
alias docker=podman
alias gs="git status"
alias groot='cd $(git rev-parse --show-toplevel)'
alias cg="cargo build"
alias ct="cargo test"
alias cr="cargo run"
alias code='open -a "Visual Studio Code"'
alias finder="open ."
alias personal="cd $HOME/workspace/gh/pablofgaeta"
alias livecrates="cargo watch -s 'cargo doc && browser-sync start --ss target/doc -s target/doc --directory --no-open'"
alias ap="cd $HOME/workspace/gerrit/pso-internal/agent-packs"
alias cloudtop="ssh pablogaeta@pablogaeta.c.googlers.com"
alias config="cd $HOME/.cfg/ && nvim && cd -"

# prevent creation of .lesshst
export LESSHISTFILE=-

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#oh-my-zsh
ZSH_THEME="powerlevel10k/powerlevel10k"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git)

# source zsh
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
. $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# load nvm + completions
export NVM_DIR="$HOME/.nvm"
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" 

# add racket interpreter path
export PATH=$PATH:"/Applications/Racket/bin"

# add cmake build path
export PATH="/Applications/CMake.app/Contents/bin":"$PATH"

# brew / build tools
if [ -e "/opt/homebrew" ]; then
    PATH="/opt/homebrew/opt/libtool/libexec/gnubin:$PATH"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi

# go setup
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# powerlevel setup
[[ ! -f ~/.p10k.zsh ]] || . ~/.p10k.zsh

# add supercollider interpreter path
export PATH=$PATH:/Applications/SuperCollider.app/Contents/MacOS

# make less more friendly for non-text input files, see lesspipe(1)
# [ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history 1|sed '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# bun completions
[ -s "/Users/pablogaeta/.bun/_bun" ] && source "/Users/pablogaeta/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

fpath+=~/.zfunc; autoload -Uz compinit; compinit

zstyle ':completion:*' menu select

# Start ssh-agent and register SSH keys
eval "$(ssh-agent -s)" > /dev/null 2>&1
[[ ! -f ~/.ssh/personal ]] || /usr/bin/ssh-add ~/.ssh/personal > /dev/null 2>&1
[[ ! -f ~/.ssh/disney ]] || /usr/bin/ssh-add ~/.ssh/disney > /dev/null 2>&1
[[ ! -f ~/.ssh/wec ]] || /usr/bin/ssh-add ~/.ssh/wec > /dev/null 2>&1
[[ ! -f ~/.ssh/google ]] || /usr/bin/ssh-add ~/.ssh/google > /dev/null 2>&1
[[ ! -f ~/.ssh/jbh ]] || /usr/bin/ssh-add ~/.ssh/jbh > /dev/null 2>&1
[[ ! -f ~/.ssh/nsh ]] || /usr/bin/ssh-add ~/.ssh/nsh > /dev/null 2>&1
[[ ! -f ~/.ssh/pcln ]] || /usr/bin/ssh-add ~/.ssh/pcln > /dev/null 2>&1
