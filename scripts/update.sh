#!/bin/bash

# Print action
echo 'Updating'
echo '--------'

# Print date
date

# If this is a Mac
if [[ "$OSTYPE" == "darwin"* ]]; then
    brew update && brew upgrade
# If this is Ubuntu Linux
elif [[ "$OSTYPE" == "linux"* ]]; then
    sudo apt-get update && sudo apt-get -y upgrade
# If this OS isn't recognized
else
    echo "I don't know how to update $OSTYPE"
fi
