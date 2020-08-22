# Network related functions

# Get current public IP from the internet
# Usable for SSH config depending of current public ip
function ip() {
    local ip=$(curl --silent -m 1 ipinfo.io/ip)

    if [ $# = 0 ]; then
        echo $ip; return 0;

    elif [ $1 = "-h" ] || [ $1 = "--help" ]; then
        echo "IP utily by Adrien 'Larandar' Dudouit"
        echo "Usage:"
        echo "    ip          Print current ip"
        echo "    ip ips...   Test if current ip is in the preovided"
        return 0;
 
    else
        for i in $@; do if [ $i = $ip ]; then; return 0; fi; done
        return 1;
    fi
}
