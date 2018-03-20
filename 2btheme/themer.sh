#!/bin/bash
########################
# Quick theme selecting#
# program by jack0da   #
# for 2bwm             #
########################
PATHTO2bwm=$HOME/2bwm/ #Change to where your 2bwm dir is

echo "Welcome to jack0da's 2bwm themer! Press [RETURN] to continue"
read null ###just letting the user press enter before beginning. The program will function without it ###
echo "Choose theme: [1]Icecrm [2]Solar [3]Coffee [4]Moon [5]Jungle [6]Ashen [7]Pleasant [*]Exit"
read theme
case $theme in
	1)
	  echo "'Icecrm' selected"
	  cd icecrm;;
	2)
	  echo "'Solar' selected"
	  cd solar;;
	3)
	  echo "'Coffee' selected"
	  cd coffee;;
	4)
	  echo "'Moon' selected"
	  cd moon;;
	5)
	  echo "'Jungle' selected"
	  cd jungle;;
	6)
	  echo "'Ashen' selected"
	  cd ashen;;
	7)
	  echo "'Pleasant' selected"
	  cd pleasant;;
	*)
	  exit;;
esac
cp config $HOME/.config/polybar/
cp config.h $PATHTO2bwm
cp .xinitrc $HOME/
cd $PATHTO2bwm
make
sudo make install
echo "Done! logout to apply changes"
