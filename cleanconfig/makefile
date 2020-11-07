yay:
	sudo pacman -S fakeroot binutils gcc pkgconf
	git clone https://aur.archlinux.org/yay.git
	cd ./yay/; makepkg -si yay/PKGBUILD
	rm yay -rf

youtube-dl:
	sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
	sudo chmod a+rx /usr/local/bin/youtube-dl

sway:
	yay -S sway xorg-server-xwayland alacritty mpc brightnessctl volumectl waybar pavucontrol monitor squeekboard
	mkdir -p ~/.config/sway
	ln -s ~/cleanconfig/shared/sway/config ~/.config/sway/config

rofi:
	yay -s rofi-lbonn-wayland-git
	mkdir -p ~/.config/rofi
	ln -s ~/cleanconfig/current/config.rasi ~/.config/rofi/config.rasi

dawn-deps:
	yay -S otf-font-awesome

dawn:
	rm current
	ln -s dawn current
