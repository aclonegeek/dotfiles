function vpn -a state config
    if begin; [ $state = "on" ]; and not test -n "$config"; end
        echo "ERROR: Configuration unspecified"
        return 1
    end

    # Killswitch.
    if not grep -q "PostUp" $config
        sed -i '/DNS/a PostUp = iptables -I OUTPUT ! -o %i -m mark ! --mark $(wg show %i fwmark) -m addrtype ! --dst-type LOCAL -j REJECT' $config
        sed -i '/PostUp/a PreDown = iptables -D OUTPUT ! -o %i -m mark ! --mark $(wg show %i fwmark) -m addrtype ! --dst-type LOCAL -j REJECT' $config
    end

    set -l disable_ipv6
    set -l wg_state

    switch $state
        case "on"
            set disable_ipv6 1
            set wg_state "up"
        case "off"
            set disable_ipv6 0
            set wg_state "down"
        case '*'
            echo "ERROR: Invalid state '$state'"
            return 1
    end

    sudo sysctl -w net.ipv6.conf.all.disable_ipv6=$disable_ipv6

    sudo wg-quick $wg_state $config
end