yay:
	sudo pacman -S fakeroot binutils gcc pkgconf
	git clone https://aur.archlinux.org/yay.git
	cd ./yay/; makepkg -si yay/PKGBUILD
	rm yay -rf

latex:
	yay -S texlive-most texlive-lang atom hunspell-nn hunspell-nb hunspell-en_GB hunspell-es_es
	apm install pdf-view latex language-latex

youtube-dl:
	sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
	sudo chmod a+rx /usr/local/bin/youtube-dl

mpd:
	yay -S mpd ncmpcpp mpc
	mkdir -p ~/.ncmpcpp
	ln -s ~/config/mpd/.mpdconf ~/.mpdconf
	ln -s ~/config/mpd/.ncmpcpp ~/.ncmpcpp/config
	mkdir -p ~/.mpd

mopidy:
	yay -S mopidy mopidy-mpd mopidy-iris
	ln -s ~/config/mopidy/ ~/.config/mopidy

music:
	rm ~/Music -r
	ln -sF /synced/Music ~/Music

fish:
	sudo pacman -S fish fortune-mod cowsay
	mkdir -p ~/.config/fish
	ln -s ~/config/fish/config.fish ~/.config/fish/

sway:
	yay -S sway xorg-server-xwayland brightnessctl iio-sensor-proxy swayidle wl-clipboard slurp grim alacritty
	mkdir -p ~/.config/sway
	ln -s ~/config/sway/config ~/.config/sway/config
	
	sudo pacman -S waybar otf-font-awesome pavucontrol brightnessctl
	mkdir -p ~/.config/waybar
	ln -s ~/config/theme/waybar.css ~/.config/waybar/style.css

i3:
	yay -S i3-gaps alacritty xorg-server xorg-server-common xorg-xinit picom-ibhagwan-git brightnessctl polybar otf-font-awesome ttf-font-awesome scrot
	mkdir -p ~/.config/i3
	ln -s ~/config/i3/config.out ~/.config/i3/config

awesome:
	yay -s awesome
	ln -s ~/config/awesome ~/.config/awesome

alacritty:
	sudo pacman -S alacritty
	mkdir -p ~/.config/alacritty
	ln -s ~/config/theme/alacritty.yml ~/.config/alacritty/alacritty.yml

rofi:
	sudo pacman -S rofi
	mkdir -p ~/.config/rofi
	ln -s ~/config/rofi/config.rasi ~/.config/rofi

theme-darth:
	yay -S swaylock-effects-git mako pwgen
	rm ~/config/theme -r
	cp ~/config/themes/darth ~/config/theme -r

theme-lamp:
	# The color-schemes name is Dracula: https://draculatheme.com (did I do it right?)
	#yay -S
	rm ~/config/theme -r
	cp ~/config/themes/lamp ~/config/theme -r
	cd i3; make

theme-dawn:
	# The color-schemes name is Dracula: https://draculatheme.com (did I do it right?)
	yay -S i3-gaps picom-rounded-corners
	rm ~/config/theme -r
	cp ~/config/themes/dawn ~/config/theme -r
	cd i3; make

theme-dawn-refresh:
	rm ~/config/theme -r
	cp ~/config/themes/dawn ~/config/theme -r
	cd i3; make

picom:
	mkdir -p ~/.config/picom
	ln -s ~/config/theme/picom.conf ~/.config/picom/picom.conf

discord:
	yay -S discord betterdiscordctl
	betterdiscordctl install
	ln -s ~/config/theme/discord.css ~/.config/BetterDiscord/themes/dotinstall.theme.css

fonts:
	sudo pacman -S noto-fonts noto-fonts-emoji noto-fonts-extra noto-fonts-cjk
