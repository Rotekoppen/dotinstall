yay:
	cd /tmp
	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepkg -si

latex:
	yay -S texlive-most texlive-lang atom hunspell-nn hunspell-nb hunspell-en_GB hunspell-es_es
	apm install pdf-view latex language-latex

youtube-dl:
	sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
	sudo chmod a+rx /usr/local/bin/youtube-dl

mpd:
	yay -S mpd ncmpcpp mpc mpdris2 mpd_discord_richpresence
	mkdir -p ~/.ncmpcpp
	ln -s ~/config/mpd/.mpdconf ~/.mpdconf
	ln -s ~/config/mpd/.ncmpcpp ~/.ncmpcpp/config

mopidy:
	yay -S mopidy mopidy-mpd mopidy-iris
	ln -s ~/config/mopidy/ ~/.config/mopidy

music:
	rm ~/Music -r
	ln -sF /synced/Music ~/Music

fish:
	sudo pacman -S fish
	mkdir -p ~/.config/fish
	ln -s ~/config/fish/config.fish ~/.config/fish/

sway:
	yay -S sway xorg-server-xwayland brightnessctl iio-sensor-proxy swayidle wl-clipboard slurp grim alacritty
	mkdir -p ~/.config/sway
	ln -s ~/config/sway/config ~/.config/sway/config

waybar:
	sudo pacman -S waybar otf-font-awesome pavucontrol
	mkdir -p ~/.config/waybar
	ln -s ~/config/theme/waybar.css ~/.config/waybar/style.css

rofi:
	sudo pacman -S rofi
	mkdir -p ~/.config/rofi
	ln -s ~/config/rofi/config.rasi ~/.config/rofi

theme-darth:
	yay -S swaylock-effects-git mako pwgen
	rm ~/config/theme -r
	cp ~/config/themes/darth ~/config/theme -r
