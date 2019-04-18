export PATH="~/homebrew/bin:$PATH"
export PATH="~/homebrew/opt/flex/bin:$PATH"
export PATH="~/homebrew/opt/bison/bin:$PATH"

export GPG_TTY=$(tty)

function get_pwd() {
    echo "${PWD/$HOME/~}"
}

PROMPT="%~ ➤ "
