# Prevent Ctrl-S from freezing the terminal.
stty -ixon

# Cleaner status
export PS1="\w \$ "
# Remove history limits
export HISTSIZE=
export HISTFILESIZE=

# Convenient aliases
alias ls="ls --color=auto"
alias la="ls -a --color=auto"
alias lah="ls -lah"
alias grep="grep --color=auto"
alias pacman="sudo pacman --color=always"
alias reset="reset && source ~/.bashrc"

mkcd() {
  mkdir -p "$@" && cd "$@"
}
