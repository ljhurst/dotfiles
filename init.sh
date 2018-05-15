# This script configures the home directory to use shared config files
# It creates symbolic links to all the files in this repo

ignore=('.' '..' '.git' '.gitignore' 'init.sh' 'README.md')

# Remove non-shared config files
# Create symbolic links to shared config files
for filename in {.*,*}; do
    # Ignore names in Ignore
    if [[ ! " ${ignore[@]} " =~ " $filename " ]]; then
        echo Removing: "~"/$filename
        rm -rf ~/$filename
        echo Creating: "~"/$filename "-> ~/"${PWD##*/}/$filename
        ln -s $PWD/$filename ~/$filename
    else
        echo Ignoring: $filename;
    fi
done;

# Install Vundle.vim and plugins
git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
