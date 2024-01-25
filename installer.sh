#!/data/data/com.termux/files/usr/bin/bash
cd $HOME
pkg update && pkg upgrade
pkg install root-repo 
pkg install git tsu python wpa-supplicant pixiewps iw -y

termux-setup-storage

git clone --depth 1 https://github.com/AAlx0451/OneShot OneShot

chmod +x OneShot/oneshot.py

cd $HOME
echo alias oneshot='"cd $HOME/OneShot && sudo python oneshot.py -i wlan0 -K"' >> .bashrc
cd /data/data/com.termux/files/usr/etc
echo  >>motd
echo Utilities:>>motd
echo WPS Hack '('OneShot')': oneshot>>motd


echo Termux will restart, wait, type "oneshot" to start OneShot
echo To run in force mode: "oneshot -F"
echo
echo Code by AAlx
sleep 5
echo 15 seconds left
sleep 5
echo 10 seconds left
sleep 5
echo 5 seconds left
sleep 1
echo 4 seconds left
sleep 1
echo 3 seconds left
sleep 1
echo 2 seconds left
sleep 1
echo 1 second left
sleep 1
exit

