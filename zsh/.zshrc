eval HOMEDIR=~

export PATH="$HOMEDIR/homebrew/bin:$PATH"
export PATH="$HOMEDIR/homebrew/opt/flex/bin:$PATH"
export PATH="$HOMEDIR/homebrew/opt/bison/bin:$PATH"
export PATH="$HOMEDIR/bin:$PATH"

export GPG_TTY=$(tty)

function get_pwd() {
    echo "${PWD/$HOME/~}"
}

PROMPT="%~ ➤ "

source ~/.glue
source ~/.antigen/antigen.zsh


# Antigen
antigen bundle git
antigen bundle pip
antigen bundle python
antigen bundle virtualenv
antigen bundle ssh-agent
antigen bundle coffee
antigen bundle node
antigen bundle npm

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle chrissicool/zsh-256color

# Theme
antigen bundle subnixr/minimal

antigen apply
