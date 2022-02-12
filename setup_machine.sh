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
	dconf-editor \
	htop \
	powertop \
	gitg \
	gnome-tweaks \
	meld \
	ncdu \
	nethogs \
	rake \
	sl \
	silversearcher-ag \
	tree \
	tilda \
	tlp \
	tlp-rdw \
	ubuntu-restricted-extras \
	ubuntu-restricted-addons \
	unison-gtk \
	vim \
	vim-gtk3 \
	zsh


if ! grep -q "knub:/bin/zsh" /etc/passwd ; then
	chsh -s /bin/zsh
fi

#if ! dnf repolist | grep -q "home_snwh_paper" ; then
#	sudo dnf config-manager --add-repo http://download.opensuse.org/repositories/home:snwh:paper/Fedora_25/home:snwh:paper.repo
#	sudo dnf install paper-gtk-theme paper-icon-theme
	#fi

if ! test -L ~/.zshrc ; then
	rake install
fi

###
### Post installation steps
###
# * Install Hack font: http://sourcefoundry.org/hack/

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


# sudo apt-get remove gnome-shell-extension-ubuntu-dock
