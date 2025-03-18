# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

HISTSIZE=1000000

# List of themes here: https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Disable marking untracked files under VCS as dirty.
# This makes repository status check for large repositories much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST


source $ZSH/oh-my-zsh.sh


# Make node work
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

export PATH="${PATH}:${HOME}/bin"
export PATH="${PATH}:/usr/local/go/bin"

export WASMTIME_HOME="${HOME}/.wasmtime"

export PATH="${PATH}:${WASMTIME_HOME}/bin"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='nvim'
fi

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/home/harry/.opam/opam-init/init.zsh' ]] || source '/home/harry/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration

. "$HOME/.local/bin/env"

# alias ohmyzsh="mate ~/.oh-my-zsh"
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias bat=batcat
alias clera=clear
alias clare=clear
alias zshc="nvim ~/.zshrc"
alias kitty-update="curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin"
