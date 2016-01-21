# This script configures the home directory to use shared config files
# It creates symbolic links to all the files in this repo

# Remove non-shared config files
# Create symbolic links to shared config files
for filename in .*; do
    rm ~/$filename;
    ln -s $(pwd)/$filename ~/$filename;
done;
