mpd:
	sudo pacman -S mpd ncmpcpp mpc
	ln -s ~/config/mpd/.mpdconf ~/.mpdconf
	mkdir ~/.mpd
	mkdir ~/.ncmpcpp
	ln -s ~/config/mpd/.ncmpcpp ~/.ncmpcpp/config
	yay -S mpdris2

youtube-dl:
	sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
	sudo chmod a+rx /usr/local/bin/youtube-dl

waybar:
	sudo pacman -S waybar otf-font-awsome
	mkdir ~/.config/waybar
	ln -s ~/config/sway/waybar ~/.config/waybar/
	mv ~/.config/waybar/waybar ~/.config/waybar/config

apps:
	sudo pacman -S firefox discord thunderbird
