#!/bin/sh

rm -Rf $HOME/.i3 $HOME/.config/i3 $HOME/.config/compton.conf $HOME/.config/dunst

ln -fs `pwd` $HOME/.config/i3 || true
ln -fs $HOME/.config/i3/compton.conf $HOME/.config/compton.conf || true
ln -fs $HOME/.config/i3/dunst $HOME/.config/dunst
