#!/bin/bash

# This script configures the home directory to use shared config files
# It creates symbolic links to all the files in this repo

ignore=('.' '..' '.git' '.gitignore' '.ssh' 'init.sh' 'README.md')

# Remove non-shared config files
# Create symbolic links to shared config files
for filename in {.*,*}; do
    # Ignore names in Ignore
    if [[ ! " ${ignore[@]} " =~ $filename ]]; then
        echo "Removing: ~/$filename"
        rm -rf "$HOME/${filename:?}"

        echo Creating: "~/$filename -> ~/${PWD#$HOME/}/$filename"
        ln -s "$PWD/$filename" "$HOME/$filename"
    else
        echo "Ignoring: $filename";
    fi
done;

# Install Vundle.vim and plugins
rm -rf "$HOME/.vim/bundle/Vundle.vim" \
    && mkdir -p "$HOME/.vim/bundle" \
    && cd "$HOME/.vim/bundle" \
    && git clone https://github.com/VundleVim/Vundle.vim
vim +PluginInstall +qall
