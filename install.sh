#!/bin/sh

echo 'deb http://build.i3wm.org/debian/sid sid main' > /etc/apt/sources.list.d/i3-autobuild.list
apt-get update
apt-get --allow-unauthenticated install i3-autobuild-keyring
apt-get update

apt-get install compton feh i3 dunst

# rofi
# $ sudo apt-get install libpango1.0-dev libxinerama-dev libxft-dev libx11-dev dh-make
# $ wget https://github.com/DaveDavenport/rofi/releases/download/0.15.2/rofi-0.15.2.tar.gz
# $ tar xf rofi-0.15.2.tar.gz
# $ cd rofi-0.15.2
# $ dh_make --single --native --copyright mit
###The step make test was failing for me, so I disabled it by adding a trivial rule in debian/rules:
## override_dh_auto_test:
##     echo "Skipping test..."
##And then continue to build the .deb as usual:
# $ dpkg-buildpackage -uc -us -rfakeroot
# $ dpkg -i  ../rofi_0.15.2_amd64.deb    # Install and enjoy...
