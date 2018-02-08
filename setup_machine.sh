#!/bin/bash

PACKAGE_MANAGER=dnf

set -o xtrace

if ! test -f zsh/antigen/Makefile ; then
	git submodule init
	git submodule update
fi

if ! grep -q "defaultyes" /etc/dnf/dnf.conf ; then
	echo "defaultyes=True" | sudo tee -a /etc/dnf/dnf.conf
fi

sudo $PACKAGE_MANAGER upgrade
sudo $PACKAGE_MANAGER install \
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
	gvim \
	iotop \
	ImageMagick \
	inkscape \
	meld \
	nethogs \
	ncdu \
	rubygem-rake \
	sl \
	the_silver_searcher \
	tree \
	texlive \
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

if ! dnf repolist | grep -q "home_snwh_paper" ; then
	sudo dnf config-manager --add-repo http://download.opensuse.org/repositories/home:snwh:paper/Fedora_25/home:snwh:paper.repo
	sudo dnf install paper-gtk-theme paper-icon-theme
fi

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



#ubuntu-restricted-extras
#ubuntu-restricted-addons
#acpi-call-tools \
