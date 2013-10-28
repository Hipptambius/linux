#!/bin/bash
# MADE BY HIPPTAMBIUS - MAY 2013
# TESTED AND WORKS ON UBUNTU 13.04


while true; do
echo   	"
	******************************************************************************
	***-UBUNTU 13.04-*********************************************-HIPPTAMBIUS-***
	******************************************************************************
	
	* 1.  install spotify, repo, key, and client.
	
	* 2.  install krusader
	
	* 3.  install deluge
	
	* 4.  install handbrake, repo and client
	
	* 5.  install wine (1.5) repo, and client
	
	* 6.  install medibuntu, repo, key, libdvdcss2, vlc, ubuntu-restricted-extras
	
	* 7.  install cutecom and putty

	* 8.  install things for openvpn support, and samba

	* 9.  install gparted, disk editing tool

	* 10. install clamav, antivirus, gui, and update tool (freshclam)

	* 11. install macOS ubuntu theme, icons, and unity-tweak tool

	* 12. Remove the ubuntu amazon.com search and ip sending shit!

	* 13. exit to linux
	
	******************************************************************************
	***-SELECT THE NUMBER IN FRONT OF THE TASK U WANT PERFORMED-******************
	******************************************************************************"
read TAST
case $TAST in
1)
echo "deb http://repository.spotify.com stable non-free" | tee -a /etc/apt/sources.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
apt-get update
apt-get install -y spotify-client
;;

2)
apt-get install -y krusader
;;

3)
apt-get install -y deluge
;;

4)
add-apt-repository -y ppa:stebbins/handbrake-releases
apt-get update
apt-get install -y handbrake-gtk
;;

5)
add-apt-repository -y ppa:ubuntu-wine/ppa
apt-get update
apt-get install -y wine1.5
;;

6)
wget --output-document=/etc/apt/sources.list.d/medibuntu.list http://www.medibuntu.org/sources.list.d/$(lsb_release -cs).list
apt-get update 
apt-get --yes --allow-unauthenticated install medibuntu-keyring 
apt-get update
apt-get install -y libdvdcss2 vlc ubuntu-restricted-extras
;;

7)
apt-get install -y cutecum
apt-get install -y putty
;;

8)
apt-get install -y samba 
apt-get install -y openvpn 
apt-get install -y curl
apt-get install -y network-manager-openvpn
;;

9)
apt-get install -y gparted
;;

10)
apt-get install -y clamav 
apt-get install -y clamtk 
apt-get install -y clamav-freshclam
;;

11)
add-apt-repository -y ppa:noobslab/themes
apt-get update
apt-get install -y mac-icons-noobslab
apt-get install -y mac-ithemes-noobslab
apt-get install -y unity-tweak-tool
;;

12)
apt-get remove -y unity-lens-shopping
apt-get purge -y unity-lens-shopping
;;

13)
echo "THANK YOU, COME AGAIN!"
sleep 1
exit 0
;;


esac
done
exit 0

