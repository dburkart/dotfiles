eval HOMEDIR=~

export PATH="/usr/local/go/bin:$PATH"
export PATH="$HOMEDIR/homebrew/bin:$PATH"
export PATH="$HOMEDIR/homebrew/opt/flex/bin:$PATH"
export PATH="$HOMEDIR/homebrew/opt/bison/bin:$PATH"
export PATH="$HOMEDIR/bin:$PATH"

export GPG_TTY=$(tty)

# History-related settings
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
export SAVEHIST=1000000000
export HISTFILE=~/.zsh_history
# Append items to history immediately
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
# Timestamps please
export HISTTIMEFORMAT="[%F %T] "
setopt EXTENDED_HISTORY
# Skip duplicates when searching through history
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS

function get_pwd() {
    echo "${PWD/$HOME/~}"
}

if [[ -f ~/.glue ]]; then
    source ~/.glue
fi

source ~/.antigen/antigen.zsh


# Antigen
antigen bundle git
antigen bundle pip
antigen bundle python
antigen bundle virtualenv
antigen bundle ssh-agent
antigen bundle coffee
antigen bundle node

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle chrissicool/zsh-256color

# Theme
antigen bundle subnixr/minimal

antigen apply

export EDITOR=$(which vim)

eval "$(rbenv init - zsh)"

