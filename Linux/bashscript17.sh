#!/bin/bash

loop=y

while [ "$loop" = y ]; do
	clear
	echo "                 Menu"
	echo "----------------------------------------"
	echo "D - Print the date info."
	echo "U - Users who are logged in."
	echo "W - Print the current working directory."
	echo "Q - Quit."

	read -s choice
	echo
	echo "Your choice was $choice."
	
	case $choice in
		D | d ) "Date info: "; date ;;
		U | u ) "User info: "; who ;;
		W | w ) "Working directory info: "; pwd ;;
		Q | q ) loop="n" ;;
		* ) echo "Choice not available." ;;
	esac
	echo
	read -p "Press enter to continue." cont
	echo
done