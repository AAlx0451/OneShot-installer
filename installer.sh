#!/data/data/com.termux/files/usr/bin/bash
pkg install -y root-repo 
pkg install -y git tsu python wpa-supplicant pixiewps iw

git clone --depth 1 https://github.com/kimocoder/OneShot OneShot

chmod +x OneShot/oneshot.py

printf "###############################################\n#  All done! Now you can run OneShot with\n#   sudo python OneShot/oneshot.py -i wlan0 -K\n#\n#  To update, run\n#   (cd OneShot && git pull)\n###############################################\n"
