#!/bin/sh
# update & upgrade #
sudo apt-get update
sudo apt-get upgrade

# enable firewall
sudo ufw enable
# add custom sources and PPA's #
# sudo sh -c "echo '## PPA ###' >> /etc/apt/sources.list"
# ubuntuzilla
# sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com C1289A29
# sudo sh -c "echo 'deb http://downloads.sourceforge.net/project/ubuntuzilla/mozilla/apt all main #Ubuntuzilla' >>/etc/apt/sources.list"

###################################################################
# mplayer
# sudo add-apt-repository ppa:rvm/mplayer
# smplayer
# sudo add-apt-repository ppa:rvm/smplayer
# wine
# sudo add-apt-repository ppa:ubuntu-wine/ppa
# wine-doors
# sudo add-apt-repository ppa:wine-doors-dev-team/ppa
# vlc
sudo add-apt-repository ppa:c-korn/vlc
# getdeb
# wget -q -O- http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
# sudo sh -c "echo 'deb http://archive.getdeb.net/ubuntu karmic-getdeb apps #getdeb' >> /etc/apt/sources.list"
# medibuntu
# echo deb http://packages.medibuntu.org/ karmic free non-free | sudo tee -a /etc/apt/sources.list
# wget -q http://packages.medibuntu.org/medibuntu-key.gpg -O- | sudo apt-key add -
# ubuntu tweak
sudo add-apt-repository ppa:tualatrix/ppa -y
# Numix
sudo apt-add-repository ppa:numix/ppa -y
# Variety
sudo add-apt-repository ppa:peterlevi/ppa -y
#TLP Battery
sudo add-apt-repository ppa:linrunner/tlp -y
#TLP for Thinkpad needed extra commandline install tp-smapi-dkms acpi-call-dkms
#Noobslab Themes
sudo add-apt-repository ppa:noobslab/themes -y
#sublime text 2
sudo add-apt-repository ppa:webupd8team/sublime-text-2 -y
#Varicious Colors
sudo add-apt-repository ppa:ravefinity-project/ppa


#################################################################

# update & upgrade #
sudo apt-get update
sudo apt-get upgrade
# REMOVE some unneeded apps #
sudo apt-get remove gnome-games gnome-games-common empathy
# INSTALL new apps #
sudo apt-get -y install variety vlc unity-tweak-tool numix-icon-theme numix-icon-theme-circle clamav-daemon clamtk gksu bleachbit tlp tlp-rdw mbuntu-y-ithemes-v4 mbuntu-y-icons-v4 fcitx fcitx-pinyin fcitx-sunpinyin fcitx-googlepinyin sublime-text vivacious-colors vivacious-folder-colors-addon ambiance-colors radiance-colors git

###################################################################

# INSTALL deb files from directory #
# sudo dpkg -i /home/enjoy/.install/deb/*.deb
# make some directories needed by fstab #
# sudo mkdir /media/remotemachine
# sudo mkdir /media/ntfs
# create samba credential files #
# sudo touch /etc/samba/cred
# sudo sh -c "echo 'username=yourusername' >> /etc/samba/cred"
# sudo sh -c "echo 'password=yourpassword' >> /etc/samba/cred"
# sudo chmod 0600 /etc/samba/cred
# add new hosts #
# sudo sh -c "echo '192.168.0.105 remotemachinename' >> /etc/hosts"
# add drives to fstab #
#sudo sh -c "echo 'UUID=791957C576AE1E67 /media/ntfs ntfs umask=000,utf8 0 0' >> /etc/fstab"
#sudo sh -c "echo '//remoteIP/remote-dir /media/remotemachine cifs credentials=/etc/samba/cred,noperm,uid=1000,gid=1000 0 0' >> /etc/fstab"
# fixing umountcifs problem in Ubuntu on restart and shutdown #
#sudo cp /home/yourusername/.install/scripts/umountcifs /etc/init.d/
#sudo update-rc.d umountcifs stop 02 0 6
#sudo ln -s /etc/init.d/umountcifs /etc/rc0.d/K01umountcifs
#sudo ln -s /etc/init.d/umountcifs /etc/rc6.d/K01umountcifs
# copy OpenVPN certificates to /etc/openvpn #
#sudo cp /home/yourusername/.install/vpn/* /etc/openvpn
#sudo /etc/init.d/openvpn restart
# time needed to connect to the VPN server (30s with reserve) and mounting drives #
#sleep 30 && sudo mount -a
# turn off pc speaker beeping #
#echo "blacklist pcspkr" | sudo tee -a /etc/modprobe.d/blacklist
# turn off welcome sound #
#sudo -u gdm gconftool-2 --set /desktop/gnome/sound/event_sounds --type bool false
# enabling cpufreq-applet CPU frequency scaling #
#sudo chmod u+s /usr/bin/cpufreq-selector
#disable bluetooth
sudo sed -i '$i echo disable > /proc/acpi/ibm/bluetooth' '/etc/rc.local'
#adjust brightness
sudo sed -i '$i echo 5 > /sys/class/backlight/intel_backlight/brightness' '/etc/rc.local'
#disable guest
sudo sed -i '$a allow-guest=false' '/usr/share/lightdm/lightdm.conf.d/50-ubuntu.conf'

#################################################################

#uninstall unwanted program
#apport
sudo apt-get purge apport
