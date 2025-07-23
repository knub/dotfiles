#!/bin/bash

PACKAGE_MANAGER=apt

set -o xtrace

if ! test -f zsh/antigen/Makefile ; then
	git submodule init
	git submodule update
fi

sudo $PACKAGE_MANAGER upgrade
sudo $PACKAGE_MANAGER install \
	curl \
	htop \
	git \
	gitg \
	gnome-tweaks \
	gnome-shell-extension-prefs \
	gparted \
	guake \
	imagemagick \
	inkscape \
	meld \
	ncdu \
	python3-full \
	python3-gpg \
	python3-pip \
	rake \
	silversearcher-ag \
	tree \
	ubuntu-restricted-extras \
	ubuntu-restricted-addons \
	vim \
	vim-gtk3 \
	xclip \
	zsh

# Backup ideas:
# acpi-call-tools
# tlp
# tlp-rdw

sudo snap install zoom-client
sudo snap install spotify
sudo snap install joplin
sudo snap install joplin-desktop
sudo snap install signal-desktop
sudo snap install zotero-snap
sudo snap install pycharm-professional --classic
sudo snap install google-cloud-cli --classic


if ! grep -q "knub:/bin/zsh" /etc/passwd ; then
	chsh -s /bin/zsh
fi


if ! test -L ~/.zshrc ; then
	rake install
fi
