#!/bin/bash

#Scripts for display information about the system in upper dock
#You hate to install the package pamixer
#You have to install nerd_fonts to work the symbols(sudo pacman -S ttf-nerd-fonts-symbols)
#You have to install xbinkeys to work the volume change(sudo pacman -S xbindkeys)

#Setting varible to show in dock
#######################################################
USER=$(whoami)
DATE=$(date +"%A-%D")
HOURS=$(date +%r)
VOL=$(pamixer --get-volume)
MEMINFO=$(free -h | awk '(NR==2){ print $3 }')
CPU=$(cat /proc/loadavg | awk '{print $1}')
BATTERY=$(cat /sys/class/power_supply/BAT1/capacity)
#######################################################

#Show each variable that was set
echo "|   $CPU |   $MEMINFO | "

######################################################


################################################
#Controling volume with symbols
################################################


if [ "$VOL" == "0" ];
then
	echo "婢 $VOL%"
fi

for i in {1..10}; do
	if [ "$VOL" == "$i" ];
	then
		echo " $VOL%"
	fi
done

for i in {11..20}; do
	if [ "$VOL" == "$i" ];
	then
		echo " $VOL%"
	fi
done

for i in {21..40}; do
	if [ "$VOL" == "$i" ];
	then
		echo "墳 $VOL%"
	fi
done

for i in {41..100}; do
	if [ "$VOL" == "$i" ];
	then
		echo " $VOL%"
	fi
done

for i in {101..150}; do
	if [ "$VOL" == "$i" ];
	then
		echo "Don't do that"
	fi
done

################################################

# Showing each varible
echo "|   $DATE |  $HOURS |"




#########################################################
# Script to the battery
#########################################################


for a in {1..5}; do
	if [ "$BATTERY" == "$a" ];
	then
		echo "  $BATTERY%"
	fi
done

for a in {6..15}; do
	if [ "$BATTERY" == "$a" ];
	then
		echo "  $BATTERY%"
	fi
done

for a in {16..30}; do
	if [ "$BATTERY" == "$a" ];
	then 
		echo "  $BATTERY%"
	fi
done

for a in {31..70}; do
	if [ "$BATTERY" == "$a" ];
	then 
		echo "  $BATTERY%"
	fi
done

for a in {71..100}; do
	if [ "$BATTERY" == "$a" ];
	then
		echo "  $BATTERY%"
	fi
done

#########################################################



#Set user
echo "|  $USER |"
