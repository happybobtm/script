#dependencies: git, yay (AUR helper), multilib enabled (edit /etc/pacman.conf).
#warning! decline the GPG/PGP import from spotify

#install (pacman)
sudo pacman -S pavucontrol xrandr dmenu graphviz grub-customizer lilypond imagemagick source-highlight dblatex fop w3m lynx xorg-xwininfo feh playerctl flameshot i3-gaps firefox code alacritty lutris pcmanfm gimp bashtop macchanger steam figlet lolcat neofetch xarchiver lib32-mesa lxappearance gnome-boxes gnome-keyring wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader meson systemd dbus gnome-keyring libgnome-keyring -y

#Nvidia
# nvidia nvidia nvidia-utiils nvidia-settings lib32-nvidia-utils lib32-nvidia-utils

#AMD (Radeon) 
#sudo pacman -S vulkan-radeon lib32-vulkan-radeon -y

#figlet
figlet Spotify | lolcat

#spotify 
curl -sS https://download.spotify.com/debian/pubkey.gpg | gpg --import -

#figlet
figlet Yay | lolcat

#echo
echo warning! decline the GPG/PGP import from spotify

#install (yay)
yay -S timeshift lbry lightdm-webkit-theme-aether nerd-fonts-mononoki brave-nightly-bin simplenote discord-canary simplenote cmatrix-git toilet betterdiscordctl-git spotify spicetify-cli picom-tryone-git -y

#figlet
figlet Mac Address Script | lolcat

#mac address script
cd ~
git clone https://github.com/happybobtm/mac-address.git
cd ~/mac-address
mv ~/mac-address/mac-address.sh ~/
cd ~

#figlet
figlet i3 | lolcat

#i3-gaps config
cd ~
git clone https://github.com/happybobtm/i3-today-dark-config.git
cd ~/i3-today-dark-config
mkdir ~/.config/i3
mv ~/i3-today-dark-config/config ~/.config/i3
cd ~

#figlet
figlet Bumbleebee Status | lolcat

#bumblebee-status
cd ~
git clone https://github.com/tobi-wan-kenobi/bumblebee-status.git
mv ~/bumblebee-status ~/.config
cd ~

#bumblebee-modules
cd ~
git clone https://github.com/happybobtm/bumblebee-modules.git
cd ~/.config/bumblebee-status/bumblebee_status/modules/contrib/ 
rm -rf weather.py arch-update.py kernel.py playerctl.py
cd ~/.config/bumblebee-status/bumblebee_status/modules/core/
rm -rf time.py date.py memory.py
cd ~/bumblebee-modules
mv weather.py arch-update.py kernel.py playerctl.py ~/.config/bumblebee-status/bumblebee_status/modules/contrib/
mv time.py date.py memory.py ~/.config/bumblebee-status/bumblebee_status/modules/core/
cd ~

#figlet
figlet BetterDiscord | lolcat

#BetterDiscord
betterdiscordctl install -f discord-canary

#betterdiscord plugins
cd ~
git clone https://github.com/happybobtm/betterdiscord-plugins.git
cp -a ~/betterdiscord-plugins ~/.config/BetterDiscord/plugins
cd ~

#betterdiscord themes
cd ~
git clone https://github.com/happybobtm/betterdiscord-theme.git
cp -a ~/betterdiscord-theme ~/.config/BetterDiscord/themes
cd ~

#figlet
figlet Wallpaper | lolcat

#wallpaper
cd ~
git clone https://github.com/happybobtm/wallpaper.git
cd ~

#figlet
figlet Neofetch | lolcat

#neofetch
cd ~
neofetch
git clone https://github.com/happybobtm/neofetch.git
rm -rf ~/.config/neofetch/config.conf
mv ~/neofetch/config.conf ~/.config/neofetch
cd ~

#figlet
figlet Alacritty | lolcat

#alacritty
cd ~
mkdir ~/.config/alacritty
git clone https://github.com/happybobtm/alacritty.git
mv ~/alacritty/alacritty.yml ~/.config/alacritty
cd ~

#figlet
figlet .Bahsrc | lolcat

#bashrc
cd ~
rm -rf .bashrc
mv ~/bashrc/.bashrc ~
git clone https://github.com/happybobtm/.bahsrc.git
cd ~

#figlet
figlet Spicetify | lolcat

#spicetify
cd ~
git clone https://github.com/happybobtm/spicetify.git
sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R
spicetify
rm -rf ~/.config/spicetify/config.ini
mkdir ~/.config/spicetify/Themes/dracula
cd ~/spicetify
mv config.ini ~/.config/spicetify/
mv color.ini ~/.config/spicetify/Themes/dracula
mv user.css ~/.config/spicetify/Themes/dracula
mv README.md ~/.config/spicetify/Themes/dracula
cd ~
spicetify backup apply
cd ~

#figlet
figlet GTK | lolcat

#GTK
cd ~
mkdir ~/.themes
git clone https://github.com/happybobtm/gtk.git
cp -a ~/gtk ~/.themes
sudo cp -a ~/gtk /usr/share/themes/
cd ~

#figlet
figlet Icons | lolcat

#Icons
cd ~
mkdir ~/.icons
git clone https://github.com/happybobtm/icons.git
cp -a ~/cursor ~/.icons
sudo cp -a ~/icons /usr/share/icons/
cd ~

#figlet
figlet Cursor | lolcat

#Cursor
cd ~
git clone https://github.com/happybobtm/cursor.git
cp -a ~/cursor ~/.icons
sudo cp -a ~/cursor /usr/share/icons/
cd ~

#figlet
figlet Grub | lolcat

#Grub
cd ~
 wget -O - https://github.com/shvchk/fallout-grub-theme/raw/master/install.sh | bash
cd ~

#figlet
figlet gamemode | lolcat

#echo
echo pay atention!

#gamemode
cd ~
git clone https://github.com/FeralInteractive/gamemode.git
cd gamemode
git checkout 1.5.1 # omit to build the master branch
./bootstrap.sh
cd ~

#figlet
figlet Proton | lolcat

#echo
echo pay atention!

#Custom Proton
cd ~
wget https://raw.githubusercontent.com/Termuellinator/ProtonUpdater/master/cproton.sh
sudo chmod +x cproton.sh
./cproton.sh
cd ~

#figlet
figlet lightdm | lolcat

#enable lightdm
sudo systemctl enable lightdm.service

#start lightdm 
sudo systemctl start lightdm.service