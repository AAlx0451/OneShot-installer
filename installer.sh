#!/data/data/com.termux/files/usr/bin/bash
cd $HOME
pkg update && pkg upgrade
pkg install root-repo
pkg install git tsu python wpa-supplicant pixiewps iw -y

git clone --depth 1 https://github.com/chickendrop89/OneShot-Extended OneShot

chmod +x OneShot/oneshot.py

cd $HOME
echo alias oneshot='"cd $HOME/OneShot && sudo python oneshot.py -i wlan0 -K -w"' >> .bashrc

echo 'Do you want to edit "hello" (motd) message? It will add Utilities title to hello message y/n'
read $hello

if [[ $hello == "y" || $hello == "Y" ]]; then
	echo  >>/data/data/com.termux/files/usr/etc/motd
	echo Utilities:>>/data/data/com.termux/files/usr/etc/motd
	echo OneShot WPS Hack: oneshot>>/data/data/com.termux/files/usr/etc/motd
fi

cat /data/data/com.termux/files/usr/etc/motd && echo
echo Type "oneshot" to start OneShot
echo To run in force mode: "oneshot -F"
echo To run in bruteforce mode: "oneshot -B"
echo
echo Code by AAlx
bash
