#!/bin/bash

PACKAGE_MANAGER=dnf

set -o xtrace

if ! test -f zsh/antigen/Makefile ; then
	git submodule init
	git submodule update
fi

if ! grep -q "ShellActions/Up" ~/.config/nautilus/accels 2> /dev/null ; then
	echo '(gtk_accel_path "<Actions>/ShellActions/Up" "BackSpace")' | sudo tee -a ~/.config/nautilus/accels
fi

if ! grep -q "defaultyes" /etc/dnf/dnf.conf ; then
	echo "defaultyes=True" | sudo tee -a /etc/dnf/dnf.conf
fi

sudo $PACKAGE_MANAGER upgrade
sudo $PACKAGE_MANAGER install \
	autokey-gtk \
	curl \
	darktable \
	htop \
	powertop \
	gimp \
	gitg \
	gnome-tweak-tool \
	gparted \
	gvim \
	ImageMagick \
	inkscape \
	meld \
	rubygem-rake \
	sl \
	the_silver_searcher \
	tree \
	texlive \
	tilda \
	tlp \
	tlp-rdw \
	unison \
	vlc \
	vim \
	wine \
	zsh


if ! grep "knub:/bin/zsh" /etc/passwd ; then
	chsh -s /bin/zsh
fi

sudo dnf config-manager --add-repo http://download.opensuse.org/repositories/home:snwh:paper/Fedora_24/home:snwh:paper.repo
sudo dnf install paper-gtk-theme paper-icon-theme

if ! test -L ~/.zshrc ; then
	rake install
fi

#ubuntu-restricted-extras
#ubuntu-restricted-addons
#acpi-call-tools \
#libsqlite3-0 libjpeg8 libpng12-0 exiv2 libtiff5 curl gphoto2 gnome-keyring fop openexr
#
## https://github.com/p-e-w/maybe
#sudo pip install maybe
#faience-theme
#hugin
#gitg
#luminance HDR
#MediathekView
#mp3tag
#Pinta
#Unison

# Fedora font rendering
#infinality
