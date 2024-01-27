#!/data/data/com.termux/files/usr/bin/bash
#curl version for direct installation
cd $HOME
pkg upgrade -y
pkg install root-repo -y
pkg install git tsu python wpa-supplicant pixiewps iw -y

termux-setup-storage

git clone --depth 1 https://github.com/AAlx0451/OneShot OneShot

chmod +x OneShot/oneshot.py

cd $HOME
echo alias oneshot='"cd $HOME/OneShot && sudo python oneshot.py -i wlan0 -K"' >> .bashrc
cd /data/data/com.termux/files/usr/etc
echo  >>motd
echo Utilities:>>motd
echo OneShot WPS Hack: oneshot>>motd


echo Restart Termux, and type "oneshot" to start OneShot
echo To run in force mode: "oneshot -F"
echo
echo Code by AAlx
