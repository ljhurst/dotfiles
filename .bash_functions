# IP Address
ip() {
    ipconfig getifaddr en0
}

ip_public() {
    curl ifconfig.me
}

# Utility
ipv4() {
    echo "${1:?}" | tr - .
}

# make directory; change to directory
mkcd () {
    mkdir "$1" && cd "$1" || return;
}

msufcu_routing_number() {
    # Pull down MSUFCU's homepage
    # Look for the first "Routing Number" hit
    # Remove all characters that aren't numbers
    curl --silent https://www.msufcu.org/ \
        | grep -m 1 "Routing Number" \
        | tr -dc "0-9" | xargs echo
}

envgrep () {
    env | grep "$1"
}

ssh_passwordless() {
    cat "${HOME}/.ssh/id_rsa.pub" | ssh "$1" 'cat >> .ssh/authorized_keys'
}

# Work
swoosh() {
    color="${1:-white}"
    echo $fg[$color]'
             `.                                                         .--``
            o+                                                  `.:+sso+-
          :mh                                            .:/oydNNho:`
        `yMM:                                    `-/+shmMMMNds/.
       -mMMM.                             .:/oydNMMMMMMmy+-
      :NMMMMo                     `-/+shmMMMMMMMMMmyo:`
     -MMMMMMMs`            .:+oydNMMMMMMMMMMMNho:`
     mMMMMMMMMMhs+///+oyhmMMMMMMMMMMMMMMMds/.
    :MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMmy+-
    /MMMMMMMMMMMMMMMMMMMMMMMMMMNho:`
    `mMMMMMMMMMMMMMMMMMMMMNds/.
     .hMMMMMMMMMMMMMMMds+-
       .+ydmNNmdhyo/.
    '
}
