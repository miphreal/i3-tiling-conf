#!/bin/bash

locale=$(setxkbmap -query | awk '/layout/ {print $2}')

case "$locale" in
'us')
  setxkbmap ru
  ;;
'ru')
  setxkbmap us
  ;;
esac
exit 0
