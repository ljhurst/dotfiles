#!/bin/bash

# Create and attach an ssh key pair
#
# Input:
#   id_file: The name and path of the files the pair will be stored in
#   label: The [optional] label stored with the key to identify it

id_file="~/.ssh/id_rsa"
read -p "Enter file name ($id_file): " id_file_in
if [ -n "$id_file_in" ]; then
    id_file=${id_file_in/#\~/$HOME}
fi

label="$USER@$HOSTNAME.com"
read -p "Enter key label ($label): " label_in
if [ -n "$label_in" ]; then
    label="$label_in"
fi

echo "Creating ssh key pair, using $id_file as the name and $label as the label"
ssh-keygen -t rsa -b 4096 -f $id_file -C "$label"

echo 'Starting ssh-agent in the background'
eval "$(ssh-agent -s)"

echo 'Adding identity $id_file'
ssh-add "$id_file"
