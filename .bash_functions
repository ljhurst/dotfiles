# IP Address
ip() {
    ipconfig getifaddr en0
}

ip_public() {
    curl ifconfig.me
}

# Utility
ipv4() {
    echo $1 | tr - .
}

msufcu_routing_number() {
    # Pull down MSUFCU's homepage
    # Look for the first "Routing Number" hit
    # Remove all characters that aren't numbers
    curl --silent https://www.msufcu.org/ \
        | grep -m 1 "Routing Number" \
        | tr -dc "0-9" | xargs echo
}

# Work
swoosh() {
    [ -z "$1" ] && COLOR="white"  || COLOR="$1"
    echo $fg[$COLOR]'
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
