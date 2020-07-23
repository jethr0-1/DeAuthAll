if [ `whoami` != root ]
then
    echo '[!] Please run as root.'
    exit
fi

echo '[!] Installing dependencies...'
apt install figlet aircrack-ng coreutils network-manager
chmod +x deauthall.sh
echo '[+] Ready!'
