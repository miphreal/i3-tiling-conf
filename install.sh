#!/bin/sh

echo 'deb http://build.i3wm.org/debian/sid sid main' > /etc/apt/sources.list.d/i3-autobuild.list
apt-get update
apt-get --allow-unauthenticated install i3-autobuild-keyring
apt-get update

apt-get install compton feh i3 dunst
