# Set aliases
alias lc='wc -l'
alias zen='python -c "import this"'

# Set Mac aliases
if [[ "$OSTYPE" == "darwin"* ]]; then
    alias ls='ls -G'
    export LSCOLORS='gxfxcxdxbxegedabagacad'

    alias grep='grep -G'
    alias fgrep='fgrep -G'
    alias egrep='egrep -G'
# Set Linux aliases
elif [[ "$OSTYPE" == "linux"* ]]; then
    alias open='gnome-open'
fi
