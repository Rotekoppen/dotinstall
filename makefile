hard-setup:
	mv config/ ~/config

hard-unsetup:
	mv ~/config config

soft-setup:
	ln -s -d ~/dotinstall/config ~/config
