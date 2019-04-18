eval HOMEDIR=~

export PATH="$HOMEDIR/homebrew/bin:$PATH"
export PATH="$HOMEDIR/homebrew/opt/flex/bin:$PATH"
export PATH="$HOMEDIR/homebrew/opt/bison/bin:$PATH"

export GPG_TTY=$(tty)

function get_pwd() {
    echo "${PWD/$HOME/~}"
}

PROMPT="%~ ➤ "
