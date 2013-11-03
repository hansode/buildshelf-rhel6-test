SHELL=/bin/bash

all:

setup:
	git submodule update --init --recursive

vendor/buildshelf-rhel6:
	[[ -d vendor/buildshelf-rhel6 ]] || (cd vendor && git clone git@github.com:hansode/buildshelf-rhel6.git)
	cd vendor/buildshelf-rhel6 && git submodule update --init --recursive

test: setup
	sudo ./test-build.sh

.PHONY: vendor/buildshelf-rhel6
