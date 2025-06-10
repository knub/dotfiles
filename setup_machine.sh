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
	gparted \
	guake \
	imagemagick \
	inkscape \
	meld \
	ncdu \
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

sudo snap install slack
sudo snap install spotify

if ! grep -q "knub:/bin/zsh" /etc/passwd ; then
	chsh -s /bin/zsh
fi


if ! test -L ~/.zshrc ; then
	rake install
fi
