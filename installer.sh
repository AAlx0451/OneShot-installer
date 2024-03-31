#!/data/data/com.termux/files/usr/bin/bash
cd $HOME
pkg update && pkg upgrade
pkg install root-repo 
pkg install git tsu python wpa-supplicant pixiewps iw -y

git clone --depth 1 https://github.com/AAlx0451/OneShot OneShot

chmod +x OneShot/oneshot.py

cd $HOME
echo alias oneshot='"cd $HOME/OneShot && sudo python oneshot.py -i wlan0 -K -w"' >> .bashrc

echo Do you want to edit "hello" message? y/n
read $hello

if [[ "$hello" == "y" ]]; then
  cd /data/data/com.termux/files/usr/etc
  echo  >>motd
  echo Utilities:>>motd
  echo OneShot WPS Hack: oneshot>>motd
else
  echo Ok, skip it
fi

echo Type "oneshot" to start OneShot
echo To run in force mode: "oneshot -F"
echo
echo Code by AAlx
bash
rm -rf $HOME/OneShot-installer
