#!/data/data/com.termux/files/usr/bin/bash
git pull
cd $HOME
pkg update && pkg upgrade
pkg install root-repo 
pkg install -y git tsu python wpa-supplicant pixiewps iw

termux-setup-storage

git clone --depth 1 https://github.com/AAlx0451/OneShot OneShot

chmod +x OneShot/oneshot.py

cd OneShot
git pull
cd $HOME
echo alias oneshot='"cd $HOME/OneShot && sudo python oneshot.py -i wlan0-K"' >> .bashrc
cd /data/data/com.termux/files/usr/etc
echo  >>motd
echo To run OneShot: oneshot

printf "###############################################\n#  All done! Now you can run OneShot with\n#   sudo python OneShot/oneshot.py -i wlan0 -K\n#\n#  To update, run\n#   (cd OneShot && git pull)\n###############################################\n"

echo Code by AAlx
