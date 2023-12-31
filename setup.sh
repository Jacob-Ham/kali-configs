#!/bin/bash


# Pimpmykali
cd /tmp && git clone https://github.com/Dewalt-arch/pimpmykali && sudo bash pimpmykali/pimpmykali.sh
# Install terminator, dirsearch, remmina
sudo apt install terminator -y
sudo apt install dirsearch -y
sudo apt install remmina -y
# install gbins
cd /tmp && git clone https://github.com/Jacob-Ham/gbins.git && cd gbins && pip3 install -r requirements.txt && sudo /usr/bin/chmod u+x gbins.py && /usr/bin/sudo /usr/bin/cp -p gbins.py /usr/bin/gbins
# install LOLDoors
cd /tmp && git clone https://github.com/Jacob-Ham/LOLDoors.git && cd LOLDoors && sudo /usr/bin/chmod u+x LOLDoors.py && /usr/bin/sudo /usr/bin/cp -p LOLDoors.py /usr/bin/LOLDoors
# Install megasync
cd /tmp && wget https://mega.nz/linux/repo/Debian_12/amd64/megasync-Debian_12_amd64.deb && sudo apt install ./megasync-Debian_12_amd64.deb -y
# Install espanso
mkdir -p ~/opt && wget -O ~/opt/Espanso.AppImage 'https://github.com/federico-terzi/espanso/releases/download/v2.1.8/Espanso-X11.AppImage' && chmod u+x ~/opt/Espanso.AppImage && sudo ~/opt/Espanso.AppImage env-path register && espanso service register
rm ~/.config/espanso/match/base.yml && wget https://raw.githubusercontent.com/Jacob-Ham/kali-configs/main/espanso/base.yml -P ~/.config/espanso/match/
rm ~/.config/terminator/config && wget https://raw.githubusercontent.com/Jacob-Ham/kali-configs/main/terminator/config -P ~/.config/terminator/
