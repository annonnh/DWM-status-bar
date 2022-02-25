#!/bin/bash

cd ~/dwm_scripts
while true; do
	xsetroot -name "$(sh scriptsupdock.sh)"
	sleep 0.000000000000000000000000000001
done

