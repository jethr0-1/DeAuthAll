# DeAuthAll

DeAuthAll is a shell script designed to automate the process of network sniffing and performing deauthentication attacks

# Usage
In it's current form, the program requires you to already know the MAC address of your network and the wireless interface you wish to use:
Run the script like this:
(sudo) bash deauthall.sh <MAC address of AP> <wireless interface (e.g wlp3s0b1 or wlan0)>


# Dependencies
To install all the dependencies you can either install them manually (list below), or you can run the install.sh script as root.
Dependencies:
1. figlet (sudo apt install figlet
2. aircrack-ng suite (sudo apt install aircrack-ng)
3. coreutils (comes pre-installed with most, if not every distro of Linux)

# Installation
You can either run the install.sh script (which installs all required dependencies), or you can run full-install.sh, which not only installs all the dependencies but also makes a copy of the deauth script, then places it in your /usr/bin directory and exports it's path to your .bashrc so you can run the script just by typing deauthall!
