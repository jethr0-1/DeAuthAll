if [ `whoami` != root ]
then
    echo '[!] Please run as root.'
    exit
fi

echo '[!] Installing dependencies...'
apt install figlet aircrack-ng coreutils
echo '[+] Ready!'
