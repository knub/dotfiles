#!/bin/bash

PACKAGE_MANAGER=apt

set -o xtrace

if ! test -f zsh/antigen/Makefile ; then
	git submodule init
	git submodule update
fi

sudo $PACKAGE_MANAGER upgrade
sudo $PACKAGE_MANAGER install \
	acpi-call-dkms \
	alacarte \
	autokey-gtk \
	curl \
	dconf-editor \
	htop \
	powertop \
	gimp \
	gitg \
	gnome-tweak-tool \
	gparted \
	vim-gtk3 \
	iotop \
	imagemagick \
	inkscape \
	meld \
	nethogs \
	ncdu \
	rake \
	smartmontools \
	sl \
	silversearcher-ag \
	tree \
	tilda \
	tlp \
	tlp-rdw \
	unison \
	vim \
	xclip \
	zsh


if ! grep -q "knub:/bin/zsh" /etc/passwd ; then
	chsh -s /bin/zsh
fi


if ! test -L ~/.zshrc ; then
	rake install
fi


# Vim: run `:BundleInstall`
# open `powertop`


###
### Gnome Shell Extensions
###
# * NetSpeed
# * 

###
### Set proper scaling factor also on the login screen
###
# * Change to gdm user: sudo -u gdm zsh
# * dbus-launch --exit-with-session gsettings set org.gnome.desktop.interface scaling-factor 1



#ubuntu-restricted-extras
#ubuntu-restricted-addons
#acpi-call-tools \
