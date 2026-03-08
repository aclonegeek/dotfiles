set -U fish_greeting

abbr cat 'bat'
abbr ls 'lsd'
abbr vpn 'sudo -E ip netns exec vpn sudo -E -u \#$(id -u) -g \#$(id -g)'