# DeAuthAll

DeAuthAll is a shell script designed to automate the process of network sniffing and performing deauthentication attacks

# Disclaimer!!
This program was created for educational purposes, and using it to attack other peoples networks with their prior consent is ILLEGAL! 
I (Jethr0) do not take any responsibility for any malicious use of this program, it's on you if you use this with any illegal or malicious intent

# Usage
In it's current form, the program requires you to already know the MAC address of your network and the wireless interface you wish to use:
Run the script like this:
* (sudo) bash deauthall.sh (MAC address of AP) (wireless interface)


# Dependencies
To install all the dependencies you can either install them manually (list below), or you can run the install.sh script as root.
Dependencies:
1. figlet (sudo apt install figlet)
2. aircrack-ng suite (sudo apt install aircrack-ng)
3. coreutils (comes pre-installed with most, if not every distro of Linux)
4. network-manager (comes pre-installed with most systems, but just in case: sudo apt install network-manager)

# Installation
Just run the install.sh script, which installs all required dependencies

# Beta updates
Go to this Google Form to apply for the DeAuthAll beta update program, which allows you to try new updates of DeAuthAll before they become officially available.
* https://forms.gle/fAd8ZjdQwSWL35QR9


# Why is this script better?
You might be thinking, 'Why is this script better than running the command myself?'
This program not only runs the command automatically, but it will also automatically start again if the target AP resets itself to kick you out. This means that it will deauthenticate every wireless device on the network infinitely until it gets stopped.


# Future Updates
In a future update to this program, I plan to make the ENTIRE process automatic. This means automatically starting monitor mode (allowing the user to see all available target networks) AND automatically performing the attack.
