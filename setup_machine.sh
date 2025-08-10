#!/bin/bash

set -o xtrace

if ! test -f zsh/antigen/Makefile ; then
	git submodule init
	git submodule update
fi

sudo brew install \
	coreutils \
	htop \
	imagemagick \
	moreutils \
	ncdu \
	the_silver_searcher

# Backup ideas:
# acpi-call-tools
# tlp
# tlp-rdw

if ! test -L ~/.zshrc ; then
	rake install
fi
