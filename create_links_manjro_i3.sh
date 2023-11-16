#! /bin/bash
#
HOME=~
CONFIG=$HOME/.config/
echo $CONFIG

ln -s  ./tmux/ $CONFIG
ln -s  `pwd`/nvim/ $CONFIG

ln -s  `pwd`/.i3/config ~/.i3/config
ln -s  `pwd`/i3blocks/ $CONFIG
ln -s  `pwd`/polybar $CONFIG
ln -s  `pwd`/.newsboat $HOME
ln -s  `pwd`/.vit $HOME
ln -s  `pwd`/.zshrc $HOME
ln -s  `pwd`/.taskrc $HOME
ln -s  `pwd`/.Xdefaults $HOME
ln -s  `pwd`/.nbrc $HOME
ln -s  `pwd`/ncmpcpp $HOME
ln -s  `pwd`/mpd $CONFIG
ln -s  `pwd`/.gitconfig $HOME
ln -s  `pwd`/.urxvt/ext/resize-font ~/.urxvt/ext/resize-font

