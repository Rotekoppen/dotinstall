mpd:
	sudo pacman -S mpd ncmpcpp mpc
	ln -s ~/config/mpd/.mpdconf ~/.mpdconf
	mkdir -p ~/.mpd
	mkdir -p ~/.ncmpcpp
	ln -s ~/config/mpd/.ncmpcpp ~/.ncmpcpp/config
	yay -S mpdris2

youtube-dl:
	sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
	sudo chmod a+rx /usr/local/bin/youtube-dl

waybar:
	sudo pacman -S waybar otf-font-awesome pavucontrol
	mkdir -p ~/.config/waybar
	ln -s ~/config/sway/waybar ~/.config/waybar/
	mv ~/.config/waybar/waybar ~/.config/waybar/config
	ln -s ~/config/sway/style.css ~/.config/waybar/

sway:
	sudo pacman -S sway termite grim imagemagick swaylock swayidle
	mkdir -p ~/.config/termite
	ln -s ~/config/termite/config ~/.config/termite/config
	mkdir -p ~/.config/sway
	ln -s ~/config/sway/config ~/.config/sway/config

apps:
	sudo pacman -S firefox discord thunderbird

fonts:
	sudo pacman -S noto-fonts-cjk noto-fonts-emoji noto-fonts
	yay -S ttf-freefont ttf-ms-fonts ttf-linux-libertine ttf-dejavu ttf-inconsolata ttf-ubuntu-font-family
