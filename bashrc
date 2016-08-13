# Prevent Ctrl-S from freezing the terminal.
stty -ixon

# Cleaner status
export PS1="\[$(tput bold)\]\[\033[38;5;24m\]\W\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;10m\]>\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
# Remove history limits
export HISTSIZE=
export HISTFILESIZE=
# Add home bin to path
export PATH=$PATH:~/bin

# Convenient aliases
alias ls="ls --color=auto"
alias la="ls -a --color=auto"
alias lah="ls -lah"
alias ll="ls -lah"
alias grep="grep --color=auto"
alias pacman="sudo pacman --color=always"
alias reset="reset && source ~/.bashrc"

mkcd() {
  mkdir -p "$@" && cd "$@"
}

# Make xterm transparent
[ -n "$XTERM_VERSION" ] && transset-df -a >/dev/null
